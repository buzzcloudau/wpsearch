<?php
	
	$res = shell_exec('/root/cron/wpsearch.sh');
	
	if (ltrim(rtrim($res)) != "Mail queue is empty" && sizeof($res)) {
		
		mail("email@email.com"
		, "WARNING!!! wpsearch results"
		, $res);
		
	}
	
?>
