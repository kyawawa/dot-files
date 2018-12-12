;; -*- Mode: Emacs-Lisp; Coding: utf-8 -*-
;;; ros-settings.el --- Elisp settings for ROS

(eval-when-compile
  (message "Byte compile rosemacs")
  (let ((ROS_DISTRO (getenv "ROS_DISTRO")))
    (when ROS_DISTRO
      (let ((byte-compile-dest-file-function
             (lambda (filename)
               (concat (locate-user-emacs-file "site-lisp/")
                       (file-name-sans-extension (file-name-nondirectory filename))
                       ".elc"))))
        (byte-recompile-directory (format "/opt/ros/%s/share/emacs/site-lisp" ROS_DISTRO) 0)))
    ))

;; To autoload rng-loc
(defun my-invoke-rosemacs (ros-site-lisp)
  (interactive)
  (add-hook 'shell-mode-hook 'set-rosemacs-shell-hooks)
  (setq rosemacs/invoked t)
  (rosemacs/track-topics ros-topic-update-interval)
  (rosemacs/track-nodes ros-node-update-interval)

  ;; nxml mode
  (setup-lazy '(nxml-mode) "nxml-mode"
    :prepare
    (progn
      (add-to-list 'auto-mode-alist '("\.launch$" . nxml-mode))
      (add-to-list 'auto-mode-alist '("\.test$" . nxml-mode))
      (add-to-list 'auto-mode-alist '("manifest.xml" . nxml-mode)))
    (setup "rng-loc"
      (cl-pushnew (concat ros-site-lisp "rng-schemas.xml") rng-schema-locating-files)))

  (add-to-list 'auto-mode-alist '("\\.urdf" . xml-mode))
  (add-to-list 'auto-mode-alist '("\\.xacro" . xml-mode))

  ;; rosbag view mode
  (add-to-list 'auto-mode-alist '("\.bag$" . rosbag-view-mode))

  ;; msg and srv files: for now use gdb-script-mode
  (add-to-list 'auto-mode-alist '("\\.msg\\'" . gdb-script-mode))
  (add-to-list 'auto-mode-alist '("\\.srv\\'" . gdb-script-mode))
  (add-to-list 'auto-mode-alist '("\\.action\\'" . gdb-script-mode))
  (font-lock-add-keywords 'gdb-script-mode
                          '(("\\<\\(bool\\|byte\\|int8\\|uint8\\|int16\\|uint16\\|int32\\|uint32\\|int64\\|uint64\\|float32\\|float64\\|string\\|time\\|duration\\)\\>" . font-lock-builtin-face)) 'set))

;; sudo apt install ros-${ROSDISTRO}-rosemacs
(let ((ROS_DISTRO (getenv "ROS_DISTRO")))
  (when ROS_DISTRO
    (defvar ros-site-lisp (file-name-as-directory (format "/opt/ros/%s/share/emacs/site-lisp" ROS_DISTRO)))
    (setup-expecting "yasnippets"
      (cl-pushnew (concat ros-site-lisp "snippets") yas-snippet-dirs))
    (setup "rosemacs")
    (my-invoke-rosemacs ros-site-lisp)
    (global-set-key "\C-x\C-r" ros-keymap)
    (when (eq 0 (shell-command "type roseus"))
      (defun lisp-other-window ()
        "Run Lisp on other window"
        (interactive)
        (set-variable 'inferior-lisp-program "roseus")
        (switch-to-buffer-other-window
         (get-buffer-create "*inferior-lisp*"))
        (run-lisp inferior-lisp-program))
      (global-set-key "\C-cE" 'lisp-other-window))))

(add-to-list 'auto-mode-alist '("\\.world$" . xml-mode))
(add-to-list 'auto-mode-alist '("\\.sdf$" . xml-mode))

(provide 'ros-settings)
