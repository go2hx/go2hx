package stdgo._internal.net.netip;
function iPv6LinkLocalAllNodes():stdgo._internal.net.netip.Netip_addr.Addr {
        //"file:///home/runner/.go/go1.21.3/src/net/netip/netip.go#L75"
        return stdgo._internal.net.netip.Netip_addrfrom16.addrFrom16({
            var s:stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(16, 16, ...[for (i in 0 ... 16) 0]);
            s[0] = (255 : stdgo.GoUInt8);
            s[1] = (2 : stdgo.GoUInt8);
            s[15] = (1 : stdgo.GoUInt8);
            s;
        })?.__copy__();
    }
