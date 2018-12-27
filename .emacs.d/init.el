;; -*- Mode: Emacs-Lisp; Coding: utf-8 -*-

;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
;; (package-initialize)

;; Hot fix for byte-compile
(eval-when-compile
  (require 'cl)
  (cl-pushnew (locate-user-emacs-file "el-get") load-path)
  (cl-pushnew (locate-user-emacs-file "el-get/el-get") load-path)
  (cl-pushnew (locate-user-emacs-file "el-get/el-get-lock") load-path)
  (cl-pushnew (locate-user-emacs-file "el-get/use-package") load-path)
  (cl-pushnew (locate-user-emacs-file "el-get/with-eval-after-load-feature") load-path)
  (when (require 'el-get nil t)
    (require '.loaddefs)
    (require 'bind-key nil t)
    (require 'with-eval-after-load-feature nil t)
    (when (require 'el-get-lock nil t)
      (el-get-lock)))

  (message "Byte compile site-lisp")
  (byte-recompile-directory (locate-user-emacs-file "site-lisp") 0))

;; Byte compile when opening emacs if init.el is newer than init.elc
(add-hook 'after-init-hook
          '(lambda ()
             (let* ((el (expand-file-name "init.el" user-emacs-directory))
                    (elc (concat el "c")))
               (when (file-newer-than-file-p el elc)
                 (byte-compile-file el)))))

(require 'cl)
(cl-pushnew (locate-user-emacs-file "site-lisp") load-path)
(cl-pushnew (locate-user-emacs-file "settings") load-path)

;; Initialize el-get
(cl-pushnew (locate-user-emacs-file "el-get/el-get") load-path)
(unless (require 'el-get nil 'noerror)
  (with-current-buffer
      (url-retrieve-synchronously
       "https://raw.githubusercontent.com/dimitri/el-get/master/el-get-install.el")
    (goto-char (point-max))
    (eval-print-last-sexp)))

(eval-after-load 'el-get
  ;; This must be reloaded when updating el-get: unloading
  ;; `el-get-custom' undefines the `el-get-sources' variable.
  '(load  "elget-recipes"))
(setq el-get-is-lazy nil)
(el-get 'sync (mapcar #'el-get-source-name el-get-sources))

(require 'setup)
(setup-initialize)
(setup "bind-key")

(setup "auto-async-byte-compile"
  ;; Compile only init.el
  (setq auto-async-byte-compile-exclude-files-regexp "/el-get/\\|/elpa/\\|/settings/")
  (add-hook 'emacs-lisp-mode-hook 'enable-auto-async-byte-compile-mode))

(setup-include "basic-settings")
(setup-include "theme-settings")
(setup-include "ros-settings")
(setup-include "my-cc-mode")
(setup-include "my-tabbar-mode")
(setup-include "my-euslisp-mode")
(when (eq 0 (shell-command "type rustc"))
  (setup-include "my-rust-mode"))
(when (locate-library "latex")
  (setup-include "my-tex-mode"))

(dolist (mode-hook '(python-mode-hook))
  ;; (add-hook mode-hook '(lambda () (electric-indent-local-mode -1)))) ;; for emacs 24.4 or above
  (add-hook mode-hook '(lambda () (set (make-local-variable 'electric-indent-mode) nil))))

(font-lock-add-keywords 'lisp-mode
                        (list
                         (list "\\(\\*\\w\+\\*\\)\\>"
                               '(1 font-lock-constant-face nil t))
                         (list "\\(\\+\\w\+\\+\\)\\>"
                               '(1 font-lock-constant-face nil t))))

;; shell mode
(set-terminal-coding-system 'utf-8)
(set-buffer-file-coding-system 'utf-8)
(setq explicit-shell-file-name shell-file-name)
(defvar shell-command-option "-c")
(setq system-uses-terminfo nil)
(setq shell-file-name-chars "~/A-Za-z0-9_^$!#%&{}@`'.,:()-")
(add-hook 'shell-mode-hook 'ansi-color-for-comint-mode-on)
;; not show line number when shell-mode
(add-hook 'shell-mode-hook
          '(lambda ()
             (global-linum-mode 0))) ;; TODO: Disable only shell-mode
(when (locate-library "bash-completion")
  (add-hook 'shell-dynamic-complete-functions
            'bash-completion-dynamic-complete))

(when nil
  ;; stop auto scroll according to cursol
  (setq comint-scroll-show-maximum-output nil)
  )

;; vrml mode
(setup-lazy '(vrml-mode) "vrml-mode"
  :prepare
  (cl-pushnew '("\\.wrl$" . vrml-mode) auto-mode-alist))

;; matlab mode
(when (locate-library "matlab-mode")
  (cl-pushnew '("\\.m$" . matlab-mode) auto-mode-alist))

(when (locate-library "octave-mod")
  (cl-pushnew '("\\.m$" . octave-mode) auto-mode-alist))

;; for Arduino
(cl-pushnew '("\\.pde$" . c++-mode) auto-mode-alist)
(cl-pushnew '("\\.ino$" . c++-mode) auto-mode-alist)

;; assembler mode
(when (locate-library "asm-mode")
  (cl-pushnew '("\\.s$" . asm-mode) auto-mode-alist))

;; yaml mode
(when (locate-library "yaml-mode")
  (cl-pushnew '("\\.rosinstall$" . yaml-mode) auto-mode-alist)
  (cl-pushnew '("\\.cnoid$" . yaml-mode) auto-mode-alist) ;; Choreonoid project file
  (cl-pushnew '("\\.body$" . yaml-mode) auto-mode-alist) ;; Choreonoid body file
  )

;; ;; auto-complete
;; (when (locate-library "auto-complete")
;;   (ac-config-default))

(when (locate-library "jedi-core")
  (add-hook 'python-mode-hook 'jedi:setup)
  (with-eval-after-load-feature 'jedi-core
    (defvar jedi:complete-on-dot t)
    (defvar jedi:use-shortcuts t) ;; M-. : jump definition, M-, : return from definition
    (when (locate-library "company-jedi")
      (cl-pushnew 'company-jedi company-backends))))

(when (locate-library "julia-repl")
  (add-hook 'julia-mode-hook 'julia-repl-mode))

;; For folding
;; http://d.hatena.ne.jp/yutoichinohe/20121119/1353321674
(dolist (mode-hook '(scheme-mode-hook emacs-lisp-mode-hook
                                      lisp-mode-hook python-mode-hook ruby-mode-hook))
  (add-hook mode-hook
            '(lambda ()
               (hs-minor-mode t))))
(define-key global-map (kbd "C-c ;") 'hs-toggle-hiding)

(with-eval-after-load-feature 'markdown-mode
  ;; Open markdown with shiba
  (when (eq 0 (shell-command "type Shiba"))
    (defun open-with-shiba ()
      "open a current markdown file with shiba"
      (interactive)
      (start-process "shiba" "*shiba*" "Shiba" "--detach" buffer-file-name))
    ;; (bind-key :map markdown-mode-map "C-c C-c p" 'open-with-shiba))
    (define-key markdown-mode-map (kbd "C-c C-c p") 'open-with-shiba)))

;; (setup-lazy '(web-mode) "web-mode"
;;   :prepare
;;   (dolist (extensions '("\\.phtml\\'" "\\.tpl\\.php\\'" "\\.[gj]sp\\'" "\\.as[cp]x\\'"
;;                         "\\.erb\\'" "\\.mustache\\'" "\\.djhtml\\'" "\\.html?\\'"))
;;     (add-to-list 'auto-mode-alist `(,extensions . web-mode)))

;;   (defun web-mode-hook ()
;;     (defvar web-mode-markup-indent-offset 2)
;;     (defvar web-mode-css-indent-offset 2)
;;     (defvar web-mode-code-indent-offset 2)
;;     (defvar web-mode-engines-alist
;;           '(("php"    . "\\.phtml\\'")
;;             ("blade"  . "\\.blade\\."))))
;;   (add-hook 'web-mode-hook  'web-mode-hook)

;;  ;;  ;; 色の設定
;;  ;;  (custom-set-faces
;;  ;;   ;; web-mode. colors.
;;  ;;   '(web-mode-doctype-face
;;  ;;     ((t (:foreground "cyan"))))
;;  ;;   '(web-mode-html-tag-face
;;  ;;     ((t (:foreground "cyan"))))
;;  ;;   '(web-mode-html-attr-name-face
;;  ;;     ((t (:foreground "#87CEEB"))))
;;  ;;   '(web-mode-html-attr-equal-face
;;  ;;     ((t (:foreground "#FFFFFF"))))
;;  ;;   '(web-mode-html-attr-value-face
;;  ;;     ((t (:foreground "#00FF00"))))
;;  ;;   '(web-mode-comment-face
;;  ;;     ((t (:foreground "#587F35"))))
;;  ;;   '(web-mode-server-comment-face
;;  ;;     ((t (:foreground "#587F35"))))

;;  ;; ;;; web-mode. css colors.
;;  ;;   '(web-mode-css-at-rule-face
;;  ;;     ((t (:foreground "#DFCF44"))))
;;  ;;   '(web-mode-css-selector-face
;;  ;;     ((t (:foreground "#DFCF44"))))
;;  ;;   '(web-mode-css-pseudo-class
;;  ;;     ((t (:foreground "#DFCF44"))))
;;  ;;   '(web-mode-css-property-name-face
;;  ;;     ((t (:foreground "#87CEEB"))))
;;  ;;   '(web-mode-css-string-face
;;  ;;     ((t (:foreground "#D78181")))))
;;   )

(when (locate-library "rainbow-mode")
  (dolist (mode-hook '(css-mode-hook web-mode-hook
                       html-mode-hook vrml-mode-hook
                       emacs-lisp-mode-hook))
    (add-hook mode-hook 'rainbow-mode)))

;; (custom-set-faces
;;  ;; custom-set-faces was added by Custom.
;;  ;; If you edit it by hand, you could mess it up, so be careful.
;;  ;; Your init file should contain only one such instance.
;;  ;; If there is more than one, they won't work right.
;;  '(font-latex-math-face ((t (:foreground "green"))))
;;  '(font-lock-constant-face ((t (:foreground "#87CEEB"))))
;;  '(font-lock-function-name-face ((t (:foreground "blue"))))
;;  '(font-lock-preprocessor-face ((t (:inherit default))))
;;  '(font-lock-string-face ((t (:foreground "green"))))
;;  '(web-mode-comment-face ((t (:foreground "#587F35"))))
;;  '(web-mode-css-at-rule-face ((t (:foreground "#DFCF44"))))
;;  '(web-mode-css-property-name-face ((t (:foreground "#87CEEB"))))
;;  '(web-mode-css-pseudo-class ((t (:foreground "#DFCF44"))))
;;  '(web-mode-css-selector-face ((t (:foreground "#DFCF44"))))
;;  '(web-mode-css-string-face ((t (:foreground "#D78181"))))
;;  '(web-mode-doctype-face ((t (:foreground "cyan"))))
;;  '(web-mode-html-attr-equal-face ((t (:foreground "#FFFFFF"))))
;;  '(web-mode-html-attr-name-face ((t (:foreground "#87CEEB"))))
;;  '(web-mode-html-attr-value-face ((t (:foreground "#00FF00"))))
;;  '(web-mode-html-tag-face ((t (:foreground "cyan"))))
;;  '(web-mode-server-comment-face ((t (:foreground "#587F35")))))

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(completions-first-difference ((t (:inherit bold :foreground "color-164"))))
 '(font-lock-warning-face ((t (:foreground "#ff3700"))))
 '(query-replace ((t (:inherit isearch :background "color-40")))))
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(anzu-deactivate-region t)
 '(anzu-mode-lighter "")
 '(anzu-replace-to-string-separator " => ")
 '(anzu-search-threshold 1000)
 '(dtrt-indent-min-quality 50.0)
 '(git-gutter:added-sign "+")
 '(git-gutter:always-show-separator t)
 '(git-gutter:deleted-sign "-")
 '(git-gutter:modified-sign " ")
 '(git-gutter:separator-sign "|")
 '(package-selected-packages (quote (rainbow-mode)))
 '(safe-local-variable-values
   (quote
    ((eval ignore-errors "Write-contents-functions is a buffer-local alternative to before-save-hook"
           (add-hook
            (quote write-contents-functions)
            (lambda nil
              (delete-trailing-whitespace)
              nil))
           (require
            (quote whitespace))
           "Sometimes the mode needs to be toggled off and on."
           (whitespace-mode 0)
           (whitespace-mode 1))
     (whitespace-line-column . 80)
     (whitespace-style face tabs trailing lines-tail)))))
