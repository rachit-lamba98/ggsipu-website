<%@ Language=VBScript %>
<% Option Explicit %>
<!--#include virtual="adovbs.inc"-->
<!--#include FILE="submit.asp"-->
<%

' Message/Complaint deletion

IF(Session("logged") <> 1) THEN
	Response.Redirect("/cms/login.asp")
ELSE


	Session("ErrMsg") = 0
	dim collitem

			
			
			With objrs
			.Source = "message"
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

		Else 
			response.redirect "main.asp"
		End If
				
			
	Next

			objrs.Close
			Set objrs = Nothing												

			myConn.Close
			Set myConn = Nothing
			
	response.redirect "main.asp"

END IF
%>


