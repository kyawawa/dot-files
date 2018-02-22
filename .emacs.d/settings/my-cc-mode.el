;; -*- Mode: Emacs-Lisp; Coding: utf-8 -*-
;;; cc-mode.el --- Elisp settings for cc-mode
(require 'cc-mode)

(defconst my-c-style
  '(
    (c-electric-pound-behavior     . 'alignleft)
    (c-tab-always-indent           . t)
    (c-hanging-braces-alist        . ((block-open)
                                      (brace-list-open)
                                      (substatement-open)
                                      (defun-open before after)
                                      (defun-close before after)
                                      ))
    (c-hanging-colons-alist        . ((member-init-intro before)
                                      (inher-intro)
                                      (case-label)
                                      (access-label      after)
                                      (label             after)
                                      (access-key        after)))
    (c-cleanup-list                . (scope-operator
                                      empty-defun-braces
                                      defun-close-semi))
    (c-offsets-alist               . ((arglist-close        . c-lineup-arglist)
                                      (case-label           . 4)
                                      (statement-case-intro . 4)
                                      (access-label         . -4)
                                      (label                . -)
                                      (substatement-open    . 0)
                                      (block-open           . 0)
                                      (knr-argdecl-intro    . -)))
    )
  "My C++/C Programming Style")


;; Customizations for both c-mode and c++-mode
(add-hook
 'c-mode-common-hook
 '(lambda ()
;; (defun my-c-mode-common-hook ()
    ;; set up for my perferred indentation style, but  only do it once
    (c-add-style "My" my-c-style 'set-this-style)
    ;; we like auto-newline and hungry-delete
    ;; (c-toggle-auto-hungry-state 1)
    ;; keybindings for both C and C++.  We can put these in c-mode-map
    ;; because c++-mode-map inherits it
    ;; (bind-key "\C-m" 'newline-and-indent c-mode-map)
    ;; insert 4 tabs
    (setq tab-width 4)
    ))
