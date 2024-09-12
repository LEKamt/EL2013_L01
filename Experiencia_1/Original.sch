# File saved with Nlview 7.0r6  2020-01-29 bk=1.5227 VDI=41 GEI=36 GUI=JA:10.0 non-TLS-threadsafe
# 
# non-default properties - (restore without -noprops)
property attrcolor #000000
property attrfontsize 8
property autobundle 1
property backgroundcolor #ffffff
property boxcolor0 #000000
property boxcolor1 #000000
property boxcolor2 #000000
property boxinstcolor #000000
property boxpincolor #000000
property buscolor #008000
property closeenough 5
property createnetattrdsp 2048
property decorate 1
property elidetext 40
property fillcolor1 #ffffcc
property fillcolor2 #dfebf8
property fillcolor3 #f0f0f0
property gatecellname 2
property instattrmax 30
property instdrag 15
property instorder 1
property marksize 12
property maxfontsize 15
property maxzoom 6.25
property netcolor #19b400
property objecthighlight0 #ff00ff
property objecthighlight1 #ffff00
property objecthighlight2 #00ff00
property objecthighlight3 #0095ff
property objecthighlight4 #8000ff
property objecthighlight5 #ffc800
property objecthighlight7 #00ffff
property objecthighlight8 #ff00ff
property objecthighlight9 #ccccff
property objecthighlight10 #0ead00
property objecthighlight11 #cefc00
property objecthighlight12 #9e2dbe
property objecthighlight13 #ba6a29
property objecthighlight14 #fc0188
property objecthighlight15 #02f990
property objecthighlight16 #f1b0fb
property objecthighlight17 #fec004
property objecthighlight18 #149bff
property objecthighlight19 #eb591b
property overlapcolor #19b400
property pbuscolor #000000
property pbusnamecolor #000000
property pinattrmax 20
property pinorder 2
property pinpermute 0
property portcolor #000000
property portnamecolor #000000
property ripindexfontsize 8
property rippercolor #000000
property rubberbandcolor #000000
property rubberbandfontsize 15
property selectattr 0
property selectionappearance 2
property selectioncolor #0000ff
property sheetheight 44
property sheetwidth 68
property showmarks 1
property shownetname 0
property showpagenumbers 1
property showripindex 4
property timelimit 1
#
module new Original work:Original:NOFILE -nosplit
load symbol RTL_INV work INV pin I0 input pin O output fillcolor 1
load symbol RTL_OR0 work OR pin I0 input pin I1 input pin O output fillcolor 1
load symbol RTL_OR workI0 OR pin I0 input.neg pin I1 input pin O output fillcolor 1
load symbol RTL_AND workI0 AND pin I0 input.neg pin I1 input pin O output fillcolor 1
load port A input -pg 1 -lvl 0 -x 0 -y 120
load port B input -pg 1 -lvl 0 -x 0 -y 90
load port C input -pg 1 -lvl 0 -x 0 -y 60
load port D input -pg 1 -lvl 0 -x 0 -y 30
load port F output -pg 1 -lvl 3 -x 310 -y 40
load port G output -pg 1 -lvl 3 -x 310 -y 120
load inst F_i RTL_INV work -attr @cell(#000000) RTL_INV -pg 1 -lvl 2 -x 220 -y 40
load inst G_i RTL_OR0 work -attr @cell(#000000) RTL_OR -pg 1 -lvl 2 -x 220 -y 120
load inst Q_i RTL_OR workI0 -attr @cell(#000000) RTL_OR -pg 1 -lvl 1 -x 70 -y 40
load inst S_i RTL_AND workI0 -attr @cell(#000000) RTL_AND -pg 1 -lvl 1 -x 70 -y 110
load net A -port A -pin S_i I1
netloc A 1 0 1 NJ 120
load net B -port B -pin S_i I0
netloc B 1 0 1 20J 90n
load net C -port C -pin Q_i I1
netloc C 1 0 1 20J 50n
load net D -port D -pin Q_i I0
netloc D 1 0 1 NJ 30
load net F -port F -pin F_i O
netloc F 1 2 1 NJ 40
load net G -port G -pin G_i O
netloc G 1 2 1 NJ 120
load net Q -pin F_i I0 -pin G_i I1 -pin Q_i O
netloc Q 1 1 1 170 40n
load net S -pin G_i I0 -pin S_i O
netloc S 1 1 1 N 110
levelinfo -pg 1 0 70 220 310
pagesize -pg 1 -db -bbox -sgen -60 0 370 160
show
fullfit
#
# initialize ictrl to current module Original work:Original:NOFILE
ictrl init topinfo |
