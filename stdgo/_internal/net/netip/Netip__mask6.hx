package stdgo._internal.net.netip;
import stdgo._internal.internal.bytealg.Bytealg;
import stdgo._internal.errors.Errors;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.internal.intern.Intern;
import stdgo._internal.internal.itoa.Itoa;
import stdgo._internal.math.bits.Bits;
function _mask6(_n:stdgo.GoInt):stdgo._internal.net.netip.Netip_T_uint128.T_uint128 {
        return (new stdgo._internal.net.netip.Netip_T_uint128.T_uint128((-1 ^ ((-1i64 : stdgo.GoUInt64) >> _n : stdgo.GoUInt64)), ((-1i64 : stdgo.GoUInt64) << (((128 : stdgo.GoInt) - _n : stdgo.GoInt)) : stdgo.GoUInt64)) : stdgo._internal.net.netip.Netip_T_uint128.T_uint128);
    }
