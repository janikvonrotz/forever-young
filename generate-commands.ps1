$data = Import-Csv -Path ./data.csv -Delimiter ';'
$data | %{
    Write-Host "Genrate command to download mp3 file for $($_.title) by $($_.artist)"
    $command = "youtube-dl -x --audio-format mp3 -o `"./assets/$($_.id).%(ext)s`" $($_.url)"
    $command >> ./download.sh
}

$data = Import-Csv -Path ./data.csv -Delimiter ';'
$data | %{
    Write-Host "Genrate command to download mp3 file for $($_.title) by $($_.artist)"
    $command = "youtube-dl -x --audio-format mp3 -o `"./assets/$($_.id).%(ext)s`" $($_.url)"
    $command >> ./download.sh
}

$data = Import-Csv -Path ./data.csv -Delimiter ';'

https://api.qrserver.com/v1/create-qr-code/?size=150x150&data=Example