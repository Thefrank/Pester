function Setup($setupItem) {
    New-Item -Name pester -Path $env:Temp -Type Container -Force
}
