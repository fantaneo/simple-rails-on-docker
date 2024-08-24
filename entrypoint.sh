#!/bin/bash

# Remove server.pid if it exists
if [ -f tmp/pids/server.pid ]; then
  rm tmp/pids/server.pid
fi

# Execute the given command
exec "$@"