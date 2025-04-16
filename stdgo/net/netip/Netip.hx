package stdgo.net.netip;
typedef Addr = stdgo._internal.net.netip.Netip_addr.Addr;
typedef AddrPort = stdgo._internal.net.netip.Netip_addrport.AddrPort;
typedef Prefix = stdgo._internal.net.netip.Netip_prefix.Prefix;
typedef AddrPointer = stdgo._internal.net.netip.Netip_addrpointer.AddrPointer;
typedef AddrPortPointer = stdgo._internal.net.netip.Netip_addrportpointer.AddrPortPointer;
typedef PrefixPointer = stdgo._internal.net.netip.Netip_prefixpointer.PrefixPointer;
/**
    * Package netip defines an IP address type that's a small value type.
    * Building on that [Addr] type, the package also defines [AddrPort] (an
    * IP address and a port) and [Prefix] (an IP address and a bit length
    * prefix).
    * 
    * Compared to the [net.IP] type, [Addr] type takes less memory, is immutable,
    * and is comparable (supports == and being a map key).
**/
class Netip {
    /**
        * IPv6LinkLocalAllNodes returns the IPv6 link-local all nodes multicast
        * address ff02::1.
    **/
    static public inline function iPv6LinkLocalAllNodes():stdgo._internal.net.netip.Netip_addr.Addr return stdgo._internal.net.netip.Netip_ipv6linklocalallnodes.iPv6LinkLocalAllNodes();
    /**
        * IPv6LinkLocalAllRouters returns the IPv6 link-local all routers multicast
        * address ff02::2.
    **/
    static public inline function iPv6LinkLocalAllRouters():stdgo._internal.net.netip.Netip_addr.Addr return stdgo._internal.net.netip.Netip_ipv6linklocalallrouters.iPv6LinkLocalAllRouters();
    /**
        * IPv6Loopback returns the IPv6 loopback address ::1.
    **/
    static public inline function iPv6Loopback():stdgo._internal.net.netip.Netip_addr.Addr return stdgo._internal.net.netip.Netip_ipv6loopback.iPv6Loopback();
    /**
        * IPv6Unspecified returns the IPv6 unspecified address "::".
    **/
    static public inline function iPv6Unspecified():stdgo._internal.net.netip.Netip_addr.Addr return stdgo._internal.net.netip.Netip_ipv6unspecified.iPv6Unspecified();
    /**
        * IPv4Unspecified returns the IPv4 unspecified address "0.0.0.0".
    **/
    static public inline function iPv4Unspecified():stdgo._internal.net.netip.Netip_addr.Addr return stdgo._internal.net.netip.Netip_ipv4unspecified.iPv4Unspecified();
    /**
        * AddrFrom4 returns the address of the IPv4 address given by the bytes in addr.
    **/
    static public inline function addrFrom4(_addr:stdgo.GoArray<stdgo.GoUInt8>):stdgo._internal.net.netip.Netip_addr.Addr return stdgo._internal.net.netip.Netip_addrfrom4.addrFrom4(_addr);
    /**
        * AddrFrom16 returns the IPv6 address given by the bytes in addr.
        * An IPv4-mapped IPv6 address is left as an IPv6 address.
        * (Use Unmap to convert them if needed.)
    **/
    static public inline function addrFrom16(_addr:stdgo.GoArray<stdgo.GoUInt8>):stdgo._internal.net.netip.Netip_addr.Addr return stdgo._internal.net.netip.Netip_addrfrom16.addrFrom16(_addr);
    /**
        * ParseAddr parses s as an IP address, returning the result. The string
        * s can be in dotted decimal ("192.0.2.1"), IPv6 ("2001:db8::68"),
        * or IPv6 with a scoped addressing zone ("fe80::1cc0:3e8c:119f:c2e1%ens18").
    **/
    static public inline function parseAddr(_s:stdgo.GoString):{ var _0 : stdgo._internal.net.netip.Netip_addr.Addr; var _1 : stdgo.Error; } return stdgo._internal.net.netip.Netip_parseaddr.parseAddr(_s);
    /**
        * MustParseAddr calls ParseAddr(s) and panics on error.
        * It is intended for use in tests with hard-coded strings.
    **/
    static public inline function mustParseAddr(_s:stdgo.GoString):stdgo._internal.net.netip.Netip_addr.Addr return stdgo._internal.net.netip.Netip_mustparseaddr.mustParseAddr(_s);
    /**
        * AddrFromSlice parses the 4- or 16-byte byte slice as an IPv4 or IPv6 address.
        * Note that a net.IP can be passed directly as the []byte argument.
        * If slice's length is not 4 or 16, AddrFromSlice returns Addr{}, false.
    **/
    static public inline function addrFromSlice(_slice:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo._internal.net.netip.Netip_addr.Addr; var _1 : Bool; } return stdgo._internal.net.netip.Netip_addrfromslice.addrFromSlice(_slice);
    /**
        * AddrPortFrom returns an AddrPort with the provided IP and port.
        * It does not allocate.
    **/
    static public inline function addrPortFrom(_ip:Addr, _port:stdgo.GoUInt16):stdgo._internal.net.netip.Netip_addrport.AddrPort return stdgo._internal.net.netip.Netip_addrportfrom.addrPortFrom(_ip, _port);
    /**
        * ParseAddrPort parses s as an AddrPort.
        * 
        * It doesn't do any name resolution: both the address and the port
        * must be numeric.
    **/
    static public inline function parseAddrPort(_s:stdgo.GoString):{ var _0 : stdgo._internal.net.netip.Netip_addrport.AddrPort; var _1 : stdgo.Error; } return stdgo._internal.net.netip.Netip_parseaddrport.parseAddrPort(_s);
    /**
        * MustParseAddrPort calls ParseAddrPort(s) and panics on error.
        * It is intended for use in tests with hard-coded strings.
    **/
    static public inline function mustParseAddrPort(_s:stdgo.GoString):stdgo._internal.net.netip.Netip_addrport.AddrPort return stdgo._internal.net.netip.Netip_mustparseaddrport.mustParseAddrPort(_s);
    /**
        * PrefixFrom returns a Prefix with the provided IP address and bit
        * prefix length.
        * 
        * It does not allocate. Unlike Addr.Prefix, PrefixFrom does not mask
        * off the host bits of ip.
        * 
        * If bits is less than zero or greater than ip.BitLen, Prefix.Bits
        * will return an invalid value -1.
    **/
    static public inline function prefixFrom(_ip:Addr, _bits:stdgo.GoInt):stdgo._internal.net.netip.Netip_prefix.Prefix return stdgo._internal.net.netip.Netip_prefixfrom.prefixFrom(_ip, _bits);
    /**
        * ParsePrefix parses s as an IP address prefix.
        * The string can be in the form "192.168.1.0/24" or "2001:db8::/32",
        * the CIDR notation defined in RFC 4632 and RFC 4291.
        * IPv6 zones are not permitted in prefixes, and an error will be returned if a
        * zone is present.
        * 
        * Note that masked address bits are not zeroed. Use Masked for that.
    **/
    static public inline function parsePrefix(_s:stdgo.GoString):{ var _0 : stdgo._internal.net.netip.Netip_prefix.Prefix; var _1 : stdgo.Error; } return stdgo._internal.net.netip.Netip_parseprefix.parsePrefix(_s);
    /**
        * MustParsePrefix calls ParsePrefix(s) and panics on error.
        * It is intended for use in tests with hard-coded strings.
    **/
    static public inline function mustParsePrefix(_s:stdgo.GoString):stdgo._internal.net.netip.Netip_prefix.Prefix return stdgo._internal.net.netip.Netip_mustparseprefix.mustParsePrefix(_s);
}
