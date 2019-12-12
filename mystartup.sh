#!/bin/sh
ufw deny 3306
ufw allow 3306
ufw deny ssh
ufw allow ssh
