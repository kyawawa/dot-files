my dot-files

## create symbolic link to $HOME
```bash
cd dot-files
./make-link.sh #or ./make-link.sh JSK
```

## el-get-list-packages

*written at .emacs.d/site-lisp/elget-settings.el*
* anzu
* auctex
* auto-complete
* bash-completion
* c-eldoc
* clang-format
* company
* company-auctex
* company-cmake
* company-statistics
* dash
* direx
* dtrt-indent
* dummy-h-mode
* edit-server
* ggtags
* git-commit-mode
* git-gutter
* git-modes
* magit
* markdown-mode
* popwin
* rainbow-mode
* smooth-scroll
* tramp
* tabbar
* undo-tree
* volatile-highlights
* web-mode
* yaml-mode

## Major keybindings for emacs

 keybindings | commands
-------------|----------------------------------------------
 f8          | show/hidden line number
 \C-o        | dabbrev-expand
 \C-\\       | tabbar-forward-tab
 \C-^        | tabbar-backward-tab
 \C-c ;      | hs-toggle-hiding
 \C-x SPC    | cua-mode
 \C-x \C-j   | direx:jump-to-directory
 \M-g        | goto-line
 \M-n        | scroll-down-in-place
 \M-p        | scroll-up-in-place
 \M-q        | match-paren (Go to the matching parenthesis)

#### AUCTeX and RefTeX keybindings

  keybindings            | commands
-------------------------|-------------------------------------------------
 C-c, C-c                | "platex"  platexの実行
 C-c, C-c                | "bibtex"  bibtexの実行
 C-c, C-v                | xdviの実行
 C-c, C-c                | "pdf" dvipdfmxの実行
 C-c, C-c                | "Clean" or "Celan All"  中間ファイルの削除など
 C-c, C-e                | <figureとかalignとか> \begin~\endの環境を挿入 <br> ポジションやラベル，キャプションの入力も求められます．
 C-c, C-s                | \sectionや\subsectionの挿入 <br> タイトルとラベルが求められます．
 C-c, C-f, C-r           | \textrm{}, \mathrm
 C-c, C-f, C-b           | \textbf{}
 C-c, C-f, C-i or TAB    | \textit{}
 \`, a or b...           | \alphaとか\betaとか
 C-c, r [efinNst]        | これまで付けたラベル一覧から自動で挿入 <br> 例えばeなら数式の一覧が表示される．一覧に表示されてなかったらrでリスキャンしてくれる．
 C-c, c                  | \cite{}でソースとして設定してあるbibファイルから文字列検索してラベルを挿入
 C-c, l                  | \label{}を挿入
 C-c, &                  | 対応するラベルにジャンプ
 C-c, =                  | アウトライン表示、選んだセクションへ飛ぶ
 C-c, _                  | 編集中のファイルのマスターファイルを設定
 C-c, C-o, C-b           | TeX-fold-buffer
 C-c, C-o, b             | Tex-fold-clearout-buffer
