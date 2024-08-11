#!/bin/zsh
#Warning: This script considers you have only 2 sources.

# How it works:
# 1. Get the active sink ID (If none exists, tries to find and set one)
# 2. Get the suspended sink ID (If none exists, it can't be switched to)
#
# 3. Get ID's from the strams running on the active sink


ACTIVE_SINK_ID=$(pactl list sinks short | grep RUNNING | awk '{print $1}')
SWITCH_TO=$(pactl list sinks short | grep SUSPENDED | awk '{print $1}')

# Move the streams to the other sink


# Verificar si la variable está vacía
if [ -z "$ACTIVE_SINK_ID" ]; then
    echo "No hay ningun sink activo."
    echo "Intentando activar el sink alternativo."
    if [ -z "$SWITCH_TO" ]; then
        echo "No hay sinks para usar"
        exit 1 # There are no sinks available
    fi
    # A sink exists, but wasn't set active
    echo "No active sink found"
    pactl set-default-sink $SWITCH_TO
    exit 1
fi

STREAMS=$(pactl list short sink-inputs | awk -v sink=$ACTIVE_SINK_ID '$2 == sink {print $1}')

for STREAM in $STREAMS; do
    pactl move-sink-input "$STREAM" "$SWITCH_TO"
done

pactl suspend-sink $ACTIVE_SINK_ID true
