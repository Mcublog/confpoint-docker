#! /usr/bin/pwsh

$confpoint = "confpoint"

if (Test-Path -Path $confpoint) {
    Remove-Item	$confpoint -Recurse -Force -Confirm:$false
}

Write-Output("Download confpoint sources")
git clone git@github.com:Mcublog/$confpoint.git

Write-Output("Build confpoint")
cd $confpoint
./py2bin.ps1
cd ..

Write-Output("Docker build")
docker build -t mcublog/confpoint-docker .

