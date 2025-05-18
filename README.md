<p align="center">
    <img src= "https://asset.msi.com/resize/image/global/product/product_1_20181206104840_5c088e085f9e0.png62405b38c58fe0f07fcef2367d8a9ba1/1024.png">
    <img src= "https://upload.wikimedia.org/wikipedia/commons/thumb/2/21/MacOS_wordmark_%282017%29.svg/512px-MacOS_wordmark_%282017%29.svg.png">
</p>

# 🍎 MSI PS63 Modern 8RC - Hackintosh

A Hackintosh (a portmanteau of `Hack` and `Macintosh`) is a computer that runs Apple's Macintosh operating system `macOS` on computer hardware that is not authorized for the purpose by Apple.
This can also include running Macintosh software on hardware it is not originally authorized for.

## 🍏 Supported macOS versions

- macOS Sonoma 14.7.5 and up
- macOS Sequoia 15.3.1 and up

## 📋 Compatibility

- [x] iGPU
  - [x] HDMI Output (requires buffer patches)
  - [x] HDMI Audio
- [x] CPU Power Management
- [x] Sleep
  - ⚠️ Requires disabling of `ASPM (Active State Power Management)` for the NVMe SSD (**Toshiba KBG30ZMV512G**), since it causes a kernel panic due to unsupported firmware.
  - ℹ️ If you're using another NVMe with supported firmware OOB, you will need to disable this patch under `DeviceProperties`. In addition to that, you might want to test
    if `NVMeFix.kext` is required. In order to do that you'll need to enabel the kext in the `config.plist`, since it's included but disabled by default.
- [x] Battery Monitoring
- [x] On-board Audio
- [x] Wi-Fi
  - Supported with `AirportItlwm` on `Sonoma`
  - Supported with `itlwm` & `Heliport` on `Sequoia`
- [x] Keyboard
  - [x] Brightness keys
  - [x] Audio volume level keys
  - [x] Keyboard backlight keys
  - [x] Camera/Microphone enable keys
- [x] Trackpad
  - [x] Native macOS gestures
- [x] Display Brightness
- [x] Bluetooth
- [x] Built-in camera
- [ ] Fingerprint sensor (not going to be supported at all)
- [ ] Sd card reader (no support)

## 💻 Specifications

| Component      | Specification                                                                                        |
| -------------- | ---------------------------------------------------------------------------------------------------- |
| **CPU**        | Intel Core i7-8565U (4 cores / 8 threads, 1.8–4.6 GHz)                                               |
| **GPU (iGPU)** | Intel UHD Graphics 620                                                                               |
| **GPU (dGPU)** | NVIDIA GeForce GTX 1050 Max-Q (4GB GDDR5)                                                            |
| **RAM**        | 1x8GB DDR4-2400 (2 SO-DIMM slots, max 32GB supported)                                                |
| **Storage**    | Toshiba KBG30ZMV512G NVM                                                                             |
| **Display**    | 15.6" Full HD (1920x1080), IPS-Level, 60Hz, anti-glare                                               |
| **Battery**    | 82 Wh, up to ~10–14 hours (realistic usage varies)                                                   |
| **Ports**      | 2x USB-A 3.1 Gen1, 1x USB-A 3.1 Gen2, 1x USB-C 3.1 Gen1 (w/DP out), HDMI, microSD, 3.5mm Audio Combo |

## 🛠 BIOS/UEFI Settings

⚠️ Ensure that you've upgraded the BIOS to ver `E16S1IMS.109`, which you can find [here](https://download.msi.com/bos_exe/nb/E16S1IMS.109.zip).

💡 Before applying any BIOS settings, load the optimized defaults.

💡 You'll need to change some settings which are hidden by default, in order to enter the `Advanced` setup view in the BIOS, after entering setup with `DEL`, do the following key combination `LEFT ALT + RIGHT CTRL + RIGHT SHIFT + F2`. This will unlock additional settings.

### ❌ Disable

- CFG Lock (`Advanced` -> `Power & Performance` -> `CPU - Power management control` -> `CPU Lock Configuration` -> `CFG Lock`)
- Fast Boot
- Security Device Support (`Security` -> `Trusted Computing` -> `Security Device Support`)
- Software Guard Extensions (SGX)
- Secure Boot
- CSM (`Advanced` -> `CSM Configuration` -> `CSM Support`)
- VT-d\* (Can be enabled if you set `DisableIoMapper` to YES)
- RC6 (Render Standby) (`Advanced` -> `Power & Performance` -> `GT - Power Management Control` -> `RC6(Render Standby)`)

### ✅ Enable

- VT-d\*
- SATA Mode Selection - `AHCI`
- DVMT Pre-Allocated - `64MB` (`Advanced` -> `System Agent (SA) Configuration` -> `Graphics Configuration` -> `DVMT Pre-Allocated`)
- DVMT Total Gfx Mem - `MAX` (`Advanced` -> `System Agent (SA) Configuration` -> `Graphics Configuration` -> `DVMT Total Gfx Mem`)
- Primary Display - `IGFX` (`Advanced` -> `System Agent (SA) Configuration` -> `Graphics Configuration` -> `Primary Display`)
