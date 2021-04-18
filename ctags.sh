#!/bin/bash

ctags \
    --recurse=yes \
    --exclude=.git \
    --exclude=BUILD \
    --exclude=.svn \
    --exclude=*.js \
    --exclude=vendor/* \
    --exclude=node_modules/* \
    --exclude=db/* \
    --exclude=log/* \
    --exclude=\*.min.\* \
    --exclude=\*.swp \
    --exclude=\*.bak \
    --exclude=\*.pyc \
    --exclude=\*.class \
    --exclude=\*.sln \
    --exclude=\*.csproj \
    --exclude=\*.csproj.user \
    --exclude=\*.cache \
    --exclude=\*.dll \
    --exclude=\*.pdb