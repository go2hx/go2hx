package stdgo.net.netip;
/**
    Package netip defines an IP address type that's a small value type.
    Building on that [Addr] type, the package also defines [AddrPort] (an
    IP address and a port) and [Prefix] (an IP address and a bit length
    prefix).
    
    Compared to the [net.IP] type, [Addr] type takes less memory, is immutable,
    and is comparable (supports == and being a map key).
**/
class Netip {
    /**
        IPv6LinkLocalAllNodes returns the IPv6 link-local all nodes multicast
        address ff02::1.
    **/
    static public inline function iPv6LinkLocalAllNodes():Addr {
        return stdgo._internal.net.netip.Netip_iPv6LinkLocalAllNodes.iPv6LinkLocalAllNodes();
    }
    /**
        IPv6LinkLocalAllRouters returns the IPv6 link-local all routers multicast
        address ff02::2.
    **/
    static public inline function iPv6LinkLocalAllRouters():Addr {
        return stdgo._internal.net.netip.Netip_iPv6LinkLocalAllRouters.iPv6LinkLocalAllRouters();
    }
    /**
        IPv6Loopback returns the IPv6 loopback address ::1.
    **/
    static public inline function iPv6Loopback():Addr {
        return stdgo._internal.net.netip.Netip_iPv6Loopback.iPv6Loopback();
    }
    /**
        IPv6Unspecified returns the IPv6 unspecified address "::".
    **/
    static public inline function iPv6Unspecified():Addr {
        return stdgo._internal.net.netip.Netip_iPv6Unspecified.iPv6Unspecified();
    }
    /**
        IPv4Unspecified returns the IPv4 unspecified address "0.0.0.0".
    **/
    static public inline function iPv4Unspecified():Addr {
        return stdgo._internal.net.netip.Netip_iPv4Unspecified.iPv4Unspecified();
    }
    /**
        AddrFrom4 returns the address of the IPv4 address given by the bytes in addr.
    **/
    static public inline function addrFrom4(_addr:haxe.ds.Vector<std.UInt>):Addr {
        final _addr = ([for (i in _addr) (i : stdgo.GoUInt8)] : stdgo.GoArray<stdgo.GoUInt8>);
        return stdgo._internal.net.netip.Netip_addrFrom4.addrFrom4(_addr);
    }
    /**
        AddrFrom16 returns the IPv6 address given by the bytes in addr.
        An IPv4-mapped IPv6 address is left as an IPv6 address.
        (Use Unmap to convert them if needed.)
    **/
    static public inline function addrFrom16(_addr:haxe.ds.Vector<std.UInt>):Addr {
        final _addr = ([for (i in _addr) (i : stdgo.GoUInt8)] : stdgo.GoArray<stdgo.GoUInt8>);
        return stdgo._internal.net.netip.Netip_addrFrom16.addrFrom16(_addr);
    }
    /**
        ParseAddr parses s as an IP address, returning the result. The string
        s can be in dotted decimal ("192.0.2.1"), IPv6 ("2001:db8::68"),
        or IPv6 with a scoped addressing zone ("fe80::1cc0:3e8c:119f:c2e1%ens18").
    **/
    static public inline function parseAddr(_s:String):stdgo.Tuple<Addr, stdgo.Error> {
        final _s = (_s : stdgo.GoString);
        return {
            final obj = stdgo._internal.net.netip.Netip_parseAddr.parseAddr(_s);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        MustParseAddr calls ParseAddr(s) and panics on error.
        It is intended for use in tests with hard-coded strings.
    **/
    static public inline function mustParseAddr(_s:String):Addr {
        final _s = (_s : stdgo.GoString);
        return stdgo._internal.net.netip.Netip_mustParseAddr.mustParseAddr(_s);
    }
    /**
        AddrFromSlice parses the 4- or 16-byte byte slice as an IPv4 or IPv6 address.
        Note that a net.IP can be passed directly as the []byte argument.
        If slice's length is not 4 or 16, AddrFromSlice returns Addr{}, false.
    **/
    static public inline function addrFromSlice(_slice:Array<std.UInt>):stdgo.Tuple<Addr, Bool> {
        final _slice = ([for (i in _slice) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.net.netip.Netip_addrFromSlice.addrFromSlice(_slice);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        AddrPortFrom returns an AddrPort with the provided IP and port.
        It does not allocate.
    **/
    static public inline function addrPortFrom(_ip:Addr, _port:std.UInt):AddrPort {
        final _port = (_port : stdgo.GoUInt16);
        return stdgo._internal.net.netip.Netip_addrPortFrom.addrPortFrom(_ip, _port);
    }
    /**
        ParseAddrPort parses s as an AddrPort.
        
        It doesn't do any name resolution: both the address and the port
        must be numeric.
    **/
    static public inline function parseAddrPort(_s:String):stdgo.Tuple<AddrPort, stdgo.Error> {
        final _s = (_s : stdgo.GoString);
        return {
            final obj = stdgo._internal.net.netip.Netip_parseAddrPort.parseAddrPort(_s);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        MustParseAddrPort calls ParseAddrPort(s) and panics on error.
        It is intended for use in tests with hard-coded strings.
    **/
    static public inline function mustParseAddrPort(_s:String):AddrPort {
        final _s = (_s : stdgo.GoString);
        return stdgo._internal.net.netip.Netip_mustParseAddrPort.mustParseAddrPort(_s);
    }
    /**
        PrefixFrom returns a Prefix with the provided IP address and bit
        prefix length.
        
        It does not allocate. Unlike Addr.Prefix, PrefixFrom does not mask
        off the host bits of ip.
        
        If bits is less than zero or greater than ip.BitLen, Prefix.Bits
        will return an invalid value -1.
    **/
    static public inline function prefixFrom(_ip:Addr, _bits:StdTypes.Int):Prefix {
        final _bits = (_bits : stdgo.GoInt);
        return stdgo._internal.net.netip.Netip_prefixFrom.prefixFrom(_ip, _bits);
    }
    /**
        ParsePrefix parses s as an IP address prefix.
        The string can be in the form "192.168.1.0/24" or "2001:db8::/32",
        the CIDR notation defined in RFC 4632 and RFC 4291.
        IPv6 zones are not permitted in prefixes, and an error will be returned if a
        zone is present.
        
        Note that masked address bits are not zeroed. Use Masked for that.
    **/
    static public inline function parsePrefix(_s:String):stdgo.Tuple<Prefix, stdgo.Error> {
        final _s = (_s : stdgo.GoString);
        return {
            final obj = stdgo._internal.net.netip.Netip_parsePrefix.parsePrefix(_s);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        MustParsePrefix calls ParsePrefix(s) and panics on error.
        It is intended for use in tests with hard-coded strings.
    **/
    static public inline function mustParsePrefix(_s:String):Prefix {
        final _s = (_s : stdgo.GoString);
        return stdgo._internal.net.netip.Netip_mustParsePrefix.mustParsePrefix(_s);
    }
}
