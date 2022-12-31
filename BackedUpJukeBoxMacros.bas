
REM  *****  IF USING VLC NEED TO START VLC AND SET ALL PREFERENCES OF APP TO EXIT WHEN PLAYLIST FINISHED  *****
Const mediaplayer = "cvlc "
Const mediaplayerKill = "vlc"
Const endKill = "; " + "killall " + mediaplayerKill
Const pwd = "/home/pi/Jukebox/"

Dim trackMap As New Collection

Sub getTrackList()
    If trackMap.Count = 0 Then
    
    aFile = pwd + "/tracks.txt"
    iNumber = Freefile
    count = 1
    Open aFile For Input As iNumber
    While Not eof(iNumber)
        Line Input #iNumber, sLine
        If sLine <>"" Then
            trackMap.Add(key := "Track" + CInt(count) , item := sLine)
            count = count + 1
        End If
    Wend
    Close #iNumber
    End If

End Sub

Sub PlayTrack(track As Integer)
KillAllSound
shell mediaplayer + Sng(track) + endKill
End Sub

Sub PlayScreen1()
KillAllSound
shell mediaplayer + Sng(1) + Sng(2) +  + Sng(3)  + Sng(4) + Sng(5) + Sng(6) + Sng(7)  + Sng(8) +   Sng(9) + Sng(10) + Sng(11) + Sng(12) +  Sng(13)  + Sng(14) + Sng(15) + Sng(16) +  Sng(17)  + Sng(18) + endKill
End Sub

Sub PlayScreen2()
KillAllSound
shell mediaplayer + Sng(19) + Sng(20) +  + Sng(21)  + Sng(22) + Sng(23) + Sng(24) + Sng(25)  + Sng(26) +   Sng(27) + Sng(28) + Sng(29) + Sng(30) +  Sng(31)  + Sng(32) + Sng(33) + Sng(34) +  Sng(35)  + Sng(36) + endKill
End Sub

Sub PlayScreen3()
KillAllSound
shell mediaplayer + Sng(37) + Sng(38) +  + Sng(39)  + Sng(40) + Sng(41) + Sng(42) + Sng(43)  + Sng(44) +   Sng(45) + Sng(46) + Sng(47) + Sng(48) +  Sng(49)  + Sng(50) + Sng(51) + Sng(52) +  Sng(53)  + Sng(54) + endKill
End Sub


Sub PlayAll()
KillAllSound
shell mediaplayer + pwd + endKill
End Sub

Sub KillAllSound
shell "killall " + mediaplayerKill
End Sub

Function Sng(trackIndex as Integer) As String
getTrackList()
If trackIndex > trackMap.Count Then
trackIndex = trackMap.Count
End If
track =  trackMap.Item("Track" +CInt(trackIndex))
Sng = "'" + pwd + track + "' "
End Function

Function GetFilename(track As String) As String
trackIndex = CInt(mid(track,6))
If trackIndex >  trackMap.Count Then
trackIndex = trackMap.Count
End If
GetFilename =  trackMap.Item("Track" +CInt(trackIndex))
End Function

Sub UpdatePages
getTrackList()
pages = ThisComponent.getDrawPages()
numPages = pages.getCount()
For iPage = 0 To numPages -1
   page = pages.getByIndex(iPage)
   numItems = page.getCount()
   For iCount = 0 To numItems -1
      oShape = page.getByIndex(iCount)
      isATrack  = instr (oShape.Name,"Track")
      If isATrack > 0 Then
        fileName = GetFilename( oShape.Name)
         REM Remove first two characters
        labelNameNoNum = mid(fileName,3)
        labelName = mid(labelNameNoNum,1,Len(labelNameNoNum)-4)
        oShape.setString(labelName) 
      End If
   Next
Next

End Sub

Sub track1
PlayTrack 1 
End Sub
Sub track2
PlayTrack 2 
End Sub
Sub track3
PlayTrack 3 
End Sub
Sub track4
PlayTrack 4 
End Sub
Sub track5
PlayTrack 5 
End Sub
Sub track6
PlayTrack 6 
End Sub
Sub track7
PlayTrack 7 
End Sub
Sub track8
PlayTrack 8 
End Sub
Sub track9
PlayTrack 9 
End Sub
Sub track10
PlayTrack 10 
End Sub
Sub track11
PlayTrack 11 
End Sub
Sub track12
PlayTrack 12 
End Sub
Sub track13
PlayTrack 13 
End Sub
Sub track14
PlayTrack 14 
End Sub
Sub track15
PlayTrack 15 
End Sub
Sub track16
PlayTrack 16 
End Sub
Sub track17
PlayTrack 17 
End Sub
Sub track18
PlayTrack 18 
End Sub
Sub track19
PlayTrack 19
End Sub
Sub track20
PlayTrack 20 
End Sub
Sub track21
PlayTrack 21 
End Sub
Sub track22
PlayTrack 22 
End Sub
Sub track23
PlayTrack 23 
End Sub
Sub track24
PlayTrack 24 
End Sub
Sub track25
PlayTrack 25 
End Sub
Sub track26
PlayTrack 26 
End Sub
Sub track27
PlayTrack 27 
End Sub
Sub track28
PlayTrack 28 
End Sub
Sub track29
PlayTrack 29
End Sub
Sub track30
PlayTrack 30 
End Sub
Sub track31
PlayTrack 31 
End Sub
Sub track32
PlayTrack 32 
End Sub
Sub track33
PlayTrack 33 
End Sub
Sub track34
PlayTrack 34 
End Sub
Sub track35
PlayTrack 35 
End Sub
Sub track36
PlayTrack 36 
End Sub
Sub track37
PlayTrack 37 
End Sub
Sub track38
PlayTrack 38 
End Sub
Sub track39
PlayTrack 39
End Sub
Sub track40
PlayTrack 40
End Sub
Sub track41
PlayTrack 41 
End Sub
Sub track42
PlayTrack 42 
End Sub
Sub track43
PlayTrack 43 
End Sub
Sub track44
PlayTrack 44 
End Sub
Sub track45
PlayTrack 45 
End Sub
Sub track46
PlayTrack 46 
End Sub
Sub track47
PlayTrack 47 
End Sub
Sub track48
PlayTrack 48 
End Sub
Sub track49
PlayTrack 49
End Sub
Sub track50
PlayTrack 50
End Sub
Sub track51
PlayTrack 51 
End Sub
Sub track52
PlayTrack 52 
End Sub
Sub track53
PlayTrack 53 
End Sub
Sub track54
PlayTrack 54 
End Sub
Sub track55
PlayTrack 55 
End Sub
Sub track56
PlayTrack 56 
End Sub
Sub track57
PlayTrack 57 
End Sub
Sub track58
PlayTrack 58 
End Sub
Sub track59
PlayTrack 59
End Sub
Sub track60
PlayTrack 60
End Sub

Sub Main

End Sub


