"
" TrueGrid syntax file for vim
" version 0.1.3
" Language: TrueGrid input file
" Maintainer: Neil Hodge (hodge3@llnl.gov)
"


"
" INSTRUCTIONS
"
" To use this file, you need to set up vim so that it sets the file
" format appropriately on startup.  The easiest way to do this is to
" detect the filename.  Put the code between the lines of hashes
" in your vim startup file (either .vimrc or .gvimrc), and it should work
" fine (at least back to version 6.1, and for both unix and windows
" versions).  NOTE: Be sure to uncomment the line starting with "au".
"
" ##### START HERE #######################################################
"
" Detect trugrid file and treat appropriately
"
"au BufNewFile,BufRead *.tg setf truegrid
"
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
" 2004-03-04: Released 0.1.3
"
" 2004-03-02: Made a few improvements to the more experimental parts of the
"             syntax; some of these constructs (re: the "bi" command) are
"             very complex, with some very odd behavior, and as such, will
"             be ongoing until they are fixed.
"
" 2004-01-29: Added more keywords.
"
" 2004-01-22: Played around a bit with folding; it will probably be
"             included (as an option) in some future release.  Started to
"             clean up all of the definitions, to prepare for the next
"             release.  Added many more keywords.
"
" 2004-01-15: Made changes to some of the more complex syntax constructs.
"             Created highlighting that will aid the user in knowing if a
"             statement is closed (e.g., if-endif).  Added visual
"             indicators for lines greater than 80 characters.
"
" 2003-12-31: Reorganizing the way things are defined to make the
"             highlighting much more flexible and powerful.  This is a
"             work in progress.
"
" 2003-12-12: Figured how to highlight items differently depending on 
"             context, and how to make a highlighted region span multiple
"             lines, and how to create nested highlight groups.  Still
"             trying to figure out how to implement these features
"             gracefully.
" 
" 2003-12-11: Reset some of the tab parameters to accomodate truegrid's
"             line length restriction.  Changed the highlighting of
"             arbitrary strings (echo, becho, title, head, and mhead
"             commands).  Mostly figured out how to make a pattern match
"             differently depending on context; still working on some of
"             the details.
"
" 2003-11-25: Released 0.1.2
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
" * This file was created on a unix system, and as such, may not run properly
"   on a windows system.
"
" * Optimize dot operators, a la fortran.vim
"
"


"
" VERSION NUMBERING
"
" This file will follow the linux version numbering scheme:
" 
" a.b.c
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
syn keyword tgConAnaSub d3plot defpf delt dtcycl drayl drdb dyn
syn keyword tgConAnaSub edsdf endtim
syn keyword tgConAnaSub facrx
syn keyword tgConAnaSub gvst
syn keyword tgConAnaSub idstf iif itrx itss
syn keyword tgConAnaSub keyword
syn keyword tgConAnaSub lcmax
syn keyword tgConAnaSub nbsr nsbrr neiph ngrav nodfor nsteps nrest nrunr
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
syn keyword tgConMat delmats dynaeos
syn keyword tgConMat ed3dmats
syn keyword tgConMat fluemats
syn keyword tgConMat lsdythmt lsnkmats 
syn keyword tgConMat marcmats mate
syn keyword tgConMat nastmats nensmats nikemats
syn keyword tgConMat patmats
syn keyword tgConMat rho
syn keyword tgConMat shso
syn keyword tgConMat tmm tz3dmats

syn keyword tgConMatSub beta brick contained
syn keyword tgConMatSub csb contained
syn keyword tgConMatSub e efp eh elfob elfor elp eps es etan contained
syn keyword tgConMatSub hgq hgqt contained
syn keyword tgConMatSub k contained
syn keyword tgConMatSub lc contained
syn keyword tgConMatSub n contained
syn keyword tgConMatSub pr contained
syn keyword tgConMatSub rho contained
syn keyword tgConMatSub shell shloc shth sigy src srp struct contained
syn keyword tgConMatSub tsti contained


