#!/bin/bash

USER_NAME=$(whoami)
ps -u "$USER_NAME" -o pid,comm,%mem --sort=-%mem
