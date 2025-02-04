package stdgo._internal.net.netip;
function iPv6Loopback():stdgo._internal.net.netip.Netip_addr.Addr {
        return stdgo._internal.net.netip.Netip_addrfrom16.addrFrom16({
            var s:stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(16, 16, ...[for (i in 0 ... 16) 0]);
            s[15] = (1 : stdgo.GoUInt8);
            s;
        })?.__copy__();
    }
