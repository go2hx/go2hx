package stdgo._internal.net.netip;
function parseAddr(_s:stdgo.GoString):{ var _0 : stdgo._internal.net.netip.Netip_addr.Addr; var _1 : stdgo.Error; } {
        //"file:///home/runner/.go/go1.21.3/src/net/netip/netip.go#L115"
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (_s.length) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/net/netip/netip.go#L116"
                {
                    final __value__ = _s[(_i : stdgo.GoInt)];
                    if (__value__ == ((46 : stdgo.GoUInt8))) {
                        //"file:///home/runner/.go/go1.21.3/src/net/netip/netip.go#L118"
                        return stdgo._internal.net.netip.Netip__parseipv4._parseIPv4(_s.__copy__());
                    } else if (__value__ == ((58 : stdgo.GoUInt8))) {
                        //"file:///home/runner/.go/go1.21.3/src/net/netip/netip.go#L120"
                        return stdgo._internal.net.netip.Netip__parseipv6._parseIPv6(_s.__copy__());
                    } else if (__value__ == ((37 : stdgo.GoUInt8))) {
                        //"file:///home/runner/.go/go1.21.3/src/net/netip/netip.go#L124"
                        return { _0 : (new stdgo._internal.net.netip.Netip_addr.Addr() : stdgo._internal.net.netip.Netip_addr.Addr), _1 : stdgo.Go.asInterface(({ _in : _s.__copy__(), _msg : ("missing IPv6 address" : stdgo.GoString) } : stdgo._internal.net.netip.Netip_t_parseaddrerror.T_parseAddrError)) };
                    };
                };
                _i++;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/net/netip/netip.go#L127"
        return { _0 : (new stdgo._internal.net.netip.Netip_addr.Addr() : stdgo._internal.net.netip.Netip_addr.Addr), _1 : stdgo.Go.asInterface(({ _in : _s?.__copy__(), _msg : ("unable to parse IP" : stdgo.GoString) } : stdgo._internal.net.netip.Netip_t_parseaddrerror.T_parseAddrError)) };
    }
