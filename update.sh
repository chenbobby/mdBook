#!/bin/bash

echo "Updating chenbobby/mdBook with upstream changes in rust-lang/mdBook..."
git rebase upstream/master
echo "Update completed."
