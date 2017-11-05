scriptencoding utf-8
syntax on "シンタックスハイライトを有効にする
set nobackup "バックアップファイルを作らない設定にする
set encoding=utf-8 "デフォルトの文字コード
set fileencoding=utf-8
set fileencodings=iso-2022-jp,utf-8,cp932,euc-jp,default,latin "自動判別に使用する文字コード 
set autoindent "オートインデントする
set number "行番号を表示する
set incsearch "インクリメンタルサーチ
set ignorecase "検索時に大文字小文字を無視する
set showmatch "対応する括弧のハイライト表示する
set showmode "モード表示する
set title "編集中のファイル名を表示する
set ruler "ルーラーの表示する
set expandtab "タブをスペースに変換
set tabstop=4 "タブ文字数を4にする
highlight ZenkakuSpace cterm=underline ctermfg=lightblue guibg=darkgray
match ZenkakuSpace /　/ " 全角スペースの表示
colorscheme desert "カラースキーム指定
set mouse=a "マウス有効化
set ttymouse=xterm2 "ターミナルエミュレータの設定上書き
set ambiwidth=double "全角記号が半角で表示されるのを修正
set guioptions-=T " ツールバーを削除
set guioptions-=m "メニューを削除
set backupdir=/tmp
set directory=/tmp
set list
set listchars=tab:»-,trail:-,nbsp:%,eol:$
