#!/usr/bin/env bash

echo -e "Running Jekyll..." 1>&2
bundle exec jekyll serve --config _config.yml,_config_dev.yml
echo -e "Done!" 1>&2
