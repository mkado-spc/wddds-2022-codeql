/*++

Module Name:

    public.h

Abstract:

    This module contains the common declarations shared by driver
    and user applications.

Environment:

    user and kernel

--*/

//
// Define an Interface Guid so that apps can find the device and talk to it.
//

DEFINE_GUID (GUID_DEVINTERFACE_testql,
    0x45561b0b,0x432d,0x45b0,0xa6,0xcb,0x0c,0x2f,0x51,0x2a,0x5d,0xd6);
// {45561b0b-432d-45b0-a6cb-0c2f512a5dd6}
