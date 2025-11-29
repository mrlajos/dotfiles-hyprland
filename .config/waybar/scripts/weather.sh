#!/usr/bin/env bash

CITY="Budapest"

DATA=$(curl -s "https://wttr.in/${CITY}?format=j1" || echo "")

if [ -z "$DATA" ]; then
  echo " "
  exit 0
fi

# Description, e.g. "Partly cloudy"
COND=$(echo "$DATA" | jq -r '.current_condition[0].weatherDesc[0].value')
TEMP=$(echo "$DATA" | jq -r '.current_condition[0].temp_C')

# Lowercase for easier matching
LCOND=$(echo "$COND" | tr '[:upper:]' '[:lower:]')

ICON=" "   # default: sunny

case "$LCOND" in
  *rain*|*drizzle*)
    ICON=" "       # rain
    ;;
  *snow*|*sleet*)
    ICON=" "       # snow
    ;;
  *storm*|*thunder*|*lightning*)
    ICON=" "       # storm
    ;;
  *fog*|*mist*|*haze*)
    ICON=" "       # fog
    ;;
  *cloud*)
    ICON=" "       # clouds
    ;;
esac

# Final output: icon + temp
echo "$ICON ${TEMP}°C"


