;; -*- Mode: Emacs-Lisp; Coding: utf-8 -*-
;;; basic-settings.el --- Basic elisp settings

;; Moving buffer by Shift + arrow key
(setq windmove-wrap-around t)
(windmove-default-keybindings)
;; fix Shift + up is recognized as <select>
(define-key input-decode-map "\e[1;2A" [S-up])

;;; hidden tool bar
(tool-bar-mode -1)
;;; hidden menu bar
(menu-bar-mode -1)

;;; auto reload when file is changed
(global-auto-revert-mode 1)

;;; Show line and column number
(line-number-mode t)
(column-number-mode t)

;; Ask whether to insert newline at final line
(setq require-final-newline 0)

;; Set buffer that can not be killed.
(with-current-buffer "*scratch*"
  (emacs-lock-mode 'kill))
(with-current-buffer "*Messages*"
  (emacs-lock-mode 'kill))

;; share clipboard
(if (window-system)
    (progn
      (setq x-select-enable-primary t)
      (setq x-select-enable-clipboard t))
  ;; share clipboard at emacs -nw
  ;; You must install xsel
  (when (and (executable-find "xsel") (getenv "DISPLAY"))
    (setq interprogram-paste-function
          (lambda ()
            (shell-command-to-string "xsel -b -o")))
    (setq interprogram-cut-function
          (lambda (text &optional rest)
            (let* ((process-connection-type nil)
                   (proc (start-process "xsel" "*Messages*" "xsel" "-b" "-i")))
              (process-send-string proc text)
              (process-send-eof proc))))
    )
  )

;; don't distinguish upper/lower cases when search
(setq case-fold-search t)
;; don't distinguish upper/lower cases when incremental search
(setq isearch-case-fold-search t)
;; don't distinguish upper/lower cases when complete buffer name
(setq read-buffer-completion-ignore-case t)
;; don't distinguish upper/lower cases when complete file name
(setq read-file-name-completion-ignore-case t)

;; setting of indent
;; does not allow use hard tab.
(setq-default tab-width 4 indent-tabs-mode nil)

(electric-indent-mode t)
(bind-key* "C-j" 'newline-and-indent (not (eq major-mode 'lisp-interaction-mode)))

;; Basic keybindings
(define-key key-translation-map (kbd "C-h") (kbd "<DEL>"))
(bind-key* "\M-g" 'goto-line)
(bind-key* "\C-xL" 'goto-line)
(bind-key* "\C-xR" 'revert-buffer)
(bind-key* "C-x k" (lambda () (interactive) (kill-buffer (buffer-name))))
;; (bind-key* "M-u" (lambda () (interactive) (upcase-word -1)))

;; paste with indent
(defun yank-with-indent ()
  (interactive)
  (let ((indent
         (buffer-substring-no-properties (line-beginning-position) (line-end-position))))
    (message indent)
    (yank)
    (narrow-to-region (mark t) (point))
    (pop-to-mark-command)
    (replace-string "\n" (concat "\n" indent))
    (widen)))
;; (bind-key* "C-i C-y" 'yank-with-indent)

;; show line number (conflict with git-gutter)
;; (global-linum-mode 1)
;; (set-face-attribute 'linum nil
;;                     :foreground "green"
;;                     :height 0.9)

;; show and hide line number by f8 key
(global-set-key [f8] 'linum-mode)

;; Scroll row by row
(setq scroll-conservatively 1)

;; don't make backup file such as (*.~)
(setq make-backup-files nil)

;; Show function name
;; (which-function-mode 1)

;;; Delete endline whitespace with saving files
;; (add-hook 'before-save-hook 'delete-trailing-whitespace)
(defvar delete-trailing-whitespece-before-save t)
(defun my-delete-trailing-whitespace ()
  (if delete-trailing-whitespece-before-save
      (delete-trailing-whitespace)))
(add-hook 'before-save-hook 'my-delete-trailing-whitespace)
;; Disable delete-trailing-whitespace at some modes below
(add-hook 'markdown-mode-hook
          '(lambda ()
             (set (make-local-variable 'delete-trailing-whitespece-before-save) nil)))

;; ;; vcを起動しないようにする
;; (custom-set-variables
;;  ;; '(vc-handled-backends nil))

;; 不要なhookを外す
;; (remove-hook 'find-file-hook 'vc-find-file-hook)
;; (remove-hook 'kill-buffer-hook 'vc-kill-buffer-hook)

;; cua-mode
(cua-mode t)
(setq cua-enable-cua-keys nil)
(bind-key* "C-x SPC" 'cua-set-rectangle-mark)

;; backtab
;; http://d.hatena.ne.jp/mtv/20110925/p1
(global-set-key (kbd "<backtab>") 'backtab-line-or-region)
(defun backtab()
  "Do reverse indentation"
  (interactive)
  (back-to-indentation)
  (delete-backward-char
   (if (< (current-column) (car tab-stop-list)) 0
     (- (current-column)
        (car (let ((value (list 0)))
               (dolist (element tab-stop-list value)
                 (setq value (if (< element (current-column)) (cons element value) value)))))))))

(defun backtab-line-or-region ()
  (interactive)
  (if mark-active (save-excursion
                    (defvar count (count-lines (region-beginning) (region-end)))
                    (goto-char (region-beginning))
                    (dotimes (i count)
                      (backtab)
                      (forward-line))
                    (setq deactivate-mark nil))
    (backtab)))

(defun tab-to-tab-stop-line-or-region ()
  (interactive)
  (if mark-active (save-excursion
                    (defvar count (count-lines (region-beginning) (region-end)))
                    (goto-char (region-beginning))
                    (dotimes (i count)
                      (tab-to-tab-stop)
                      (forward-line))
                    (setq deactivate-mark nil))
    (tab-to-tab-stop)))

;; Show Git branch information to mode-line
;; http://syohex.hatenablog.com/entry/20130201/1359731697
;; mark-set problem for emacs 24.5
;; (let ((cell (or (memq 'mode-line-position mode-line-format)
;;                 (memq 'mode-line-buffer-identification mode-line-format)))
;;       (newcdr '(:eval (my/update-git-branch-mode-line))))
;;   (unless (member newcdr mode-line-format)
;;     (setcdr cell (cons newcdr (cdr cell)))))

;; (defun my/update-git-branch-mode-line ()
;;   (let* ((branch (replace-regexp-in-string
;;                   "[\r\n]+\\'" ""
;;                   (shell-command-to-string "git symbolic-ref -q HEAD")))
;;          (mode-line-str (if (string-match "^refs/heads/" branch)
;;                             (format "[%s]" (substring branch 11))
;;                           "[Not Repo]")))
;;     (propertize mode-line-str
;;                 'face '((:foreground "blue" :background "orange" :weight bold)))))

;; (defun reopen-with-sudo ()
;;   "Reopen current buffer-file with sudo using tramp."
;;   (interactive)
;;   (let ((file-name (buffer-file-name)))
;;     (if file-name
;;         (find-alternate-file (concat "/sudo::" file-name))
;;       (error "Cannot get a file name"))))

(setup "which-key"
  (which-key-setup-side-window-right-bottom)
  (which-key-mode t))

;; (setq visible-bell t)
(setq ring-bell-function 'ignore)

;;; When in Text mode, want to be in Auto-Fill mode.
;; (defun my-auto-fill-mode nil (auto-fill-mode 1))
;; (setq text-mode-hook 'my-auto-fill-mode)
;; (setq mail-mode-hook 'my-auto-fill-mode))

;;; (lookup)
;; (defvar lookup-search-agents '((ndtp "nfs")))
;; (define-key global-map "\C-co" 'lookup-pattern)
;; (define-key global-map "\C-cr" 'lookup-region)
;; (autoload 'lookup "lookup" "Online dictionary." t nil )

;; ;;; recentf M-x recentf-open-files
;; (when (require 'recentf nil t)
;;   (setq recentf-max-saved-items 2000)
;;   (setq recentf-exclude '(".recentf"))
;;   (setq recentf-auto-cleanup 'never)
;;   (setq recentf-auto-save-timer
;;         (run-with-idle-timer 30 t 'recentf-save-list))
;;   (recentf-mode 1))

;; Japanese
;; uncommented by ueda. beacuse in shell buffer, they invokes mozibake
;; (set-language-environment 'Japanese)
;; (prefer-coding-system 'utf-8)
;; (setq enable-double-n-syntax t)

;; (setq use-kuten-for-period nil)
;; (setq use-touten-for-comma nil)

;; Scroll up and down by M-n and M-p
(defun scroll-up-in-place (n)
  (interactive "p")
  (previous-line n)
  (scroll-down n))
(defun scroll-down-in-place (n)
  (interactive "p")
  (next-line n)
  (scroll-up n))

(bind-key "M-n" 'scroll-down-in-place)
(bind-key "M-p" 'scroll-up-in-place)

;; dabbrev
(bind-key* "\C-o" 'dabbrev-expand)

;; (show-paren-mode nil)
;; (setq show-paren-delay 0)
;; (set-face-attribute 'show-paren-match nil
;;                     :background nil
;;                     :foreground nil
;;                     :underline "#ffff00")

;; M-qで移動
(defun match-paren (arg)
  "Go to the matching parenthesis if on parenthesis."
  (interactive "p")
  (cond ((looking-at "\\s\(") (forward-list 1) (backward-char 1))
        ((looking-at "\\s\)") (forward-char 1) (backward-list 1))
        )
  )
(bind-key* "M-q" 'match-paren)

;; ignore start message
(setq inhibit-startup-message t)

;;; Open protected file as root automatically
(defadvice ido-find-file (after find-file-sudo activate)
  "Find file as root if necessary."
  (unless (and buffer-file-name
               (file-writable-p buffer-file-name))
    (find-alternate-file (concat "/sudo:root@localhost:" buffer-file-name))))

;;; Auto insert
;; TODO: http://d.hatena.ne.jp/higepon/20080731/1217491155
(add-hook 'find-file-not-found-hooks 'auto-insert)
(with-eval-after-load-feature 'autoinsert
  (setq auto-insert-directory (locate-user-emacs-file "templates/"))
  (setq auto-insert-alist
        (append '(
                  ("\\.l$" . "template.l")
                  ("\\.sh$" . "template.sh")
                  ("\\.bash$" . "template.sh")
                  ("Makefile$" . "template.Makefile")
                  ("\\.cpp$" . ["template.cpp" my-template])
                  ("\\.h$" . ["template.h" my-template])
                  ("\\.py$" . "template.py")
                  ("\\.jl$" . "template.jl")
                  ("\\.lua$" . "template.lua")
                  ("\\.launch$" . "template.launch")
                  ("\\.html$" . "template.html")
                  ) auto-insert-alist))
  (defvar template-replacements-alists
    '(("%file%"             . (lambda () (file-name-nondirectory (buffer-file-name))))
      ("%file-without-ext%" . (lambda () (file-name-sans-extension (file-name-nondirectory (buffer-file-name)))))
      ("%include-guard%"    . (lambda () (format "__%s_H__" (upcase (file-name-sans-extension (file-name-nondirectory buffer-file-name))))))))
  (defun my-template ()
    (time-stamp)
    (mapc #'(lambda(c)
              (progn
                (goto-char (point-min))
                (replace-string (car c) (funcall (cdr c)) nil)))
          template-replacements-alists)
    (goto-char (point-max))
    (message "done.")))

;; https://github.com/cs14095/ci.el
;; Ctrl-c, i, w => kill a word
;; Ctrl-c, i, t => kill inside of <>
;; Ctrl-c, i, ' => kill inside of ''
;; Ctrl-c, i, " => kill inside of ""
;; Ctrl-c, i, ( => kill inside of ()
;; Ctrl-c, i, { => kill inside of {}
(require 'ci nil t)

;;; add color space,tab,zenkaku-space
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
       ;; ("[ \t]+$" 0 my-face-u-1 append)
       )))
  (ad-enable-advice 'font-lock-mode 'before 'my-font-lock-mode)
  (ad-activate 'font-lock-mode)
  )

;;; Ido
(setup "ido"
  (ido-mode t)
  (ido-everywhere t)
  (customize-set-variable 'ido-confirm-unique-completion t)

  ;; Hot fix to get out of minibuffer (using popwin)
  (setup-after "popwin"
    (customize-set-variable 'popwin:special-display-config
                            (delete '(completion-list-mode :noselect t) popwin:special-display-config)))

  (setup "ido-completing-read+"
    (ido-ubiquitous-mode t))

  (setup "ido-vertical-mode"
    (ido-vertical-mode t)
    (setq ido-vertical-define-keys 'C-n-and-C-p-only) ;; C-n/C-pで候補選択する
    (setq ido-vertical-show-count t))
    ;; Fix bad behavior with popwin
    ;; http://tam5917.hatenablog.com/entry/2015/01/13/213640
    ;; (setup-after "popwin"
    ;;   (defun popwin:start-close-popup-window-timer ()
    ;;     (or popwin:close-popup-window-timer
    ;;         (setq popwin:close-popup-window-timer
    ;;               (run-with-timer popwin:close-popup-window-timer-interval
    ;;                               popwin:close-popup-window-timer-interval
    ;;                               'popwin:close-popup-window-timer))))))

  (setup "smex"
    (smex-initialize)
    (bind-key* "M-x" 'smex)
    (bind-key* "M-X" 'smex-major-mode-commands)))
    ;; This is your old M-x.
    ;; (bind-key* "M-x" 'execute-extended-command)))

;;; http://qiita.com/sune2/items/b73037f9e85962f5afb7
(setup "company"
  (setup "company-statistics")
  (add-hook 'after-init-hook 'global-company-mode)
  ;; (add-hook 'cmake-mode-hook 'company-mode)
  ;; (add-hook 'LaTeX-mode-hook 'company-mode)
  (setq company-idle-delay 0) ; デフォルトは0.5
  (setq company-minimum-prefix-length 2) ; デフォルトは4
  (setq company-selection-wrap-around t) ; 候補の一番下でさらに下に行こうとすると一番上に戻る
  (setq company-transformers '(company-sort-by-statistics company-sort-by-backend-importance))
  (define-key company-active-map (kbd "M-n") nil)
  (define-key company-active-map (kbd "M-p") nil)
  (define-key company-active-map (kbd "C-n") 'company-select-next)
  (define-key company-active-map (kbd "C-p") 'company-select-previous)
  (define-key company-active-map (kbd "C-h") nil)

  (set-face-attribute 'company-tooltip nil
                      :foreground "black" :background "lightgrey")
  (set-face-attribute 'company-tooltip-common nil
                      :foreground "black" :background "lightgrey")
  (set-face-attribute 'company-tooltip-common-selection nil
                      :foreground "white" :background "steelblue")
  (set-face-attribute 'company-tooltip-selection nil
                      :foreground "black" :background "steelblue")
  (set-face-attribute 'company-preview-common nil
                      :background nil :foreground "lightgrey" :underline t)
  (set-face-attribute 'company-scrollbar-fg nil
                      :background "orange")
  (set-face-attribute 'company-scrollbar-bg nil
                      :background "gray40")
  )

;;; popwin
;; (setup-lazy '(popwin:display-buffer) "popwin"
;;   :prepare
(when (locate-library "popwin")
  (setq display-buffer-function 'popwin:display-buffer))
  ;; (custom-set-variables popwin:special-display-config
  ;;                       (append '(("*Apropos*") ("*sdic*") ("*Faces*") ("*Colors*"))
  ;;                               popwin:special-display-config)))

;;; direx (with popwin)
;; TODO: Erase window when escape window
;; TODO: Do not use setup
;; (setup-lazy '(direx) "direx"
;;   :prepare
(when (locate-library "direx")
  (global-set-key (kbd "C-x C-j") 'direx:jump-to-directory-other-window)

  (setup-after "popwin"
    (push '(direx:direx-mode :position left :width 35 :dedicated t)
          popwin:special-display-config))
  (setq direx:leaf-icon "  "
        direx:open-icon "- "
        direx:closed-icon "+ "))

;;; anzu
(setup "anzu"
  (global-anzu-mode +1)
  (set-face-attribute 'anzu-mode-line nil
                      :foreground "blue" :background "orange" :weight 'bold)
  (bind-key "M-r" 'anzu-query-replace)
  (bind-key "M-r" 'comint-history-isearch-backward-regexp shell-mode-map)
  (custom-set-variables
   '(anzu-mode-lighter "")
   '(anzu-deactivate-region t)
   '(anzu-search-threshold 1000)
   '(anzu-replace-to-string-separator " => ")))

;; (setup "volatile-highlights"
;;   (volatile-highlights-mode t))

;; show undo-tree C-x u
(setup "undo-tree"
  (global-undo-tree-mode t)
  (global-set-key (kbd "M-/") 'undo-tree-redo))

(setup "dtrt-indent"
  (dtrt-indent-global-mode t)
  (custom-set-variables '(dtrt-indent-min-quality 50.0)))
;; (setq dtrt-indent-verbosity 0))

(with-eval-after-load-feature 'atomic-chrome
  (setq atomic-chrome-url-major-mode-alist
        '(("github\\.com" . gfm-mode)
          ("overleaf\\.com" . latex-mode)
          )))
;; (atomic-chrome-start-server))

;; yasnippet
;; (setup "yasnippet"
(setup-lazy '(yas-expand yas-insert-snippet
                         yas-new-snippet yas-visit-snippet-file) "yasnippet"
  :prepare
  (setup-keybinds nil
    "C-M-y" 'yas-expand
    ;; insert existing snippet
    "C-c i i" 'yas-insert-snippet
    ;; edit new snippet
    "C-c i n" 'yas-new-snippet
    ;; edit existing snippet
    "C-c i v" 'yas-visit-snippet-file)
  (yas-global-mode 1)
  (setup-keybinds yas-minor-mode-map "TAB" nil))

;;;;;;;;;; git ;;;;;;;;;;
;; (when (locate-library "magit")
;;   (require 'magit))

(add-hook 'gitconfig-mode-hook '(lambda () (setq indent-tabs-mode nil)))

;; global-linum-mode

(setup "git-gutter"
  ;; If you enable global minor mode
  (global-git-gutter-mode t)
  ;; If you would like to use git-gutter.el and linum-mode
  ;; (git-gutter:linum-setup)
  ;; If you enable git-gutter-mode for some modes
  ;; (add-hook 'ruby-mode-hook 'git-gutter-mode)
  (bind-keys*
   ("C-x g" . git-gutter-mode)
   ("C-x v =" . git-gutter:popup-hunk)
   ("C-x p" . git-gutter:previous-hunk)
   ("C-x n" . git-gutter:next-hunk)
   ("C-x v r" . git-gutter:revert-hunk)
   ("C-x v s" . git-gutter:stage-hunk)
   ("C-x v SPC" . git-gutter:mark-hunk)
   )

  (custom-set-variables
   '(git-gutter:modified-sign " ")
   '(git-gutter:added-sign "+")
   '(git-gutter:deleted-sign "-")
   '(git-gutter:separator-sign "|")
   '(git-gutter:always-show-separator t))

  (set-face-background 'git-gutter:modified "purple") ;; background color
  (set-face-foreground 'git-gutter:added "green")
  (set-face-foreground 'git-gutter:deleted "red")
  (set-face-foreground 'git-gutter:separator "blue"))

;; ;; sudo apt-get install yc-el migemo
;; (when (require 'yc nil t)
;;   (load-library "yc"))
;; ;; (when (require 'migemo nil t)
;; ;;   (load "migemo"))

(provide 'basic-settings)
