package stdgo._internal.net.netip;
function addrFromSlice(_slice:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo._internal.net.netip.Netip_addr.Addr; var _1 : Bool; } {
        var _ip = ({} : stdgo._internal.net.netip.Netip_addr.Addr), _ok = false;
        {
            final __value__ = (_slice.length);
            if (__value__ == ((4 : stdgo.GoInt))) {
                return {
                    final __tmp__:{ var _0 : stdgo._internal.net.netip.Netip_addr.Addr; var _1 : Bool; } = { _0 : stdgo._internal.net.netip.Netip_addrfrom4.addrFrom4((_slice : stdgo.GoArray<stdgo.GoUInt8>)?.__copy__())?.__copy__(), _1 : true };
                    _ip = __tmp__._0;
                    _ok = __tmp__._1;
                    __tmp__;
                };
            } else if (__value__ == ((16 : stdgo.GoInt))) {
                return {
                    final __tmp__:{ var _0 : stdgo._internal.net.netip.Netip_addr.Addr; var _1 : Bool; } = { _0 : stdgo._internal.net.netip.Netip_addrfrom16.addrFrom16((_slice : stdgo.GoArray<stdgo.GoUInt8>)?.__copy__())?.__copy__(), _1 : true };
                    _ip = __tmp__._0;
                    _ok = __tmp__._1;
                    __tmp__;
                };
            };
        };
        return {
            final __tmp__:{ var _0 : stdgo._internal.net.netip.Netip_addr.Addr; var _1 : Bool; } = { _0 : (new stdgo._internal.net.netip.Netip_addr.Addr() : stdgo._internal.net.netip.Netip_addr.Addr), _1 : false };
            _ip = __tmp__._0;
            _ok = __tmp__._1;
            __tmp__;
        };
    }