"
" Control/Parts
"
syn keyword tgConParts beam block blude
syn keyword tgConParts bceam cylinder
syn keyword tgConParts linear
syn keyword tgConParts meshscal
syn keyword tgConParts partmode pinfo
syn keyword tgConParts quadratic
syn keyword tgConParts readmesh


"
" Control/Vel_Acc
"
syn keyword tgConVA rotation
syn keyword tgConVA velocity


"
" Control/Boundary
"
syn keyword tgConBnd detp
syn keyword tgConBnd jd jtinfo
syn keyword tgConBnd lsys lsysinfo
syn keyword tgConBnd mpc
syn keyword tgConBnd plane plinfo
syn keyword tgConBnd trp

syn keyword tgConBndSub cj
syn keyword tgConBndSub dx dy dz contained
syn keyword tgConBndSub fixed free
syn keyword tgConBndSub lnpt
syn keyword tgConBndSub pj pnlt point
syn keyword tgConBndSub repe rj
syn keyword tgConBndSub rx ry rz contained
syn keyword tgConBndSub sj ston sw syf symm
syn keyword tgConBndSub time tj
syn keyword tgConBndSub vj


"
" Control/Radiation
"
syn keyword tgConRad bfd
syn keyword tgConRad temp


"
" Control/Spring_Mass
"
syn keyword tgConSM spd spinfo

syn keyword tgConSMSub gn
syn keyword tgConSMSub iep
syn keyword tgConSMSub le lv
syn keyword tgConSMSub ne nesf nv


"
" Control/Interface
"
syn keyword tgConInt getbb
syn keyword tgConInt inttr
syn keyword tgConInt sid siinfo

syn keyword tgConIntSub a3 a5 a10 a13 auto
syn keyword tgConIntSub break btime
syn keyword tgConIntSub dcoef decay distoc dni dnt dtime dummy
syn keyword tgConIntSub edge
syn keyword tgConIntSub fric
syn keyword tgConIntSub i2d3d incmst incslv igap ignore isrch isym
syn keyword tgConIntSub kfric
syn keyword tgConIntSub maxpcss mfif
syn keyword tgConIntSub ncybs ncyup nsw
syn keyword tgConIntSub owsv
syn keyword tgConIntSub p1 pen penmax pnlt pnltm pnlts
syn keyword tgConIntSub rebar
syn keyword tgConIntSub sand scoef scoufsf sets sfif sfmps sfsps
syn keyword tgConIntSub single sl sldthk sldstf softc srchdp ssoftc
syn keyword tgConIntSub sthms sthss sv svfsf
syn keyword tgConIntSub tied thkopt thms thss
syn keyword tgConIntSub vfcoef visdam


"
" Control/Element
"
syn keyword tgConEle bind bsd bsinfo
syn keyword tgConEle lsbsd
syn keyword tgConEle offset
syn keyword tgConEle sind

syn keyword tgConEleSub n y


"
" Control/Transform
"
syn keyword tgConTrans csca
syn keyword tgConTrans exch
syn keyword tgConTrans gexch
syn keyword tgConTrans nerl
syn keyword tgConTrans xoff xsca
syn keyword tgConTrans yoff ysca
syn keyword tgConTrans zoff zsca


"
" Control/Replicate
"
syn keyword tgConRep gct gmi gsii
syn keyword tgConRep lct lev lmt lsii
syn keyword tgConRep pplv pslv

syn keyword tgConRepSub add
syn keyword tgConRepSub csca
syn keyword tgConRepSub ftf
syn keyword tgConRepSub grep
syn keyword tgConRepSub inv
syn keyword tgConRepSub last levct
syn keyword tgConRepSub mx my mz
syn keyword tgConRepSub prod
syn keyword tgConRepSub raxis repe rxy ryz rzx
syn keyword tgConRepSub rx ry rz contained
syn keyword tgConRepSub save
syn keyword tgConRepSub tf
syn keyword tgConRepSub v 
syn keyword tgConRepSub xsca
syn keyword tgConRepSub ysca
syn keyword tgConRepSub zsca


