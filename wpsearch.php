<?php
	
	$res = shell_exec('/root/cron/wpsearch.sh');
	
	if (ltrim(rtrim($res)) != "Mail queue is empty" && sizeof($res)) {
		
		mail("support@buzzcloud.com.au"
		, "WARNING!!! wpsearch results"
		, $res);
		
	}
	
?>
