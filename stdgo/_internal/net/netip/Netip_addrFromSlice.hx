package stdgo._internal.net.netip;
function addrFromSlice(_slice:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo._internal.net.netip.Netip_Addr.Addr; var _1 : Bool; } {
        var _ip = ({} : stdgo._internal.net.netip.Netip_Addr.Addr), _ok = false;
        {
            final __value__ = (_slice.length);
            if (__value__ == ((4 : stdgo.GoInt))) {
                return { _0 : stdgo._internal.net.netip.Netip_addrFrom4.addrFrom4((_slice : stdgo.GoArray<stdgo.GoUInt8>)?.__copy__())?.__copy__(), _1 : true };
            } else if (__value__ == ((16 : stdgo.GoInt))) {
                return { _0 : stdgo._internal.net.netip.Netip_addrFrom16.addrFrom16((_slice : stdgo.GoArray<stdgo.GoUInt8>)?.__copy__())?.__copy__(), _1 : true };
            };
        };
        return { _0 : (new stdgo._internal.net.netip.Netip_Addr.Addr() : stdgo._internal.net.netip.Netip_Addr.Addr), _1 : false };
    }
