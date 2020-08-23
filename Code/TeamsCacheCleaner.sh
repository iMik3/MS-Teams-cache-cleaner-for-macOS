#!/bin/sh

if (ls /Applications/Microsoft\ Teams.app > /dev/null 2>&1); then

    killall Teams > /dev/null 2>&1

    echo "\n**************************************************"
    echo "*                                                *"
    echo "*             MS Teams cache cleaner             *"
    echo "*               Michele Chiarello                *"
    echo "*            https://github.com/iMik3            *"
    echo "*                                                *"
    echo "**************************************************\n"

    if (find ~/Library/Application\ Support/Microsoft/Teams/Application\ Cache/Cache -type f -delete > /dev/null 2>&1 || find ~/Library/Application\ Support/Microsoft/Teams/Application\ Cache/Cache -type d -delete > /dev/null 2>&1); then
        echo "[CLEANED] ~/Library/Application Support/Microsoft/Teams/Application Cache/Cache\n"
    else
        #Latest versions of the app don't make use of this folder?
        echo "[ERROR: Nothing serious...] ~/Library/Application Support/Microsoft/Teams/Application Cache/Cache\n" > /dev/null
    fi

    if (find ~/Library/Application\ Support/Microsoft/Teams/Cache -type f -delete > /dev/null 2>&1 || find ~/Library/Application\ Support/Microsoft/Teams/Cache -type d -delete > /dev/null 2>&1); then
        echo "[CLEANED] ~/Library/Application Support/Microsoft/Teams/Cache"
    else
        echo "[ERROR: NOT FOUND] ~/Library/Application Support/Microsoft/Teams/Cache"
    fi

    if (find ~/Library/Application\ Support/Microsoft/Teams/blob_storage -type f -delete > /dev/null 2>&1 || find ~/Library/Application\ Support/Microsoft/Teams/blob_storage -type d -delete > /dev/null 2>&1); then
        echo "\n[CLEANED] ~/Library/Application Support/Microsoft/Teams/blob_storage"
    else
        echo "\n[ERROR: NOT FOUND] ~/Library/Application Support/Microsoft/Teams/blob_storage" 
    fi

    if (find ~/Library/Application\ Support/Microsoft/Teams/databases -type f -delete > /dev/null 2>&1 || find ~/Library/Application\ Support/Microsoft/Teams/databases -type d -delete > /dev/null 2>&1); then
        echo "\n[CLEANED] ~/Library/Application Support/Microsoft/Teams/databases"
    else
        echo "\n[ERROR: NOT FOUND] ~/Library/Application Support/Microsoft/Teams/databases"
    fi

    if (find ~/Library/Application\ Support/Microsoft/Teams/GPUCache -type f -delete > /dev/null 2>&1 || find ~/Library/Application\ Support/Microsoft/Teams/GPUCache -type d -delete > /dev/null 2>&1); then
        echo "\n[CLEANED] ~/Library/Application Support/Microsoft/Teams/GPUCache"
    else
        echo "\n[ERROR: NOT FOUND] ~/Library/Application Support/Microsoft/Teams/GPUCache"
    fi

    if (find ~/Library/Application\ Support/Microsoft/Teams/IndexedDB -type f -delete > /dev/null 2>&1 || find ~/Library/Application\ Support/Microsoft/Teams/IndexedDB -type d -delete > /dev/null 2>&1); then
        echo "\n[CLEANED] ~/Library/Application Support/Microsoft/Teams/IndexedDB"
    else
        echo "\n[ERROR: NOT FOUND] ~/Library/Application Support/Microsoft/Teams/IndexedDB"
    fi

    if (find ~/Library/Application\ Support/Microsoft/Teams/Local\ Storage -type f -delete > /dev/null 2>&1 || find ~/Library/Application\ Support/Microsoft/Teams/Local\ Storage -type d -delete > /dev/null 2>&1); then
        echo "\n[CLEANED] ~/Library/Application Support/Microsoft/Teams/Local Storage"
    else
        echo "\n[ERROR: NOT FOUND] ~/Library/Application Support/Microsoft/Teams/Local Storage"
    fi

    if (find ~/Library/Application\ Support/Microsoft/Teams/tmp -type f -delete > /dev/null 2>&1 || find ~/Library/Application\ Support/Microsoft/Teams/tmp -type d -delete > /dev/null 2>&1); then
        echo "\n[CLEANED] ~/Library/Application Support/Microsoft/Teams/tmp\n"
    else
        echo "\n[ERROR: NOT FOUND] ~/Library/Application Support/Microsoft/Teams/tmp\n"
    fi

    read -p "Press [ENTER] to restart the app..."
    open /Applications/Microsoft\ Teams.app
else
    read -p "ERROR: Microsoft Teams is not installed on this Mac! Press [ENTER] to exit..."
fi
killall Terminal
