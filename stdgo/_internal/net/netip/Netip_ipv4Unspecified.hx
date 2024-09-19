package stdgo._internal.net.netip;
function ipv4Unspecified():stdgo._internal.net.netip.Netip_Addr.Addr {
        return stdgo._internal.net.netip.Netip_addrFrom4.addrFrom4((new stdgo.GoArray<stdgo.GoUInt8>(4, 4, ...[]).__setNumber32__() : stdgo.GoArray<stdgo.GoUInt8>)?.__copy__())?.__copy__();
    }
