package stdgo._internal.net.netip;
function mustParseAddrPort(_s:stdgo.GoString):stdgo._internal.net.netip.Netip_addrport.AddrPort {
        var __tmp__ = stdgo._internal.net.netip.Netip_parseaddrport.parseAddrPort(_s?.__copy__()), _ip:stdgo._internal.net.netip.Netip_addrport.AddrPort = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/net/netip/netip.go#L1100"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/net/netip/netip.go#L1101"
            throw stdgo.Go.toInterface(_err);
        };
        //"file:///home/runner/.go/go1.21.3/src/net/netip/netip.go#L1103"
        return _ip?.__copy__();
    }
