"************************************** Bundle *****************************************************************

"---------------------------
" Start Neobundle Settings.
"---------------------------

" vim起動時のみruntimepathにneobundle.vimを追加
if has('vim_starting')
  set nocompatible
  set runtimepath+=C:/vim74-kaoriya-win64/bundle/neobundle.vim
endif

" neobundle.vimの初期化
" NeoBundleを更新するための設定
call neobundle#begin(expand('C:/vim74-kaoriya-win64/bundle'))

" キャッシュの読込み
call neobundle#load_cache()

NeoBundleFetch 'Shougo/neobundle.vim'			"プラグイン管理

" 読み込むプラグインを記載
"NeoBundle 'Shougo/neobundle.vim'				"プラグイン管理
NeoBundle 'tpope/vim-surround'					"テキストの囲みや括弧のカーソル移動機能の拡張
NeoBundle 'Shougo/unite.vim'					"ランチャー
NeoBundle 'h1mesuke/unite-outline'				"uniteで関数一覧表示
NeoBundle 'itchyny/lightline.vim'				"ステータスラインをかっこよくする
NeoBundle 'rking/ag.vim'						"高速GREP
NeoBundle 'scrooloose/nerdtree'					"ファイルをtree表示
NeoBundle 'LeafCage/yankround.vim'				"ヤンク履歴ペースト
NeoBundle 'vim-scripts/gtags.vim'				"GTAGS
NeoBundle 'Shougo/neosnippet'					"構文補完機能
NeoBundle 'Shougo/neosnippet-snippets'			"neosnippetの辞書
NeoBundle 'tomtom/tcomment_vim'					"コメントON/OFFを手軽に実行
NeoBundle 'haya14busa/incsearch.vim'			"検索文字列入力中にリアルタイムにハイライト
NeoBundle "ctrlpvim/ctrlp.vim"					"ファイルの絞込み
NeoBundle "cohama/lexima.vim"					"括弧を自動で閉じる
NeoBundle 'mattn/hahhah-vim'					" ステータスラインに顔文字を表示
NeoBundle 'kana/vim-smartchr'					"カンマやピリオドの後に自動で空白を入れる
NeoBundle 'smartword'							"単語移動をスマートに
NeoBundle 'yonchu/accelerated-smooth-scroll'	"スクロールをスムーズに
NeoBundle 'soramugi/auto-ctags.vim'				"tagファイルを自動生成

NeoBundle 'Shougo/neomru.vim', {
\ 'depends' : 'Shougo/unite.vim'
\ }												"ファイル履歴記憶

if has('lua')
  NeoBundleLazy 'Shougo/neocomplete.vim', {
    \ 'autoload' : { 'insert' : 1,}
    \ }
endif											"強力な補完機能

NeoBundleLazy "majutsushi/tagbar", {
      \ "autoload": { "commands": ["TagbarToggle"] }}
