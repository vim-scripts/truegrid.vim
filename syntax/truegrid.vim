"
" TrueGrid syntax file for vim
" version 0.1.0
" Language: TrueGrid input file
" Maintainer: Neil Hodge (hodge3@llnl.gov)
" Last change: 2003-10-29
"


"
" INSTRUCTIONS
"
" To use this file, you need to set up vim so that it sets the file
" format appropriately on startup.  The easiest way to do this is to
" detect the filename.  Put the code between the lines of quotes
" in your vim startup file (either .vimrc or .gvimrc), and it should work
" fine (at least back to version 6.1, and for both unix and windows
" versions).
"

""""" START HERE """"""""""""""""""""""""""""""""""""""""""""""""""""
"
" Detect trugrid file and treat appropriately
"
au BufNewFile,BufRead *.tg setf truegrid

"""""  END  HERE """"""""""""""""""""""""""""""""""""""""""""""""""""

" In addition, this file needs to be in the right location, as follows:
" 
" unix: ~/.vim/syntax/truegrid.vim
"       /usr/local/share/vim/vim61/syntax/trugrid.vim
"
" windows: c:\vim\vimfiles\syntax\truegrid.vim, or
"          c:\vim\vim6.2\syntax\truegrid
"
" The final location of the "syntax" directory could be different depending
" on how you compiled or installed vim.  The directories shown above are
" defaults for the user directory and then the system directory, respectively.
" Use the commands
"
" :version
"
" and
"
" :echo $VIMRUNTIME 
" :echo $HOME
"
" to figure out where your directories are.
"


"
" CHANGELOG
"
" 2003-10-29: Cleaned everything up for the initial release.
"


"
" BUGS
"
" This file has some problem with parsing sometimes.  I am still trying
" to find a fix, but I think it may have to do with vim's syntax parsing
" controls.
"
" This file was created on a unix system, and as such, may not run properly
" on a windows system.
"


"
" VERSION NUMBERING
"
" This file will follow the linux version numbering scheme:
" 
" a.b
"
" "a": indicates a major version
" "b": even number is a stable version, odd number is a development version
" "c": release of the given version
"
" So
"
" 0.3.2
" 
" is the second release of 0.3, which is a development version, and
"
" 1.2.6
"
" is the sixth release of 1.2, which is a stable version, and significantly
" different from 0.3.
"


"
" Remove any old syntax stuff hanging around
"
if version < 600
    syntax clear
elseif exists("b:current_syntax")
    finish
endif


"
" TrueGrid is not case dependent
"
syn case ignore


"
" Codes and options
"
syn keyword tgCodeOpts dyna3d dynaopts lsdyna lsdyopts nike3d nikeopts
"
" There are so many keywords that I think I will set up a minimum of one line
" per letter of the alphabet, and more as necessary.
" I will also use this organization in later sections as necessary.
"
syn keyword tgCodeOptsSub acrx anal auto
syn keyword tgCodeOptsSub d3plot dtcycl drayl dyn
syn keyword tgCodeOptsSub endtim
syn keyword tgCodeOptsSub idstf itrx
syn keyword tgCodeOptsSub keyword
syn keyword tgCodeOptsSub nbsr nbsrr neiph nodfor nsteps nrest
syn keyword tgCodeOptsSub plti prti
syn keyword tgCodeOptsSub sflg
syn keyword tgCodeOptsSub term tolrx


"
" Material
"
syn keyword tgMaterial dynamats
syn keyword tgMaterial lsdymats
syn keyword tgMaterial mate mti
syn keyword tgMaterial nikemats

syn keyword tgMaterialSub beta brick
syn keyword tgMaterialSub csb
syn keyword tgMaterialSub e efp eh elfob elfor elp eps es etan
syn keyword tgMaterialSub head hgq hgqt
syn keyword tgMaterialSub k
syn keyword tgMaterialSub lc
syn keyword tgMaterialSub mhead
syn keyword tgMaterialSub n
syn keyword tgMaterialSub pr
syn keyword tgMaterialSub rho
syn keyword tgMaterialSub shell shloc shth sigy src srp struct
syn keyword tgMaterialSub tsti


"
" Interface command and sub-commands
"
syn keyword tgInterface sid sv
syn keyword tgInterface tied

syn keyword tgInterfaceSub fric
syn keyword tgInterfaceSub kfric
syn keyword tgInterfaceSub pen pnlt


"
" If you don't like tabs . . .
"
syn match tgTab "^\t.*$"
syn match tgTab "\t"


