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

;; sudo apt install ros-${ROSDISTRO}-rosemacs
(let ((ROS_DISTRO (getenv "ROS_DISTRO")))
  (when ROS_DISTRO
    (setup-expecting "yasnippets"
      (add-to-list 'yas-snippet-dirs (format "/opt/ros/%s/share/emacs/site-lisp/snippets") ROS_DISTRO))
    (setup "rosemacs")
    (invoke-rosemacs)
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
(add-to-list 'auto-mode-alist '("\\.urdf$" . xml-mode))
(add-to-list 'auto-mode-alist '("\\.sdf$" . xml-mode))

(provide 'ros-settings)