if ! empty(neobundle#get("tagbar"))
   " Width (default 40)
  let g:tagbar_width = 30
  " Map for toggle
  nn <silent> <F2> :TagbarToggle<CR>
endif											"関数一覧を表示


NeoBundle 'mattn/benchvimrc-vim'				"Vim起動時に各設定にかかった時間を表示する
"NeoBundleLazy 'kana/vim-smartinput', { 'autoload' : {'insert' : '1'} }	"自動で括弧を閉じる
"NeoBundle 'Townk/vim-autoclose'				"括弧を自動で閉じる
"NeoBundle 'bronson/vim-trailing-whitespace'	"行末の半角スペースを可視化
"NeoBundle 'yuroyoro/smooth_scroll.vim'			"スクロールをスムーズに
"NeoBundle 'ompugao/ctrlp-locate', {
      "\   'autoload': {
      "\     'commands': ['CtrlPLocate'],
      "\   }
      "\ }										"EveryThingコマンドの実行
"if neobundle#tap('ctrlp-locate')
  "nnoremap <Space>e :<C-u>CtrlPLocate<CR>
  "let g:ctrlp_locate_command_definition = 'es -n 100 {query}'

  "call neobundle#untap()
"endif

"ColorScheme Plugin
NeoBundle 'altercation/vim-colors-solarized'	" solarized カラースキーム
NeoBundle 'croaker/mustang-vim'					" mustang カラースキーム
NeoBundle 'jeffreyiacono/vim-colors-wombat'		" wombat カラースキーム
NeoBundle 'nanotech/jellybeans.vim'				" jellybeans カラースキーム
NeoBundle 'vim-scripts/Lucius'					" lucius カラースキーム
NeoBundle 'vim-scripts/Zenburn'					" zenburn カラースキーム
NeoBundle 'mrkn/mrkn256.vim'					" mrkn256 カラースキーム
NeoBundle 'jpo/vim-railscasts-theme'			" railscasts カラースキーム
NeoBundle 'therubymug/vim-pyte'					" pyte カラースキーム
NeoBundle 'tomasr/molokai'						" molokai カラースキーム
NeoBundle 'ujihisa/unite-colorscheme'			" カラースキーム一覧表示に Unite.vim を使う

" キャッシュの書込み
NeoBundleSaveCache

call neobundle#end()

" 読み込んだプラグインも含め、ファイルタイプの検出、ファイルタイプ別プラグイン/インデントを有効化する
filetype plugin indent on

" インストールのチェック
NeoBundleCheck
 
"-------------------------
" End Neobundle Settings.
"-------------------------

"************************************** 設定 *****************************************************************

" If starting gvim && arguments were given
" (assuming double-click on file explorer)
if has('gui_running') && argc()
    let s:running_vim_list = filter(
    \   split(serverlist(), '\n'),
    \   'v:val !=? v:servername')
    " If one or more Vim instances are running
    if !empty(s:running_vim_list)
        " Open given files in running Vim and exit.
        silent execute '!start gvim'
        \   '--servername' s:running_vim_list[0]
        \   '--remote-tab-silent' join(argv(), ' ')
        qa!
    endif
    unlet s:running_vim_list
endif

"colorscheme morning
"colorscheme evening
colorscheme darkblue
"colorscheme delek
"colorscheme koehler
"colorscheme peachpuff
"colorscheme torte
"colorscheme blue
"colorscheme desert
"colorscheme ron
"colorscheme zellner
"colorscheme elflord
"colorscheme murphy
"colorscheme shine
"colorscheme default
"colorscheme pablo
"colorscheme slate

" キーマップリーダー
let mapleader = ","

"起動時のメッセージを消す 
set shortmess& shortmess+=I 

" Windows でもパスの区切り文字を / にする
set shellslash

"OSのクリップボードを使用する 
set clipboard+=unnamed

"ヤンクした文字は、システムのクリップボードに入れる" 
set clipboard=unnamed 

" アクティブウィンドウの横幅指定
set winwidth=80
" ウインドウの幅
set columns=160
" ウインドウの高さ
set lines=50
" コマンドラインの高さ(CUI使用時)
set cmdheight=4

" 検索時に大文字小文字を無視 (noignorecase:無視しない)
set ignorecase

" 大文字小文字の両方が含まれている場合は大文字小文字を区別
"set smartcase

"set expandtab 		"タブ入力を複数の空白入力に置き換える
set tabstop=4 		"画面上でタブ文字が占める幅
set shiftwidth=4 	"自動インデントでずれる幅
set softtabstop=4	"連続した空白に対してタブキーやバックスペースキーでカーソルが動く幅
"set autoindent 		"改行時に前の行のインデントを継続する
"set smartindent 	"改行時に入力された行の末尾に合わせて次の行のインデントを
set cindent			"C言語の標準的なインデント

" バックスペースでインデントや改行を削除できるようにする
set backspace=indent,eol,start

" 長い行を折り返して表示 (nowrap:折り返さない)
set nowrap

" 行番号を非表示 (number:表示)
set number

"スワップファイル作らない
set noswapfile

"UNDOファイルを完全に無効化する
set noundofile

"バックアップファイルを完全に無効化する
set nobackup

"UNDOファイルを一か所にまとめる
"set undodir=C:/Users/SONY/softwere/vim74-kaoriya-win32/undo

" カーソル行を強調表示
set cursorline

" カーソル列を強調表示
"set cursorcolumn

" スクロールする時に下が見えるようにする
set scrolloff=5

" 横スクロールする時に横が見えるようにする
set sidescrolloff=5

" 横スクロールは1行ずつ行う
set sidescroll=1

" 文字がない場所にもカーソルを移動できるようにする
"set virtualedit=all

" 矩形選択で自由に移動する 
set virtualedit+=block 

" 新しく開く代わりにすでに開いてあるバッファを開く
set switchbuf=useopen

" 他で書き換えられたら自動で読み直す
set autoread

" 編集中でも他のファイルを開けるようにする
set hidden

" ビープをならさない
"set vb t_vb=

" 編集中のファイルへの絶対パスを表示しない
"set notitle

"保存時に自動でtagsファイル作成
"let g:auto_ctags = 1
"let g:auto_ctags_directory_list = ['', '']

"常に開いているファイルと同じディレクトリをカレントディレクトリにする
au BufEnter * execute ":lcd " . expand("%:p:h")

"grep実行後に自動でQuickFixWindowを開く
autocmd QuickFixCmdPost *grep* cwindow

" Quickfixウィンドウを最も右側に表示
let QFix_CopenCmd = 'splitright'

" QuickFixウィンドウの高さ
let QFix_Height = 1000

"標準的なMS-WindowsのCTRL-X、CTRL-CおよびCTRL-V操作
"source $VIMRUNTIME/mswin.vim

" アンダーラインを引く(color terminal)
highlight CursorLine cterm=underline ctermfg=yellow ctermbg=NONE

" アンダーラインを引く(gui)
highlight CursorLine gui=underline guifg=yellow guibg=NONE

"カレントディレクトリからホームディレクトリまでにあるtagsを読み込む
if has('path_extra')
	set tags+=tags;/Users/myuser
endif

"************************************** プラグインキーバインド *****************************************************************

"unite.vimの設定
nnoremap [unite]    <Nop>
nmap     <Space>u [unite]

let g:unite_enable_start_insert=0
"現在のバッファ一覧表示
nnoremap <silent> [unite]b :<C-u>Unite<Space>buffer<CR>
"カレントディレクトリの一覧表示
nnoremap <silent> [unite]f :<C-u>Unite<Space>file<CR>
"最近開いたファイルの一覧表示
nnoremap <silent> [unite]m :<C-u>Unite<Space>file_mru<CR>
"各レジスタに入っている値一覧表示
nnoremap <silent> [unite]a :<C-u>Unite buffer file file_mru bookmark<CR>
"直前に開いていたuniteのバッファを再表示
nnoremap <silent> [unite]r :<C-u>Unite<Space>register<CR>
nnoremap <silent> [unite]R :<C-u>UniteResume<CR>			
"カラースキーム一覧を表示する
nnoremap		  [unite]c :Unite colorscheme -auto-preview<CR>
"everything検索を実行する
nnoremap		  [unite]e :Unite everything<CR>i
au FileType unite nmap <silent> <buffer> <expr> <C-j> unite#do_action('split')
au FileType unite imap <silent> <buffer> <expr> <C-j> unite#do_action('split')
au FileType unite nmap <silent> <buffer> <expr> <C-l> unite#do_action('vsplit')
au FileType unite imap <silent> <buffer> <expr> <C-l> unite#do_action('vsplit')
au FileType unite nmap <silent> <buffer> <ESC><ESC> q
au FileType unite imap <silent> <buffer> <ESC><ESC> <ESC>q


"NeedTreeの設定
"autocmd VimEnter * execute 'NERDTree'
nnoremap <F1> :NERDTree<CR>


"yankround.vimの設定
nmap p <Plug>(yankround-p)
nmap P <Plug>(yankround-P)
nmap <C-p> <Plug>(yankround-prev)
nmap <C-n> <Plug>(yankround-next)
let g:yankround_max_history = 100
nnoremap <Leader><C-p> :<C-u>Unite yankround<CR>  "ヤンク履歴表示


"gtags.vimの設定
"関数の定義元へジャンプ
nnoremap <Space>gd :Gtags 
"関数の参照先へジャンプ
nnoremap <Space>gr :Gtags -r 
"カレントバッファの関数一覧を表示する
nnoremap <Space>gf :Gtags -f %<CR><C-w>w
"キーワードのGrep
nnoremap <Space>gg :Gtags -g <cword>
"カーソル下のキーワードのGrep
nnoremap <Space>gc :GtagsCursor<Enter><C-w>w
nnoremap <Space>gu :GtagsUpdate<Enter>


"neocomplete.vimの設定
let g:neocomplete#enable_at_startup               = 1
let g:neocomplete#auto_completion_start_length    = 3
let g:neocomplete#enable_ignore_case              = 1
let g:neocomplete#enable_smart_case               = 1
let g:neocomplete#enable_camel_case               = 1
let g:neocomplete#use_vimproc                     = 1
let g:neocomplete#sources#buffer#cache_limit_size = 1000000
let g:neocomplete#sources#tags#cache_limit_size   = 30000000
let g:neocomplete#enable_fuzzy_completion         = 1
let g:neocomplete#lock_buffer_name_pattern        = '\*ku\*'
" <BS> で閉じて文字削除
"imap <expr> <BS>
      "\ neocomplete#smart_close_popup() . "\<Plug>(smartinput_BS)"
" <C-h> で閉じる
imap <expr> <C-h>
      \ neocomplete#smart_close_popup()
" <CR> で候補を選択し改行する
" ポップアップがないときには改行する
imap <expr> <CR> pumvisible() ?
      \ neocomplete#close_popup() : "\<Plug>(smartinput_CR)"


"neosnippet.vimの設定
" Plugin key-mappings.
imap <C-k>     <Plug>(neosnippet_expand_or_jump)
smap <C-k>     <Plug>(neosnippet_expand_or_jump)
xmap <C-k>     <Plug>(neosnippet_expand_target)
" SuperTab like snippets behavior.
imap <expr><TAB> neosnippet#expandable_or_jumpable() ?
\ "\<Plug>(neosnippet_expand_or_jump)"
\: pumvisible() ? "\<C-n>" : "\<TAB>"
smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
\ "\<Plug>(neosnippet_expand_or_jump)"
\: "\<TAB>"
" For snippet_complete marker.
if has('conceal')
  set conceallevel=2 concealcursor=i
endif


"unite-outlineの設定
"今はなぜか使えない。。。
"nnoremap <silent> <F2> :<C-u>Unite -vertical -no-quit outline<CR>


"incsearch.vimの設定
map /  <Plug>(incsearch-forward)
map ?  <Plug>(incsearch-backward)
map g/ <Plug>(incsearch-stay)


"lexima.vimの設定
call lexima#add_rule({'at': '\%#.*[-0-9a-zA-Z_,:]', 'char': '{', 'input': '{'})		"文末以外では無効
call lexima#add_rule({'at': '\%#\n\s*}', 'char': '}', 'input': '}', 'delete': '}'})	"自動クローズした文字が次の行にあってもタイプできる


"vim-smartchrの設定
" 演算子の間に空白を入れる 
inoremap <expr> = smartchr#loop(' = ', ' == ', ' === ', '=')
inoremap <expr> + smartchr#loop(' + ', '++', '+++', '+')
"inoremap <expr> - smartchr#loop(' - ', '--', '---', '-')
inoremap <expr> & smartchr#loop('&', ' && ', '&&&')
"inoremap <expr> | smartchr#loop(' | ', ' || ', '|||')
inoremap <expr> += smartchr#loop(' += ')
inoremap <expr> -= smartchr#loop(' -= ')
inoremap <expr> *= smartchr#loop(' *= ')
"inoremap <expr> if smartchr#loop('if ')
inoremap <expr> for smartchr#loop('for ')
inoremap <expr> while smartchr#loop('while ')

"benchvimrc-vim.gitのコマンド
nnoremap <F12> :BenchVimrc<CR>

"auto-ctags.vimの設定
"ファイル保存時に自動でtagファイルを生成する
"let g:auto_ctags = 1
"tagファイルを作成するディレクトリの指定
"let g:auto_ctags_directory_list = ['.git', 'work']
"Ctags実行時のオプション
" --recurse ディレクトリを再起的に
" --sort=yes 作成されたキーワードをsortする
" --append=no 既存のタグファイルに追加しない
"let g:auto_ctags_tags_args = '--tag-relative --recurse --sort=yes'
"開いているファイルタイプ専用のtagファイルを作る
"let g:auto_ctags_filetype_mode = 1

"************************************** ノーマルモード　キーバインド *****************************************************************

"カーソルの位置の単語をgrepするショートカット
noremap <C-g> *zz :Ag <cword> <c-r>=expand('%:p:r')<cr>

"任意の単語をgrepするショートカット
noremap <Space>ag :Ag 

"Spaceを2回押すことでハイライトを消す
nnoremap <silent> <Space><Space> :nohlsearch<CR>

"検索後に自動で画面中央に
noremap n nzz
noremap N Nzz
noremap * *zz
noremap # #zz
noremap g* g*zz
noremap g# g#zz

"上書き保存
nnoremap <C-s> :w<CR>

"新しいタブで開く
noremap <C-t> :tabnew <c-r>=expand('%:p:h')<cr>/

"キー入れ替え
nnoremap ; :
nnoremap : ;

"ジャンプの代わりに垂直分割して開く
noremap <C-]> <C-w>v<C-w>l<C-]>
noremap g<C-]> <C-w>v<C-w>lg<C-]>

