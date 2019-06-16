var message="Guru Gobind Singh Indraprastha University, Sector -16 C, Dwarka, Delhi, India   "
var neonbasecolor="#993366"
var neontextcolor1="yellow"
var neontextcolor2="blue"
var neontextcolor3="black"
var flashspeed=50						
var flashingletters1=1	
var flashingletters2=2
var flashingletters3=3						
var flashpause=0	

var n=0
if (document.all||document.getElementById){
document.write('<font color="'+neonbasecolor+'">')
for (m=0;m<message.length;m++)
document.write('<span id="neonlight'+m+'">'+message.charAt(m)+'</span>')
document.write('</font>')
}
else
document.write(message)

function crossref(number){
var crossobj=document.all? eval("document.all.neonlight"+number) : document.getElementById("neonlight"+number)
return crossobj
}

function neon(){


if (n==0){
for (m=0;m<message.length;m++)
crossref(m).style.color=neonbasecolor
}


crossref(n).style.color=neontextcolor1

if (n>flashingletters1-1) crossref(n-flashingletters1).style.color=neontextcolor2 
if (n>(flashingletters1+flashingletters2)-1) crossref(n-flashingletters1-flashingletters2).style.color=neontextcolor3
if (n>(flashingletters1+flashingletters2+flashingletters3)-1) crossref(n-flashingletters1-flashingletters2-flashingletters3).style.color=neonbasecolor

if (n<message.length-1)
n++
else{
n=0
clearInterval(flashing)
setTimeout("beginneon()",flashpause)
return
}
}

function beginneon(){
if (document.all||document.getElementById)
flashing=setInterval("neon()",flashspeed)
}
beginneon()
