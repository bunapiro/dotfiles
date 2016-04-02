"************************************** Bundle *****************************************************************

"---------------------------
" Start Neobundle Settings.
"---------------------------

" vim�N�����̂�runtimepath��neobundle.vim��ǉ�
if has('vim_starting')
  set nocompatible
  set runtimepath+=C:/vim74-kaoriya-win64/bundle/neobundle.vim
endif

" neobundle.vim�̏�����
" NeoBundle���X�V���邽�߂̐ݒ�
call neobundle#begin(expand('C:/vim74-kaoriya-win64/bundle'))

" �L���b�V���̓Ǎ���
call neobundle#load_cache()

NeoBundleFetch 'Shougo/neobundle.vim'			"�v���O�C���Ǘ�

" �ǂݍ��ރv���O�C�����L��
"NeoBundle 'Shougo/neobundle.vim'				"�v���O�C���Ǘ�
NeoBundle 'tpope/vim-surround'					"�e�L�X�g�݂̈͂⊇�ʂ̃J�[�\���ړ��@�\�̊g��
NeoBundle 'Shougo/unite.vim'					"�����`���[
NeoBundle 'h1mesuke/unite-outline'				"unite�Ŋ֐��ꗗ�\��
NeoBundle 'itchyny/lightline.vim'				"�X�e�[�^�X���C�����������悭����
NeoBundle 'rking/ag.vim'						"����GREP
NeoBundle 'scrooloose/nerdtree'					"�t�@�C����tree�\��
NeoBundle 'LeafCage/yankround.vim'				"�����N�����y�[�X�g
NeoBundle 'vim-scripts/gtags.vim'				"GTAGS
NeoBundle 'Shougo/neosnippet'					"�\���⊮�@�\
NeoBundle 'Shougo/neosnippet-snippets'			"neosnippet�̎���
NeoBundle 'tomtom/tcomment_vim'					"�R�����gON/OFF����y�Ɏ��s
NeoBundle 'haya14busa/incsearch.vim'			"������������͒��Ƀ��A���^�C���Ƀn�C���C�g
NeoBundle "ctrlpvim/ctrlp.vim"					"�t�@�C���̍i����
NeoBundle "cohama/lexima.vim"					"���ʂ������ŕ���
NeoBundle 'mattn/hahhah-vim'					" �X�e�[�^�X���C���Ɋ當����\��
NeoBundle 'kana/vim-smartchr'					"�J���}��s���I�h�̌�Ɏ����ŋ󔒂�����
NeoBundle 'smartword'							"�P��ړ����X�}�[�g��
NeoBundle 'yonchu/accelerated-smooth-scroll'	"�X�N���[�����X���[�Y��
NeoBundle 'soramugi/auto-ctags.vim'				"tag�t�@�C������������

NeoBundle 'Shougo/neomru.vim', {
\ 'depends' : 'Shougo/unite.vim'
\ }												"�t�@�C�������L��

if has('lua')
  NeoBundleLazy 'Shougo/neocomplete.vim', {
    \ 'autoload' : { 'insert' : 1,}
    \ }
endif											"���͂ȕ⊮�@�\

NeoBundleLazy "majutsushi/tagbar", {
      \ "autoload": { "commands": ["TagbarToggle"] }}
