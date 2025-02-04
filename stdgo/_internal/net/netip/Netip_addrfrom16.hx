package stdgo._internal.net.netip;
function addrFrom16(_addr:stdgo.GoArray<stdgo.GoUInt8>):stdgo._internal.net.netip.Netip_addr.Addr {
        return ({ _addr : (new stdgo._internal.net.netip.Netip_t_uint128.T_uint128(stdgo._internal.net.netip.Netip__beuint64._beUint64((_addr.__slice__(0, (8 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)), stdgo._internal.net.netip.Netip__beuint64._beUint64((_addr.__slice__((8 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>))) : stdgo._internal.net.netip.Netip_t_uint128.T_uint128), _z : stdgo._internal.net.netip.Netip__z6noz._z6noz } : stdgo._internal.net.netip.Netip_addr.Addr);
    }
