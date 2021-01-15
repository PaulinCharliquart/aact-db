#!/bin/sh

url="https://aact.ctti-clinicaltrials.org"
link=$(wget -O - $url/snapshots |  grep -io '/static/static_db_copies/daily/20[[:digit:]]\{6\}_clinical_trials.zip' | head -1)
cd /tmp
wget -O data.zip $url$link
unzip data.zip
pg_restore -e -v -O -x -d aact -U aact_user --no-owner postgres_data.dmp
