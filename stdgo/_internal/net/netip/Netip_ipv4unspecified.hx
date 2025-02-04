package stdgo._internal.net.netip;
function iPv4Unspecified():stdgo._internal.net.netip.Netip_addr.Addr {
        return stdgo._internal.net.netip.Netip_addrfrom4.addrFrom4((new stdgo.GoArray<stdgo.GoUInt8>(4, 4, ...[]).__setNumber32__() : stdgo.GoArray<stdgo.GoUInt8>)?.__copy__())?.__copy__();
    }
