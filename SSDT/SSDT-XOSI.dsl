DefinitionBlock ("", "SSDT", 2, "CORP", "XOSI", 0x00001000)
{
    Method (XOSI, 1, NotSerialized)
    {
        // Edited from:
        // https://github.com/dortania/Getting-Started-With-ACPI/blob/master/extra-files/decompiled/SSDT-XOSI.dsl
        // Based off of: 
        // https://docs.microsoft.com/en-us/windows-hardware/drivers/acpi/winacpi-osi#_osi-strings-for-windows-operating-systems
        // Add OSes from the below list as needed, most only check up to Windows 2015
        // but check what your DSDT looks for
        Store (Package ()
        {
                "Windows 2000", // Windows 2000
                "Windows 2001", // Windows XP
                "Windows 2001 SP1", // Windows XP SP1
                "Windows 2001.1", // Windows Server 2003
                "Windows 2001 SP2", // Windows XP SP2
                "Windows 2001.1 SP1", // Windows Server 2003 SP1
                "Windows 2006", // Windows Vista
                "Windows 2006 SP1", // Windows Vista SP1
                "Windows 2006.1", // Windows Server 2008
                "Windows 2009", // Windows 7, Win Server 2008 R2
                "Windows 2012", // Windows 8, Win Server 2012
                "Windows 2013", // Windows 8.1
                "Windows 2015" // Windows 10
        }, Local0)
        If (_OSI ("Darwin"))
        {
            Return (LNotEqual (Match (Local0, MEQ, Arg0, MTR, Zero, Zero), Ones))
        }
        Else
        {
            Return (_OSI (Arg0))
        }
    }
}