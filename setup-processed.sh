#!/usr/bin/env bash

set -e

rm -rf loaded/
rm -f ingest.log extract.log

psql -Xf stats.sql
psql -Xf rollups.sql
psql -Xf github-events-processed.sql
psql -Xf github-commits-processed.sql
