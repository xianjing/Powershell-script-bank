##Powershell
## explore 3rd party libs in c# project dependencies:
Get-ChildItem . -name packages.config  -recurse | %{ get-content $_ }| select-string -pattern 'id="\w+.
{0,1}\w+' -allmatches | %{$_.matches} | %{$_.value} | %{$_.replace('id="','')} | sort | get-unique > ref2.txt

## display duplicate libs with different versions
