;; -*- Mode: Emacs-Lisp; Coding: utf-8 -*-

;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
;; (package-initialize)

(add-to-list 'load-path (locate-user-emacs-file "site-lisp"))
(add-to-list 'load-path (locate-user-emacs-file "settings"))
(load "elget-settings")
(load "basic-settings")
(load "theme-settings")
(load "ros-settings")
(load "my-cc-mode")
(load "my-tabbar-mode")
(load "my-euslisp-mode")
(load "my-rust-mode")
(load "my-tex-mode")

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
(setq shell-command-option "-c")
(setq system-uses-terminfo nil)
(setq shell-file-name-chars "~/A-Za-z0-9_^$!#%&{}@`'.,:()-")
(add-hook 'shell-mode-hook 'ansi-color-for-comint-mode-on)

(when nil
  ;; stop auto scroll according to cursol
  (setq comint-scroll-show-maximum-output nil)
  )

;; vrml mode
(when (locate-library "vrml-mode")
  (autoload 'vrml-mode "vrml-mode" "VRML mode." t)
  (setq auto-mode-alist (append '(("\\.wrl\\'" . vrml-mode)) auto-mode-alist)))

;; matlab mode
(when (locate-library "matlab-mode")
  (setq auto-mode-alist (append '(("\\.m\\'" . matlab-mode)) auto-mode-alist)))

(when (locate-library "octave-mod")
  (setq auto-mode-alist (append '(("\\.m\\'" . octave-mode)) auto-mode-alist)))

;; for Arduino
(setq auto-mode-alist (append '(("\\.pde\\'" . c++-mode)) auto-mode-alist))
(setq auto-mode-alist (append '(("\\.ino\\'" . c++-mode)) auto-mode-alist))

;; assembler mode
(when (locate-library "asm-mode")
  ;; add .s
  (setq auto-mode-alist (append '(("\\.s\\'" . asm-mode)) auto-mode-alist)))

;; yaml mode
(when (locate-library "yaml-mode")
  ;; can use add-to-list too
  (add-to-list 'auto-mode-alist '("\\.yml$" . yaml-mode))
  (add-to-list 'auto-mode-alist '("\\.rosinstall$" . yaml-mode))
  (add-to-list 'auto-mode-alist '("\\.cnoid$" . yaml-mode)) ;; Choreonoid project file
  (add-to-list 'auto-mode-alist '("\\.body$" . yaml-mode))) ;; Choreonoid body file

;; ;; auto-complete
;; (when (locate-library "auto-complete")
;;   (ac-config-default))

(when (locate-library "jedi")
  (add-hook 'python-mode-hook 'jedi:setup)
  (setq jedi:complete-on-dot t)
  (setq jedi:use-shortcuts t) ;; M-. : jump definition, M-, : return from definition
  (when (locate-library "company-jedi")
    (add-to-list 'company-backends 'company-jedi)) ;; backendに追加
  )

(when (locate-library "julia-repl")
  (add-hook 'julia-mode-hook 'julia-repl-mode))

;; For folding
;; http://d.hatena.ne.jp/yutoichinohe/20121119/1353321674
(dolist (mode-hook '(scheme-mode-hook emacs-lisp-mode-hook
                                      lisp-mode-hook python-mode-hook ruby-mode-hook))
  (add-hook mode-hook
            '(lambda ()
               (hs-minor-mode 1))))
(define-key global-map (kbd "C-c ;") 'hs-toggle-hiding)

;; Open markdown with shiba
(when (eq 0 (shell-command "type Shiba"))
  (defun open-with-shiba ()
    "open a current markdown file with shiba"
    (interactive)
    (start-process "shiba" "*shiba*" "Shiba" "--detach" buffer-file-name))
  (add-hook 'markdown-mode-hook
            '(lambda()
               (define-key markdown-mode-map (kbd "C-c C-c") 'open-with-shiba)
               )))

(when (locate-library "web-mode")
  (autoload 'web-mode "web-mode" "WEB mode." t)
  (dolist (extensions '("\\.phtml\\'" "\\.tpl\\.php\\'" "\\.[gj]sp\\'" "\\.as[cp]x\\'"
                        "\\.erb\\'" "\\.mustache\\'" "\\.djhtml\\'" "\\.html?\\'"))
    (add-to-list 'auto-mode-alist `(,extensions . web-mode)))

  (defun web-mode-hook ()
    (setq web-mode-markup-indent-offset 2)
    (setq web-mode-css-indent-offset 2)
    (setq web-mode-code-indent-offset 2)
    (setq web-mode-engines-alist
          '(("php"    . "\\.phtml\\'")
            ("blade"  . "\\.blade\\."))))
  (add-hook 'web-mode-hook  'web-mode-hook)


 ;;  ;; 色の設定
 ;;  (custom-set-faces
 ;;   ;; web-mode. colors.
 ;;   '(web-mode-doctype-face
 ;;     ((t (:foreground "cyan"))))
 ;;   '(web-mode-html-tag-face
 ;;     ((t (:foreground "cyan"))))
 ;;   '(web-mode-html-attr-name-face
 ;;     ((t (:foreground "#87CEEB"))))
 ;;   '(web-mode-html-attr-equal-face
 ;;     ((t (:foreground "#FFFFFF"))))
 ;;   '(web-mode-html-attr-value-face
 ;;     ((t (:foreground "#00FF00"))))
 ;;   '(web-mode-comment-face
 ;;     ((t (:foreground "#587F35"))))
 ;;   '(web-mode-server-comment-face
 ;;     ((t (:foreground "#587F35"))))

 ;; ;;; web-mode. css colors.
 ;;   '(web-mode-css-at-rule-face
 ;;     ((t (:foreground "#DFCF44"))))
 ;;   '(web-mode-css-selector-face
 ;;     ((t (:foreground "#DFCF44"))))
 ;;   '(web-mode-css-pseudo-class
 ;;     ((t (:foreground "#DFCF44"))))
 ;;   '(web-mode-css-property-name-face
 ;;     ((t (:foreground "#87CEEB"))))
 ;;   '(web-mode-css-string-face
 ;;     ((t (:foreground "#D78181")))))
  )

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
 '(query-replace ((t (:inherit isearch :background "color-40")))))
