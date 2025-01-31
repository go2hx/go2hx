package stdgo._internal.net.netip;
import stdgo._internal.internal.bytealg.Bytealg;
import stdgo._internal.errors.Errors;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.internal.intern.Intern;
import stdgo._internal.internal.itoa.Itoa;
import stdgo._internal.math.bits.Bits;
function addrFrom16(_addr:stdgo.GoArray<stdgo.GoUInt8>):stdgo._internal.net.netip.Netip_Addr.Addr {
        return ({ _addr : (new stdgo._internal.net.netip.Netip_T_uint128.T_uint128(stdgo._internal.net.netip.Netip__beUint64._beUint64((_addr.__slice__(0, (8 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)), stdgo._internal.net.netip.Netip__beUint64._beUint64((_addr.__slice__((8 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>))) : stdgo._internal.net.netip.Netip_T_uint128.T_uint128), _z : stdgo._internal.net.netip.Netip__z6noz._z6noz } : stdgo._internal.net.netip.Netip_Addr.Addr);
    }
