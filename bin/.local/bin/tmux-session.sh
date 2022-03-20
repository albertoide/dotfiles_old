#!/usr/bin/env bash

repos=$(find ~/storage/src/github.com -mindepth 2 -maxdepth 2 -type d)
repos2=$(find ~/storage/src/lambdamotive.com -mindepth 1 -maxdepth 1 -type d)
repos3=$(find ~/storage/src/noorg -mindepth 1 -maxdepth 1 -type d)

repos+="${repos2} ${repos3}"

session=$(echo $repos | tr " " "\n"  | fzf)
parent_dirname=$(basename $(dirname $session) | tr . _)
current_dirname=$(basename "$session" | tr . _)
session_name="$parent_dirname/$current_dirname"

if ! tmux has-session -t "$session_name" 2> /dev/null; then
   tmux new-session -s "$session_name" -c "$session" -d
fi

tmux switch-client -t "$session_name"
