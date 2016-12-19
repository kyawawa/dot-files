;;; -*- Mode: Emacs-Lisp; Coding: utf-8 -*-
;; http://tarao.hatenablog.com/entry/20150221/1424518030

;; Initialize el-get
(add-to-list 'load-path (locate-user-emacs-file "el-get/el-get"))
(unless (require 'el-get nil 'noerror)
  (with-current-buffer
      (url-retrieve-synchronously
       "https://raw.githubusercontent.com/dimitri/el-get/master/el-get-install.el")
    (goto-char (point-max))
    (eval-print-last-sexp)))

;; Install list
(el-get-bundle anzu)
(el-get-bundle auto-complete)
(el-get-bundle bash-completion)
(el-get-bundle c-eldoc)
(el-get-bundle cmake-mode)
(el-get-bundle company)
(el-get-bundle company-cmake)
(el-get-bundle dash)
(el-get-bundle direx)
(el-get-bundle dtrt-indent)
(el-get-bundle dummy-h-mode)
(el-get-bundle edit-server)
(el-get-bundle flycheck)
(el-get-bundle ggtags)
(el-get-bundle git-commit-mode)
(el-get-bundle git-gutter)
(el-get-bundle git-modes)
(el-get-bundle magit :type github :pkgname "magit/magit" :checkout "93cbf42") ;; ver 1.4.2 for emacs 24.3
(el-get-bundle markdown-mode)
(el-get-bundle popwin)
(el-get-bundle rainbow-mode)
(el-get-bundle smooth-scroll)
(el-get-bundle tramp)
(el-get-bundle tabbar)
(el-get-bundle undo-tree)
(el-get-bundle volatile-highlights)
(el-get-bundle web-mode)
(el-get-bundle yaml-mode)

;; Enable to fix version
;; To update package, just execute M-x el-get-update and git add el-get.lock
(el-get-bundle tarao/el-get-lock)
(el-get-lock)
