#!/bin/bash

set -e

PROJECT_DIR=$(git rev-parse --show-toplevel)

echo "Let's create a new post..."
read -p 'Folder: ' FOLDER
read -p 'Permalink: ' PERMALINK

hugo new content $PROJECT_DIR/posts/$FOLDER/$PERMALINK.md
