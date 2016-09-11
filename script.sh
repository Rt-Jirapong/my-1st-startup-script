#! /bin/bash
VALUE_OF_FOO=$(curl http://metadata.google.internal/computeMetadata/v1/instance/attributes/foo -H "Metadata-Flavor: Google")
apt-get update
apt-get install -y apache2
cat <<EOF > /var/www/html/index.html
<html><body><h1>Hello World</h1>
<p>The value of foo: $VALUE_OF_FOO</p>
</body></html>
EOF
