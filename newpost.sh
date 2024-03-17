#!/bin/bash

set -e

echo "Let's create a new post..."
read -p 'Folder: ' FOLDER
read -p 'Permalink: ' PERMALINK

hugo new content posts/$FOLDER/$PERMALINK.md
