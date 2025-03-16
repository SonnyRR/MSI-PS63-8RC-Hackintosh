# MSI PS63 Modern 8RC - Hackintosh

A Hackintosh (a portmanteau of `Hack` and `Macintosh`) is a computer that runs Apple's Macintosh operating system `macOS` on computer hardware that is not authorized for the purpose by Apple. This can also include running Macintosh software on hardware it is not originally authorized for.

# Supported macOS versions
* macOS Sequoia 15.3.1

# UEFI Settings

⚠️ Ensure that you've upgraded the BIOS to ver `E16S1IMS.109`, which you can find [here](https://download.msi.com/bos_exe/nb/E16S1IMS.109.zip).

Before applying any BIOS settings, load the optimized defaults.

You'll need to change some settings which are hidden by default, in order to enter the `Advanced` setup view in the BIOS, after entering setup with `DEL`, do the following key combination `LEFT ALT + RIGHT CTRL + RIGHT SHIFT + F2`. This will unlock additional settings.

## Disable
* CFG Lock (Advanced -> Power & Performance -> CPU - Power management control -> CPU Lock Configuration -> CFG Lock)
* Fast Boot
* Software Guard Extensions (SGX)
* Secure Boot
* VT-d (Can be enabled if you set `DisableIoMapper` to YES)

## Enable

* VT-d*
* SATA Mode Selection - `AHCI`
* CSM* (I've had issues with disabling CSM, even though it's recommended. Try on your own.)
* DVMT Pre-Allocated - `64MB` (Advanced -> System Agent (SA) Configuration -> Graphics Configuration -> DVMT Pre-Allocated)
