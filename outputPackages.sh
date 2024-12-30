#!/bin/bash

paru -Q | awk '{print $1}' > ~/dotfiles/packages.txt
