#!/bin/bash

set -e

echo "Existing folders:"
ls -1 content/posts | sed 's/.*/\- &/'
