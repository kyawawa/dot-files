;; -*- Mode: Emacs-Lisp; Coding: utf-8 -*-
;;; my-tabbar-mode.el --- Elisp settings for tabbar-mode

(setup "tabbar"
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

  ;; 外観変更
  ;; tab width
  (setq tabbar-separator '(1.5))
  ;; (setq tabbar-background-color (face-attribute 'mode-line-inactive :background))
  (set-face-attribute
   'tabbar-default nil
   :family "Comic Sans MS"
   ;; :background (face-attribute 'mode-line-inactive :foreground)
   ;; :foreground (face-attribute 'mode-line-inactive :background)
   :background "black"
   :foreground "gray72"
   :height 1.0)
  (set-face-attribute
   'tabbar-unselected nil
   ;; :background (face-attribute 'mode-line-inactive :background)
   ;; :foreground (face-attribute 'mode-line-inactive :foreground)
   :background "black"
   :foreground "gray72"
   :box nil)
  (set-face-attribute
   'tabbar-selected nil
   ;; :background "cyan"
   ;; :foreground "black"
   :background "black"
   :foreground "yellow"
   :box nil)
  (set-face-attribute
   'tabbar-button nil
   :box nil)

  ;; タブに表示させるバッファの設定
  (defvar my-tabbar-displayed-buffers
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

  ;; sort by fullpath
  ;;  (defun tabbar-add-tab (tabset object &optional append_ignored)
  ;;    "Add to TABSET a tab with value OBJECT if there isn't one there yet.
  ;; If the tab is added, it is added at the beginning of the tab list,
  ;; unless the optional argument APPEND is non-nil, in which case it is
  ;; added at the end."
  ;;    (let ((tabs (tabbar-tabs tabset)))
  ;;      (if (tabbar-get-tab object tabset)
  ;;          tabs
  ;;        (let ((tab (tabbar-make-tab object tabset)))
  ;;          (tabbar-set-template tabset nil)
  ;;          (set tabset (sort (cons tab tabs)
  ;;                            (lambda (a b) (string< (buffer-name (car a)) (buffer-name (car b))))))))))
  )

(provide 'my-tabbar-mode)
