#!/bin/sh

CACHE="$XDG_CACHE_HOME/halfass-it/game_server"
VENV=$CACHE/.venv
POETRY=$VENV/bin/poetry
if [ ! -d "$VENV" ]; then
    $POETRY env use "$VENV"
    $POETRY install
fi
$POETRY add $1