"ジャンプの代わりに水平分割して開く
noremap s<C-]> <C-w>s<C-w>l<C-]>

"ジャンプの代わりに新しいタブで開く
noremap t<C-]> :<C-u>tab stj <C-R>=expand('<cword>')<CR><CR>

"空行のインデントを勝手に消さない
nnoremap o oX<C-h>
nnoremap O OX<C-h>

" Ctrl + hjkl でウィンドウ間を移動
nnoremap <C-h> <C-w>h^
nnoremap <C-j> <C-w>j^
nnoremap <C-k> <C-w>k^
nnoremap <C-l> <C-w>l^

"カーソルの移動
nnoremap <Space>h ^
nnoremap <Space>l $
nnoremap <Space>m %

" tabの移動
nnoremap <C-Right> gt
nnoremap <C-Left> gT

" Shift + 矢印でウィンドウサイズを変更
nnoremap <S-Left>  <C-w>10<
nnoremap <S-Right> <C-w>10>
nnoremap <S-Up>    <C-w>10-
nnoremap <S-Down>  <C-w>10+

"任意のファイルを開く
nnoremap <Space>f :e <c-r>=expand('%:p:r')<cr><C-w><C-w><C-w>
nnoremap F :set path+=<c-r>=expand('%:p:r')<cr><C-w><C-w><C-w>**<CR> :find 

