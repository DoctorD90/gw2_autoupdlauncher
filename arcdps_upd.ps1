$site = 'https://www.deltaconnected.com/arcdps/x64/'
$dll = 'd3d9.dll'
$md5 = 'd3d9.dll.md5sum'
$bt = 'd3d9_arcdps_buildtemplates.dll'

$GW2Path = "$env:ProgramFiles\Guild Wars 2\bin64\"

# links
$dllsite = $site + $dll
$md5site = $site + $md5
$btsite = $site + 'buildtemplates/' + $bt

# path
$dllpath = $GW2Path + $dll
$md5path = $GW2Path + $md5
$btpath = $GW2Path + $bt


Invoke-WebRequest -Uri $dllsite -OutFile $dllpath
Invoke-WebRequest -Uri $md5site -OutFile $md5path
Invoke-WebRequest -Uri $btsite -OutFile $btpath
