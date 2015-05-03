execute pathogen#infect() 


set nowrap        " don't wrap lines
set tabstop=4     " a tab is four spaces
set backspace=indent,eol,start
                    " allow backspacing over everything in insert mode
set autoindent    " always set autoindenting on
set copyindent    " copy the previous indentation on autoindenting
set number        " always show line numbers
set shiftwidth=4  " number of spaces to use for autoindenting
set shiftround    " use multiple of shiftwidth when indenting with '<' and '>'
set showmatch     " set show matching parenthesis
set ignorecase    " ignore case when searching
set smartcase     " ignore case if search pattern is all lowercase,
                    "    case-sensitive otherwise
set smarttab      " insert tabs on the start of a line according to
                    "    shiftwidth, not tabstop
set hlsearch      " highlight search terms
set incsearch     " show search matches as you type

" and some more

set history=1000         " remember more commands and search history
set undolevels=1000      " use many muchos levels of undo
set wildignore=*.swp,*.bak,*.pyc,*.class
set title                " change the terminal's title
set visualbell           " don't beep
set noerrorbells         " don't beep


" Every Vim user likes to enable auto-indenting of source code, so Vim can intelligently position you cursor on the next line as you type. This has one big ugly consequence however: when you paste text into your terminal-based Vim with a right mouse click, Vim cannot know it is coming from a paste. To Vim, it looks like text entered by someone who can type incredibly fast :) Since Vim thinks this is regular key strokes, it applies all auto-indenting and auto-expansion of defined abbreviations to the input, resulting in often cascading indents of paragraphs.
" There is an easy option to prevent this, however. You can temporarily switch to “paste mode”, simply by setting the following option:
set pastetoggle=<F2>

" Never press painful shift again for saving files
nnoremap ; :


" tell it to use an undo file
set undofile
" set a directory to store the undo history
set undodir=/home/yourname/.vimundo/
