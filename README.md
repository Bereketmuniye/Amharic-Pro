# Amharic Keyboard for Linux (Ubuntu / Kali)

Setting up an Amharic keyboard on Linux can sometimes be painful. This project provides a fully automated installation script along with a custom phonetic layout so you can start typing in Amharic instantly.

## Files
- `install.sh`: The 1-click installer script.
- `am-custom.mim`: A customizable phonetic layout file (m17n format). Add or change phonetic combinations here to fit your typing style!

## How to Install

1. Make sure you are in the directory containing these files.
2. Make the installer script executable:
   ```bash
   chmod +x install.sh
   ```
3. Run the installer script:
   ```bash
   ./install.sh
   ```
4. The script will ask for your `sudo` password to install system packages (`ibus-m17n`).

## How to Use
1. After the script finishes, **log out and log back in** to your computer.
2. Go to **Settings > Keyboard** (or **Region & Language**).
3. Under **Input Sources**, click `+` to add a new language.
4. Click the three dots `⋮` and search for "Amharic".
5. Choose **Amharic (Custom)**.
6. Press `Super + Space` (Windows key + Space) to switch between typing in English and Amharic!

## Customizing the Keyboard Layout
If you don't like a specific key mapping, simply open `am-custom.mim` in a text editor. You will see lines like:
```lisp
("se" "ሰ")
```
Change "se" to whatever text trigger you prefer, save it, and run `./install.sh` again to apply the changes!
