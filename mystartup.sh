#!/bin/sh
ufw deny 3306
ufw allow 3306
ufw deny 80
ufw allow 80
ufw deny 443
ufw allow 443
ufw deny ssh
ufw allow ssh
