# Using GHunt from an iPhone

This fork can start a Codespace: a computer in the cloud that you use from Safari.
It has GHunt installed, plus a small virtual desktop with Firefox and the
GHunt Companion extension, which GHunt needs for signing in.

Before you start, make a **spare Google account** for GHunt to sign in with. Don't use your personal one.

## 1. Start the Codespace (first time takes about 5 minutes)

Open this link in Safari and tap **Create codespace**:

https://codespaces.new/gooseducky69/ghunt?ref=phone-setup

Wait until an editor appears with a **Terminal** panel at the bottom.
Setup keeps running in that terminal for a few minutes. Wait until it finishes.

## 2. Open the virtual desktop

1. Tap the **Ports** tab, next to Terminal. If you can't see it, tap the ☰ menu, then **Terminal → New Terminal**, and look again.
2. Find the row labelled **Desktop (6080)** and tap the 🌐 globe icon. The desktop opens in a new Safari tab.
3. Tap **Connect**. The password is `vscode`.

No Ports tab? Phone screens often hide it. Instead, type this in the terminal and tap the link it prints:

```
echo "https://${CODESPACE_NAME}-6080.${GITHUB_CODESPACES_PORT_FORWARDING_DOMAIN}"
```

Keep this tab open. You'll switch between it and the terminal tab.

## 3. Sign GHunt in to Google (once)

1. In the **terminal** tab, type `ghunt-login` and press return.
   If you see "command not found", open a new terminal (☰ → Terminal → New Terminal) and try again.
2. When it asks `Choice =>`, type `1` and press return. GHunt now waits for the extension.
3. Switch to the **desktop** tab. Firefox should be open. Tap the GHunt icon at the top right of Firefox, then **Synchronize to GHunt**.
4. Sign in with your spare Google account. To type, open the noVNC side menu on the left edge and tap the keyboard icon.
5. Back in the terminal tab, you should see **Authenticated**.

## 4. Look things up

Type commands in the terminal, for example:

```
ghunt email someone@gmail.com
ghunt drive https://drive.google.com/file/d/...
```

Add `--json results.json` at the end of a command to save the results to a file.

## Next time

Go to https://github.com/codespaces and tap your existing codespace. Your sign-in is kept,
so you can go straight to step 4. Codespaces stop by themselves when idle.
The free plan includes plenty of monthly hours for this.

## Please use responsibly

Only look up your own accounts, people who have agreed, or targets you are authorised
to investigate. Never share the sign-in code or cookies from the spare account with anyone.