if ! empty(neobundle#get("tagbar"))
   " Width (default 40)
  let g:tagbar_width = 30
  " Map for toggle
  nn <silent> <F2> :TagbarToggle<CR>
endif											"�֐��ꗗ��\��


NeoBundle 'mattn/benchvimrc-vim'				"Vim�N�����Ɋe�ݒ�ɂ����������Ԃ�\������
"NeoBundleLazy 'kana/vim-smartinput', { 'autoload' : {'insert' : '1'} }	"�����Ŋ��ʂ����
"NeoBundle 'Townk/vim-autoclose'				"���ʂ������ŕ���
"NeoBundle 'bronson/vim-trailing-whitespace'	"�s���̔��p�X�y�[�X������
"NeoBundle 'yuroyoro/smooth_scroll.vim'			"�X�N���[�����X���[�Y��
"NeoBundle 'ompugao/ctrlp-locate', {
      "\   'autoload': {
      "\     'commands': ['CtrlPLocate'],
      "\   }
      "\ }										"EveryThing�R�}���h�̎��s
"if neobundle#tap('ctrlp-locate')
  "nnoremap <Space>e :<C-u>CtrlPLocate<CR>
  "let g:ctrlp_locate_command_definition = 'es -n 100 {query}'

  "call neobundle#untap()
"endif

"ColorScheme Plugin
NeoBundle 'altercation/vim-colors-solarized'	" solarized �J���[�X�L�[��
NeoBundle 'croaker/mustang-vim'					" mustang �J���[�X�L�[��
NeoBundle 'jeffreyiacono/vim-colors-wombat'		" wombat �J���[�X�L�[��
NeoBundle 'nanotech/jellybeans.vim'				" jellybeans �J���[�X�L�[��
NeoBundle 'vim-scripts/Lucius'					" lucius �J���[�X�L�[��
NeoBundle 'vim-scripts/Zenburn'					" zenburn �J���[�X�L�[��
NeoBundle 'mrkn/mrkn256.vim'					" mrkn256 �J���[�X�L�[��
NeoBundle 'jpo/vim-railscasts-theme'			" railscasts �J���[�X�L�[��
NeoBundle 'therubymug/vim-pyte'					" pyte �J���[�X�L�[��
NeoBundle 'tomasr/molokai'						" molokai �J���[�X�L�[��
NeoBundle 'ujihisa/unite-colorscheme'			" �J���[�X�L�[���ꗗ�\���� Unite.vim ���g��

" �L���b�V���̏�����
NeoBundleSaveCache

call neobundle#end()

" �ǂݍ��񂾃v���O�C�����܂߁A�t�@�C���^�C�v�̌��o�A�t�@�C���^�C�v�ʃv���O�C��/�C���f���g��L��������
filetype plugin indent on

" �C���X�g�[���̃`�F�b�N
NeoBundleCheck
 
"-------------------------
" End Neobundle Settings.
"-------------------------

"************************************** �ݒ� *****************************************************************

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

" �L�[�}�b�v���[�_�[
let mapleader = ","

"�N�����̃��b�Z�[�W������ 
set shortmess& shortmess+=I 

" Windows �ł��p�X�̋�؂蕶���� / �ɂ���
set shellslash

"OS�̃N���b�v�{�[�h���g�p���� 
set clipboard+=unnamed

"�����N���������́A�V�X�e���̃N���b�v�{�[�h�ɓ����" 
set clipboard=unnamed 

" �A�N�e�B�u�E�B���h�E�̉����w��
set winwidth=80
" �E�C���h�E�̕�
set columns=160
" �E�C���h�E�̍���
set lines=50
" �R�}���h���C���̍���(CUI�g�p��)
set cmdheight=4

" �������ɑ啶���������𖳎� (noignorecase:�������Ȃ�)
set ignorecase

" �啶���������̗������܂܂�Ă���ꍇ�͑啶�������������
"set smartcase

"set expandtab 		"�^�u���͂𕡐��̋󔒓��͂ɒu��������
set tabstop=4 		"��ʏ�Ń^�u��������߂镝
set shiftwidth=4 	"�����C���f���g�ł���镝
set softtabstop=4	"�A�������󔒂ɑ΂��ă^�u�L�[��o�b�N�X�y�[�X�L�[�ŃJ�[�\����������
"set autoindent 		"���s���ɑO�̍s�̃C���f���g���p������
"set smartindent 	"���s���ɓ��͂��ꂽ�s�̖����ɍ��킹�Ď��̍s�̃C���f���g��
set cindent			"C����̕W���I�ȃC���f���g

" �o�b�N�X�y�[�X�ŃC���f���g����s���폜�ł���悤�ɂ���
set backspace=indent,eol,start

" �����s��܂�Ԃ��ĕ\�� (nowrap:�܂�Ԃ��Ȃ�)
set nowrap

" �s�ԍ����\�� (number:�\��)
set number

"�X���b�v�t�@�C�����Ȃ�
set noswapfile

"UNDO�t�@�C�������S�ɖ���������
set noundofile

"�o�b�N�A�b�v�t�@�C�������S�ɖ���������
set nobackup

"UNDO�t�@�C�����ꂩ���ɂ܂Ƃ߂�
"set undodir=C:/Users/SONY/softwere/vim74-kaoriya-win32/undo

" �J�[�\���s�������\��
set cursorline

" �J�[�\����������\��
"set cursorcolumn

" �X�N���[�����鎞�ɉ���������悤�ɂ���
set scrolloff=5

" ���X�N���[�����鎞�ɉ���������悤�ɂ���
set sidescrolloff=5

" ���X�N���[����1�s���s��
set sidescroll=1

" �������Ȃ��ꏊ�ɂ��J�[�\�����ړ��ł���悤�ɂ���
"set virtualedit=all

" ��`�I���Ŏ��R�Ɉړ����� 
set virtualedit+=block 

" �V�����J������ɂ��łɊJ���Ă���o�b�t�@���J��
set switchbuf=useopen

" ���ŏ���������ꂽ�玩���œǂݒ���
set autoread

" �ҏW���ł����̃t�@�C�����J����悤�ɂ���
set hidden

" �r�[�v���Ȃ炳�Ȃ�
"set vb t_vb=

" �ҏW���̃t�@�C���ւ̐�΃p�X��\�����Ȃ�
"set notitle

"�ۑ����Ɏ�����tags�t�@�C���쐬
"let g:auto_ctags = 1
"let g:auto_ctags_directory_list = ['', '']

"��ɊJ���Ă���t�@�C���Ɠ����f�B���N�g�����J�����g�f�B���N�g���ɂ���
au BufEnter * execute ":lcd " . expand("%:p:h")

"grep���s��Ɏ�����QuickFixWindow���J��
autocmd QuickFixCmdPost *grep* cwindow

" Quickfix�E�B���h�E���ł��E���ɕ\��
let QFix_CopenCmd = 'splitright'

" QuickFix�E�B���h�E�̍���
let QFix_Height = 1000

"�W���I��MS-Windows��CTRL-X�ACTRL-C�����CTRL-V����
"source $VIMRUNTIME/mswin.vim

" �A���_�[���C��������(color terminal)
highlight CursorLine cterm=underline ctermfg=yellow ctermbg=NONE

" �A���_�[���C��������(gui)
highlight CursorLine gui=underline guifg=yellow guibg=NONE

"�J�����g�f�B���N�g������z�[���f�B���N�g���܂łɂ���tags��ǂݍ���
if has('path_extra')
	set tags+=tags;/Users/myuser
endif

"************************************** �v���O�C���L�[�o�C���h *****************************************************************

"unite.vim�̐ݒ�
nnoremap [unite]    <Nop>
nmap     <Space>u [unite]

let g:unite_enable_start_insert=0
"���݂̃o�b�t�@�ꗗ�\��
nnoremap <silent> [unite]b :<C-u>Unite<Space>buffer<CR>
"�J�����g�f�B���N�g���̈ꗗ�\��
nnoremap <silent> [unite]f :<C-u>Unite<Space>file<CR>
"�ŋߊJ�����t�@�C���̈ꗗ�\��
nnoremap <silent> [unite]m :<C-u>Unite<Space>file_mru<CR>
"�e���W�X�^�ɓ����Ă���l�ꗗ�\��
nnoremap <silent> [unite]a :<C-u>Unite buffer file file_mru bookmark<CR>
"���O�ɊJ���Ă���unite�̃o�b�t�@���ĕ\��
nnoremap <silent> [unite]r :<C-u>Unite<Space>register<CR>
nnoremap <silent> [unite]R :<C-u>UniteResume<CR>			
"�J���[�X�L�[���ꗗ��\������
nnoremap		  [unite]c :Unite colorscheme -auto-preview<CR>
"everything���������s����
nnoremap		  [unite]e :Unite everything<CR>i
au FileType unite nmap <silent> <buffer> <expr> <C-j> unite#do_action('split')
au FileType unite imap <silent> <buffer> <expr> <C-j> unite#do_action('split')
au FileType unite nmap <silent> <buffer> <expr> <C-l> unite#do_action('vsplit')
au FileType unite imap <silent> <buffer> <expr> <C-l> unite#do_action('vsplit')
au FileType unite nmap <silent> <buffer> <ESC><ESC> q
au FileType unite imap <silent> <buffer> <ESC><ESC> <ESC>q


"NeedTree�̐ݒ�
"autocmd VimEnter * execute 'NERDTree'
nnoremap <F1> :NERDTree<CR>


"yankround.vim�̐ݒ�
nmap p <Plug>(yankround-p)
nmap P <Plug>(yankround-P)
nmap <C-p> <Plug>(yankround-prev)
nmap <C-n> <Plug>(yankround-next)
let g:yankround_max_history = 100
nnoremap <Leader><C-p> :<C-u>Unite yankround<CR>  "�����N����\��


"gtags.vim�̐ݒ�
"�֐��̒�`���փW�����v
nnoremap <Space>gd :Gtags 
"�֐��̎Q�Ɛ�փW�����v
nnoremap <Space>gr :Gtags -r 
"�J�����g�o�b�t�@�̊֐��ꗗ��\������
nnoremap <Space>gf :Gtags -f %<CR><C-w>w
"�L�[���[�h��Grep
nnoremap <Space>gg :Gtags -g <cword>
"�J�[�\�����̃L�[���[�h��Grep
nnoremap <Space>gc :GtagsCursor<Enter><C-w>w
nnoremap <Space>gu :GtagsUpdate<Enter>


"neocomplete.vim�̐ݒ�
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
" <BS> �ŕ��ĕ����폜
"imap <expr> <BS>
      "\ neocomplete#smart_close_popup() . "\<Plug>(smartinput_BS)"
" <C-h> �ŕ���
imap <expr> <C-h>
      \ neocomplete#smart_close_popup()
" <CR> �Ō���I�������s����
" �|�b�v�A�b�v���Ȃ��Ƃ��ɂ͉��s����
imap <expr> <CR> pumvisible() ?
      \ neocomplete#close_popup() : "\<Plug>(smartinput_CR)"


"neosnippet.vim�̐ݒ�
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


"unite-outline�̐ݒ�
"���͂Ȃ����g���Ȃ��B�B�B
"nnoremap <silent> <F2> :<C-u>Unite -vertical -no-quit outline<CR>


"incsearch.vim�̐ݒ�
map /  <Plug>(incsearch-forward)
map ?  <Plug>(incsearch-backward)
map g/ <Plug>(incsearch-stay)


"lexima.vim�̐ݒ�
call lexima#add_rule({'at': '\%#.*[-0-9a-zA-Z_,:]', 'char': '{', 'input': '{'})		"�����ȊO�ł͖���
call lexima#add_rule({'at': '\%#\n\s*}', 'char': '}', 'input': '}', 'delete': '}'})	"�����N���[�Y�������������̍s�ɂ����Ă��^�C�v�ł���


"vim-smartchr�̐ݒ�
" ���Z�q�̊Ԃɋ󔒂����� 
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

"benchvimrc-vim.git�̃R�}���h
nnoremap <F12> :BenchVimrc<CR>

"auto-ctags.vim�̐ݒ�
"�t�@�C���ۑ����Ɏ�����tag�t�@�C���𐶐�����
"let g:auto_ctags = 1
"tag�t�@�C�����쐬����f�B���N�g���̎w��
"let g:auto_ctags_directory_list = ['.git', 'work']
"Ctags���s���̃I�v�V����
" --recurse �f�B���N�g�����ċN�I��
" --sort=yes �쐬���ꂽ�L�[���[�h��sort����
" --append=no �����̃^�O�t�@�C���ɒǉ����Ȃ�
"let g:auto_ctags_tags_args = '--tag-relative --recurse --sort=yes'
"�J���Ă���t�@�C���^�C�v��p��tag�t�@�C�������
"let g:auto_ctags_filetype_mode = 1

"************************************** �m�[�}�����[�h�@�L�[�o�C���h *****************************************************************

"�J�[�\���̈ʒu�̒P���grep����V���[�g�J�b�g
noremap <C-g> *zz :Ag <cword> <c-r>=expand('%:p:r')<cr>

"�C�ӂ̒P���grep����V���[�g�J�b�g
noremap <Space>ag :Ag 

"Space��2�񉟂����ƂŃn�C���C�g������
nnoremap <silent> <Space><Space> :nohlsearch<CR>

"������Ɏ����ŉ�ʒ�����
noremap n nzz
noremap N Nzz
noremap * *zz
noremap # #zz
noremap g* g*zz
noremap g# g#zz

"�㏑���ۑ�
nnoremap <C-s> :w<CR>

"�V�����^�u�ŊJ��
noremap <C-t> :tabnew <c-r>=expand('%:p:h')<cr>/

"�L�[����ւ�
nnoremap ; :
nnoremap : ;

"�W�����v�̑���ɐ����������ĊJ��
noremap <C-]> <C-w>v<C-w>l<C-]>
noremap g<C-]> <C-w>v<C-w>lg<C-]>

