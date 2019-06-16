
<%@ Language=VBScript %>
<% Option Explicit %>
<!--#include virtual="adovbs.inc"-->
<!--#INCLUDE FILE="submit.asp"-->
<%

' Message/Complaint deletion

IF(Session("logged") <> 1) THEN
	Response.Redirect("/cms/login.asp")
ELSE


	Session("ErrMsg")=0
	dim collitem

			
			With objrs
			.Source = "message"
			.ActiveConnection = myConn
			.CursorType = adOpenDynamic
			.LockType = adLockOptimistic
			.Open
			End With	

			
			With objrs1
			.Source = "complaint"
			.ActiveConnection = myConn
			.CursorType = adOpenDynamic
			.LockType = adLockOptimistic
			.Open
			End With

			


	For Each collitem in Request.Form
		If Left(collitem,6)="msgdel" Then


			dim vRecordToDelete
			vRecordToDelete = Mid(collitem,7,1000)

			objrs.Find "SRNO = "&vRecordToDelete&""	
			If objrs.BOF then
				Session("ErrMsg")=21
				response.redirect "main.asp"
			Else If objrs.EOF then
				Session("ErrMsg")=22
				response.redirect "main.asp"
			Else		
			
			objrs.Delete
			objrs.Update
			
			End If
			End If					
		

		Else If Left(collitem,6)="cmpdel" Then


			dim RecordToDelete
			RecordToDelete = Mid(collitem,7,1000)

			objrs1.Find "COMPID = "&RecordToDelete&""			
			If objrs1.BOF then
				Session("ErrMsg")=21
				response.redirect "main.asp"
			Else If objrs1.EOF then
				Session("ErrMsg")=22
				response.redirect "main.asp"
			Else			
			
			objrs1.Delete
			objrs1.Update
			
			End If
			End If					
		End If
		End If
				
			
	Next

			objrs.Close
			Set objrs = Nothing						

			objrs1.Close
			Set objrs1 = Nothing						

			myConn.Close
			Set myConn = Nothing
			
	response.redirect "main.asp"

END IF
%>


