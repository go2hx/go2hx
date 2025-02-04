package stdgo._internal.net.netip;
@:keep @:allow(stdgo._internal.net.netip.Netip.Addr_asInterface) class Addr_static_extension {
    @:keep
    @:tdfield
    static public function unmarshalBinary( _ip:stdgo.Ref<stdgo._internal.net.netip.Netip_addr.Addr>, _b:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error {
        @:recv var _ip:stdgo.Ref<stdgo._internal.net.netip.Netip_addr.Addr> = _ip;
        var _n = (_b.length : stdgo.GoInt);
        if (_n == ((0 : stdgo.GoInt))) {
            {
                var __tmp__ = (new stdgo._internal.net.netip.Netip_addr.Addr() : stdgo._internal.net.netip.Netip_addr.Addr);
                var x = (_ip : stdgo._internal.net.netip.Netip_addr.Addr);
                x._addr = __tmp__?._addr;
                x._z = __tmp__?._z;
            };
            return (null : stdgo.Error);
        } else if (_n == ((4 : stdgo.GoInt))) {
            {
                var __tmp__ = stdgo._internal.net.netip.Netip_addrfrom4.addrFrom4((_b : stdgo.GoArray<stdgo.GoUInt8>)?.__copy__())?.__copy__();
                var x = (_ip : stdgo._internal.net.netip.Netip_addr.Addr);
                x._addr = __tmp__?._addr;
                x._z = __tmp__?._z;
            };
            return (null : stdgo.Error);
        } else if (_n == ((16 : stdgo.GoInt))) {
            {
                var __tmp__ = stdgo._internal.net.netip.Netip_addrfrom16.addrFrom16((_b : stdgo.GoArray<stdgo.GoUInt8>)?.__copy__())?.__copy__();
                var x = (_ip : stdgo._internal.net.netip.Netip_addr.Addr);
                x._addr = __tmp__?._addr;
                x._z = __tmp__?._z;
            };
            return (null : stdgo.Error);
        } else if ((_n > (16 : stdgo.GoInt) : Bool)) {
            {
                var __tmp__ = stdgo._internal.net.netip.Netip_addrfrom16.addrFrom16(((_b.__slice__(0, (16 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>) : stdgo.GoArray<stdgo.GoUInt8>)?.__copy__()).withZone(((_b.__slice__((16 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>) : stdgo.GoString)?.__copy__())?.__copy__();
                var x = (_ip : stdgo._internal.net.netip.Netip_addr.Addr);
                x._addr = __tmp__?._addr;
                x._z = __tmp__?._z;
            };
            return (null : stdgo.Error);
        };
        return stdgo._internal.errors.Errors_new_.new_(("unexpected slice size" : stdgo.GoString));
    }
    @:keep
    @:tdfield
    static public function marshalBinary( _ip:stdgo._internal.net.netip.Netip_addr.Addr):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        @:recv var _ip:stdgo._internal.net.netip.Netip_addr.Addr = _ip?.__copy__();
        return { _0 : _ip._marshalBinaryWithTrailingBytes((0 : stdgo.GoInt)), _1 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function _marshalBinaryWithTrailingBytes( _ip:stdgo._internal.net.netip.Netip_addr.Addr, _trailingBytes:stdgo.GoInt):stdgo.Slice<stdgo.GoUInt8> {
        @:recv var _ip:stdgo._internal.net.netip.Netip_addr.Addr = _ip?.__copy__();
        var _b:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        {
            final __value__ = _ip._z;
            if (__value__ == (stdgo._internal.net.netip.Netip__z0._z0)) {
                _b = (new stdgo.Slice<stdgo.GoUInt8>((_trailingBytes : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
            } else if (__value__ == (stdgo._internal.net.netip.Netip__z4._z4)) {
                _b = (new stdgo.Slice<stdgo.GoUInt8>(((4 : stdgo.GoInt) + _trailingBytes : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
                stdgo._internal.net.netip.Netip__beputuint32._bePutUint32(_b, (_ip._addr._lo : stdgo.GoUInt32));
            } else {
                var _z = (_ip.zone()?.__copy__() : stdgo.GoString);
                _b = (new stdgo.Slice<stdgo.GoUInt8>((((16 : stdgo.GoInt) + (_z.length) : stdgo.GoInt) + _trailingBytes : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
                stdgo._internal.net.netip.Netip__beputuint64._bePutUint64((_b.__slice__(0, (8 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), _ip._addr._hi);
                stdgo._internal.net.netip.Netip__beputuint64._bePutUint64((_b.__slice__((8 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), _ip._addr._lo);
                (_b.__slice__((16 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>).__copyTo__(_z);
            };
        };
        return _b;
    }
    @:keep
    @:tdfield
    static public function unmarshalText( _ip:stdgo.Ref<stdgo._internal.net.netip.Netip_addr.Addr>, _text:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error {
        @:recv var _ip:stdgo.Ref<stdgo._internal.net.netip.Netip_addr.Addr> = _ip;
        if ((_text.length) == ((0 : stdgo.GoInt))) {
            {
                var __tmp__ = (new stdgo._internal.net.netip.Netip_addr.Addr() : stdgo._internal.net.netip.Netip_addr.Addr);
                var x = (_ip : stdgo._internal.net.netip.Netip_addr.Addr);
                x._addr = __tmp__?._addr;
                x._z = __tmp__?._z;
            };
            return (null : stdgo.Error);
        };
        var _err:stdgo.Error = (null : stdgo.Error);
        {
            var __tmp__ = stdgo._internal.net.netip.Netip_parseaddr.parseAddr((_text : stdgo.GoString)?.__copy__());
            var x = _ip;
            x._addr = @:tmpset0 __tmp__._0?.__copy__()?._addr;
            x._z = @:tmpset0 __tmp__._0?.__copy__()?._z;
            _err = @:tmpset0 __tmp__._1;
        };
        return _err;
    }
    @:keep
    @:tdfield
    static public function marshalText( _ip:stdgo._internal.net.netip.Netip_addr.Addr):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        @:recv var _ip:stdgo._internal.net.netip.Netip_addr.Addr = _ip?.__copy__();
        {
            final __value__ = _ip._z;
            if (__value__ == (stdgo._internal.net.netip.Netip__z0._z0)) {
                return { _0 : ((stdgo.Go.str() : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>), _1 : (null : stdgo.Error) };
            } else if (__value__ == (stdgo._internal.net.netip.Netip__z4._z4)) {
                var _max = (("255.255.255.255" : stdgo.GoString).length : stdgo.GoInt);
                var _b = (new stdgo.Slice<stdgo.GoUInt8>((0 : stdgo.GoInt).toBasic(), _max).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
                return { _0 : _ip._appendTo4(_b), _1 : (null : stdgo.Error) };
            } else {
                var _max = (("ffff:ffff:ffff:ffff:ffff:ffff:ffff:ffff%enp5s0" : stdgo.GoString).length : stdgo.GoInt);
                var _b = (new stdgo.Slice<stdgo.GoUInt8>((0 : stdgo.GoInt).toBasic(), _max).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
                if (_ip.is4In6()) {
                    _b = (_b.__append__(...((("::ffff:" : stdgo.GoString) : stdgo.GoString) : Array<stdgo.GoUInt8>)));
                    _b = _ip.unmap()._appendTo4(_b);
                    {
                        var _z = (_ip.zone()?.__copy__() : stdgo.GoString);
                        if (_z != ((stdgo.Go.str() : stdgo.GoString))) {
                            _b = (_b.__append__((37 : stdgo.GoUInt8)));
                            _b = (_b.__append__(...(_z : Array<stdgo.GoUInt8>)));
                        };
                    };
                    return { _0 : _b, _1 : (null : stdgo.Error) };
                };
                return { _0 : _ip._appendTo6(_b), _1 : (null : stdgo.Error) };
            };
        };
    }
    @:keep
    @:tdfield
    static public function stringExpanded( _ip:stdgo._internal.net.netip.Netip_addr.Addr):stdgo.GoString {
        @:recv var _ip:stdgo._internal.net.netip.Netip_addr.Addr = _ip?.__copy__();
        {
            final __value__ = _ip._z;
            if (__value__ == (stdgo._internal.net.netip.Netip__z0._z0) || __value__ == (stdgo._internal.net.netip.Netip__z4._z4)) {
                return (_ip.string() : stdgo.GoString)?.__copy__();
            };
        };
        {};
        var _ret = (new stdgo.Slice<stdgo.GoUInt8>((0 : stdgo.GoInt).toBasic(), (39 : stdgo.GoInt)).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        {
            var _i = ((0 : stdgo.GoUInt8) : stdgo.GoUInt8);
            while ((_i < (8 : stdgo.GoUInt8) : Bool)) {
                if ((_i > (0 : stdgo.GoUInt8) : Bool)) {
                    _ret = (_ret.__append__((58 : stdgo.GoUInt8)));
                };
_ret = stdgo._internal.net.netip.Netip__appendhexpad._appendHexPad(_ret, _ip._v6u16(_i));
                _i++;
            };
        };
        if (_ip._z != (stdgo._internal.net.netip.Netip__z6noz._z6noz)) {
            _ret = (_ret.__append__((37 : stdgo.GoUInt8)));
            _ret = (_ret.__append__(...(_ip.zone() : Array<stdgo.GoUInt8>)));
        };
        return (_ret : stdgo.GoString)?.__copy__();
    }
    @:keep
    @:tdfield
    static public function _appendTo6( _ip:stdgo._internal.net.netip.Netip_addr.Addr, _ret:stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo.GoUInt8> {
        @:recv var _ip:stdgo._internal.net.netip.Netip_addr.Addr = _ip?.__copy__();
        var __0 = ((255 : stdgo.GoUInt8) : stdgo.GoUInt8), __1 = ((255 : stdgo.GoUInt8) : stdgo.GoUInt8);
var _zeroEnd = __1, _zeroStart = __0;
        {
            var _i = ((0 : stdgo.GoUInt8) : stdgo.GoUInt8);
            while ((_i < (8 : stdgo.GoUInt8) : Bool)) {
                var _j = (_i : stdgo.GoUInt8);
while (((_j < (8 : stdgo.GoUInt8) : Bool) && (_ip._v6u16(_j) == (0 : stdgo.GoUInt16)) : Bool)) {
                    _j++;
                };
{
                    var _l = (_j - _i : stdgo.GoUInt8);
                    if (((_l >= (2 : stdgo.GoUInt8) : Bool) && (_l > (_zeroEnd - _zeroStart : stdgo.GoUInt8) : Bool) : Bool)) {
                        {
                            final __tmp__0 = _i;
                            final __tmp__1 = _j;
                            _zeroStart = __tmp__0;
                            _zeroEnd = __tmp__1;
                        };
                    };
                };
                _i++;
            };
        };
        {
            var _i = ((0 : stdgo.GoUInt8) : stdgo.GoUInt8);
            while ((_i < (8 : stdgo.GoUInt8) : Bool)) {
                if (_i == (_zeroStart)) {
                    _ret = (_ret.__append__((58 : stdgo.GoUInt8), (58 : stdgo.GoUInt8)));
                    _i = _zeroEnd;
                    if ((_i >= (8 : stdgo.GoUInt8) : Bool)) {
                        break;
                    };
                } else if ((_i > (0 : stdgo.GoUInt8) : Bool)) {
                    _ret = (_ret.__append__((58 : stdgo.GoUInt8)));
                };
_ret = stdgo._internal.net.netip.Netip__appendhex._appendHex(_ret, _ip._v6u16(_i));
                _i++;
            };
        };
        if (_ip._z != (stdgo._internal.net.netip.Netip__z6noz._z6noz)) {
            _ret = (_ret.__append__((37 : stdgo.GoUInt8)));
            _ret = (_ret.__append__(...(_ip.zone() : Array<stdgo.GoUInt8>)));
        };
        return _ret;
    }
    @:keep
    @:tdfield
    static public function _string6( _ip:stdgo._internal.net.netip.Netip_addr.Addr):stdgo.GoString {
        @:recv var _ip:stdgo._internal.net.netip.Netip_addr.Addr = _ip?.__copy__();
        {};
        var _ret = (new stdgo.Slice<stdgo.GoUInt8>((0 : stdgo.GoInt).toBasic(), (46 : stdgo.GoInt)).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        _ret = _ip._appendTo6(_ret);
        return (_ret : stdgo.GoString)?.__copy__();
    }
    @:keep
    @:tdfield
    static public function _appendTo4( _ip:stdgo._internal.net.netip.Netip_addr.Addr, _ret:stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo.GoUInt8> {
        @:recv var _ip:stdgo._internal.net.netip.Netip_addr.Addr = _ip?.__copy__();
        _ret = stdgo._internal.net.netip.Netip__appenddecimal._appendDecimal(_ret, _ip._v4((0 : stdgo.GoUInt8)));
        _ret = (_ret.__append__((46 : stdgo.GoUInt8)));
        _ret = stdgo._internal.net.netip.Netip__appenddecimal._appendDecimal(_ret, _ip._v4((1 : stdgo.GoUInt8)));
        _ret = (_ret.__append__((46 : stdgo.GoUInt8)));
        _ret = stdgo._internal.net.netip.Netip__appenddecimal._appendDecimal(_ret, _ip._v4((2 : stdgo.GoUInt8)));
        _ret = (_ret.__append__((46 : stdgo.GoUInt8)));
        _ret = stdgo._internal.net.netip.Netip__appenddecimal._appendDecimal(_ret, _ip._v4((3 : stdgo.GoUInt8)));
        return _ret;
    }
    @:keep
    @:tdfield
    static public function _string4( _ip:stdgo._internal.net.netip.Netip_addr.Addr):stdgo.GoString {
        @:recv var _ip:stdgo._internal.net.netip.Netip_addr.Addr = _ip?.__copy__();
        {};
        var _ret = (new stdgo.Slice<stdgo.GoUInt8>((0 : stdgo.GoInt).toBasic(), (15 : stdgo.GoInt)).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        _ret = _ip._appendTo4(_ret);
        return (_ret : stdgo.GoString)?.__copy__();
    }
    @:keep
    @:tdfield
    static public function appendTo( _ip:stdgo._internal.net.netip.Netip_addr.Addr, _b:stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo.GoUInt8> {
        @:recv var _ip:stdgo._internal.net.netip.Netip_addr.Addr = _ip?.__copy__();
        {
            final __value__ = _ip._z;
            if (__value__ == (stdgo._internal.net.netip.Netip__z0._z0)) {
                return _b;
            } else if (__value__ == (stdgo._internal.net.netip.Netip__z4._z4)) {
                return _ip._appendTo4(_b);
            } else {
                if (_ip.is4In6()) {
                    _b = (_b.__append__(...((("::ffff:" : stdgo.GoString) : stdgo.GoString) : Array<stdgo.GoUInt8>)));
                    _b = _ip.unmap()._appendTo4(_b);
                    {
                        var _z = (_ip.zone()?.__copy__() : stdgo.GoString);
                        if (_z != ((stdgo.Go.str() : stdgo.GoString))) {
                            _b = (_b.__append__((37 : stdgo.GoUInt8)));
                            _b = (_b.__append__(...(_z : Array<stdgo.GoUInt8>)));
                        };
                    };
                    return _b;
                };
                return _ip._appendTo6(_b);
            };
        };
    }
    @:keep
    @:tdfield
    static public function string( _ip:stdgo._internal.net.netip.Netip_addr.Addr):stdgo.GoString {
        @:recv var _ip:stdgo._internal.net.netip.Netip_addr.Addr = _ip?.__copy__();
        {
            final __value__ = _ip._z;
            if (__value__ == (stdgo._internal.net.netip.Netip__z0._z0)) {
                return ("invalid IP" : stdgo.GoString);
            } else if (__value__ == (stdgo._internal.net.netip.Netip__z4._z4)) {
                return _ip._string4()?.__copy__();
            } else {
                if (_ip.is4In6()) {
                    {
                        var _z = (_ip.zone()?.__copy__() : stdgo.GoString);
                        if (_z != ((stdgo.Go.str() : stdgo.GoString))) {
                            return (((("::ffff:" : stdgo.GoString) + _ip.unmap()._string4()?.__copy__() : stdgo.GoString) + ("%" : stdgo.GoString)?.__copy__() : stdgo.GoString) + _z?.__copy__() : stdgo.GoString)?.__copy__();
                        } else {
                            return (("::ffff:" : stdgo.GoString) + _ip.unmap()._string4()?.__copy__() : stdgo.GoString)?.__copy__();
                        };
                    };
                };
                return _ip._string6()?.__copy__();
            };
        };
    }
    @:keep
    @:tdfield
    static public function prev( _ip:stdgo._internal.net.netip.Netip_addr.Addr):stdgo._internal.net.netip.Netip_addr.Addr {
        @:recv var _ip:stdgo._internal.net.netip.Netip_addr.Addr = _ip?.__copy__();
        if (_ip.is4()) {
            if ((_ip._addr._lo : stdgo.GoUInt32) == ((0u32 : stdgo.GoUInt32))) {
                return (new stdgo._internal.net.netip.Netip_addr.Addr() : stdgo._internal.net.netip.Netip_addr.Addr);
            };
        } else if (_ip._addr._isZero()) {
            return (new stdgo._internal.net.netip.Netip_addr.Addr() : stdgo._internal.net.netip.Netip_addr.Addr);
        };
        _ip._addr = _ip._addr._subOne()?.__copy__();
        return _ip?.__copy__();
    }
    @:keep
    @:tdfield
    static public function next( _ip:stdgo._internal.net.netip.Netip_addr.Addr):stdgo._internal.net.netip.Netip_addr.Addr {
        @:recv var _ip:stdgo._internal.net.netip.Netip_addr.Addr = _ip?.__copy__();
        _ip._addr = _ip._addr._addOne()?.__copy__();
        if (_ip.is4()) {
            if ((_ip._addr._lo : stdgo.GoUInt32) == ((0u32 : stdgo.GoUInt32))) {
                return (new stdgo._internal.net.netip.Netip_addr.Addr() : stdgo._internal.net.netip.Netip_addr.Addr);
            };
        } else {
            if (_ip._addr._isZero()) {
                return (new stdgo._internal.net.netip.Netip_addr.Addr() : stdgo._internal.net.netip.Netip_addr.Addr);
            };
        };
        return _ip?.__copy__();
    }
    @:keep
    @:tdfield
    static public function asSlice( _ip:stdgo._internal.net.netip.Netip_addr.Addr):stdgo.Slice<stdgo.GoUInt8> {
        @:recv var _ip:stdgo._internal.net.netip.Netip_addr.Addr = _ip?.__copy__();
        {
            final __value__ = _ip._z;
            if (__value__ == (stdgo._internal.net.netip.Netip__z0._z0)) {
                return (null : stdgo.Slice<stdgo.GoUInt8>);
            } else if (__value__ == (stdgo._internal.net.netip.Netip__z4._z4)) {
                var _ret:stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(4, 4).__setNumber32__();
                stdgo._internal.net.netip.Netip__beputuint32._bePutUint32((_ret.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>), (_ip._addr._lo : stdgo.GoUInt32));
                return (_ret.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>);
            } else {
                var _ret:stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(16, 16).__setNumber32__();
                stdgo._internal.net.netip.Netip__beputuint64._bePutUint64((_ret.__slice__(0, (8 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), _ip._addr._hi);
                stdgo._internal.net.netip.Netip__beputuint64._bePutUint64((_ret.__slice__((8 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), _ip._addr._lo);
                return (_ret.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>);
            };
        };
    }
    @:keep
    @:tdfield
    static public function as4( _ip:stdgo._internal.net.netip.Netip_addr.Addr):stdgo.GoArray<stdgo.GoUInt8> {
        @:recv var _ip:stdgo._internal.net.netip.Netip_addr.Addr = _ip?.__copy__();
        var _a4 = new stdgo.GoArray<stdgo.GoUInt8>(4, 4).__setNumber32__();
        if (((_ip._z == stdgo._internal.net.netip.Netip__z4._z4) || _ip.is4In6() : Bool)) {
            stdgo._internal.net.netip.Netip__beputuint32._bePutUint32((_a4.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>), (_ip._addr._lo : stdgo.GoUInt32));
            return _a4 = _a4?.__copy__();
        };
        if (_ip._z == (stdgo._internal.net.netip.Netip__z0._z0)) {
            throw stdgo.Go.toInterface(("As4 called on IP zero value" : stdgo.GoString));
        };
        throw stdgo.Go.toInterface(("As4 called on IPv6 address" : stdgo.GoString));
    }
    @:keep
    @:tdfield
    static public function as16( _ip:stdgo._internal.net.netip.Netip_addr.Addr):stdgo.GoArray<stdgo.GoUInt8> {
        @:recv var _ip:stdgo._internal.net.netip.Netip_addr.Addr = _ip?.__copy__();
        var _a16 = new stdgo.GoArray<stdgo.GoUInt8>(16, 16).__setNumber32__();
        stdgo._internal.net.netip.Netip__beputuint64._bePutUint64((_a16.__slice__(0, (8 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), _ip._addr._hi);
        stdgo._internal.net.netip.Netip__beputuint64._bePutUint64((_a16.__slice__((8 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), _ip._addr._lo);
        return _a16 = _a16?.__copy__();
    }
    @:keep
    @:tdfield
    static public function prefix( _ip:stdgo._internal.net.netip.Netip_addr.Addr, _b:stdgo.GoInt):{ var _0 : stdgo._internal.net.netip.Netip_prefix.Prefix; var _1 : stdgo.Error; } {
        @:recv var _ip:stdgo._internal.net.netip.Netip_addr.Addr = _ip?.__copy__();
        if ((_b < (0 : stdgo.GoInt) : Bool)) {
            return { _0 : (new stdgo._internal.net.netip.Netip_prefix.Prefix() : stdgo._internal.net.netip.Netip_prefix.Prefix), _1 : stdgo._internal.errors.Errors_new_.new_(("negative Prefix bits" : stdgo.GoString)) };
        };
        var _effectiveBits = (_b : stdgo.GoInt);
        {
            final __value__ = _ip._z;
            if (__value__ == (stdgo._internal.net.netip.Netip__z0._z0)) {
                return { _0 : (new stdgo._internal.net.netip.Netip_prefix.Prefix() : stdgo._internal.net.netip.Netip_prefix.Prefix), _1 : (null : stdgo.Error) };
            } else if (__value__ == (stdgo._internal.net.netip.Netip__z4._z4)) {
                if ((_b > (32 : stdgo.GoInt) : Bool)) {
                    return { _0 : (new stdgo._internal.net.netip.Netip_prefix.Prefix() : stdgo._internal.net.netip.Netip_prefix.Prefix), _1 : stdgo._internal.errors.Errors_new_.new_(((("prefix length " : stdgo.GoString) + stdgo._internal.internal.itoa.Itoa_itoa.itoa(_b)?.__copy__() : stdgo.GoString) + (" too large for IPv4" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__()) };
                };
                _effectiveBits = (_effectiveBits + ((96 : stdgo.GoInt)) : stdgo.GoInt);
            } else {
                if ((_b > (128 : stdgo.GoInt) : Bool)) {
                    return { _0 : (new stdgo._internal.net.netip.Netip_prefix.Prefix() : stdgo._internal.net.netip.Netip_prefix.Prefix), _1 : stdgo._internal.errors.Errors_new_.new_(((("prefix length " : stdgo.GoString) + stdgo._internal.internal.itoa.Itoa_itoa.itoa(_b)?.__copy__() : stdgo.GoString) + (" too large for IPv6" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__()) };
                };
            };
        };
        _ip._addr = _ip._addr._and(stdgo._internal.net.netip.Netip__mask6._mask6(_effectiveBits)?.__copy__())?.__copy__();
        return { _0 : stdgo._internal.net.netip.Netip_prefixfrom.prefixFrom(_ip?.__copy__(), _b)?.__copy__(), _1 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function isUnspecified( _ip:stdgo._internal.net.netip.Netip_addr.Addr):Bool {
        @:recv var _ip:stdgo._internal.net.netip.Netip_addr.Addr = _ip?.__copy__();
        return ((stdgo.Go.toInterface(_ip) == stdgo.Go.toInterface(stdgo._internal.net.netip.Netip_ipv4unspecified.iPv4Unspecified())) || (stdgo.Go.toInterface(_ip) == stdgo.Go.toInterface(stdgo._internal.net.netip.Netip_ipv6unspecified.iPv6Unspecified())) : Bool);
    }
    @:keep
    @:tdfield
    static public function isPrivate( _ip:stdgo._internal.net.netip.Netip_addr.Addr):Bool {
        @:recv var _ip:stdgo._internal.net.netip.Netip_addr.Addr = _ip?.__copy__();
        if (_ip.is4()) {
            return ((_ip._v4((0 : stdgo.GoUInt8)) == ((10 : stdgo.GoUInt8)) || (((_ip._v4((0 : stdgo.GoUInt8)) == (172 : stdgo.GoUInt8)) && ((_ip._v4((1 : stdgo.GoUInt8)) & (240 : stdgo.GoUInt8) : stdgo.GoUInt8) == (16 : stdgo.GoUInt8)) : Bool)) : Bool) || (((_ip._v4((0 : stdgo.GoUInt8)) == (192 : stdgo.GoUInt8)) && (_ip._v4((1 : stdgo.GoUInt8)) == (168 : stdgo.GoUInt8)) : Bool)) : Bool);
        };
        if (_ip.is6()) {
            return (_ip._v6((0 : stdgo.GoUInt8)) & (254 : stdgo.GoUInt8) : stdgo.GoUInt8) == ((252 : stdgo.GoUInt8));
        };
        return false;
    }
    @:keep
    @:tdfield
    static public function isGlobalUnicast( _ip:stdgo._internal.net.netip.Netip_addr.Addr):Bool {
        @:recv var _ip:stdgo._internal.net.netip.Netip_addr.Addr = _ip?.__copy__();
        if (_ip._z == (stdgo._internal.net.netip.Netip__z0._z0)) {
            return false;
        };
        if ((_ip.is4() && (((stdgo.Go.toInterface(_ip) == stdgo.Go.toInterface(stdgo._internal.net.netip.Netip_ipv4unspecified.iPv4Unspecified())) || (stdgo.Go.toInterface(_ip) == stdgo.Go.toInterface(stdgo._internal.net.netip.Netip_addrfrom4.addrFrom4((new stdgo.GoArray<stdgo.GoUInt8>(4, 4, ...[(255 : stdgo.GoUInt8), (255 : stdgo.GoUInt8), (255 : stdgo.GoUInt8), (255 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.GoArray<stdgo.GoUInt8>)?.__copy__()))) : Bool)) : Bool)) {
            return false;
        };
        return (((stdgo.Go.toInterface(_ip) != stdgo.Go.toInterface(stdgo._internal.net.netip.Netip_ipv6unspecified.iPv6Unspecified()) && !_ip.isLoopback() : Bool) && !_ip.isMulticast() : Bool) && !_ip.isLinkLocalUnicast() : Bool);
    }
    @:keep
    @:tdfield
    static public function isLinkLocalMulticast( _ip:stdgo._internal.net.netip.Netip_addr.Addr):Bool {
        @:recv var _ip:stdgo._internal.net.netip.Netip_addr.Addr = _ip?.__copy__();
        if (_ip.is4()) {
            return ((_ip._v4((0 : stdgo.GoUInt8)) == ((224 : stdgo.GoUInt8)) && _ip._v4((1 : stdgo.GoUInt8)) == ((0 : stdgo.GoUInt8)) : Bool) && (_ip._v4((2 : stdgo.GoUInt8)) == (0 : stdgo.GoUInt8)) : Bool);
        };
        if (_ip.is6()) {
            return (_ip._v6u16((0 : stdgo.GoUInt8)) & (65295 : stdgo.GoUInt16) : stdgo.GoUInt16) == ((65282 : stdgo.GoUInt16));
        };
        return false;
    }
    @:keep
    @:tdfield
    static public function isInterfaceLocalMulticast( _ip:stdgo._internal.net.netip.Netip_addr.Addr):Bool {
        @:recv var _ip:stdgo._internal.net.netip.Netip_addr.Addr = _ip?.__copy__();
        if (_ip.is6()) {
            return (_ip._v6u16((0 : stdgo.GoUInt8)) & (65295 : stdgo.GoUInt16) : stdgo.GoUInt16) == ((65281 : stdgo.GoUInt16));
        };
        return false;
    }
    @:keep
    @:tdfield
    static public function isMulticast( _ip:stdgo._internal.net.netip.Netip_addr.Addr):Bool {
        @:recv var _ip:stdgo._internal.net.netip.Netip_addr.Addr = _ip?.__copy__();
        if (_ip.is4()) {
            return (_ip._v4((0 : stdgo.GoUInt8)) & (240 : stdgo.GoUInt8) : stdgo.GoUInt8) == ((224 : stdgo.GoUInt8));
        };
        if (_ip.is6()) {
            return (_ip._addr._hi >> (56i64 : stdgo.GoUInt64) : stdgo.GoUInt64) == ((255i64 : stdgo.GoUInt64));
        };
        return false;
    }
    @:keep
    @:tdfield
    static public function isLoopback( _ip:stdgo._internal.net.netip.Netip_addr.Addr):Bool {
        @:recv var _ip:stdgo._internal.net.netip.Netip_addr.Addr = _ip?.__copy__();
        if (_ip.is4()) {
            return _ip._v4((0 : stdgo.GoUInt8)) == ((127 : stdgo.GoUInt8));
        };
        if (_ip.is6()) {
            return ((_ip._addr._hi == (0i64 : stdgo.GoUInt64)) && (_ip._addr._lo == (1i64 : stdgo.GoUInt64)) : Bool);
        };
        return false;
    }
    @:keep
    @:tdfield
    static public function isLinkLocalUnicast( _ip:stdgo._internal.net.netip.Netip_addr.Addr):Bool {
        @:recv var _ip:stdgo._internal.net.netip.Netip_addr.Addr = _ip?.__copy__();
        if (_ip.is4()) {
            return ((_ip._v4((0 : stdgo.GoUInt8)) == (169 : stdgo.GoUInt8)) && (_ip._v4((1 : stdgo.GoUInt8)) == (254 : stdgo.GoUInt8)) : Bool);
        };
        if (_ip.is6()) {
            return (_ip._v6u16((0 : stdgo.GoUInt8)) & (65472 : stdgo.GoUInt16) : stdgo.GoUInt16) == ((65152 : stdgo.GoUInt16));
        };
        return false;
    }
    @:keep
    @:tdfield
    static public function _hasZone( _ip:stdgo._internal.net.netip.Netip_addr.Addr):Bool {
        @:recv var _ip:stdgo._internal.net.netip.Netip_addr.Addr = _ip?.__copy__();
        return ((_ip._z != (stdgo._internal.net.netip.Netip__z0._z0) && _ip._z != (stdgo._internal.net.netip.Netip__z4._z4) : Bool) && (_ip._z != stdgo._internal.net.netip.Netip__z6noz._z6noz) : Bool);
    }
    @:keep
    @:tdfield
    static public function _withoutZone( _ip:stdgo._internal.net.netip.Netip_addr.Addr):stdgo._internal.net.netip.Netip_addr.Addr {
        @:recv var _ip:stdgo._internal.net.netip.Netip_addr.Addr = _ip?.__copy__();
        if (!_ip.is6()) {
            return _ip?.__copy__();
        };
        _ip._z = stdgo._internal.net.netip.Netip__z6noz._z6noz;
        return _ip?.__copy__();
    }
    @:keep
    @:tdfield
    static public function withZone( _ip:stdgo._internal.net.netip.Netip_addr.Addr, _zone:stdgo.GoString):stdgo._internal.net.netip.Netip_addr.Addr {
        @:recv var _ip:stdgo._internal.net.netip.Netip_addr.Addr = _ip?.__copy__();
        if (!_ip.is6()) {
            return _ip?.__copy__();
        };
        if (_zone == ((stdgo.Go.str() : stdgo.GoString))) {
            _ip._z = stdgo._internal.net.netip.Netip__z6noz._z6noz;
            return _ip?.__copy__();
        };
        _ip._z = stdgo._internal.internal.intern.Intern_getbystring.getByString(_zone?.__copy__());
        return _ip?.__copy__();
    }
    @:keep
    @:tdfield
    static public function unmap( _ip:stdgo._internal.net.netip.Netip_addr.Addr):stdgo._internal.net.netip.Netip_addr.Addr {
        @:recv var _ip:stdgo._internal.net.netip.Netip_addr.Addr = _ip?.__copy__();
        if (_ip.is4In6()) {
            _ip._z = stdgo._internal.net.netip.Netip__z4._z4;
        };
        return _ip?.__copy__();
    }
    @:keep
    @:tdfield
    static public function is6( _ip:stdgo._internal.net.netip.Netip_addr.Addr):Bool {
        @:recv var _ip:stdgo._internal.net.netip.Netip_addr.Addr = _ip?.__copy__();
        return ((_ip._z != stdgo._internal.net.netip.Netip__z0._z0) && (_ip._z != stdgo._internal.net.netip.Netip__z4._z4) : Bool);
    }
    @:keep
    @:tdfield
    static public function is4In6( _ip:stdgo._internal.net.netip.Netip_addr.Addr):Bool {
        @:recv var _ip:stdgo._internal.net.netip.Netip_addr.Addr = _ip?.__copy__();
        return ((_ip.is6() && _ip._addr._hi == ((0i64 : stdgo.GoUInt64)) : Bool) && ((_ip._addr._lo >> (32i64 : stdgo.GoUInt64) : stdgo.GoUInt64) == (65535i64 : stdgo.GoUInt64)) : Bool);
    }
    @:keep
    @:tdfield
    static public function is4( _ip:stdgo._internal.net.netip.Netip_addr.Addr):Bool {
        @:recv var _ip:stdgo._internal.net.netip.Netip_addr.Addr = _ip?.__copy__();
        return _ip._z == (stdgo._internal.net.netip.Netip__z4._z4);
    }
    @:keep
    @:tdfield
    static public function less( _ip:stdgo._internal.net.netip.Netip_addr.Addr, _ip2:stdgo._internal.net.netip.Netip_addr.Addr):Bool {
        @:recv var _ip:stdgo._internal.net.netip.Netip_addr.Addr = _ip?.__copy__();
        return _ip.compare(_ip2?.__copy__()) == ((-1 : stdgo.GoInt));
    }
    @:keep
    @:tdfield
    static public function compare( _ip:stdgo._internal.net.netip.Netip_addr.Addr, _ip2:stdgo._internal.net.netip.Netip_addr.Addr):stdgo.GoInt {
        @:recv var _ip:stdgo._internal.net.netip.Netip_addr.Addr = _ip?.__copy__();
        var __0 = (_ip.bitLen() : stdgo.GoInt), __1 = (_ip2.bitLen() : stdgo.GoInt);
var _f2 = __1, _f1 = __0;
        if ((_f1 < _f2 : Bool)) {
            return (-1 : stdgo.GoInt);
        };
        if ((_f1 > _f2 : Bool)) {
            return (1 : stdgo.GoInt);
        };
        var __0 = (_ip._addr._hi : stdgo.GoUInt64), __1 = (_ip2._addr._hi : stdgo.GoUInt64);
var _hi2 = __1, _hi1 = __0;
        if ((_hi1 < _hi2 : Bool)) {
            return (-1 : stdgo.GoInt);
        };
        if ((_hi1 > _hi2 : Bool)) {
            return (1 : stdgo.GoInt);
        };
        var __0 = (_ip._addr._lo : stdgo.GoUInt64), __1 = (_ip2._addr._lo : stdgo.GoUInt64);
var _lo2 = __1, _lo1 = __0;
        if ((_lo1 < _lo2 : Bool)) {
            return (-1 : stdgo.GoInt);
        };
        if ((_lo1 > _lo2 : Bool)) {
            return (1 : stdgo.GoInt);
        };
        if (_ip.is6()) {
            var __0 = (_ip.zone()?.__copy__() : stdgo.GoString), __1 = (_ip2.zone()?.__copy__() : stdgo.GoString);
var _zb = __1, _za = __0;
            if ((_za < _zb : Bool)) {
                return (-1 : stdgo.GoInt);
            };
            if ((_za > _zb : Bool)) {
                return (1 : stdgo.GoInt);
            };
        };
        return (0 : stdgo.GoInt);
    }
    @:keep
    @:tdfield
    static public function zone( _ip:stdgo._internal.net.netip.Netip_addr.Addr):stdgo.GoString {
        @:recv var _ip:stdgo._internal.net.netip.Netip_addr.Addr = _ip?.__copy__();
        if ((_ip._z == null || (_ip._z : Dynamic).__nil__)) {
            return (stdgo.Go.str() : stdgo.GoString)?.__copy__();
        };
        var __tmp__ = try {
            { _0 : (stdgo.Go.typeAssert((@:check2r _ip._z.get() : stdgo.GoString)) : stdgo.GoString), _1 : true };
        } catch(_) {
            { _0 : ("" : stdgo.GoString), _1 : false };
        }, _zone = __tmp__._0, __26 = __tmp__._1;
        return _zone?.__copy__();
    }
    @:keep
    @:tdfield
    static public function bitLen( _ip:stdgo._internal.net.netip.Netip_addr.Addr):stdgo.GoInt {
        @:recv var _ip:stdgo._internal.net.netip.Netip_addr.Addr = _ip?.__copy__();
        {
            final __value__ = _ip._z;
            if (__value__ == (stdgo._internal.net.netip.Netip__z0._z0)) {
                return (0 : stdgo.GoInt);
            } else if (__value__ == (stdgo._internal.net.netip.Netip__z4._z4)) {
                return (32 : stdgo.GoInt);
            };
        };
        return (128 : stdgo.GoInt);
    }
    @:keep
    @:tdfield
    static public function isValid( _ip:stdgo._internal.net.netip.Netip_addr.Addr):Bool {
        @:recv var _ip:stdgo._internal.net.netip.Netip_addr.Addr = _ip?.__copy__();
        return _ip._z != (stdgo._internal.net.netip.Netip__z0._z0);
    }
    @:keep
    @:tdfield
    static public function _isZero( _ip:stdgo._internal.net.netip.Netip_addr.Addr):Bool {
        @:recv var _ip:stdgo._internal.net.netip.Netip_addr.Addr = _ip?.__copy__();
        return _ip._z == (stdgo._internal.net.netip.Netip__z0._z0);
    }
    @:keep
    @:tdfield
    static public function _v6u16( _ip:stdgo._internal.net.netip.Netip_addr.Addr, _i:stdgo.GoUInt8):stdgo.GoUInt16 {
        @:recv var _ip:stdgo._internal.net.netip.Netip_addr.Addr = _ip?.__copy__();
        return (((@:check2 _ip._addr._halves()[((((_i / (4 : stdgo.GoUInt8) : stdgo.GoUInt8)) % (2 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoInt)]).value >> (((((3 : stdgo.GoUInt8) - (_i % (4 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt8)) * (16 : stdgo.GoUInt8) : stdgo.GoUInt8)) : stdgo.GoUInt64) : stdgo.GoUInt16);
    }
    @:keep
    @:tdfield
    static public function _v6( _ip:stdgo._internal.net.netip.Netip_addr.Addr, _i:stdgo.GoUInt8):stdgo.GoUInt8 {
        @:recv var _ip:stdgo._internal.net.netip.Netip_addr.Addr = _ip?.__copy__();
        return (((@:check2 _ip._addr._halves()[((((_i / (8 : stdgo.GoUInt8) : stdgo.GoUInt8)) % (2 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoInt)]).value >> (((((7 : stdgo.GoUInt8) - (_i % (8 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt8)) * (8 : stdgo.GoUInt8) : stdgo.GoUInt8)) : stdgo.GoUInt64) : stdgo.GoUInt8);
    }
    @:keep
    @:tdfield
    static public function _v4( _ip:stdgo._internal.net.netip.Netip_addr.Addr, _i:stdgo.GoUInt8):stdgo.GoUInt8 {
        @:recv var _ip:stdgo._internal.net.netip.Netip_addr.Addr = _ip?.__copy__();
        return ((_ip._addr._lo >> (((((3 : stdgo.GoUInt8) - _i : stdgo.GoUInt8)) * (8 : stdgo.GoUInt8) : stdgo.GoUInt8)) : stdgo.GoUInt64) : stdgo.GoUInt8);
    }
}
