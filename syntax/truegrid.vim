"
" TrueGrid syntax file for vim
" version 0.1.2
" Language: TrueGrid input file
" Maintainer: Neil Hodge (hodge3@llnl.gov)
"


"
" INSTRUCTIONS
"
" To use this file, you need to set up vim so that it sets the file
" format appropriately on startup.  The easiest way to do this is to
" detect the filename.  Put the code between the lines of quotes
" in your vim startup file (either .vimrc or .gvimrc), and it should work
" fine (at least back to version 6.1, and for both unix and windows
" versions).  NOTE: Be sure to uncomment the line starting with "au".
"
" ##### START HERE #######################################################
"
" Detect trugrid file and treat appropriately
"
" au BufNewFile,BufRead *.tg setf truegrid

" #####  END HERE  #######################################################
"
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
" In addition (from the vim help files):
"
" ########################################################################
"
" NOTE: The syntax files on MS-DOS and Windows have lines that end in <CR><NL>.
" The files for Unix end in <NL>.  This means you should use the right type of
" file for your system.  Although on MS-DOS and Windows the right format is
" automatically selected if the 'fileformats' option is not empty.
"
" ########################################################################
"
" so beware.
"


"
" CHANGELOG
"
" 2003-11-25: Added many keywords.  Fixed numeric highlighting (hopefully
"             for good).  Organized file format so that others can add
"             keywords in a more organized manner.
"
" 2003-11-24: Added more information to the instructions for DOS/UNIX
"             differences.  Also added NOTES section for myself.  Corrected
"             syntax for fortran "." operators.  Noticed that number regexes
"             are broken again; working to correct.  Continued reorganization
"             of keywords.
"
" 2003-11-12: Added a bunch of keywords.  Fixed up the number regexes.
"             
" 2003-10-29: Cleaned everything up for the initial release.
"


"
" BUGS/TODO
"
" * This file has some problem with parsing sometimes.  I am still trying
"   to find a fix, but I think it may have to do with vim's syntax parsing
"   controls.
"
" * This file was created on a unix system, and as such, may not run properly
"   on a windows system.
"
" * Set up controls to reset tabs to two spaces wide so that truegrid
"   does not overrun the line.
"
" * Optimize dot operators, a la fortran.vim
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
" NOTES
"
" The following help text is quoted from "syn-define":
"
" ########################################################################
"
" In case more than one item matches at the same position, the one that was
" defined LAST wins.  Thus you can override previously defined syntax items by
" using an item that matches the same text.  But a keyword always goes before a
" match or region.  And a keyword with matching case always goes before a
" keyword with ignoring case.
"
" ########################################################################
"
" Depending on how this works out, it may be prudent to switch all keyword
" definitions to matches or regions, to eliminate precedence issues.
"
" As a diagnostic tool, check out tip #99 at vim.org, at the following
" location:
"
" http://www.vim.org/tips/tip.php?tip_id=99
"

"
" Version 5.x: Clear previously defined syntax
" Version 6.x: Quit if a syntax is already defined
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
" Control/Output
"
syn keyword tgConOut abaqus ale3d ansys autodyn
syn keyword tgConOut cf3d cfd-ace crc cfx4
syn keyword tgConOut dyna3d
syn keyword tgConOut es3d exodusii endverbatim
syn keyword tgConOut fidap fluent
syn keyword tgConOut gemini gila gridgen3d
syn keyword tgConOut iri
syn keyword tgConOut lsdyna lsnike3d
syn keyword tgConOut marc
syn keyword tgConOut nastran ne/nastran ndigits nike3d
syn keyword tgConOut nekton2d nekton3d neutral
syn keyword tgConOut plot3d poly3d
syn keyword tgConOut refleqs
syn keyword tgConOut sami starcd save
syn keyword tgConOut tascflow topaz3d
syn keyword tgConOut viewpoint verbatim

syn keyword tgConOutSub fixed
syn keyword tgConOutSub keyword


"
" Control/Analysis
"
" There are so many keywords that I think I will set up a minimum of one line
" per letter of the alphabet, and more as necessary.
" I will also use this organization in later sections as necessary.
"
syn keyword tgConAna dynaopts
syn keyword tgConAna lsdyopts
syn keyword tgConAna nikeopts

