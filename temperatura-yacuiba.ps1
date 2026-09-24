$url = "https://api.open-meteo.com/v1/forecast?latitude=-22.016&longitude=-63.678&current=temperature_2m"

while ($true) {
    try {
        $data = Invoke-RestMethod -Uri $url
        $temp = $data.current.temperature_2m
        $unit = $data.current_units.temperature_2m
        Write-Host ("{0}  Yacuiba, Bolivia: {1}{2}" -f (Get-Date -Format 'HH:mm:ss'), $temp, $unit)
    } catch {
        Write-Host ("{0}  Error obteniendo temperatura: {1}" -f (Get-Date -Format 'HH:mm:ss'), $_.Exception.Message)
    }
    Start-Sleep -Seconds 60
}