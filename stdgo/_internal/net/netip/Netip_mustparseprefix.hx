package stdgo._internal.net.netip;
function mustParsePrefix(_s:stdgo.GoString):stdgo._internal.net.netip.Netip_prefix.Prefix {
        var __tmp__ = stdgo._internal.net.netip.Netip_parseprefix.parsePrefix(_s?.__copy__()), _ip:stdgo._internal.net.netip.Netip_prefix.Prefix = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            throw stdgo.Go.toInterface(_err);
        };
        return _ip?.__copy__();
    }
