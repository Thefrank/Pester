$pwd = Split-Path -Parent $MyInvocation.MyCommand.Path
. "$pwd\Setup.ps1"
. "$pwd\..\Pester.ps1"

Describe "Setup" {

    It "creates a folder in temp when told to setup a FileSystem" {
        Setup FileSystem

        $result = Test-Path "$env:Temp\pester"
        $result.should.be($true)
    }
}
