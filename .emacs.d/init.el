;;; -*- Mode: Emacs-Lisp; Coding: utf-8 -*-

(require 'package) ;; dont read package.el when emacs24
(add-to-list 'load-path "~/.emacs.d/site-lisp/")
(load "package-install.el")

;; Shift+方向キーでバッファ切り替え
(setq windmove-wrap-around t)
(windmove-default-keybindings)
;; fix Shift + up is recognized as <select>
(define-key input-decode-map "\e[1;2A" [S-up])

;; hidden tool bar
(tool-bar-mode -1)
;; hidden menu bar
(menu-bar-mode -1)

;; auto reload when file is changed
(global-auto-revert-mode 1)

;; share clipboard
(cond (window-system
       (setq x-select-enable-primary t)
       (setq x-select-enable-clipboard t) ))
;; share clipboard at emacs -nw
;; You must install xsel
;; (cond ((executable-find "xsel")
;;        (setq interprogram-paste-function
;;              (lambda ()
;;                (shell-command-to-string "xsel -b -o")))
;;        (setq interprogram-cut-function
;;              (lambda (text &optional rest)
;;                (let* ((process-connection-type nil)
;;                       (proc (start-process "xsel" "*Messages*" "xsel" "-b" "-i")))
;;                  (process-send-string proc text)
;;                  (process-send-eof proc))))
;;        ))

;; setting of indent
(setq default-tab-width 4)
(setq-default c-basic-offset 4
              tab-width 4)
(add-hook 'c-mode-hook '(lambda () (setq tab-width 4)))
(add-hook 'c++-mode-hook '(lambda () (setq tab-width 4)))

;; show line number
(global-linum-mode 1)
;; not show line number when shell-mode
(add-hook 'shell-mode-hook
          '(lambda ()
             (global-linum-mode 0)))
;; show and hide line number by f8 key
(global-set-key [f8] 'linum-mode)

;; don't make backup file such as (*.~)
(setq make-backup-files nil)

;; 保存時に行末の空白削除
(add-hook 'before-save-hook 'delete-trailing-whitespace)

;; vcを起動しないようにする
(custom-set-variables
 '(vc-handled-backends nil))

;; 不要なhookを外す
(remove-hook 'find-file-hook 'vc-find-file-hook)
(remove-hook 'kill-buffer-hook 'vc-kill-buffer-hook)

;; Show Git branch information to mode-line
;; http://syohex.hatenablog.com/entry/20130201/1359731697
(let ((cell (or (memq 'mode-line-position mode-line-format)
                (memq 'mode-line-buffer-identification mode-line-format)))
      (newcdr '(:eval (my/update-git-branch-mode-line))))
  (unless (member newcdr mode-line-format)
    (setcdr cell (cons newcdr (cdr cell)))))

(defun my/update-git-branch-mode-line ()
  (let* ((branch (replace-regexp-in-string
                  "[\r\n]+\\'" ""
                  (shell-command-to-string "git symbolic-ref -q HEAD")))
         (mode-line-str (if (string-match "^refs/heads/" branch)
                            (format "[%s]" (substring branch 11))
                          "[Not Repo]")))
    (propertize mode-line-str
                'face '((:foreground "Dark green" :weight bold)))))

(defun reopen-with-sudo ()
  "Reopen current buffer-file with sudo using tramp."
  (interactive)
  (let ((file-name (buffer-file-name)))
    (if file-name
        (find-alternate-file (concat "/sudo::" file-name))
      (error "Cannot get a file name"))))

;; -*- mode: Emacs-Lisp -*-
;;; Global Setting Key
;;;
(global-set-key "\C-h" 'backward-delete-char)
(global-set-key "\M-g" 'goto-line)
(global-set-key "\C-xL" 'goto-line)
(global-set-key "\C-xR" 'revert-buffer)
(global-set-key "\er" 'query-replace)

(global-unset-key "\C-o" )

(setq visible-bell t)

;;; When in Text mode, want to be in Auto-Fill mode.
;;;
(when nil
  (defun my-auto-fill-mode nil (auto-fill-mode 1))
  (setq text-mode-hook 'my-auto-fill-mode)
  (setq mail-mode-hook 'my-auto-fill-mode))

;; (lookup)
(setq lookup-search-agents '((ndtp "nfs")))
(define-key global-map "\C-co" 'lookup-pattern)
(define-key global-map "\C-cr" 'lookup-region)
(autoload 'lookup "lookup" "Online dictionary." t nil )

;; Japanese
;; uncommented by ueda. beacuse in shell buffer, they invokes mozibake
(set-language-environment 'Japanese)
(prefer-coding-system 'utf-8)
(setq enable-double-n-syntax t)

(setq use-kuten-for-period nil)
(setq use-touten-for-comma nil)

;; sudo apt-get install yc-el migemo
(when (require 'yc nil t)
  (load-library "yc"))
(when (require 'migemo nil t)
  (load "migemo"))

(global-font-lock-mode t)

;; M-n and M-p
(global-unset-key "\M-p")
(global-unset-key "\M-n")

(defun scroll-up-in-place (n)
  (interactive "p")
  (previous-line n)
  (scroll-down n))
(defun scroll-down-in-place (n)
  (interactive "p")
  (next-line n)
  (scroll-up n))

(global-set-key "\M-n" 'scroll-down-in-place)
(global-set-key "\M-p" 'scroll-up-in-place)

;; dabbrev
(global-set-key "\C-o" 'dabbrev-expand)

;; add by kojima
(require 'paren)
(show-paren-mode 1)
;; ;; C-qで移動
(defun match-paren (arg)
  "Go to the matching parenthesis if on parenthesis."
  (interactive "p")
  (cond ((looking-at "\\s\(") (forward-list 1) (backward-char 1))
        ((looking-at "\\s\)") (forward-char 1) (backward-list 1))
        )
  )
(global-set-key "\C-Q" 'match-paren)

(font-lock-add-keywords 'lisp-mode
                        (list
                         (list "\\(\\*\\w\+\\*\\)\\>"
                               '(1 font-lock-constant-face nil t))
                         (list "\\(\\+\\w\+\\+\\)\\>"
                               '(1 font-lock-constant-face nil t))))

(when t
  ;; does not allow use hard tab.
  (setq-default indent-tabs-mode nil)
  )

;; ignore start message
(setq inhibit-startup-message t)

(when t
  (require 'autoinsert)
  (when (featurep 'emacs)
    (setq auto-insert-directory "$HOME/.emacs.d/templates")
    (setq auto-insert-alist
          (nconc '(
                   ("\\.l$" . "template.l")
                   ("\\.sh$" . "template.sh")
                   ("Makefile$" . "template.Makefile")
                   ("\\.cpp$" . "template.cpp")
                   ("\\.h$" . "template.h")
                   ("\\.py$" . "template.py")
                   ) auto-insert-alist))
    (add-hook 'find-file-not-found-hooks 'auto-insert)
    )
  )

;; shell mode
(set-terminal-coding-system 'utf-8)
(set-buffer-file-coding-system 'utf-8)
(setq explicit-shell-file-name shell-file-name)
(setq shell-command-option "-c")
(setq system-uses-terminfo nil)
(setq shell-file-name-chars "~/A-Za-z0-9_^$!#%&{}@`'.,:()-")
(add-hook 'shell-mode-hook 'ansi-color-for-comint-mode-on)


(defun lisp-other-window ()
  "Run Lisp on other window"
  (interactive)
  (set-variable 'inferior-lisp-program "roseus")
  (switch-to-buffer-other-window
   (get-buffer-create "*inferior-lisp*"))
  (run-lisp inferior-lisp-program))

;; (set-variable 'inferior-lisp-program "roseus")
(global-set-key "\C-cE" 'lisp-other-window)

;; add color space,tab,zenkaku-space
(unless (and (boundp '*do-not-show-space*) *do-not-show-space*)
  (defface my-face-b-1 '((t (:background "orange"))) nil)
  (defface my-face-b-2 '((t (:background "gray10"))) nil)
  (defface my-face-u-1 '((t (:background "SteelBlue1" :underline t))) nil)
  (defvar my-face-b-1 'my-face-b-1)
  (defvar my-face-b-2 'my-face-b-2)
  (defvar my-face-u-1 'my-face-u-1)

  (defadvice font-lock-mode (before my-font-lock-mode ())
    (font-lock-add-keywords
     major-mode
     '(
       ("\t" 0 my-face-b-1 append)
       ("　" 0 my-face-b-2 append)
                                        ;("[ \t]+$" 0 my-face-u-1 append)
       )))
  (ad-enable-advice 'font-lock-mode 'before 'my-font-lock-mode)
  (ad-activate 'font-lock-mode)
  )

;; to change indent for euslisp's method definition ;; begin
(define-derived-mode euslisp-mode lisp-mode
  "EusLisp"
  "Major Mode for EusLisp"
  )
(defun lisp-indent-function (indent-point state)
  "This function is the normal value of the variable `lisp-indent-function'.
It is used when indenting a line within a function call, to see if the
called function says anything special about how to indent the line.

INDENT-POINT is the position where the user typed TAB, or equivalent.
Point is located at the point to indent under (for default indentation);
STATE is the `parse-partial-sexp' state for that position.

If the current line is in a call to a Lisp function
which has a non-nil property `lisp-indent-function',
that specifies how to do the indentation.  The property value can be
* `defun', meaning indent `defun'-style;
* an integer N, meaning indent the first N arguments specially
  like ordinary function arguments and then indent any further
  arguments like a body;
* a function to call just as this function was called.
  If that function returns nil, that means it doesn't specify
  the indentation.

This function also returns nil meaning don't specify the indentation."
  (let ((normal-indent (current-column)))
    (goto-char (1+ (elt state 1)))
    (parse-partial-sexp (point) calculate-lisp-indent-last-sexp 0 t)
    (if (and (elt state 2)
             (not (looking-at "\\sw\\|\\s_")))
        ;; car of form doesn't seem to be a symbol
        (progn
          (if (not (> (save-excursion (forward-line 1) (point))
                      calculate-lisp-indent-last-sexp))
              (progn (goto-char calculate-lisp-indent-last-sexp)
                     (beginning-of-line)
                     (parse-partial-sexp (point)
                                         calculate-lisp-indent-last-sexp 0 t)))
          ;; Indent under the list or under the first sexp on the same
          ;; line as calculate-lisp-indent-last-sexp.  Note that first
          ;; thing on that line has to be complete sexp since we are
          ;; inside the innermost containing sexp.
          (backward-prefix-chars)
          (current-column))
      (let ((function (buffer-substring (point)
                                        (progn (forward-sexp 1) (point))))
            method)
        (setq method (or (get (intern-soft function) 'lisp-indent-function)
                         (get (intern-soft function) 'lisp-indent-hook)))
        (cond ((or (eq method 'defun)
                   (and
                    (eq major-mode 'euslisp-mode)
                    (string-match ":.*" function))
                   (and (null method)
                        (> (length function) 3)
                        (string-match "\\`def" function)))
               (lisp-indent-defform state indent-point))
              ((integerp method)
               (lisp-indent-specform method state
                                     indent-point normal-indent))
              (method
               (funcall method indent-point state)))))))
;; to change indent for euslisp's method definition ;; end
;;Xwindow setting

(when nil
  (set-foreground-color "white")
  (set-background-color "black")
  (set-scroll-bar-mode 'right)
  (set-cursor-color "white")
  )
;;
(line-number-mode t)
(column-number-mode t)

(when nil
  ;; stop auto scroll according to cursol
  (setq comint-scroll-show-maximum-output nil)
  )

(setq ring-bell-function 'ignore)
(setq auto-mode-alist (cons (cons "\\.launch$" 'xml-mode) auto-mode-alist))

;; sudo apt-get install rosemacs-el
(when (getenv "ROS_WORKSPACE" )
  (when (require 'rosemacs nil t)
    (invoke-rosemacs)
    (global-set-key "\C-x\C-r" ros-keymap)))

;; vrml mode
(when (file-exists-p (format "%s/.emacs.d/site-lisp/vrml-mode.el" (getenv "HOME")))
  (autoload 'vrml-mode "vrml-mode" "VRML mode." t)
  (setq auto-mode-alist (append '(("\\.wrl\\'" . vrml-mode)) auto-mode-alist)))

;; matlab mode
(when (locate-library "matlab-mode")
  (setq auto-mode-alist (append '(("\\.m\\'" . matlab-mode)) auto-mode-alist)))

(when (locate-library "octave-mod")
  (setq auto-mode-alist (append '(("\\.m\\'" . octave-mode)) auto-mode-alist)))

;; for Arduino
(setq auto-mode-alist (append '(("\\.pde\\'" . c++-mode)) auto-mode-alist))

;; yaml mode
(when (locate-library "yaml-mode")
  ;; can use add-to-list too
  (add-to-list 'auto-mode-alist '("¥¥.yml$" . yaml-mode)))

;; tabbar settings
(when (locate-library "tabbar")
  (tabbar-mode 1)
  ;; タブ上でマウスホイール操作無効
  (tabbar-mwheel-mode -1)
  ;; グループ化しない
  (setq tabbar-buffer-groups-function nil)
  ;; 左に表示されるボタンを無効化
  (dolist (btn '(tabbar-buffer-home-button
                 tabbar-scroll-left-button
                 tabbar-scroll-right-button))
    (set btn (cons (cons "" nil)
                   (cons "" nil))))
  ;; タブの長さ
  (setq tabbar-separator '(1.5))
  ;; 外観変更
  (set-face-attribute
   'tabbar-default nil
   :family "Comic Sans MS"
   :background "black"
   :foreground "gray72"
   :height 1.0)
  (set-face-attribute
   'tabbar-unselected nil
   :background "black"
   :foreground "grey72"
   :box nil)
  (set-face-attribute
   'tabbar-selected nil
   :background "black"
   :foreground "yellow"
   :box nil)
  (set-face-attribute
   'tabbar-button nil
   :box nil)
  (set-face-attribute
   'tabbar-separator nil
   :height 1.5)
  ;; タブに表示させるバッファの設定
  (defvar my-tabbar-displayed-buffers
                                        ;  '("*scratch*" "*Messages*" "*Backtrace*" "*Colors*" "*Faces*" "*vc-")
    '("*scratch*" "*shell*" "*Colors*" "*Faces*" "*vc-" "*inferior-lisp*")
    "*Regexps matches buffer names always included tabs.")

  (defun my-tabbar-buffer-list ()
    "Return the list of buffers to show in tabs.
Exclude buffers whose name starts with a space or an asterisk.
The current buffer and buffers matches `my-tabbar-displayed-buffers'
are always included."
    (let* ((hides (list ?\  ?\*))
           (re (regexp-opt my-tabbar-displayed-buffers))
           (cur-buf (current-buffer))
           (tabs (delq nil
                       (mapcar (lambda (buf)
                                 (let ((name (buffer-name buf)))
                                   (when (or (string-match re name)
                                             (not (memq (aref name 0) hides)))
                                     buf)))
                               (buffer-list)))))
      ;; Always include the current buffer.
      (if (memq cur-buf tabs)
          tabs
        (cons cur-buf tabs))))

  (setq tabbar-buffer-list-function 'my-tabbar-buffer-list)
  ;; タブ切り替えのキーバインド
  (global-set-key (kbd "<M-right>") 'tabbar-forward-tab)
  (global-set-key "\C-\\" 'tabbar-forward-tab)
  (global-set-key (kbd "<M-left>") 'tabbar-backward-tab)
  (global-set-key "\C-^" 'tabbar-backward-tab)

  (defun my-tabbar-buffer-select-tab (event tab)
    "On mouse EVENT, select TAB."
    (let ((mouse-button (event-basic-type event))
          (buffer (tabbar-tab-value tab)))
      (cond
       ((eq mouse-button 'mouse-2)
        (with-current-buffer buffer
          (kill-buffer)))
       ((eq mouse-button 'mouse-3)
        (delete-other-windows))
       (t
        (switch-to-buffer buffer)))
      ;; Don't show groups.
      (tabbar-buffer-show-groups nil)))

  (setq tabbar-help-on-tab-function 'my-tabbar-buffer-help-on-tab)
  (setq tabbar-select-tab-function 'my-tabbar-buffer-select-tab)
) ;; end of tabbar settings

;; popwin
(when (locate-library "popwin")
      (setq display-buffer-function 'popwin:display-buffer)
      (setq popwin:special-display-config))

;; direx (with popwin)
(when (locate-library "direx")
  (setq direx:leaf-icon "  "
        direx:open-icon "- "
        direx:closed-icon "+ ")
  (if (locate-library "popwin")
      (progn
        (push '(direx:direx-mode :position left :width 40 :dedicated t)
              popwin:special-display-config)
        (global-set-key (kbd "C-x C-j") 'direx:jump-to-directory-other-window))
    (global-set-key (kbd "C-x C-j") 'direx:jump-to-directory)))

;; http://qiita.com/yuizho/items/4c121bdecc103109e4fd
(when (locate-library "jedi")
  (add-hook 'python-mode-hook 'jedi:setup)
  (setq jedi:complete-on-dot t))

;; For folding
;; http://d.hatena.ne.jp/yutoichinohe/20121119/1353321674
(add-hook 'c++-mode-hook
          '(lambda ()
             (hs-minor-mode 1)))
(add-hook 'c-mode-hook
          '(lambda ()
             (hs-minor-mode 1)))
(add-hook 'scheme-mode-hook
          '(lambda ()
             (hs-minor-mode 1)))
(add-hook 'emacs-lisp-mode-hook
          '(lambda ()
             (hs-minor-mode 1)))
(add-hook 'lisp-mode-hook
          '(lambda ()
             (hs-minor-mode 1)))
(add-hook 'python-mode-hook
          '(lambda ()
             (hs-minor-mode 1)))
(add-hook 'ruby-mode-hook
          '(lambda ()
             (hs-minor-mode 1)))
(define-key global-map (kbd "C-c ;") 'hs-toggle-hiding)

(when (locate-library "rainbow-mode")
  (add-hook 'css-mode-hook 'rainbow-mode)
  (add-hook 'web-mode-hook 'rainbow-mode)
  (add-hook 'html-mode-hook 'rainbow-mode)
  (add-hook 'vrml-mode-hook 'rainbow-mode))

(when (locate-library "ess-site")
  (require 'ess-site))
