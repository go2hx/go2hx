package stdgo._internal.net.netip;
import stdgo._internal.internal.bytealg.Bytealg;
import stdgo._internal.errors.Errors;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.internal.intern.Intern;
import stdgo._internal.internal.itoa.Itoa;
import stdgo._internal.math.bits.Bits;
function addrFromSlice(_slice:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo._internal.net.netip.Netip_Addr.Addr; var _1 : Bool; } {
        var _ip = ({} : stdgo._internal.net.netip.Netip_Addr.Addr), _ok = false;
        {
            final __value__ = (_slice.length);
            if (__value__ == ((4 : stdgo.GoInt))) {
                return {
                    final __tmp__:{ var _0 : stdgo._internal.net.netip.Netip_Addr.Addr; var _1 : Bool; } = { _0 : stdgo._internal.net.netip.Netip_addrFrom4.addrFrom4((_slice : stdgo.GoArray<stdgo.GoUInt8>)?.__copy__())?.__copy__(), _1 : true };
                    _ip = __tmp__._0;
                    _ok = __tmp__._1;
                    __tmp__;
                };
            } else if (__value__ == ((16 : stdgo.GoInt))) {
                return {
                    final __tmp__:{ var _0 : stdgo._internal.net.netip.Netip_Addr.Addr; var _1 : Bool; } = { _0 : stdgo._internal.net.netip.Netip_addrFrom16.addrFrom16((_slice : stdgo.GoArray<stdgo.GoUInt8>)?.__copy__())?.__copy__(), _1 : true };
                    _ip = __tmp__._0;
                    _ok = __tmp__._1;
                    __tmp__;
                };
            };
        };
        return {
            final __tmp__:{ var _0 : stdgo._internal.net.netip.Netip_Addr.Addr; var _1 : Bool; } = { _0 : (new stdgo._internal.net.netip.Netip_Addr.Addr() : stdgo._internal.net.netip.Netip_Addr.Addr), _1 : false };
            _ip = __tmp__._0;
            _ok = __tmp__._1;
            __tmp__;
        };
    }
