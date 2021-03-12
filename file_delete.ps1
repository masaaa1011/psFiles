Write-Output "delete start"
[array] $inputs = @($Args)

foreach ($input in $inputs) {
    $IsExist = Test-Path $input
    
    if ($IsExist) {
        $Target = $input + "\*.*"
        Remove-Item $Target -Force
    }
}

Write-Output "delete end"
exit