;; -*- Mode: Emacs-Lisp; Coding: utf-8 -*-
;;; theme-settings.el --- Elisp theme settings

;; Temporary fix for TERM=screen environment
(let ((frame-background-mode 'light)) (frame-set-background-mode nil))

;; Theme
(setup "cyberpunk-theme"
  ;; Memo: Autumn theme
  ;; (setq cyberpunk-pink "#ff9500")
  ;; (setq cyberpunk-pink-1 "#ff0000")
  (load-theme 'cyberpunk t))

;; Color Settings
;; Comment Color for Byobu
;; (set-face-foreground 'font-lock-comment-face "red")
;; (set-face-foreground 'font-lock-comment-delimiter-face "red")

(provide 'theme-settings)