"
" Control/Merging
"
syn keyword tgConMerge bptol
syn keyword tgConMerge merge mns
syn keyword tgConMerge ptol
syn keyword tgConMerge rigbm
syn keyword tgConMerge st stp
syn keyword tgConMerge t
syn keyword tgConMerge ztol


"
" Control/2D Curve
"
syn keyword tgCon2DC apld
syn keyword tgCon2DC ckl
syn keyword tgCon2DC delld dellds dndd
syn keyword tgCon2DC edgefile
syn keyword tgCon2DC flcd
syn keyword tgCon2DC gset
syn keyword tgCon2DC lcc lcd lcv ld ld3d2d ldinfo ldprnt
syn keyword tgCon2DC lrl lrot lsca lscx lt lv lvs lvi
syn keyword tgCon2DC mazt
syn keyword tgCon2DC ndd
syn keyword tgCon2DC rln rlns

syn keyword tgCon2DCSub 2dfunc
syn keyword tgCon2DCSub csp2 ctbc ctbo
syn keyword tgCon2DCSub dattyp
syn keyword tgCon2DCSub ftbc ftbo fws2 func
syn keyword tgCon2DCSub lep lint lnof lo lod lp2 lpil lp
syn keyword tgCon2DCSub lq lstl ltbc ltbo ltbos
syn keyword tgCon2DCSub offa offo
syn keyword tgCon2DCSub rseg
syn keyword tgCon2DCSub sfa sfo sidr


"
" Control/3D Curve
"
syn keyword tgCon3DC apcurd
syn keyword tgCon3DC cdinfo curd
syn keyword tgCon3DC delcd delcds
syn keyword tgCon3DC rmseg 


"
" Control/Surface
"
syn keyword tgConSurf accuracy
syn keyword tgConSurf chkfolds cooref
syn keyword tgConSurf delsd delsds
syn keyword tgConSurf fetol
syn keyword tgConSurf getol
syn keyword tgConSurf lasd lcsd locate
syn keyword tgConSurf mvpn
syn keyword tgConSurf project purge pvpn
syn keyword tgConSurf sd sdinfo
syn keyword tgConSurf trsd


"
" Control/Cad
"
syn keyword tgConCad iges igesbls igescd igesfile igespd igessd
syn keyword tgConCad ltrim
syn keyword tgConCad nurbsd
syn keyword tgConCad saveiges
syn keyword tgConCad trimming
syn keyword tgConCad useiges
syn keyword tgConCad vpsd
syn keyword tgConCad wrsd


"
" Control/Sets
"
syn keyword tgConSets delset
syn keyword tgConSets esetc
syn keyword tgConSets fsetc
syn keyword tgConSets nsetc nsetinfo


"
" Control/Misc
"
syn keyword tgConMisc bulc
syn keyword tgConMisc crprod curtyp
syn keyword tgConMisc dc def distance
syn keyword tgConMisc end errmod
syn keyword tgConMisc inprod intyp
syn keyword tgConMisc mxp
syn keyword tgConMisc painfo
syn keyword tgConMisc subang
syn keyword tgConMisc resume
syn keyword tgConMisc tpara tricent


"
" Block/Mesh
"
syn keyword tgBlkMesh as
syn keyword tgBlkMesh cur cure curf curs
syn keyword tgBlkMesh de dei das drs dom
syn keyword tgBlkMesh edge esm esmp
syn keyword tgBlkMesh hyr
syn keyword tgBlkMesh ilin ilini insprt
syn keyword tgBlkMesh lin lini
syn keyword tgBlkMesh mseq mb mbi ms
syn keyword tgBlkMesh nds
syn keyword tgBlkMesh orpt
syn keyword tgBlkMesh pb pbs patch
syn keyword tgBlkMesh q
syn keyword tgBlkMesh res relax relaxi
syn keyword tgBlkMesh splint sf sfi spp
syn keyword tgBlkMesh t1 t2 t3 tr tri tf tfi tme tmei tmplt
syn keyword tgBlkMesh unifm unifmi update
syn keyword tgBlkMesh x
syn keyword tgBlkMesh y
syn keyword tgBlkMesh z

