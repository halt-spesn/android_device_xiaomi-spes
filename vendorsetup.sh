echo "Syncing additional trees"
rm -rf hardware/google/pixel/kernel_headers/Android.bp
git clone https://github.com/LineageOS/android_hardware_xiaomi -b lineage-18.1
git clone https://github.com/shifty-d/android_vendor_xiaomi_spes.git vendor/xiaomi/spes
git clone https://github.com/muralivijay/kernel_xiaomi_sm6225 kernel/xiaomi/spes
sed -i '18s/error/warning/' build/core/Makefile
