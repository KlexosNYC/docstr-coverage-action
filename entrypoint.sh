#!/bin/bash -l

command="docstr-coverage --verbose $INPUT_VERBOSE "

if [ $INPUT_SKIP_MAGIC ]; then command+="--skip-magic "; fi;
if [ $INPUT_SKIP_INIT ]; then command+="--skip-init "; fi;
if [ $INPUT_SKIP_FILE_DOC ]; then command+="--skip-file-doc "; fi;
if [ $INPUT_SKIP_PRIVATE ]; then command+="--skip-private "; fi;
if [ $INPUT_SKIP_CLASS_DEF ]; then command+="--skip-class-def "; fi;
if [ $INPUT_ACCEPT_EMPTY ]; then command+="--accept-empty "; fi;
if [ $INPUT_BADGE ]; then command+="--badge $INPUT_BADGE "; fi;
if [ $INPUT_FOLLOW_LINKS ]; then command+="--follow-links "; fi;
if [ $INPUT_PERCENTAGE_ONLY ]; then command+="--percentage-only "; fi;
if [ $INPUT_EXCLUDE != "" ]; then command+="--exclude $INPUT_EXCLUDE "; fi;

echo "$command $GITHUB_WORKSPACE/$INPUT_SOURCE_DIR"

# docstr-coverage --fail-under $INPUT_FAIL_UNDER  $GITHUB_WORKSPACE/$INPUT_SOURCE_DIR