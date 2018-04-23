// Example overrides for Thinkpad models with TrackPad
DefinitionBlock ("", "SSDT", 2, "hack", "ps2", 0)
{
    // Select specific configuration in VoodooPS2Trackpad.kext
    Method(_SB.PCI0.LPCB.PS2K._DSM, 4)
    {
        If (!Arg2) { Return (Buffer() { 0x03 } ) }
        Return (Package()
        {
            "RM,oem-id", "LENOVO",
            "RM,oem-table-id", "Thinkpad_Trackpad",
        })
    }
    // Overrides (the example data here is default in the Info.plist)
    Name(_SB.PCI0.LPCB.PS2K.RMCF, Package()
    {
        "Synaptics TouchPad", Package()
        {
            "BogusDeltaThreshX", 100,
            "BogusDeltaThreshY", 100,
            "Clicking", ">y",
            "DragLockTempMask", 0x40004,
            "DynamicEWMode", ">n",
            "FakeMiddleButton", ">n",
            "HWResetOnStart", ">y",
            //"ForcePassThrough", ">y",
            //"SkipPassThrough", ">y",
            "PalmNoAction When Typing", ">y",
            "ScrollResolution", 800,
            "SmoothInput", ">y",
            "UnsmoothInput", ">y",
            "Thinkpad", ">y",
            "DivisorX", 1,
            "DivisorY", 1,
            "FingerZ", 47,
            "MaxTapTime", 100000000,
            "MomentumScrollThreshY", 16,
            "MouseMultiplierX", 8,
            "MouseMultiplierY", 8,
            "MouseScrollMultiplierX", 2,
            "MouseScrollMultiplierY", 2,
            "MultiFingerHorizontalDivisor", 4,
            "MultiFingerVerticalDivisor", 4,
            "Resolution", 3200,
            "ScrollDeltaThreshX", 10,
            "ScrollDeltaThreshY", 10,
        },
    })
}
//EOF
