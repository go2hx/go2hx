package stdgo._internal.net.netip;
function _mask6(_n:stdgo.GoInt):stdgo._internal.net.netip.Netip_t_uint128.T_uint128 {
        return (new stdgo._internal.net.netip.Netip_t_uint128.T_uint128((-1 ^ ((-1i64 : stdgo.GoUInt64) >> _n : stdgo.GoUInt64)), ((-1i64 : stdgo.GoUInt64) << (((128 : stdgo.GoInt) - _n : stdgo.GoInt)) : stdgo.GoUInt64)) : stdgo._internal.net.netip.Netip_t_uint128.T_uint128);
    }
