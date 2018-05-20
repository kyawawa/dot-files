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

;;;; Install list
;;;; Fundamental packages
(el-get-bundle anzu)
(el-get-bundle auto-complete)
(el-get-bundle direx)
(el-get-bundle flycheck)
(el-get-bundle ggtags)
(el-get-bundle git-gutter)
(el-get-bundle popwin)
(el-get-bundle rainbow-mode)
(el-get-bundle tabbar)
(el-get-bundle undo-tree)
(el-get-bundle volatile-highlights)
(el-get-bundle yasnippet)

;;;; Emacs theme
(el-get-bundle cyberpunk-theme :type github :pkgname "n3mo/cyberpunk-theme.el")

;;;; For emacs lisp
(el-get-bundle dash)
(el-get-bundle use-package)

;;;; Completion
(el-get-bundle bash-completion)
(el-get-bundle company)
(el-get-bundle company-statistics)

;;;; For specific mode
;;; C, C++
(el-get-bundle c-eldoc)
(el-get-bundle clang-format)
(el-get-bundle dummy-h-mode)
(el-get-bundle dtrt-indent)
;;; Rust
(when (eq 0 (shell-command "type rustc"))
  (el-get-bundle rust-mode)
  (el-get-bundle emacs-racer)
  (el-get-bundle f) ;; required in emacs-racer
  (el-get-bundle flycheck-rust))
;;; TeX
;; (el-get-bundle auctex)
;; (el-get-bundle company-auctex)
;; Scripts
(el-get-bundle jedi-core)
(el-get-bundle company-jedi)
(el-get-bundle julia-mode)
(el-get-bundle julia-repl :type github :pkgname "tpapp/julia-repl")
;; (el-get-bundle ess)
(el-get-bundle lua-mode)
;;; Others
(el-get-bundle cmake-mode)
(el-get-bundle company-cmake)
(el-get-bundle fsharp-mode)
(el-get-bundle markdown-mode)
(el-get-bundle web-mode)
(el-get-bundle yaml-mode)

;;;; Convenient packages
(el-get-bundle atomic-chrome :type github :pkgname "alpha22jp/atomic-chrome")
(el-get-bundle git-commit-mode)
(el-get-bundle git-modes)
(el-get-bundle magit :type github :pkgname "magit/magit" :checkout "93cbf42") ;; ver 1.4.2 for emacs 24.3
;; (el-get-bundle quickrun)
(el-get-bundle smooth-scroll)
(el-get-bundle tramp)
;; (el-get-bundle websocket)

;; Enable to fix version
;; To update package, just execute M-x el-get-update and git add el-get.lock
(el-get-bundle tarao/el-get-lock)
(el-get-lock)
