#!/usr/bin/env bash

GH_BOT_TOKEN=`echo 'YzZiZTA3ZTk1YzU1MDNjYTllNjE1MWExODg0NDc4M2ZkYjQwYTJhYwo=' | base64 --decode`

# custom path for files to override default files
custom_path="$GITHUB_WORKSPACE/.github/inspections/vip-go-ci/"
main_script="/usr/local/bin/main.sh"

if [[ -d "$custom_path" ]]; then
    rsync -a "$custom_path" /usr/local/bin/
fi

bash "$main_script" "$@"