syn keyword tgBlkMeshSub i
syn keyword tgBlkMeshSub j
syn keyword tgBlkMeshSub k
syn keyword tgBlkMeshSub x xy xyz xz
syn keyword tgBlkMeshSub y yz
syn keyword tgBlkMeshSub z


"
" Block/Edit
"
syn keyword tgBlkEdit actcmd
syn keyword tgBlkEdit decmd
syn keyword tgBlkEdit history
syn keyword tgBlkEdit undo


"
" Block/Graphics
"
syn keyword tgBlkGraph aad ad
syn keyword tgBlkGraph bbint
syn keyword tgBlkGraph caption
syn keyword tgBlkGraph dad dads daad display draw
syn keyword tgBlkGraph grid
syn keyword tgBlkGraph labels
syn keyword tgBlkGraph mlabs
syn keyword tgBlkGraph pad postscript
syn keyword tgBlkGraph raad rad rindex
syn keyword tgBlkGraph sdint set slice
syn keyword tgBlkGraph triad
syn keyword tgBlkGraph zclip


"
" Block/Viewing
"
syn keyword tgBlkView angle
syn keyword tgBlkView center
syn keyword tgBlkView d
syn keyword tgBlkView fix
syn keyword tgBlkView l
syn keyword tgBlkView r reso restore rx ry rz
syn keyword tgBlkView scale
syn keyword tgBlkView trans
syn keyword tgBlkView u unfix
syn keyword tgBlkView xscl
syn keyword tgBlkView yscl
syn keyword tgBlkView zb zf zscl


"
" Block/Peel
"
syn keyword tgBlkPeel arg argi
syn keyword tgBlkPeel darg darged
syn keyword tgBlkPeel rg rgi rrg rrgi


"
" Block/Dis_Vel_Acc
"
syn keyword tgBlkDVA acc accc accci acci accs accsi
syn keyword tgBlkDVA bv bvi
syn keyword tgBlkDVA dis disi
syn keyword tgBlkDVA fd fdc fdci fdi fds fdsi frb frbi fv fvc fvci fvi
syn keyword tgBlkDVA fvs fvsi fvv fvvc fvvci fvvi fvvs fvvsi
syn keyword tgBlkDVA rotation
syn keyword tgBlkDVA vacc vaccc vaccci vacci vaccs vaccsi ve vei velocity

syn keyword tgBlkDVASub birth
syn keyword tgBlkDVASub death
syn keyword tgBlkDVASub exclude


"
" Block/Force
"
syn keyword tgBlkForce arri
syn keyword tgBlkForce csf
syn keyword tgBlkForce dist
syn keyword tgBlkForce fa fai fc fci fcc fcci fcs fcsi
syn keyword tgBlkForce ll
syn keyword tgBlkForce mdep mom momi
syn keyword tgBlkForce ndl ndli
syn keyword tgBlkForce pr pri pramp


"
" Block/Boundary
"
syn keyword tgBlkBnd b
syn keyword tgBlkBnd cfc cfci
syn keyword tgBlkBnd detp
syn keyword tgBlkBnd fbc fbci
syn keyword tgBlkBnd il ili
syn keyword tgBlkBnd jd jt jtinfo
syn keyword tgBlkBnd lb lbi lbsys lsysinfo
syn keyword tgBlkBnd mpc
syn keyword tgBlkBnd namereg nameregi nr nri
syn keyword tgBlkBnd ol oli
syn keyword tgBlkBnd plinfo
syn keyword tgBlkBnd reg regi
syn keyword tgBlkBnd sfb sfbi sw swi syf syfi
syn keyword tgBlkBnd trp

