#!/bin/bash
printf "\e[1m\e[7m"
printf "  Welcome! To connect use           \n"
printf "                                    \n"
printf "  ssh -X root@%-22s\n" $(hostname -i)
printf "                                    \n"
printf "\e[0m\n"

function stop {
    exit 0
}

trap 'stop' INT
trap 'stop' SIGINT


$@
