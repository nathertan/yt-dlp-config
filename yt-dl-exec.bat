@ECHO OFF
:START
SET /P URL=[Enter video or playlist URL (or type 'done' to finish)]: 
IF /I "%URL%"=="done" GOTO END
yt-dlp %URL% --paths ./Archive --cookies cookies-youtube-com.txt --merge-output-format mp4
GOTO START -v -c

:END
ECHO Download complete. Press any key to exit.
PAUSE >NUL
