# auto-thermalset
Automatically set thresholds at which fan kicks in to reasonable temperature.

1. Chromebook must be in developer mode.
2. Press ctrl+alt+t to open the terminal, then type shell and press enter.
3. Paste ```sudo curl -H 'Authorization: token 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' -H 'Accept: application/vnd.github.v3.raw' -L "https://raw.githubusercontent.com/r00shy/auto-thermalset/main/install.sh?token=GHSAT0AAAAAABWBC7VF75KEVQPDFKSFHVAQYXD4EYA" | sudo bash``` into terminal and press enter.
4. After the chromebook reboots run ```sudo curl -H 'Authorization: token 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' -H 'Accept: application/vnd.github.v3.raw' -L "https://raw.githubusercontent.com/r00shy/auto-thermalset/main/install.sh?token=GHSAT0AAAAAABWBC7VF75KEVQPDFKSFHVAQYXD4EYA" | sudo bash -s -- -rebooted``` in the terminal.
