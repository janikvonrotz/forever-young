$data = Import-Csv -Path ./data.csv -Delimiter ';'
$data | %{
    Write-Host "Genrate command to download mp3 file for $($_.title) by $($_.artist)"
    $command = "youtube-dl -x --audio-format mp3 -o `"./assets/$($_.id).%(ext)s`" $($_.url)"
    $command >> ./commands.sh
}

$data = Import-Csv -Path ./data.csv -Delimiter ';'
$data | %{
    Write-Host "Genrate qr code $($_.title) by $($_.artist)"
    $command = "qrencode -o ./assets/$($_.id).png `"https://forever-young.now.sh/assets/$($_.id).mp3`""
    $command >> ./commands.sh
}