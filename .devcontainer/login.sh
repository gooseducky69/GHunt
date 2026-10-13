#!/usr/bin/env bash
# Opens Firefox on the virtual desktop, then starts GHunt's login listener.
DISPLAY=:1 setsid firefox-esr >/dev/null 2>&1 &
echo "Firefox is opening on the virtual desktop."
echo "When GHunt asks for a choice below, type 1 and press Enter."
echo
ghunt login
