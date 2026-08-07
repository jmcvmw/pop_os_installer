sudo usermod -a -G render,video $LOGNAME


# Create keyrings directory if missing
sudo mkdir -p /etc/apt/keyrings

# Download the official AMD GPG key
wget https://repo.radeon.com/rocm/rocm.gpg.key -qO - | gpg --dearmor | sudo tee /etc/apt/keyrings/rocm.gpg > /dev/null

# Register the ROCm 6 repository for Pop 24.04 (Noble)
echo "deb [arch=amd64 signed-by=/etc/apt/keyrings/rocm.gpg] https://repo.radeon.com/rocm/apt/latest noble main" | sudo tee /etc/apt/sources.list.d/rocm.list

# Prioritise AMD's repository over default system packages
echo -e 'Package: *\nPin: release o=repo.radeon.com\nPin-Priority: 600' | sudo tee /etc/apt/preferences.d/rocm-pin-600


sudo apt update
sudo apt install rocm-core hip-runtime-amd


ls -l /opt/rocm/lib/libamdhip64.so.6


pause

echo "/opt/rocm/lib" | sudo tee /etc/ld.so.conf.d/rocm.conf
sudo ldconfig

ldconfig -p | grep libamdhip64