syn keyword tgBlkBndSub dx dy dz contained
syn keyword tgBlkBndSub rx ry rz contained


"
" Block/Radiation
"
" I probably won't bother with this, since I have no reason to believe
" that I will ever use it.  If someone else wants to do it, then I will
" include it.
"


"
" Block/Electric
"
" See Block/Radiation above.
"


"
" Block/Spring_Mass
"
syn keyword tgBlkSM npm
syn keyword tgBlkSM pm
syn keyword tgBlkSM spd spdp spinfo spring


"
" Block/Interface
"
syn keyword tgBlkInt abb abbs
syn keyword tgBlkInt bb bbinfo
syn keyword tgBlkInt dabb dbb dbbs
syn keyword tgBlkInt flowint flowinti
syn keyword tgBlkInt getbb
syn keyword tgBlkInt inttr iss issi
syn keyword tgBlkInt rabb rbb rbbs
syn keyword tgBlkInt si sid sii siinfo
syn keyword tgBlkInt trbb

syn keyword tgBlkIntSub auto
syn keyword tgBlkIntSub break
syn keyword tgBlkIntSub decay dni dnt dummy
syn keyword tgBlkIntSub fric
syn keyword tgBlkIntSub kfric
syn keyword tgBlkIntSub m mfif
syn keyword tgBlkIntSub nsw
syn keyword tgBlkIntSub owsv
syn keyword tgBlkIntSub pen pnlt pnltm pnlts
syn keyword tgBlkIntSub rebar
syn keyword tgBlkIntSub s sand sets sfif single sl sv sw
syn keyword tgBlkIntSub tied


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
syn keyword tgBlkParts ap aps
syn keyword tgBlkParts beam block blude
syn keyword tgBlkParts cbeam cycorsy cylinder
syn keyword tgBlkParts dap dp dps
syn keyword tgBlkParts endpart
syn keyword tgBlkParts pinfo
syn keyword tgBlkParts rap readmesh rp rps
syn keyword tgBlkParts savepart

syn keyword tgBlkPartsSub dyna3d
syn keyword tgBlkPartsSub iges
syn keyword tgBlkPartsSub lsdyna
syn keyword tgBlkPartsSub nastran neutral


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
syn keyword tgBlkMisc abort
syn keyword tgBlkMisc control
syn keyword tgBlkMisc include
syn keyword tgBlkMisc resume


"
" Merge/Merging
"
syn keyword tgMrgMerge bptol
syn keyword tgMrgMerge mnl mns
syn keyword tgMrgMerge pn ptol
syn keyword tgMrgMerge rigbm
syn keyword tgMrgMerge st stp
syn keyword tgMrgMerge t tp
syn keyword tgMrgMerge ztol


"
" Merge/Diagnostic
"
syn keyword tgMrgDiag ajnp
syn keyword tgMrgDiag cenref centroid
syn keyword tgMrgDiag elm elmoff
syn keyword tgMrgDiag info
syn keyword tgMrgDiag mass measure
syn keyword tgMrgDiag pmass
syn keyword tgMrgDiag reference
syn keyword tgMrgDiag size
syn keyword tgMrgDiag tmass

syn keyword tgMrgDiagSub aspect avolume
syn keyword tgMrgDiagSub dvi dvj dvk dli dlj dlk
syn keyword tgMrgDiagSub jacobian
syn keyword tgMrgDiagSub orthogon
syn keyword tgMrgDiagSub pointvol
syn keyword tgMrgDiagSub smallest
syn keyword tgMrgDiagSub triangle
syn keyword tgMrgDiagSub volume
syn keyword tgMrgDiagSub warp


"
" Merge/Graphics
"
syn keyword tgMrgGraph aad ad
syn keyword tgMrgGraph backplane bbint
syn keyword tgMrgGraph caption condition contained
syn keyword tgMrgGraph daad dad dads display dpic draw
syn keyword tgMrgGraph grid
syn keyword tgMrgGraph labels
syn keyword tgMrgGraph mlabs
syn keyword tgMrgGraph noplot
syn keyword tgMrgGraph pad plot poor postscript
syn keyword tgMrgGraph raad rad rindex rpic
syn keyword tgMrgGraph sdint set slice
syn keyword tgMrgGraph triad
syn keyword tgMrgGraph zclip

