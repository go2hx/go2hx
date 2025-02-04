package stdgo._internal.net.netip;
function prefixFrom(_ip:stdgo._internal.net.netip.Netip_addr.Addr, _bits:stdgo.GoInt):stdgo._internal.net.netip.Netip_prefix.Prefix {
        var _bitsPlusOne:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        if (((!_ip._isZero() && (_bits >= (0 : stdgo.GoInt) : Bool) : Bool) && (_bits <= _ip.bitLen() : Bool) : Bool)) {
            _bitsPlusOne = ((_bits : stdgo.GoUInt8) + (1 : stdgo.GoUInt8) : stdgo.GoUInt8);
        };
        return ({ _ip : _ip._withoutZone()?.__copy__(), _bitsPlusOne : _bitsPlusOne } : stdgo._internal.net.netip.Netip_prefix.Prefix);
    }
