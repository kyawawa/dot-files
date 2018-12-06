;; -*- Mode: Emacs-Lisp; Coding: utf-8 -*-
;;; basic-settings.el --- Elisp theme settings

;; Temporary fix for TERM=screen environment
(let ((frame-background-mode 'light)) (frame-set-background-mode nil))

;; Theme
(when (locate-library "cyberpunk-theme")
  (add-to-list 'custom-theme-load-path
               (file-name-directory (locate-library "cyberpunk-theme")))
  ;; Memo: Autumn theme
  ;; (setq cyberpunk-pink "#ff9500")
  ;; (setq cyberpunk-pink-1 "#ff0000")
  (load-theme 'cyberpunk t))
  ;; (use-package cyberpunk-theme
  ;;   :disabled t
  ;;   :config
  ;;   (load-theme 'cyberpunk t)))

;; Color Settings
;; Comment Color for Byobu
;; (set-face-foreground 'font-lock-comment-face "red")
;; (set-face-foreground 'font-lock-comment-delimiter-face "red")