"検索後に次の候補に異動しない
nnoremap * *N

"テキストオブジェクトを変更
nnoremap dw  diw
nnoremap diw dw
nnoremap cw  ciw
nnoremap ciw cw
nnoremap yw  yiw
nnoremap yiw yw
nnoremap vw  viw
nnoremap viw vw

"検索中の文字列を置換する
nnoremap <C-@> *N:%s//

"数字のインクリメントとディクリメント
nnoremap + <C-a>
nnoremap - <C-x>

"************************************** インサートモード　キーバインド *****************************************************************

" 挿入モード時、クリップボードから貼り付け
inoremap <C-V> <C-R>*

"空行のインデントを勝手に消さない
inoremap <CR> <CR>X<C-h>

" 挿入モードでのカーソル移動
inoremap <C-j> <Down>
inoremap <C-k> <Up>
inoremap <C-h> <Left>
inoremap <C-l> <Right>

"挿入モード中にCtrl+aで先頭に移動
inoremap <silent> <C-a> <Esc>^<Insert>
"Ctrl+eで行末移動
inoremap <silent> <C-e> <Esc>$<Insert><Right>
"Ctrl+lで行末に；をつける
inoremap <silent> <C-s> <Left><Esc>$<Insert><Right> ;<Left><BS><Right>

"************************************** コマンドモード　キーバインド *****************************************************************

" コマンドライン時、クリップボードから貼り付け
cnoremap <C-V> <C-R>*

"カレントディレクトリへのパスを補完する
cmap <c-x> <c-r>=expand('%:p:h')<cr>/

"カレントディレクトリへの絶対パスを補完する
cmap <c-z> <c-r>=expand('%:p:r')<cr>

"************************************** ヴィジュアルモード　キーバインド *****************************************************************

" 選択部分をクリップボードにコピー
vnoremap <C-C> "*y

" 選択部分をクリップボードの値に置き換え
vnoremap <C-V> "*P

" 選択部分をクリップボードに切り取り
vnoremap <C-X> "*d<ESC>

" visulaモードで選択してからのインデント調整で調整後に選択範囲を開放しない
vnoremap > >gv
vnoremap < <gv

"選択した部分を検索
vnoremap * "zy:let @/ = @z<CR>nN

"Visualモードで連続でコピペする
vnoremap <silent> p "0p<CR>

"カーソルの移動
vnoremap <Space>h ^
vnoremap <Space>l $
vnoremap <Space>m %


"*********************************************************************************

