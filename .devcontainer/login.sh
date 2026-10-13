#!/usr/bin/env bash
# Opens Firefox on the virtual desktop, then starts GHunt's login listener.
DISPLAY=:1 setsid firefox-esr >/dev/null 2>&1 &
echo "Firefox is opening on the virtual desktop. Open it here (password: vscode):"
echo "https://${CODESPACE_NAME}-6080.${GITHUB_CODESPACES_PORT_FORWARDING_DOMAIN}"
echo "When GHunt asks for a choice below, type 1 and press Enter."
echo
ghunt login
