$var = Get-Command

$func = $var | where Source -Match 'NetSecurity'
$func.count

"Name $($args[0])".ToUpper()
"Name $($args[0])".ToLower()