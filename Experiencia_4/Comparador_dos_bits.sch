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
module new Comparador_dos_bits work:Comparador_dos_bits:NOFILE -nosplit
load symbol RTL_INV work INV pin I0 input pin O output fillcolor 1
load symbol RTL_XOR work XOR pin I0 input pin I1 input pin O output fillcolor 1
load symbol RTL_OR work OR pin I0 input pin I1 input pin O output fillcolor 1
load port A_0 input -pg 1 -lvl 0 -x 0 -y 30
load port A_1 input -pg 1 -lvl 0 -x 0 -y 90
load port B_0 input -pg 1 -lvl 0 -x 0 -y 60
load port B_1 input -pg 1 -lvl 0 -x 0 -y 120
load port EQ output -pg 1 -lvl 4 -x 430 -y 50
load inst EQ_i RTL_INV work -attr @cell(#000000) RTL_INV -pg 1 -lvl 3 -x 340 -y 50
load inst P_i RTL_XOR work -attr @cell(#000000) RTL_XOR -pg 1 -lvl 1 -x 70 -y 40
load inst Q_i RTL_XOR work -attr @cell(#000000) RTL_XOR -pg 1 -lvl 1 -x 70 -y 110
load inst R_i RTL_OR work -attr @cell(#000000) RTL_OR -pg 1 -lvl 2 -x 220 -y 50
load net A_0 -port A_0 -pin P_i I0
netloc A_0 1 0 1 NJ 30
load net A_1 -port A_1 -pin Q_i I0
netloc A_1 1 0 1 20J 90n
load net B_0 -port B_0 -pin P_i I1
netloc B_0 1 0 1 20J 50n
load net B_1 -port B_1 -pin Q_i I1
netloc B_1 1 0 1 NJ 120
load net EQ -port EQ -pin EQ_i O
netloc EQ 1 3 1 NJ 50
load net P -pin P_i O -pin R_i I0
netloc P 1 1 1 N 40
load net Q -pin Q_i O -pin R_i I1
netloc Q 1 1 1 170 60n
load net R -pin EQ_i I0 -pin R_i O
netloc R 1 2 1 NJ 50
levelinfo -pg 1 0 70 220 340 430
pagesize -pg 1 -db -bbox -sgen -80 0 500 150
show
fullfit
#
# initialize ictrl to current module Comparador_dos_bits work:Comparador_dos_bits:NOFILE
ictrl init topinfo |
