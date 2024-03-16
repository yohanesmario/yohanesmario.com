#!/bin/bash

set -e

echo "Dependencies:"
which code | sed 's/.*/\- Code : &/'
which hugo | sed 's/.*/\- Hugo : &/'
which git  | sed 's/.*/\- Git  : &/'
which read | sed 's/.*/\- Read : &/'
