#!/usr/bin/env bash

GH_BOT_TOKEN="54c68fc4d8628108b80934835e37a1a2bd1160a8"

# custom path for files to override default files
custom_path="$GITHUB_WORKSPACE/.github/inspections/vip-go-ci/"
main_script="/usr/local/bin/main.sh"

if [[ -d "$custom_path" ]]; then
    rsync -a "$custom_path" /usr/local/bin/
fi

bash "$main_script" "$@"
