#!/bin/bash
apt-get update -y
apt-get install apache2 -y
apt-get install php7.0 -y
mv /var/www/html/index.html /var/www/html/index.php
cat <<EOF > /var/www/html/index.php
<html>
<head>
<title>Digitech - Regier Kunkel - 2017074</title>
</head>
<body>My global website!<br></br>
<h2>Digitech - Regier Kunkel - 2017074</h2>
<?php
echo gethostname();
?>
</body>
</html>
EOF