"�W�����v�̑���ɐ����������ĊJ��
noremap s<C-]> <C-w>s<C-w>l<C-]>

"�W�����v�̑���ɐV�����^�u�ŊJ��
noremap t<C-]> :<C-u>tab stj <C-R>=expand('<cword>')<CR><CR>

"��s�̃C���f���g������ɏ����Ȃ�
nnoremap o oX<C-h>
nnoremap O OX<C-h>

" Ctrl + hjkl �ŃE�B���h�E�Ԃ��ړ�
nnoremap <C-h> <C-w>h^
nnoremap <C-j> <C-w>j^
nnoremap <C-k> <C-w>k^
nnoremap <C-l> <C-w>l^

"�J�[�\���̈ړ�
nnoremap <Space>h ^
nnoremap <Space>l $
nnoremap <Space>m %

" tab�̈ړ�
nnoremap <C-Right> gt
nnoremap <C-Left> gT

" Shift + ���ŃE�B���h�E�T�C�Y��ύX
nnoremap <S-Left>  <C-w>10<
nnoremap <S-Right> <C-w>10>
nnoremap <S-Up>    <C-w>10-
nnoremap <S-Down>  <C-w>10+

"�C�ӂ̃t�@�C�����J��
nnoremap <Space>f :e <c-r>=expand('%:p:r')<cr><C-w><C-w><C-w>
nnoremap F :set path+=<c-r>=expand('%:p:r')<cr><C-w><C-w><C-w>**<CR> :find 

