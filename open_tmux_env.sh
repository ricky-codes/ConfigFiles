#!/bin/sh

tmux new-session -d -s Development 
while ! tmux run-shell ~/.tmux/plugins/tmux-resurrect/scripts/restore.sh; do sleep 0.2; done
tmux attach -t Development