syn keyword tgConAnaSub acrx anal auto
syn keyword tgConAnaSub d3plot defpf dtcycl drayl drdb dyn
syn keyword tgConAnaSub edsdf endtim
syn keyword tgConAnaSub facrx
syn keyword tgConAnaSub gvst
syn keyword tgConAnaSub idstf iif itrx itss
syn keyword tgConAnaSub keyword
syn keyword tgConAnaSub lcmax
syn keyword tgConAnaSub nbsr nbsrr neiph ngrav nodfor nsteps nrest nrunr
syn keyword tgConAnaSub plas plti pnlt prtflg prti
syn keyword tgConAnaSub rfpf
syn keyword tgConAnaSub scftrx sflg sfor snrs ssdm stat stsm stss stup
syn keyword tgConAnaSub teo term ticsf tolrx tsmin tssf
syn keyword tgConAnaSub xvel
syn keyword tgConAnaSub yvel
syn keyword tgConAnaSub zvel


"
" Control/Material
"
syn keyword tgConMat abaqmats ansymats ansynl
syn keyword tgConMat delmats dynaeos dynamats
syn keyword tgConMat ed3dmats
syn keyword tgConMat fluemats
syn keyword tgConMat lsdymats lsdythmt lsnkmats 
syn keyword tgConMat marcmats mate
syn keyword tgConMat nastmats nensmats nikemats
syn keyword tgConMat patmats
syn keyword tgConMat rho
syn keyword tgConMat shso
syn keyword tgConMat tmm tz3dmats

syn keyword tgConMatSub beta brick
syn keyword tgConMatSub csb
syn keyword tgConMatSub e efp eh elfob elfor elp eps es etan
syn keyword tgConMatSub hgq hgqt
syn keyword tgConMatSub k
syn keyword tgConMatSub lc
syn keyword tgConMatSub n
syn keyword tgConMatSub pr
syn keyword tgConMatSub rho
syn keyword tgConMatSub shell shloc shth sigy src srp struct
syn keyword tgConMatSub tsti


"
" Control/Parts
"


"
" Control/Vel_Acc
"


"
" Control/Boundary
"


"
" Control/Radiation
"


"
" Control/Spring_Mass
"


"
" Control/Interface
"


"
" Control/Element
"


"
" Control/Transform
"


"
" Control/Replicate
"


"
" Control/Merging
"


"
" Control/2D Curve
"


"
" Control/3D Curve
"


"
" Control/Surface
"


"
" Control/Cad
"


"
" Control/Sets
"


"
" Control/Misc
"


"
" Block/Mesh
"
syn keyword tgMesh as
syn keyword tgMesh cur cure curf curs
syn keyword tgMesh de dei das drs dom
syn keyword tgMesh edge esm esmp
syn keyword tgMesh hyr
syn keyword tgMesh ilin ilini insprt
syn keyword tgMesh lin lini
syn keyword tgMesh mseq mb mbi ms
syn keyword tgMesh nds
syn keyword tgMesh orpt
syn keyword tgMesh pb pbs patch
syn keyword tgMesh q
syn keyword tgMesh res relax relaxi
syn keyword tgMesh splint sf sfi spp
syn keyword tgMesh tr tri tf tfi tme tmei tmplt
syn keyword tgMesh unifm unifmi update


"
" Block/Edit
"
syn keyword tgEdit actcmd
syn keyword tgEdit decmd
syn keyword tgEdit history
syn keyword tgEdit undo


"
" Block/Graphics
"


"
" Block/Viewing
"


"
" Block/Peel
"


"
" Block/Dis_Vel_Acc
"


"
" Block/Force
"
syn keyword tgForce arri
syn keyword tgForce csf
syn keyword tgForce dist
syn keyword tgForce fa fai fc fci fcc fcci fcs fcsi
syn keyword tgForce ll
syn keyword tgForce mdep mom momi
syn keyword tgForce ndl ndli
syn keyword tgForce pr pri pramp


"
" Block/Boundary
"


"
" Block/Radiation
"


"
" Block/Electric
"


"
" Block/Spring_Mass
"


"
" Block/Interface
"
syn keyword tgInterface sid sv
syn keyword tgInterface tied

syn keyword tgInterfaceSub fric
syn keyword tgInterfaceSub kfric
syn keyword tgInterfaceSub pen pnlt


"
" Block/Material
"


"
" Block/Element
"


"
" Block/Diagnostic
"


"
" Block/Parts
"


"
" Block/Replicate
"


"
" Block/Merging
"


"
" Block/Output
"


"
" Block/2D Curve
"


"
" Block/3D Curve
"


"
" Block/Surface
"