"������Ɏ��̌��Ɉٓ����Ȃ�
nnoremap * *N

"�e�L�X�g�I�u�W�F�N�g��ύX
nnoremap dw  diw
nnoremap diw dw
nnoremap cw  ciw
nnoremap ciw cw
nnoremap yw  yiw
nnoremap yiw yw
nnoremap vw  viw
nnoremap viw vw

"�������̕������u������
nnoremap <C-@> *N:%s//

"�����̃C���N�������g�ƃf�B�N�������g
nnoremap + <C-a>
nnoremap - <C-x>

"************************************** �C���T�[�g���[�h�@�L�[�o�C���h *****************************************************************

" �}�����[�h���A�N���b�v�{�[�h����\��t��
inoremap <C-V> <C-R>*

"��s�̃C���f���g������ɏ����Ȃ�
inoremap <CR> <CR>X<C-h>

" �}�����[�h�ł̃J�[�\���ړ�
inoremap <C-j> <Down>
inoremap <C-k> <Up>
inoremap <C-h> <Left>
inoremap <C-l> <Right>

"�}�����[�h����Ctrl+a�Ő擪�Ɉړ�
inoremap <silent> <C-a> <Esc>^<Insert>
"Ctrl+e�ōs���ړ�
inoremap <silent> <C-e> <Esc>$<Insert><Right>
"Ctrl+l�ōs���ɁG������
inoremap <silent> <C-s> <Left><Esc>$<Insert><Right> ;<Left><BS><Right>

