# Vendor Blobs — Samsung Galaxy F14 5G (SM-E146B)

Proprietary libraries and binaries extracted from Samsung Galaxy F14 5G (SM-E146B) stock firmware.
Used with [android_device_samsung_m14x](https://github.com/goofyshwetank/android_device_samsung_m14x)
to build LineageOS 22.1 (Android 15).

---

## Contents

| Category | Examples |
|---|---|
| Audio HAL | `audio.primary.s5e8535.so`, SoundAlive resampler chain, abox PCM |
| USB HAL | `android.hardware.usb@1.3-service.coral`, HIDL interface libs 1.0–1.3 |
| WiFi / BT | `wpa_supplicant`, `hostapd`, `libwifi-hal`, keystore-wifi-hidl libs |
| Camera | Samsung HWL, Exynos C2 codecs, ISP libs |
| Display | HWComposer, Mali EGL/Vulkan, `gralloc.default` |
| Security | KeyMint v2, Gatekeeper, TrustZone TLC services |
| Sensors | multihal, Samsung sensor service |
| Biometrics | Fingerprint TLC, face recognition libs |
| Radio / RIL | Samsung modem libs, rild |
| Firmware | MFC codec firmware, audio DSP, touchscreen panel firmware |

---

## Extracting Blobs from a Stock Device

```bash
# With device connected and ADB running
cd device/samsung/m14x
./extract-files.py
```

The script reads `proprietary-files.txt` and pulls each file from the connected device (or a mounted stock image) into `vendor/samsung/m14x/proprietary/`.

---

## Structure

```
vendor/samsung/m14x/
├── Android.bp
├── Android.mk
├── BoardConfigVendor.mk
├── m14x-vendor.mk          # Installs PRODUCT_PACKAGES from blobs
├── m14x-vendor-copy.mk     # PRODUCT_COPY_FILES for libs/binaries/configs
└── proprietary/
    └── vendor/
        ├── bin/            # HAL service binaries
        ├── etc/            # VINTF fragments, audio configs
        ├── firmware/       # Binary firmware blobs
        └── lib64/          # HAL implementation libs
```
