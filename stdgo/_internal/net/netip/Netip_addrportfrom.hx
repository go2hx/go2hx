package stdgo._internal.net.netip;
function addrPortFrom(_ip:stdgo._internal.net.netip.Netip_addr.Addr, _port:stdgo.GoUInt16):stdgo._internal.net.netip.Netip_addrport.AddrPort {
        //"file:///home/runner/.go/go1.21.3/src/net/netip/netip.go#L1032"
        return ({ _ip : _ip?.__copy__(), _port : _port } : stdgo._internal.net.netip.Netip_addrport.AddrPort);
    }
