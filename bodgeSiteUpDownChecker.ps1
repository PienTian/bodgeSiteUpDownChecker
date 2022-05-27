if($args){
$site = $args
}
else{
$site = Read-Host("type the site domain")
}


$Content = (Invoke-WebRequest https://www.isitdownrightnow.com/check.php?domain=$site).Content
Write-Host "Website $site is ..." -NoNewLine
if (select-string -InputObject $Content -pattern 'UP' -Quiet){
Write-Host " UP" -NoNewLine -ForeGroundColor Green
}else{
Write-Host " Down" -NoNewLine -ForeGroundColor Red
Write-Host ""
Write-Host "see details at https://www.isitdownrightnow.com/$site.html"
$string = $Content -replace '<[^>]+>',' '
Write-Host $string
}
Write-Host ""
Write-Host ""
Write-Host "##(If the program shows unreachable for 19130days, it mean you probably typed wrong domain)##"
Write-Host ""

if(!$args){

Read-Host("To finish the program Hit Enter")
}