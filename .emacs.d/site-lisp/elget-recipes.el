;;; -*- Mode: Emacs-Lisp; Coding: utf-8 -*-

(defvar el-get-sources)

(setq el-get-sources
  '(
;;;; For emacs lisp
    ;; (:name dash)
    (:name use-package)
;;;; Fundamental packages
    (:name anzu)
    (:name auto-async-byte-compile)
    (:name direx)
    (:name git-gutter)
    (:name popwin)
    (:name rainbow-mode)
    (:name setup)
    (:name tabbar)
    (:name undo-tree)
    ;; (:name volatile-highlights)
    (:name yasnippet)
    (:name which-key)
    (:name with-eval-after-load-feature)
;;;; Emacs theme
    (:name cyberpunk-theme :type github :pkgname "n3mo/cyberpunk-theme.el")
;;;; Completion
    (:name bash-completion)
    (:name company-mode :type github :pkgname "company-mode/company-mode")
    (:name company-statistics)
;;;; Enable to fix version
    ;; To update package, just execute M-x el-get-update and git add el-get.lock
    (:name el-get-lock :type github :pkgname "tarao/el-get-lock")
;;;; For specific mode
;;; C, C++
    ;; (:name c-eldoc)
    ;; (:name clang-format)
    (:name dummy-h-mode)
    (:name dtrt-indent)
    (:name ggtags)
;;; TeX
    ;; (:name auctex)
    ;; (:name company-auctex)
;;; Others
    (:name cmake-mode)
    ;; (:name fsharp-mode)
    (:name markdown-mode)
    (:name yaml-mode)
    ;; (:name toml-mode)
;;; Scripts
    (:name jedi-core)
    (:name company-jedi)
    (:name julia-mode)
    (:name julia-repl :type github :pkgname "tpapp/julia-repl")
    ;; (:name ess)
    ;; (:name lua-mode)
    ;; (:name web-mode)
;;;; Convenient packages
    ;; (:name flycheck)
    (:name atomic-chrome :type github :pkgname "alpha22jp/atomic-chrome")
    ;; (:name git-commit-mode)
    ;; (:name git-modes)
    ;; (:name magit :type github :pkgname "magit/magit" :checkout "93cbf42") ;; ver 1.4.2 for emacs 24.3
    ;; (:name quickrun)
    ;; (:name smooth-scroll)
    ;; (:name tramp)
    (:name websocket)
    )
  )
;;; Rust
(when (eq 0 (shell-command "type rustc"))
  (add-to-list 'el-get-sources '(:name rust-mode))
  (add-to-list 'el-get-sources '(:name emacs-racer))
  (add-to-list 'el-get-sources '(:name f)) ;; required in emacs-racer
  (add-to-list 'el-get-sources '(:name flycheck-rust)))

(provide 'elget-recipes)
