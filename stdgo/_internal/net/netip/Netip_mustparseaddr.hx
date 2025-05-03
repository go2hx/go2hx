package stdgo._internal.net.netip;
function mustParseAddr(_s:stdgo.GoString):stdgo._internal.net.netip.Netip_addr.Addr {
        var __tmp__ = stdgo._internal.net.netip.Netip_parseaddr.parseAddr(_s?.__copy__()), _ip:stdgo._internal.net.netip.Netip_addr.Addr = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/net/netip/netip.go#L134"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/net/netip/netip.go#L135"
            throw stdgo.Go.toInterface(_err);
        };
        //"file:///home/runner/.go/go1.21.3/src/net/netip/netip.go#L137"
        return _ip?.__copy__();
    }
