$Content = (Invoke-WebRequest https://www.isitdownrightnow.com/check.php?domain=$args).Content
Write-Host "Website $args is ..." -NoNewLine
if (select-string -InputObject $Content -pattern 'UP' -Quiet){
Write-Host " UP" -NoNewLine -ForeGroundColor Green
}else{
Write-Host " Down" -NoNewLine -ForeGroundColor Red
Write-Host ""
Write-Host "see details at https://www.isitdownrightnow.com/$args.html"
$string = $Content -replace '<[^>]+>',' '
Write-Host $string
}