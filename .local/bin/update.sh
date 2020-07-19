#!/bin/bash
#
# A simple command to synchronize my sites. Uses rsync.
# Run inside the site's directory. 
#
# vtalibov, 20/07/12

rsync -rtu --delete-after * khabib@136.244.84.184:/var/www/$1
