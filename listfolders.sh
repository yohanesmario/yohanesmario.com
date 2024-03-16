#!/bin/bash

set -e

PROJECT_DIR=$(git rev-parse --show-toplevel)

echo "Existing folders:"
ls -1 $PROJECT_DIR/content/posts | sed 's/.*/\- &/'
