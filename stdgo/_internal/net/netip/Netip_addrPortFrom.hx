package stdgo._internal.net.netip;
function addrPortFrom(_ip:stdgo._internal.net.netip.Netip_Addr.Addr, _port:stdgo.GoUInt16):stdgo._internal.net.netip.Netip_AddrPort.AddrPort {
        return ({ _ip : _ip?.__copy__(), _port : _port } : stdgo._internal.net.netip.Netip_AddrPort.AddrPort);
    }
