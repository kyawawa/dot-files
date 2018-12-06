;; -*- Mode: Emacs-Lisp; Coding: utf-8 -*-
;;; basic-settings.el --- Elisp settings for ROS

;; sudo apt install ros-${ROSDISTRO}-rosemacs
(when (getenv "ROS_DISTRO")
  (when (require 'rosemacs nil t)
    (invoke-rosemacs)
    (global-set-key "\C-x\C-r" ros-keymap))
  (when (eq 0 (shell-command "type roseus"))
    (defun lisp-other-window ()
      "Run Lisp on other window"
      (interactive)
      (set-variable 'inferior-lisp-program "roseus")
      (switch-to-buffer-other-window
       (get-buffer-create "*inferior-lisp*"))
      (run-lisp inferior-lisp-program))
    (global-set-key "\C-cE" 'lisp-other-window)))

(add-to-list 'auto-mode-alist '("\\.world$" . xml-mode))
(add-to-list 'auto-mode-alist '("\\.urdf$" . xml-mode))
(add-to-list 'auto-mode-alist '("\\.sdf$" . xml-mode))
