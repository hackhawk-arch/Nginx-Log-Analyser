#!/bin/bash

LOGFILE="$1"

if [ -z "$LOGFILE"]; then
    echo "Usage: $0 <nginx-access-log>"
    exit 1
fi

echo "Top 5 IP addresses with the most requests:"
awk '{print $1}' "$LOGFILE" | sort | uniq -c | sort -nr | head -n 5 | \
awk '{printf "%s - %s requests\n", $2, $1}'

echo
echo "Top 5 most requested paths:"
awk -F\" '{print $2}' "$LOGFILE" | awk '{print $2}' | \
sort | uniq -c | sort -nr | head -5 | \
awk '{printf "%s - %s requests\n", $2, $1}'

echo
echo "Top 5 response status codes:"
awk '{print $9}' "$LOGFILE" | sort | uniq -c | sort -nr | head -5 | \
awk '{printf "%s - %s responses\n", $2, $1}'

echo
echo "Top 5 user agents:"
awk -F\" '{print $6}' "$LOGFILE" | \
sort | uniq -c | sort -nr | head -5 | \
awk '{printf "%s - %s requests\n", $2, $1}'