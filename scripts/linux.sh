#! /bin/bash
curl launtel.troll-face.org/update.php --data "device=xxxxxxxxx&launtel=$(ping -c 5 45.248.48.1 | tail -1| awk -F '/' '{print $5}')&cloudflare=$(ping -c 5 1.1.1.1 | tail -1| awk -F '/' '{print $5}')&google=$(ping -c 5 8.8.8.8 | tail -1| awk -F '/' '{print $5}')"