syn keyword tgMrgGraphSub 1d 2d 3d 2q 3q
syn keyword tgMrgGraphSub acc acon allpcolr allscolr angle
syn keyword tgMrgGraphSub bb bf bgcolr bv
syn keyword tgMrgGraphSub cap cblind cracks crv crvpt cv cvt
syn keyword tgMrgGraphSub dcon
syn keyword tgMrgGraphSub dx dy dz contained
syn keyword tgMrgGraphSub efl elemset epb 
syn keyword tgMrgGraphSub facesel faceset fc fd ffc fl fmom
syn keyword tgMrgGraphSub fraces frb fredges ft fv
syn keyword tgMrgGraphSub grid grtol
syn keyword tgMrgGraphSub ijk1 ijk2 ijk4 il iss
syn keyword tgMrgGraphSub jt 
syn keyword tgMrgGraphSub ldir lcol loc1d loc2d loc2dq loc3d loc3dq locnd
syn keyword tgMrgGraphSub marker mcolor mdep mesh mom
syn keyword tgMrgGraphSub n nodes nodeset npb nr
syn keyword tgMrgGraphSub off ol onset or
syn keyword tgMrgGraphSub parts pcolor pm pr preso contained
syn keyword tgMrgGraphSub rax rb re resn
syn keyword tgMrgGraphSub rx ry rz contained
syn keyword tgMrgGraphSub sax sc scol scolor scon sd sdedge sdpt sfb si size
syn keyword tgMrgGraphSub sp spow spw spwf sw sy syf
syn keyword tgMrgGraphSub tax tepro thic thick tm tol tv
syn keyword tgMrgGraphSub ve vhg


"
" Merge/Viewing
"


"
" Merge/Animate
"


"
" Merge/Explode
"


"
" Merge/Material
"


"
" Merge/Interface
"


"
" Merge/Spring_Mass
"


"
" Merge/Element
"


"
" Merge/Parts
"


"
" Merge/Replicate
"


"
" Merge/Dis_Vel_Acc
"


"
" Merge/Force
"


"
" Merge/Boundary
"


"
" Merge/Radiation
"
" See Block/Radiation above.
"

"
" Merge/Electric
"
" See Block/Radiation above.
"

"
" Merge/Output
"


"
" Merge/2D Curve
"


"
" Merge/3D Curve
"


"
" Merge/Surface
"


"
" Merge/Cad
"


"
" Merge/Sets
"


"
" Merge/Misc
"


"
" If you don't like tabs . . .
"
syn match tgTab "^\t.*$"
syn match tgTab "\t"



syn keyword tgConditional if then elseif else endif contained

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
syn region tgString start="echo " end="$"
syn region tgString start="becho " end="$"


"
" This section defines the highlighting for more complex commands.
"
" The top section is for the keywords to be contained.
syn keyword tgContainedSub brick elfob i8b k fluid struct contained
" This line creates a group of generic items that are frequently
" contained.
syn cluster tgGenGroup contains=tgNumber,tgComment,tgString,tgIdentifier,tgBoolean

" 
" The complex definitions . . .
"
" material definition commands
syn region tgBlkForce start="\(dynamats\|lsdymats\)" end=";" contains=@tgGenGroup,tgConMatSub
" The following test works . . .
"syn region tgBlkForce start="dumble" end=";" contains=tgNumber,tgContainedSub
" The "fold" option is very interesting here; consider making an option.
" "para" command
syn region Normal matchgroup=tgComplex start="para" end=";" contains=tgNumber,tgIdentifier,tgMathOps
" "bi" command
"syn region Normal matchgroup=tgComplex start="bi" skip="[^;]*;[^;]\+" end=";" contains=@tgGenGroup,tgBlkBndSub
"syn region Normal matchgroup=tgComplex start="bi" end="\(\([^;]*;\n\=\)\{3}[^;]*\)\@<=;" contains=@tgGenGroup,tgBlkBndSub
"syn region Normal matchgroup=tgComplex start="bi" end="\(;\(\_[^;]*\)\)\zs;" contains=@tgGenGroup,tgBlkBndSub
syn region Normal matchgroup=tgComplex start="bi" skip="\([^;]*;\n\=\)\{3}" end=";" contains=@tgGenGroup,tgBlkBndSub keepend

