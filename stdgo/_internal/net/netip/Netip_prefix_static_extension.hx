package stdgo._internal.net.netip;
@:keep @:allow(stdgo._internal.net.netip.Netip.Prefix_asInterface) class Prefix_static_extension {
    @:keep
    @:tdfield
    static public function string( _p:stdgo._internal.net.netip.Netip_prefix.Prefix):stdgo.GoString {
        @:recv var _p:stdgo._internal.net.netip.Netip_prefix.Prefix = _p?.__copy__();
        if (!_p.isValid()) {
            return ("invalid Prefix" : stdgo.GoString);
        };
        return (((_p._ip.string() : stdgo.GoString) + ("/" : stdgo.GoString)?.__copy__() : stdgo.GoString) + stdgo._internal.internal.itoa.Itoa_itoa.itoa(_p.bits())?.__copy__() : stdgo.GoString)?.__copy__();
    }
    @:keep
    @:tdfield
    static public function unmarshalBinary( _p:stdgo.Ref<stdgo._internal.net.netip.Netip_prefix.Prefix>, _b:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error {
        @:recv var _p:stdgo.Ref<stdgo._internal.net.netip.Netip_prefix.Prefix> = _p;
        if (((_b.length) < (1 : stdgo.GoInt) : Bool)) {
            return stdgo._internal.errors.Errors_new_.new_(("unexpected slice size" : stdgo.GoString));
        };
        var _addr:stdgo._internal.net.netip.Netip_addr.Addr = ({} : stdgo._internal.net.netip.Netip_addr.Addr);
        var _err = (@:check2 _addr.unmarshalBinary((_b.__slice__(0, ((_b.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.Error);
        if (_err != null) {
            return _err;
        };
        {
            var __tmp__ = stdgo._internal.net.netip.Netip_prefixfrom.prefixFrom(_addr?.__copy__(), (_b[((_b.length) - (1 : stdgo.GoInt) : stdgo.GoInt)] : stdgo.GoInt))?.__copy__();
            var x = (_p : stdgo._internal.net.netip.Netip_prefix.Prefix);
            x._ip = __tmp__?._ip;
            x._bitsPlusOne = __tmp__?._bitsPlusOne;
        };
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function marshalBinary( _p:stdgo._internal.net.netip.Netip_prefix.Prefix):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        @:recv var _p:stdgo._internal.net.netip.Netip_prefix.Prefix = _p?.__copy__();
        var _b = _p.addr()._withoutZone()._marshalBinaryWithTrailingBytes((1 : stdgo.GoInt));
        _b[((_b.length) - (1 : stdgo.GoInt) : stdgo.GoInt)] = (_p.bits() : stdgo.GoUInt8);
        return { _0 : _b, _1 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function unmarshalText( _p:stdgo.Ref<stdgo._internal.net.netip.Netip_prefix.Prefix>, _text:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error {
        @:recv var _p:stdgo.Ref<stdgo._internal.net.netip.Netip_prefix.Prefix> = _p;
        if ((_text.length) == ((0 : stdgo.GoInt))) {
            {
                var __tmp__ = (new stdgo._internal.net.netip.Netip_prefix.Prefix() : stdgo._internal.net.netip.Netip_prefix.Prefix);
                var x = (_p : stdgo._internal.net.netip.Netip_prefix.Prefix);
                x._ip = __tmp__?._ip;
                x._bitsPlusOne = __tmp__?._bitsPlusOne;
            };
            return (null : stdgo.Error);
        };
        var _err:stdgo.Error = (null : stdgo.Error);
        {
            var __tmp__ = stdgo._internal.net.netip.Netip_parseprefix.parsePrefix((_text : stdgo.GoString)?.__copy__());
            var x = _p;
            x._ip = @:tmpset0 __tmp__._0?.__copy__()?._ip;
            x._bitsPlusOne = @:tmpset0 __tmp__._0?.__copy__()?._bitsPlusOne;
            _err = @:tmpset0 __tmp__._1;
        };
        return _err;
    }
    @:keep
    @:tdfield
    static public function marshalText( _p:stdgo._internal.net.netip.Netip_prefix.Prefix):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        @:recv var _p:stdgo._internal.net.netip.Netip_prefix.Prefix = _p?.__copy__();
        var _max:stdgo.GoInt = (0 : stdgo.GoInt);
        {
            final __value__ = _p._ip._z;
            if (__value__ == (stdgo._internal.net.netip.Netip__z0._z0)) {} else if (__value__ == (stdgo._internal.net.netip.Netip__z4._z4)) {
                _max = ((("255.255.255.255/32" : stdgo.GoString) : stdgo.GoString).length);
            } else {
                _max = ((("ffff:ffff:ffff:ffff:ffff:ffff:ffff:ffff%enp5s0/128" : stdgo.GoString) : stdgo.GoString).length);
            };
        };
        var _b = (new stdgo.Slice<stdgo.GoUInt8>((0 : stdgo.GoInt).toBasic(), _max).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        _b = _p.appendTo(_b);
        return { _0 : _b, _1 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function appendTo( _p:stdgo._internal.net.netip.Netip_prefix.Prefix, _b:stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo.GoUInt8> {
        @:recv var _p:stdgo._internal.net.netip.Netip_prefix.Prefix = _p?.__copy__();
        if (_p._isZero()) {
            return _b;
        };
        if (!_p.isValid()) {
            return (_b.__append__(...((("invalid Prefix" : stdgo.GoString) : stdgo.GoString) : Array<stdgo.GoUInt8>)));
        };
        if (_p._ip._z == (stdgo._internal.net.netip.Netip__z4._z4)) {
            _b = _p._ip._appendTo4(_b);
        } else {
            if (_p._ip.is4In6()) {
                _b = (_b.__append__(...((("::ffff:" : stdgo.GoString) : stdgo.GoString) : Array<stdgo.GoUInt8>)));
                _b = _p._ip.unmap()._appendTo4(_b);
            } else {
                _b = _p._ip._appendTo6(_b);
            };
        };
        _b = (_b.__append__((47 : stdgo.GoUInt8)));
        _b = stdgo._internal.net.netip.Netip__appenddecimal._appendDecimal(_b, (_p.bits() : stdgo.GoUInt8));
        return _b;
    }
    @:keep
    @:tdfield
    static public function overlaps( _p:stdgo._internal.net.netip.Netip_prefix.Prefix, _o:stdgo._internal.net.netip.Netip_prefix.Prefix):Bool {
        @:recv var _p:stdgo._internal.net.netip.Netip_prefix.Prefix = _p?.__copy__();
        if ((!_p.isValid() || !_o.isValid() : Bool)) {
            return false;
        };
        if (stdgo.Go.toInterface(_p) == stdgo.Go.toInterface(_o)) {
            return true;
        };
        if (_p._ip.is4() != (_o._ip.is4())) {
            return false;
        };
        var _minBits:stdgo.GoInt = (0 : stdgo.GoInt);
        {
            var __0 = (_p.bits() : stdgo.GoInt), __1 = (_o.bits() : stdgo.GoInt);
var _ob = __1, _pb = __0;
            if ((_pb < _ob : Bool)) {
                _minBits = _pb;
            } else {
                _minBits = _ob;
            };
        };
        if (_minBits == ((0 : stdgo.GoInt))) {
            return true;
        };
        var _err:stdgo.Error = (null : stdgo.Error);
        {
            {
                var __tmp__ = _p._ip.prefix(_minBits);
                _p = @:tmpset0 __tmp__._0?.__copy__();
                _err = @:tmpset0 __tmp__._1;
            };
            if (_err != null) {
                return false;
            };
        };
        {
            {
                var __tmp__ = _o._ip.prefix(_minBits);
                _o = @:tmpset0 __tmp__._0?.__copy__();
                _err = @:tmpset0 __tmp__._1;
            };
            if (_err != null) {
                return false;
            };
        };
        return stdgo.Go.toInterface(_p._ip) == stdgo.Go.toInterface(_o._ip);
    }
    @:keep
    @:tdfield
    static public function contains( _p:stdgo._internal.net.netip.Netip_prefix.Prefix, _ip:stdgo._internal.net.netip.Netip_addr.Addr):Bool {
        @:recv var _p:stdgo._internal.net.netip.Netip_prefix.Prefix = _p?.__copy__();
        if ((!_p.isValid() || _ip._hasZone() : Bool)) {
            return false;
        };
        {
            var __0 = (_p._ip.bitLen() : stdgo.GoInt), __1 = (_ip.bitLen() : stdgo.GoInt);
var _f2 = __1, _f1 = __0;
            if (((_f1 == ((0 : stdgo.GoInt)) || _f2 == ((0 : stdgo.GoInt)) : Bool) || (_f1 != _f2) : Bool)) {
                return false;
            };
        };
        if (_ip.is4()) {
            return ((((_ip._addr._lo ^ _p._ip._addr._lo : stdgo.GoUInt64)) >> (((((32 : stdgo.GoInt) - _p.bits() : stdgo.GoInt)) & (63 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoUInt64) : stdgo.GoUInt32) == ((0u32 : stdgo.GoUInt32));
        } else {
            return _ip._addr._xor(_p._ip._addr?.__copy__())._and(stdgo._internal.net.netip.Netip__mask6._mask6(_p.bits())?.__copy__())._isZero();
        };
    }
    @:keep
    @:tdfield
    static public function masked( _p:stdgo._internal.net.netip.Netip_prefix.Prefix):stdgo._internal.net.netip.Netip_prefix.Prefix {
        @:recv var _p:stdgo._internal.net.netip.Netip_prefix.Prefix = _p?.__copy__();
        var __tmp__ = _p._ip.prefix(_p.bits()), _m:stdgo._internal.net.netip.Netip_prefix.Prefix = __tmp__._0, __24:stdgo.Error = __tmp__._1;
        return _m?.__copy__();
    }
    @:keep
    @:tdfield
    static public function isSingleIP( _p:stdgo._internal.net.netip.Netip_prefix.Prefix):Bool {
        @:recv var _p:stdgo._internal.net.netip.Netip_prefix.Prefix = _p?.__copy__();
        return (_p.isValid() && (_p.bits() == _p._ip.bitLen()) : Bool);
    }
    @:keep
    @:tdfield
    static public function _isZero( _p:stdgo._internal.net.netip.Netip_prefix.Prefix):Bool {
        @:recv var _p:stdgo._internal.net.netip.Netip_prefix.Prefix = _p?.__copy__();
        return stdgo.Go.toInterface(_p) == stdgo.Go.toInterface((new stdgo._internal.net.netip.Netip_prefix.Prefix() : stdgo._internal.net.netip.Netip_prefix.Prefix));
    }
    @:keep
    @:tdfield
    static public function isValid( _p:stdgo._internal.net.netip.Netip_prefix.Prefix):Bool {
        @:recv var _p:stdgo._internal.net.netip.Netip_prefix.Prefix = _p?.__copy__();
        return (_p._bitsPlusOne > (0 : stdgo.GoUInt8) : Bool);
    }
    @:keep
    @:tdfield
    static public function bits( _p:stdgo._internal.net.netip.Netip_prefix.Prefix):stdgo.GoInt {
        @:recv var _p:stdgo._internal.net.netip.Netip_prefix.Prefix = _p?.__copy__();
        return ((_p._bitsPlusOne : stdgo.GoInt) - (1 : stdgo.GoInt) : stdgo.GoInt);
    }
    @:keep
    @:tdfield
    static public function addr( _p:stdgo._internal.net.netip.Netip_prefix.Prefix):stdgo._internal.net.netip.Netip_addr.Addr {
        @:recv var _p:stdgo._internal.net.netip.Netip_prefix.Prefix = _p?.__copy__();
        return _p._ip?.__copy__();
    }
}
