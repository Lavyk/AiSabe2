#!/bin/bash
# set -ex
set -ex
# until psql -h db -c "select 1" > /dev/null 2>&1; do echo "Waiting for postgres server"; sleep 1; done
# npm run migrate:latest
npx knex migrate:latest
node index.js