#!/bin/bash

last | egrep -o '([a-zA-Z0-9]+)\s+.*\b([0-9]{1,3}\.){3}[0-9]{1,3}\b'
