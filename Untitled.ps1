$name = Jeremy
"Hello $($args[0])"

$var = Get-Command where Name -Match 'get-'
$var = Get-Command get-*
$var = Get-Command -Verb get

$func = $var | where CommandType -Match 'Function'
$func.count

"Hello $($args[0])!"