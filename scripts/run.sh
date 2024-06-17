#!/bin/bash

CACHE="$XDG_CACHE_HOME/halfass-it/gameplay_server"
VENV="$CACHE/.venv"
POETRY="$VENV/bin/poetry"
LOGS_DIR="$CACHE/logs"
mkdir -p "$LOGS_DIR"
if [ ! -d "$VENV" ]; then
    $POETRY env use "$VENV"
    $POETRY install
fi
$POETRY run main run
