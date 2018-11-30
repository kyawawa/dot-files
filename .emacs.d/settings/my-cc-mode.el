;; -*- Mode: Emacs-Lisp; Coding: utf-8 -*-
;;; my-cc-mode.el --- Elisp settings for cc-mode
(require 'cc-mode)

;; (defconst my-c-style
;;   '(
;;     (c-electric-pound-behavior     . 'alignleft)
;;     (c-tab-always-indent           . t)
;;     (c-hanging-braces-alist        . ((block-open)
;;                                       (brace-list-open)
;;                                       (substatement-open)
;;                                       (defun-open before after)
;;                                       (defun-close before after)
;;                                       ))
;;     (c-hanging-colons-alist        . ((member-init-intro before)
;;                                       (inher-intro)
;;                                       (case-label)
;;                                       (access-label      after)
;;                                       (label             after)
;;                                       (access-key        after)))
;;     (c-cleanup-list                . (scope-operator
;;                                       empty-defun-braces
;;                                       defun-close-semi))
;;     (c-offsets-alist               . ((arglist-close        . c-lineup-arglist)
;;                                       (case-label           . 4)
;;                                       (statement-case-intro . 4)
;;                                       (access-label         . -4)
;;                                       (label                . -)
;;                                       (substatement-open    . 0)
;;                                       (block-open           . 0)
;;                                       (knr-argdecl-intro    . -)))
;;     )
;;   "My C++/C Programming Style")

(defun my-cc-style()
  (c-set-style "linux")
  (c-set-offset 'innamespace '0)
  (c-set-offset 'inextern-lang '0)
  (c-set-offset 'inline-open '0)
  (c-set-offset 'label '*)
  (c-set-offset 'case-label '*)
  (c-set-offset 'access-label '/)
  (setq c-basic-offset 4)
  (setq tab-width 4)
  (setq indent-tabs-mode nil)
  )


;; Customizations for both c-mode and c++-mode
(add-hook 'c-mode-common-hook 'my-cc-style)
;;  '(lambda ()
;; ;; (defun my-c-mode-common-hook ()
;;     ;; set up for my perferred indentation style, but  only do it once
;;     (c-add-style "My" my-c-style 'set-this-style)
;;     ;; we like auto-newline and hungry-delete
;;     ;; (c-toggle-auto-hungry-state 1)
;;     ;; keybindings for both C and C++.  We can put these in c-mode-map
;;     ;; because c++-mode-map inherits it
;;     ;; (bind-key "\C-m" 'newline-and-indent c-mode-map)
;;     ;; insert 4 tabs
;;     (setq tab-width 4)
;;     ))

(when (locate-library "dummy-h-mode")
  (add-to-list 'auto-mode-alist '("\\.h$" . dummy-h-mode))
  (add-to-list 'auto-mode-alist '("\\.inl$" . dummy-h-mode))
  (autoload 'dummy-h-mode "dummy-h-mode" "Dummy H mode" t))

;;;;;;;;;; C-mode ;;;;;;;;;;
;; eldoc
;; (when (locate-library "c-eldoc")
;;   (require 'c-eldoc)
;;   (add-hook 'c-mode-hook 'c-turn-on-eldoc-mode)
;;   (add-hook 'c++-mode-hook 'c-turn-on-eldoc-mode)
;;   (setq c-eldoc-buffer-regenerate-time 60))

;; ggtags
(when (locate-library "ggtags")
  (require 'ggtags)
  (add-hook 'c-mode-common-hook
            (lambda ()
              (when (derived-mode-p 'c-mode 'c++-mode 'java-mode 'asm-mode)
                (ggtags-mode 1))))

  ;; use helm
  ;; (setq ggtags-completing-read-function nil)

  ;; use eldoc
  (setq-local eldoc-documentation-function #'ggtags-eldoc-function)

  ;; imenu
  (setq-local imenu-create-index-function #'ggtags-build-imenu-index)

  (define-key ggtags-mode-map (kbd "C-c g s") 'ggtags-find-other-symbol)
  (define-key ggtags-mode-map (kbd "C-c g h") 'ggtags-view-tag-history)
  (define-key ggtags-mode-map (kbd "C-c g r") 'ggtags-find-reference)
  (define-key ggtags-mode-map (kbd "C-c g d") 'ggtags-find-definition)
  (define-key ggtags-mode-map (kbd "C-c g f") 'ggtags-find-file)
  (define-key ggtags-mode-map (kbd "C-c g c") 'ggtags-create-tags)
  (define-key ggtags-mode-map (kbd "C-c g u") 'ggtags-update-tags)
  (define-key ggtags-mode-map (kbd "M-,") 'pop-tag-mark)

  ;; update GTAGS
  (defun my-c-mode-update-gtags ()
    (interactive "P")
    (let* ((file (buffer-file-name (current-buffer)))
           (dir (directory-file-name (file-name-directory file))))
      (when (executable-find "global")
        (start-process "gtags-update" nil
                       "global" "-uv"))))

  (add-hook 'after-save-hook
            'my-c-mode-update-gtags))

;; For c++11
;; https://stackoverflow.com/questions/8549351/c11-mode-or-settings-for-emacs
(require 'font-lock)

(defun --copy-face (new-face face)
  "Define NEW-FACE from existing FACE."
  (copy-face face new-face)
  (eval `(defvar ,new-face nil))
  (set new-face new-face))

(--copy-face 'font-lock-label-face  ; labels, case, public, private, proteced, namespace-tags
             'font-lock-keyword-face)
(--copy-face 'font-lock-doc-markup-face ; comment markups such as Javadoc-tags
             'font-lock-doc-face)
(--copy-face 'font-lock-doc-string-face ; comment markups
             'font-lock-comment-face)

(global-font-lock-mode t)
(setq font-lock-maximum-decoration t)


(add-hook 'c++-mode-hook
          '(lambda()
             (font-lock-add-keywords
              nil '(;; complete some fundamental keywords
                    ("\\<\\(void\\|unsigned\\|signed\\|char\\|short\\|bool\\|int\\|long\\|float\\|double\\)\\>" . font-lock-keyword-face)
                    ;; add the new C++11 keywords
                    ("\\<\\(alignof\\|alignas\\|constexpr\\|decltype\\|noexcept\\|nullptr\\|static_assert\\|thread_local\\|override\\|final\\)\\>" . font-lock-keyword-face)
                    ("\\<\\(char[0-9]+_t\\)\\>" . font-lock-keyword-face)
                    ;; PREPROCESSOR_CONSTANT
                    ("\\<[A-Z]+[A-Z_]+\\>" . font-lock-constant-face)
                    ;; hexadecimal numbers
                    ("\\<0[xX][0-9A-Fa-f]+\\>" . font-lock-constant-face)
                    ;; integer/float/scientific numbers
                    ("\\<[\\-+]*[0-9]*\\.?[0-9]+\\([ulUL]+\\|[eE][\\-+]?[0-9]+\\)?\\>" . font-lock-constant-face)
                    ;; user-types (customize!)
                    ("\\<[A-Za-z_]+[A-Za-z_0-9]*_\\(t\\|type\\|ptr\\)\\>" . font-lock-type-face)
                    ("\\<\\(xstring\\|xchar\\)\\>" . font-lock-type-face)
                    ))
             ) t)
