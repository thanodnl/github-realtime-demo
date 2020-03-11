#!/bin/sh

set -e

psql -Xf stats.sql
psql -Xf rollups.sql
psql -Xf github-events.sql
psql -Xf github-commits.sql
