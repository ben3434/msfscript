#!/bin/bash
touch target.txt
timeout 120 netdiscover -PN > hosts.txt
