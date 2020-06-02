. .\SQLCover.ps1
$SQLCoverScriptDir = Split-Path $script:MyInvocation.MyCommand.Path
$SQLCoverDllFullPath =   $SQLCoverScriptDir  + "\SQLCover.dll"
$result = Get-CoverTSql   $SQLCoverDllFullPath "server= 123.252.203.196,10007;User Id=sa; Password=sa@123 ;initial catalog=ScienceDatabase" "ScienceDatabase" "EXEC tSQLt.RunAll"
Export-Html $result  $SQLCoverScriptDir