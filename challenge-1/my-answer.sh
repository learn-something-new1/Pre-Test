#!/bin/bash

LOG_DIR="."

for LOG_FILE in "$LOG_DIR"/*access.log; do
	    ERROR_COUNT=$(grep 'HTTP 500' "$LOG_FILE" | grep -c "$(date -d '10 minutes ago' '+%Y-%m-%dT%H:%M:%S')")
	        echo "There were $ERROR_COUNT HTTP 500 errors in $LOG_FILE in the last 10 minutes."
	done

