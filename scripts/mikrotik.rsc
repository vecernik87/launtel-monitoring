:local output ("device=" . [/system routerboard get serial-number])
:local cnt 5
/tool flood-ping 45.248.48.1 count=$cnt do={:if ($sent = $cnt) do={:set $output ($output . "&launtel=" . $"avg-rtt")}}; 
/tool flood-ping 1.1.1.1 count=$cnt do={:if ($sent = $cnt) do={:set $output ($output . "&cloudflare=" . $"avg-rtt")}}; 
/tool flood-ping 8.8.8.8 count=$cnt do={:if ($sent = $cnt) do={:set $output ($output . "&google=" . $"avg-rtt")}}; 
/tool fetch url="https://launtel.troll-face.org/update.php" mode=https http-method=post http-data=$output
