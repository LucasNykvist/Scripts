# Detta är variabler som innehåller sökvägar till program och webbadresser
$firefoxPath = "C:\Program Files\Mozilla Firefox\firefox.exe"
$yt = "https://www.youtube.com"
$reddit = "https://www.reddit.com"
$aftonbladet = "https://www.aftonbladet.se"

# Start-Process startar en ny process
# -FilePath är sökvägen till programmet
# -ArgumentList är argumenten som skickas till programmet
# $yt, $reddit och $aftonbladet är variabler som innehåller webbadresser
Start-Process -FilePath $firefoxPath -ArgumentList $yt 
Start-Process -FilePath $firefoxPath -ArgumentList $aftonbladet 
Start-Process -FilePath $firefoxPath -ArgumentList $reddit 