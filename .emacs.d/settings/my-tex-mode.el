;; -*- Mode: Emacs-Lisp; Coding: utf-8 -*-
;;; my-tex-mode.el --- Elisp settings for TeX

(setup-lazy '(LaTeX-mode) "latex"
  (setup "company-auctex"
    (company-auctex-init))
  (setq TeX-default-mode 'japanese-latex-mode)
  (setq japanese-LaTeX-default-style "jarticle")
  (setq TeX-output-view-style '(("^dvi$" "." "xdvi '%d'")))
  (setq preview-image-type 'dvipng)
  (add-hook 'LaTeX-mode-hook (function (lambda ()
                                         (add-to-list 'TeX-command-list
                                                      '("pTeX" "%(PDF)ptex %`%S%(PDFout)%(mode)%' %t"
                                                        TeX-run-TeX nil (plain-tex-mode) :help "Run ASCII pTeX"))
                                         (add-to-list 'TeX-command-list
                                                      '("pLaTeX" "%(PDF)platex %`%S%(PDFout)%(mode)%' %t"
                                                        TeX-run-TeX nil (latex-mode) :help "Run ASCII pLaTeX"))
                                         (add-to-list 'TeX-command-list
                                                      '("acroread" "acroread '%s.pdf' " TeX-run-command t nil))
                                         (add-to-list 'TeX-command-list
                                                      '("pdf" "dvipdfmx -V 4 '%s' " TeX-run-command t nil))
                                         )))

  (add-hook 'LaTeX-mode-hook 'turn-on-reftex)
  (setq reftex-plug-into-AUCTeX t)

  (setq TeX-auto-save t)
  (setq TeX-parse-self t)
  (setq-default TeX-master nil)

  (add-hook 'LaTeX-mode-hook 'visual-line-mode)
  ;; (add-hook 'LaTeX-mode-hook 'flyspell-mode)
  (add-hook 'LaTeX-mode-hook 'LaTeX-math-mode)
  (add-hook 'TeX-mode-hook (lambda () (TeX-fold-mode 1)))

  ;; Change key binding
  (add-hook 'reftex-mode-hook
            '(lambda ()
               (define-key reftex-mode-map (kbd "\C-cr") 'reftex-reference)
               (define-key reftex-mode-map (kbd "\C-cl") 'reftex-label)
               (define-key reftex-mode-map (kbd "\C-cc") 'reftex-citation)
               ))

  ;; 数式のラベル作成時にも自分でラベルを入力できるようにする
  (setq reftex-insert-label-flags '("s" "sfte"))

  (setq reftex-label-alist
        '(
          (nil ?f nil "\\figref{%s}" nil nil)
          (nil ?t nil "\\tabref{%s}" nil nil)
          (nil ?e nil "\\equref{%s}" nil nil)
          (nil ?c nil "\\chapref{%s}" nil nil)
          (nil ?s nil "\\secref{%s}" nil nil)
          ("algorithm" ?a "alg:" "\\algref{%s}" nil)
          ))

  ;; RefTeXで使用するbibファイルの位置を指定する
  ;; (setq reftex-default-bibliography '("~/tex/biblio.bib" "~/tex/biblio2.bib"))
  (setq reftex-default-bibliography nil)
  ;; buffer上のファイルを更新
  (add-hook 'LaTeX-mode-hook 'auto-revert-mode)
  (add-hook 'bibtex-mode-hook 'auto-revert-mode)
  )

(provide 'my-tex-mode)
