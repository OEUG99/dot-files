#!/bin/bash

# Executes a web search using lynx browser with URL-encoded query parameters

_have() { type "$1" &>/dev/null; }

urlencode() {
    local string="$*"
    local encoded=""
    for (( i=0; i<${#string}; i++ )); do
        local char="${string:i:1}"
        case "$char" in
            [a-zA-Z0-9.~_-]) encoded+="$char" ;;
            *) encoded+=$(printf '%%%02X' "'$char") ;;
        esac
    done
    echo "$encoded"
}

if [[ $# -lt 1 && -t 0 ]]; then
        echo "usage: ${0##*/} <url>" >&2
        exit 1
fi

if ! _have lynx; then
    echo "requires lynx" >&2
    exit 1
fi

query=$(urlencode "$*")
url="https://lite.duckduckgo.com/lite?kd=-1&kp=-1&q=$query"
exec lynx "$url"