" testing
syn region Normal matchgroup=tgComplex start="\(caption\|condition\)" end="$" contains=@tgGenGroup,tgMrgGraphSub
" A definiton to highlight if-endif groups
" There may be a better way to do this, using multiple regions . . .
syn region Normal matchgroup=tgConditional start='if' end='endif' contains=ALL
" A little trick to get comments to show up properly
syn match tgComment "\%>80c.\+"


" The following line is necessary for folding to work correctly.
"set foldmethod=syntax


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
highlight link StatementSub Type


"
" Link all of the "tg" groups to various standard groups
"
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
    HiLink tgConParts       Statement
    HiLink tgConPartsSub    StatementSub
    HiLink tgConVA          Statement
    HiLink tgConBnd         Statement
    HiLink tgConBndSub      StatementSub
    HiLink tgConRad         Statement
    HiLink tgConSM          Statement
    HiLink tgConSMSub       StatementSub
    HiLink tgConInt         Statement
    HiLink tgConIntSub      StatementSub
    HiLink tgConEle         Statement
    HiLink tgConEleSub      StatementSub
    HiLink tgConTrans       Statement
    HiLink tgConRep         Statement
    HiLink tgConRepSub      StatementSub
    HiLink tgConMerge       Statement
    HiLink tgCon2DC         Statement
    HiLink tgCon2DCSub      StatementSub
    HiLink tgCon3DC         Statement
    HiLink tgConCad         Statement
    HiLink tgConSets        Statement
    HiLink tgConMisc        Statement
    HiLink tgBlkMesh        Statement
    HiLink tgBlkMeshSub     StatementSub
    HiLink tgBlkEdit        Statement
    HiLink tgBlkGraph       Statement
    HiLink tgBlkView        Statement
    HiLink tgBlkPeel        Statement
    HiLink tgBlkDVA         Statement
    HiLink tgBlkDVASub      StatementSub
    HiLink tgBlkForce       Statement
    HiLink tgBlkBnd         Statement
    HiLink tgBlkBndSub      StatementSub
    HiLink tgBlkSM          Statement
    HiLink tgBlkInt         Statement
    HiLink tgBlkIntSub      StatementSub
    HiLink tgBlkParts       Statement
    HiLink tgBlkPartsSub    StatementSub
    HiLink tgBlkMisc        Statement
    HiLink tgMrgMerge       Statement
    HiLink tgMrgDiag        Statement
    HiLink tgMrgDiagSub     StatementSub
    HiLink tgMrgGraph       Statement
    HiLink tgMrgGraphSub    StatementSub
    HiLink tgComplex        Statement
    HiLink tgBoolean        Boolean
    HiLink tgString         Error
    HiLink tgNumber         Number
    HiLink tgLogOps         Operator
    HiLink tgMathOps        Operator
    HiLink tgBuiltIns       Function
    HiLink tgIdentifier     Identifier
    HiLink tgComment        Comment
    HiLink tgConditional    Special
    HiLink tgTab            Underlined
    delcommand HiLink
endif

"
" Due to truegrid's line length restriction, reset the tab parameters.
"
set tabstop=2
set shiftwidth=2


"
" This guarantees correct highlight parsing when moving through the file;
" even though it is a bit slower, truegrid files are not typically too
" large, so it should not be a problem.
"
syn sync fromstart

let b:current_syntax = "truegrid"

