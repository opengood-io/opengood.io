#!/usr/bin/env bash

function write_message() {
    local msg="$1"
    echo -e "${msg}" 1>&2
}

write_message "Running Jekyll..."
bundle exec jekyll serve --config _config.yml,_config_dev.yml
write_message "Done!"