"
" Merge mode
"


"
" Misc stuff
"
syn keyword tgMisc angle
syn keyword tgMisc beam becho block bptol
syn keyword tgMisc caption cylinder
syn keyword tgMisc endpart endverbatim epb
syn keyword tgMisc fvi
syn keyword tgMisc include info interrupt
syn keyword tgMisc lcd
syn keyword tgMisc merge
syn keyword tgMisc para painfo partmode plane
syn keyword tgMisc quit
syn keyword tgMisc rest rx
syn keyword tgMisc set stp
syn keyword tgMisc title tp triad
syn keyword tgMisc verbatim
syn keyword tgMisc write

syn keyword tgMiscSub disp green mesh symm tv

syn keyword tgConditional if then elseif else endif

syn keyword tgBoolean on off


" Integer
syn match tgNumber "-\=\<[0-9]\+\>"

" floating point number, with dot, optional exponent
syn match tgNumber "\<[0-9]\+\.[0-9]*\([edED][-+]\=[0-9]\+\)\=\>"

" floating point number, starting with a dot, optional exponent
syn match tgNumber "\.[0-9]\+\([edED][-+]\=[0-9]\+\)\=\>"

" floating point number, without dot, with exponent
syn match tgNumber "\<[0-9]\+[edED][-+]\=[0-9]\+\>"

" arithmetic operators
syn match tgMathOps "+"
syn match tgMathOps "-"
syn match tgMathOps "*"
syn match tgMathOps "/"
syn match tgMathOps "**"
syn match tgMathOps "^"
syn match tgMathOps ".gt."
syn match tgMathOps ">"
syn match tgMathOps ".ge."
syn match tgMathOps ">="
syn match tgMathOps ".lt."
syn match tgMathOps "<"
syn match tgMathOps ".le."
syn match tgMathOps "<="
syn match tgMathOps ".eq."
syn match tgMathOps "=="
syn match tgMathOps ".ne."
syn match tgMathOps "!="

" logical operators
syn match tgLogOps ".and."
syn match tgLogOps "&"
syn match tgLogOps "&&"
syn match tgLogOps ".or."
syn match tgLogOps ".eqv."
syn match tgLogOps ".neqv."
syn match tgLogOps ".not."
syn match tgLogOps "!"

" built-in function names
syn keyword tgBuiltIns INT NINT ABS MOD SIGN MAX MIN SQRT EXP LOG LOG10
syn keyword tgBuiltIns SIN COS TAN ASIN ACOS ATAN ATAN2 SINH COSH RAND NORM

" variable names
syn match tgIdentifier "%[a-zA-Z]\{1\}[a-zA-Z0-9_]*"
"syn region tgIdentifier start=+para + end=+ +
syn match tgIdentifier "[a-zA-Z]\{1\}[a-zA-Z0-9_]*"


" the only explicit string definition
syn region tgString start="title " end="$"
syn region tgString start="head " end="$"


"
" Comments
"
syn match tgComment "^c .*$"
syn match tgComment "\(\s\)\+c .*$"
syn region tgComment start="{" end="}"


"
" Define the "StatementSub" highlight group
"
"highlight Statement xxx term=bold cterm=bold ctermfg=3 gui=bold guifg=#ffff60
highlight StatementSub ctermfg=3 guifg=Green
highlight String ctermfg=3 guifg=blue

if version >= 508 || !exists("did_tg_syntax_inits")
    if version < 508
        let did_tg_syntax_inits = 1
        command -nargs=+ HiLink hi link <args>
    else
        command -nargs=+ HiLink hi link <args>
    endif
    "
    " Check out
    " :help group-name
    " for the default groups
    "
    HiLink tgMaterial       Statement
    HiLink tgMaterialSub    StatementSub
    HiLink tgCodeOpts       Statement
    HiLink tgCodeOptsSub    StatementSub
    HiLink tgInterface      Statement
    HiLink tgInterfaceSub   StatementSub
    HiLink tgMisc           Statement
    HiLink tgMiscSub        StatementSub
    HiLink tgBoolean        Boolean
    HiLink tgString         String
    HiLink tgNumber         Constant
    HiLink tgLogOps         Operator
    HiLink tgMathOps        Operator
    HiLink tgBuiltIns       Function
    HiLink tgIdentifier     Identifier
    HiLink tgComment        Comment
    HiLink tgDelimiter      Special
    HiLink tgConditional    Conditional
    HiLink tgTab            Underlined
    delcommand HiLink
endif

let b:current_syntax = "truegrid"


