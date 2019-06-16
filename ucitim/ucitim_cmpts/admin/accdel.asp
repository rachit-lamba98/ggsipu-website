<%@ Language=VBScript %>
<% Option Explicit %>
<!--#include virtual="adovbs.inc"-->
<!--#INCLUDE FILE="submit.asp"-->
<%

' Message/Complaint deletion

IF(Session("logged") <> 1) THEN
	Response.Redirect("/cms/login.asp")
ELSE


	Session("ErrMsg") = 0
	dim collitem
			
			With objrs
			.Source = "validation"
			.ActiveConnection = myConn
			.CursorType = adOpenDynamic
			.LockType = adLockOptimistic
			.Open
			End With	

			
			With objrs1
			.Source = "attendence"
			.ActiveConnection = myConn
			.CursorType = adOpenDynamic
			.LockType = adLockOptimistic
			.Open
			End With
			
						

	For Each collitem in Request.Form
		If Left(collitem,6)="accdel" Then


			dim vRecordToDelete
			vRecordToDelete = Mid(collitem,7,1000)

			objrs.Find "ID = "&vRecordToDelete&""

			If objrs.BOF then
				Session("ErrMsg")=21
				response.redirect "manage.asp"
			Else If objrs.EOF then
				Session("ErrMsg")=22
				response.redirect "manage.asp"
			Else	
	
			objrs.Delete
			objrs.Update

			End If
			End If
			


			objrs1.Find "ID = "&vRecordToDelete&""
			If objrs1.BOF then
				Session("ErrMsg")=21
				response.redirect "manage.asp"
			Else If objrs1.EOF then
				Session("ErrMsg")=22
				response.redirect "manage.asp"
			
			Else			
			objrs1.Delete
			objrs1.Update

			End If
			End If

		Else
			response.redirect "manage.asp"					
		

		End If
				
			
	Next

			objrs.Close
			Set objrs = Nothing						

			objrs1.Close
			Set objrs1 = Nothing						
				
			myConn.Close
			Set myConn = Nothing
			
	response.redirect "manage.asp"

END IF
%>


