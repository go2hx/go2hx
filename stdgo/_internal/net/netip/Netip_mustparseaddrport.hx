package stdgo._internal.net.netip;
function mustParseAddrPort(_s:stdgo.GoString):stdgo._internal.net.netip.Netip_addrport.AddrPort {
        var __tmp__ = stdgo._internal.net.netip.Netip_parseaddrport.parseAddrPort(_s?.__copy__()), _ip:stdgo._internal.net.netip.Netip_addrport.AddrPort = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            throw stdgo.Go.toInterface(_err);
        };
        return _ip?.__copy__();
    }
