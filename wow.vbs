Option Explicit
Dim SoundFile,i,MaxLoop
MaxLoop = 50
SoundFile = "https://cdn.discordapp.com/attachments/752857727411421224/901293654956724255/ThreshLoginScreenIntro.mp3"
For i = 1 to MaxLoop
    Call Play(SoundFile)
Next    
'*******************************************
Sub Play(SoundFile)
    Dim oPlayer
    Set oPlayer = CreateObject("WMPlayer.OCX")
' Play audio
    oPlayer.URL = SoundFile
    oPlayer.settings.volume = 100
    oPlayer.controls.play 
    While oPlayer.playState <> 1 ' 1 = Stopped
        WScript.Sleep 100
    Wend
' Release the audio file
    oPlayer.close
End Sub
'*******************************************