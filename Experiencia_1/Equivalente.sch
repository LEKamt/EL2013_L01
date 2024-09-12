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
module new Equivalente work:Equivalente:NOFILE -nosplit
load symbol RTL_AND1 workI1 AND pin I0 input pin I1 input.neg pin O output fillcolor 1
load symbol RTL_INV0 work INV pin I0 input pin O output fillcolor 1
load symbol RTL_AND1 work AND pin I0 input pin I1 input pin O output fillcolor 1
load symbol RTL_AND3 workI0 AND pin I0 input.neg pin I1 input pin O output fillcolor 1
load port A input -pg 1 -lvl 0 -x 0 -y 160
load port B input -pg 1 -lvl 0 -x 0 -y 120
load port C input -pg 1 -lvl 0 -x 0 -y 60
load port D input -pg 1 -lvl 0 -x 0 -y 20
load port F output -pg 1 -lvl 6 -x 760 -y 40
load port G output -pg 1 -lvl 6 -x 760 -y 140
load inst G0_i RTL_AND1 workI1 -attr @cell(#000000) RTL_AND -pg 1 -lvl 4 -x 520 -y 140
load inst G_i RTL_INV0 work -attr @cell(#000000) RTL_INV -pg 1 -lvl 5 -x 650 -y 140
load inst P0_i RTL_AND1 workI1 -attr @cell(#000000) RTL_AND -pg 1 -lvl 2 -x 220 -y 40
load inst P_i RTL_INV0 work -attr @cell(#000000) RTL_INV -pg 1 -lvl 3 -x 370 -y 40
load inst Q0_i RTL_AND1 work -attr @cell(#000000) RTL_AND -pg 1 -lvl 1 -x 70 -y 70
load inst R0_i RTL_AND1 work -attr @cell(#000000) RTL_AND -pg 1 -lvl 2 -x 220 -y 110
load inst S0_i RTL_AND3 workI0 -attr @cell(#000000) RTL_AND -pg 1 -lvl 3 -x 370 -y 150
load inst T0_i RTL_AND1 work -attr @cell(#000000) RTL_AND -pg 1 -lvl 4 -x 520 -y 40
load inst T_i RTL_INV0 work -attr @cell(#000000) RTL_INV -pg 1 -lvl 5 -x 650 -y 40
load net A -port A -pin S0_i I1
netloc A 1 0 3 NJ 160 NJ 160 NJ
load net B -port B -pin R0_i I0 -pin R0_i I1
netloc B 1 0 2 NJ 120 170J
load net C -port C -pin Q0_i I0 -pin Q0_i I1
netloc C 1 0 1 20J 60n
load net D -port D -pin P0_i I0
netloc D 1 0 2 NJ 20 170J
load net F -port F -pin G0_i I0 -pin T_i O
netloc F 1 3 3 470 90 NJ 90 740
load net G -port G -pin G_i O
netloc G 1 5 1 NJ 140
load net G0 -pin G0_i O -pin G_i I0
netloc G0 1 4 1 NJ 140
load net P -pin P_i O -pin T0_i I0 -pin T0_i I1
netloc P 1 3 1 470J 30n
load net P0 -pin P0_i O -pin P_i I0
netloc P0 1 2 1 NJ 40
load net Q0 -pin P0_i I1 -pin Q0_i O
netloc Q0 1 1 1 170J 50n
load net R0 -pin R0_i O -pin S0_i I0
netloc R0 1 2 1 320J 110n
load net S0 -pin G0_i I1 -pin S0_i O
netloc S0 1 3 1 N 150
load net T0 -pin T0_i O -pin T_i I0
netloc T0 1 4 1 NJ 40
levelinfo -pg 1 0 70 220 370 520 650 760
pagesize -pg 1 -db -bbox -sgen -60 0 820 190
show
fullfit
#
# initialize ictrl to current module Equivalente work:Equivalente:NOFILE
ictrl init topinfo |
