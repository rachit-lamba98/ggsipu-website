<% 
 dim conn1,con,conn,con2,myConn
 dim rs,objrs,objrs1,rs1,rstemp

set con = Server.CreateObject("ADODB.Connection")
con.Open "Provider=Microsoft.Jet.OLEDB.4.0;" &_
"Persist Security Info=False;" &_
"Data Source=" &Server.MapPath("/writereaddata/dbucitim.mdb")
set rs = server.createobject("adodb.recordset")

set conn = Server.CreateObject("ADODB.Connection")
conn.Open "Provider=Microsoft.Jet.OLEDB.4.0;" &_
"Persist Security Info=False;" &_
"Data Source=" &Server.MapPath("/writereaddata/dbucitim.mdb")
set rs1 = server.createobject("adodb.recordset")


set myConn = Server.CreateObject("ADODB.Connection")
myConn.Open "Provider=Microsoft.Jet.OLEDB.4.0;" &_
"Persist Security Info=False;" &_
"Data Source=" &Server.MapPath("/writereaddata/dbucitim.mdb")
set objrs = server.createobject("adodb.recordset")




set con2 = Server.CreateObject("ADODB.Connection")
con2.Open "Provider=Microsoft.Jet.OLEDB.4.0;" &_
"Persist Security Info=False;" &_
"Data Source=" &Server.MapPath("/writereaddata/dbucitim.mdb")
set objrs1 = server.createobject("adodb.recordset")

set conn1 = Server.CreateObject("ADODB.Connection")
conn1.Open "Provider=Microsoft.Jet.OLEDB.4.0;" &_
"Persist Security Info=False;" &_
"Data Source=" &Server.MapPath("/writereaddata/dbucitim.mdb")
set rstemp = server.createobject("adodb.recordset")

%>
