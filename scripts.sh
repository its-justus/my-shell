#!/bin/bash

gundo() {
    local fpath=$1
    if [ ! -z "$fpath"]; then
        git checkout $fpath
        echo "Reverted uncommitted changes to $fpath"
    else
        git checkout .
        echo "Reverted uncommitted changes to ."
    fi
}

wakey() {
    sudo systemctl mask sleep.target suspend.target hibernate.target hybrid-sleep.target;
}
sleepy() {
    sudo systemctl unmask sleep.target suspend.target hibernate.target hybrid-sleep.target;
}
sleepy?() {
    systemctl status sleep.target suspend.target hibernate.target hybrid-sleep.target;
}
alias wakey?='sleepy?'