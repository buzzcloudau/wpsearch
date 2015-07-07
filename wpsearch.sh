## Search for Known WP Infection Signatures

grep -lr --include=.*.php '' /var/www/vhosts/ ;
grep -lr --include=*.php "=\"stop_\"" /var/www/vhosts/ ;
grep -lr --include=*.php " = Array('1'=>'" /var/www/vhosts/ ;
grep -lr --include=revslider3.zip '' /var/www/vhosts/ ;
grep -lr --include=*.php ';}?><?php' /var/www/vhosts/ ;
grep -lr --include=*.php '\]; $GLOBALS\[' /var/www/vhosts/ ;
grep -lr --include=*.php 'eval(base64_decode(' /var/www/vhosts/ ;
grep -lr --include=*.php 'eval(gzinflate(base64_decode' /var/www/vhosts/ ;
grep -lr --include=*.php ' eval' /var/www/vhosts/*/httpdocs/wp-content/uploads/ ;
grep -lr --include=*.php 'return base64_decode(' /var/www/vhosts/*/httpdocs/wp-content/uploads/ ;
grep -lr --include=*.php 'eval(' /var/www/vhosts/*/httpdocs/wp-content/uploads/ ;
grep -lr --include=*.php 'eval (' /var/www/vhosts/*/httpdocs/wp-content/uploads/ ;
grep -lr --include=*.php '<form method="POST" action="" enctype="multipart/form-data"><input type="file" name="image"><input type="Submit" name="Submit" value="Submit"></form>' /var/www/vhosts/ ;
grep -lr --include=*.suspected '' /var/www/vhosts/ ;
grep -lr --include=.*.php "strtolower($sF" /var/www/vhosts/ ;

###
# WARNING : Only uncomment these lines to deep search. 
# May give false positives
###

# egrep -Rl --include=*.php --exclude=*data.inc.php '\$GLOBALS.*\\x' /var/www/vhosts/
# grep -lr --include=*.php '' /var/www/vhosts/*/httpdocs/wp-content/uploads/ ;
# find /var/www/vhosts/ -type d -perm 777 -exec find {} -name "*.php" \;

## Check if anything is in the queue

/usr/sbin/postqueue -p;
