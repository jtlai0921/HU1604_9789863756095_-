﻿Type=Activity
Version=3
@EndOfDesignText@
#Region  Activity Attributes 
	#FullScreen: False
	#IncludeTitle: True
#End Region

Sub Process_Globals
	'These global variables will be declared once when the application starts.
	'These variables can be accessed from all modules.

End Sub

Sub Globals
	'These global variables will be redeclared each time the activity is created.
	'These variables can only be accessed from this module.

	Dim Button1 As Button
	Dim WebView1 As WebView
End Sub

Sub Activity_Create(FirstTime As Boolean)
    Activity.LoadLayout("Myebook")
    Activity.Title ="瀏覽網站SQL Server資料庫"
End Sub

Sub Activity_Resume
 Dim DNS As String=Main.DNS   '領域名稱
 WebView1.LoadUrl(DNS)'WebView物件利用LoadUrl方法來連接
End Sub

Sub Activity_Pause (UserClosed As Boolean)

End Sub

Sub Button1_Click
	Activity.Finish()    '活動完成
	StartActivity(Main)  ' 返回Main主活動 
End Sub