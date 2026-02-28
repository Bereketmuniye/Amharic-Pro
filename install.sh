#!/bin/bash

# Amharic Keyboard Installer for Ubuntu & Kali Linux
# This script installs necessary dependencies and sets up a custom m17n Amharic layout.

echo "========================================="
echo "  Amharic Keyboard Installer (IBus+m17n) "
echo "========================================="

# 1. Update and install dependencies
echo "[1/3] Installing required packages (ibus, ibus-m17n, m17n-db)..."
sudo apt-get update
sudo apt-get install -y ibus ibus-m17n m17n-db

# 2. Copy the custom .mim file to the m17n database
echo "[2/3] Installing custom Amharic mapping..."
if [ -f "am-custom.mim" ]; then
    sudo cp am-custom.mim /usr/share/m17n/
    echo "Custom MIM file installed."
else
    echo "Warning: am-custom.mim not found in the current directory. Skipping custom layout installation."
fi

# 3. Configure system to use IBus
echo "[3/3] Configuring environment variables..."
if ! grep -q "GTK_IM_MODULE=ibus" ~/.bashrc; then
    echo "export GTK_IM_MODULE=ibus" >> ~/.bashrc
    echo "export XMODIFIERS=@im=ibus" >> ~/.bashrc
    echo "export QT_IM_MODULE=ibus" >> ~/.bashrc
fi

im-config -n ibus

# Restart IBus to load the new config
echo "Restarting IBus daemon..."
ibus restart

echo "========================================="
echo "Installation complete!"
echo "========================================="
echo ""
echo "NEXT STEPS:"
echo "1. Log out of your system and log back in."
echo "2. Open your system's 'Settings' -> 'Keyboard' (or 'Region & Language')."
echo "3. Add an Input Source, click the three dots '...', search for 'Amharic'."
echo "4. Select 'Amharic (Custom)' or 'Amharic (m17n)' to use your new keyboard!"
echo "5. You can toggle between English and Amharic using Super+Space (Windows Key + Space)."
echo ""
