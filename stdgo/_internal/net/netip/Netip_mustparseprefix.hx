package stdgo._internal.net.netip;
function mustParsePrefix(_s:stdgo.GoString):stdgo._internal.net.netip.Netip_prefix.Prefix {
        var __tmp__ = stdgo._internal.net.netip.Netip_parseprefix.parsePrefix(_s?.__copy__()), _ip:stdgo._internal.net.netip.Netip_prefix.Prefix = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/net/netip/netip.go#L1309"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/net/netip/netip.go#L1310"
            throw stdgo.Go.toInterface(_err);
        };
        //"file:///home/runner/.go/go1.21.3/src/net/netip/netip.go#L1312"
        return _ip?.__copy__();
    }
