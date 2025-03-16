<p align="center">
    <img src= "https://asset.msi.com/resize/image/global/product/product_1_20181206104840_5c088e085f9e0.png62405b38c58fe0f07fcef2367d8a9ba1/1024.png">
    <img src= "https://upload.wikimedia.org/wikipedia/commons/thumb/2/21/MacOS_wordmark_%282017%29.svg/512px-MacOS_wordmark_%282017%29.svg.png">
</p>

# 🍎 MSI PS63 Modern 8RC - Hackintosh

A Hackintosh (a portmanteau of `Hack` and `Macintosh`) is a computer that runs Apple's Macintosh operating system `macOS` on computer hardware that is not authorized for the purpose by Apple. This can also include running Macintosh software on hardware it is not originally authorized for.

## 🍏 Supported macOS versions
* macOS Sequoia 15.3.1 and up

## 🛠 BIOS/UEFI Settings

⚠️ Ensure that you've upgraded the BIOS to ver `E16S1IMS.109`, which you can find [here](https://download.msi.com/bos_exe/nb/E16S1IMS.109.zip).

💡 Before applying any BIOS settings, load the optimized defaults.

💡 You'll need to change some settings which are hidden by default, in order to enter the `Advanced` setup view in the BIOS, after entering setup with `DEL`, do the following key combination `LEFT ALT + RIGHT CTRL + RIGHT SHIFT + F2`. This will unlock additional settings.

### ❌ Disable
* CFG Lock (`Advanced` -> `Power & Performance` -> `CPU - Power management control` -> `CPU Lock Configuration` -> `CFG Lock`)
* Fast Boot
* Software Guard Extensions (SGX)
* Secure Boot
* VT-d* (Can be enabled if you set `DisableIoMapper` to YES)

### ✅ Enable

* VT-d
* SATA Mode Selection - `AHCI`
* CSM* (I've had issues with disabling CSM, even though it's recommended. Try on your own.)
* DVMT Pre-Allocated - `64MB` (`Advanced` -> `System Agent (SA) Configuration` -> `Graphics Configuration` -> `DVMT Pre-Allocated`)

## 📋 Compatibility
- [x] iGPU
- [x] CPU Power Management
- [ ] Sleep
  - 🚧 Work-in-progress 
- [x] Battery Monitoring
- [x] On-board Audio
- [x] Wi-Fi
  - Currently supported through `itlwm` & `heliport` since `AirportItlwm` is not officially supported in `Sequoia`. Once support is added it should be easy to set up.
- [x] Keyboard
  - [x] Brightness keys
  - [x] Audio volume level keys
  - [x] Keyboard backlight keys
  - [x] Camera/Microphone enable keys   
- [x] Trackpad
  - [x] Native macOS gestures 
- [x] Display Brightness
- [x] Bluetooth
- [ ] Fingerprint sensor (not going to be supported at all)
- [ ] Sd card reader (no support) 