"
" Block/Cad
"


"
" Block/Sets
"


"
" Block/Misc
"


"
" Merge/Merging
"


"
" Merge/Diagnostic
"


"
" Merge/Graphics
"


"
" Merge/Viewing
"


"
" Merge/Animate
"


"
" Merge/ . . .
"


"
" If you don't like tabs . . .
"
syn match tgTab "^\t.*$"
syn match tgTab "\t"


"
" Misc stuff
"
syn keyword tgMisc angle
syn keyword tgMisc beam becho block bptol
syn keyword tgMisc caption cont cylinder
syn keyword tgMisc echo endpart epb
syn keyword tgMisc fvi
syn keyword tgMisc include info interrupt
syn keyword tgMisc lcd
syn keyword tgMisc merge
syn keyword tgMisc para painfo partmode plane
syn keyword tgMisc quit
syn keyword tgMisc rest rx
syn keyword tgMisc set stp
syn keyword tgMisc tp triad
syn keyword tgMisc tp triad
syn keyword tgMisc write

syn keyword tgMiscSub disp green mesh symm tv

syn keyword tgConditional if then elseif else endif

syn keyword tgBoolean on off


" arithmetic operators
" Some of these could be significantly optimized.
" Check out fortran syntax file for details.
syn match tgMathOps "+"
syn match tgMathOps "-"
syn match tgMathOps "*"
syn match tgMathOps "/"
syn match tgMathOps "**"
syn match tgMathOps "^"
syn match tgMathOps "\.gt\."
syn match tgMathOps ">"
syn match tgMathOps "\.ge\."
syn match tgMathOps ">="
syn match tgMathOps "\.lt\."
syn match tgMathOps "<"
syn match tgMathOps "\.le\."
syn match tgMathOps "<="
syn match tgMathOps "\.eq\."
syn match tgMathOps "=="
syn match tgMathOps "\.ne\."
syn match tgMathOps "!="

" logical operators
syn match tgLogOps "\.and\."
syn match tgLogOps "&"
syn match tgLogOps "&&"
syn match tgLogOps "\.or\."
syn match tgLogOps "\.eqv\."
syn match tgLogOps "\.neqv\."
syn match tgLogOps "\.not\."
syn match tgLogOps "!"


" built-in function names
syn keyword tgBuiltIns INT NINT ABS MOD SIGN MAX MIN SQRT EXP LOG LOG10
syn keyword tgBuiltIns SIN COS TAN ASIN ACOS ATAN ATAN2 SINH COSH RAND NORM


"
" Comments and free-form strings
"
syn match tgComment "^c .*$"
syn match tgComment "\(\s\)\+c .*$"
syn region tgComment start="{" end="}"

syn region tgString start="title " end="$"
syn region tgString start="head " end="$"
syn region tgString start="mhead " end="$"


"
" variable names
"
syn match tgIdentifier "%[a-zA-Z]\{1\}[a-zA-Z0-9_]*"


"
" Numeric constants, taken from fortran.vim
"
" Integers
syn match tgNumber "\<\d\+[ij]\=\>"
" Floating point number, with dot, optional exponent
syn match tgNumber "\<\d\+\(\.\d*\)\=\([edED][-+]\=\d\+\)\=[ij]\=\>"
" Floating point number, starting with a dot, optional exponent
syn match tgNumber "\.\d\+\([edED][-+]\=\d\+\)\=[ij]\=\>"


"
" Define the "StatementSub" highlight group
"
"highlight Statement xxx term=bold cterm=bold ctermfg=3 gui=bold guifg=#ffff60
highlight StatementSub ctermfg=3 guifg=Green
highlight String guifg=red

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
    HiLink tgConOut         Statement
    HiLink tgConOutSub      StatementSub
    HiLink tgConAna         Statement
    HiLink tgConAnaSub      StatementSub
    HiLink tgConMat         Statement
    HiLink tgConMatSub      StatementSub
    HiLink tgMesh           Statement
    HiLink tgEdit           Statement
    HiLink tgForce          Statement
    HiLink tgInterface      Statement
    HiLink tgInterfaceSub   StatementSub
    HiLink tgMisc           Statement
    HiLink tgMiscSub        StatementSub
    HiLink tgBoolean        Boolean
    HiLink tgString         String
    HiLink tgNumber         Number
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

"
" This guarantees correct highlight parsing when moving through the file,
" even if it is a bit slower.
"
syn sync fromstart

let b:current_syntax = "truegrid"

