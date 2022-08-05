#!/bin/bash

# navigate to app folder
cd /home/ec2-user/sapp-ui

# initial startup by running react-script "start", name process "marketing"
# --watch watches and restarts if files change
pm2 start ./node_modules/react-scripts/scripts/start.js --name "sapp-dev" --watch

# auto restart server if shut down
pm2 startup

# freeze process list for automatic respawn
pm2 save

# restart all processes - necessary to do this again?
pm2 restart all