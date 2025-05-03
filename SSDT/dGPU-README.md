In Linux a PCI device is identified with a 16-bit domain number, an 8-bit bus number, a 5-bit device number and a 3-bit function number; the last three numbers are commonly referred to as the device's BDF or B/D/F (for bus/device/function).

The lspci command can display this identification number using:
```sh
lspci -D | grep NVIDIA

# 0000:02:00.0 3D controller: NVIDIA Corporation GP107M [GeForce GTX 1050 Mobile] (rev a1)
```

The format of this number 0000:02:00.0 is `domain:bus:device:function`.

Now use this command from a Terminal to find the ACPI path of your display adapter
```sh
# cat /sys/class/pci_bus/<domain:bus>/device/<domain:bus:device:function>/firmware_node/path

cat /sys/class/pci_bus/0000:02/device/0000:02:00.0/firmware_node/path 
# \_SB_.PCI0.RP05.PEGP
```