"************************************** �R�}���h���[�h�@�L�[�o�C���h *****************************************************************

" �R�}���h���C�����A�N���b�v�{�[�h����\��t��
cnoremap <C-V> <C-R>*

"�J�����g�f�B���N�g���ւ̃p�X��⊮����
cmap <c-x> <c-r>=expand('%:p:h')<cr>/

"�J�����g�f�B���N�g���ւ̐�΃p�X��⊮����
cmap <c-z> <c-r>=expand('%:p:r')<cr>

"************************************** ���B�W���A�����[�h�@�L�[�o�C���h *****************************************************************

" �I�𕔕����N���b�v�{�[�h�ɃR�s�[
vnoremap <C-C> "*y

" �I�𕔕����N���b�v�{�[�h�̒l�ɒu������
vnoremap <C-V> "*P

" �I�𕔕����N���b�v�{�[�h�ɐ؂���
vnoremap <C-X> "*d<ESC>

" visula���[�h�őI�����Ă���̃C���f���g�����Œ�����ɑI��͈͂��J�����Ȃ�
vnoremap > >gv
vnoremap < <gv

"�I����������������
vnoremap * "zy:let @/ = @z<CR>nN

"Visual���[�h�ŘA���ŃR�s�y����
vnoremap <silent> p "0p<CR>

"�J�[�\���̈ړ�
vnoremap <Space>h ^
vnoremap <Space>l $
vnoremap <Space>m %


"*********************************************************************************

