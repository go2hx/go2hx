package stdgo._internal.net.netip;
@:keep @:allow(stdgo._internal.net.netip.Netip.AddrPort_asInterface) class AddrPort_static_extension {
    @:keep
    static public function unmarshalBinary( _p:stdgo.Ref<stdgo._internal.net.netip.Netip_AddrPort.AddrPort>, _b:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error {
        @:recv var _p:stdgo.Ref<stdgo._internal.net.netip.Netip_AddrPort.AddrPort> = _p;
        if (((_b.length) < (2 : stdgo.GoInt) : Bool)) {
            return stdgo._internal.errors.Errors_new_.new_(("unexpected slice size" : stdgo.GoString));
        };
        var _addr:stdgo._internal.net.netip.Netip_Addr.Addr = ({} : stdgo._internal.net.netip.Netip_Addr.Addr);
        var _err = (_addr.unmarshalBinary((_b.__slice__(0, ((_b.length) - (2 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.Error);
        if (_err != null) {
            return _err;
        };
        {
            var __tmp__ = stdgo._internal.net.netip.Netip_addrPortFrom.addrPortFrom(_addr?.__copy__(), stdgo._internal.net.netip.Netip__leUint16._leUint16((_b.__slice__(((_b.length) - (2 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)))?.__copy__();
            var x = (_p : stdgo._internal.net.netip.Netip_AddrPort.AddrPort);
            x._ip = __tmp__._ip;
            x._port = __tmp__._port;
        };
        return (null : stdgo.Error);
    }
    @:keep
    static public function marshalBinary( _p:stdgo._internal.net.netip.Netip_AddrPort.AddrPort):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        @:recv var _p:stdgo._internal.net.netip.Netip_AddrPort.AddrPort = _p?.__copy__();
        var _b = _p.addr()._marshalBinaryWithTrailingBytes((2 : stdgo.GoInt));
        stdgo._internal.net.netip.Netip__lePutUint16._lePutUint16((_b.__slice__(((_b.length) - (2 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), _p.port());
        return { _0 : _b, _1 : (null : stdgo.Error) };
    }
    @:keep
    static public function unmarshalText( _p:stdgo.Ref<stdgo._internal.net.netip.Netip_AddrPort.AddrPort>, _text:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error {
        @:recv var _p:stdgo.Ref<stdgo._internal.net.netip.Netip_AddrPort.AddrPort> = _p;
        if ((_text.length) == ((0 : stdgo.GoInt))) {
            {
                var __tmp__ = (new stdgo._internal.net.netip.Netip_AddrPort.AddrPort() : stdgo._internal.net.netip.Netip_AddrPort.AddrPort);
                var x = (_p : stdgo._internal.net.netip.Netip_AddrPort.AddrPort);
                x._ip = __tmp__._ip;
                x._port = __tmp__._port;
            };
            return (null : stdgo.Error);
        };
        var _err:stdgo.Error = (null : stdgo.Error);
        {
            var __tmp__ = stdgo._internal.net.netip.Netip_parseAddrPort.parseAddrPort((_text : stdgo.GoString)?.__copy__());
            var x = _p;
            x._ip = __tmp__._0?.__copy__()._ip;
            x._port = __tmp__._0?.__copy__()._port;
            _err = __tmp__._1;
        };
        return _err;
    }
    @:keep
    static public function marshalText( _p:stdgo._internal.net.netip.Netip_AddrPort.AddrPort):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        @:recv var _p:stdgo._internal.net.netip.Netip_AddrPort.AddrPort = _p?.__copy__();
        var _max:stdgo.GoInt = (0 : stdgo.GoInt);
        {
            final __value__ = _p._ip._z;
            if (__value__ == (stdgo._internal.net.netip.Netip__z0._z0)) {} else if (__value__ == (stdgo._internal.net.netip.Netip__z4._z4)) {
                _max = (("255.255.255.255:65535" : stdgo.GoString).length);
            } else {
                _max = (("[ffff:ffff:ffff:ffff:ffff:ffff:ffff:ffff%enp5s0]:65535" : stdgo.GoString).length);
            };
        };
        var _b = (new stdgo.Slice<stdgo.GoUInt8>((0 : stdgo.GoInt).toBasic(), _max).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        _b = _p.appendTo(_b);
        return { _0 : _b, _1 : (null : stdgo.Error) };
    }
    @:keep
    static public function appendTo( _p:stdgo._internal.net.netip.Netip_AddrPort.AddrPort, _b:stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo.GoUInt8> {
        @:recv var _p:stdgo._internal.net.netip.Netip_AddrPort.AddrPort = _p?.__copy__();
        {
            final __value__ = _p._ip._z;
            if (__value__ == (stdgo._internal.net.netip.Netip__z0._z0)) {
                return _b;
            } else if (__value__ == (stdgo._internal.net.netip.Netip__z4._z4)) {
                _b = _p._ip._appendTo4(_b);
            } else {
                if (_p._ip.is4In6()) {
                    _b = (_b.__append__(...(("[::ffff:" : stdgo.GoString) : Array<stdgo.GoUInt8>)));
                    _b = _p._ip.unmap()._appendTo4(_b);
                    {
                        var _z = (_p._ip.zone()?.__copy__() : stdgo.GoString);
                        if (_z != (stdgo.Go.str())) {
                            _b = (_b.__append__((37 : stdgo.GoUInt8)));
                            _b = (_b.__append__(...(_z : Array<stdgo.GoUInt8>)));
                        };
                    };
                } else {
                    _b = (_b.__append__((91 : stdgo.GoUInt8)));
                    _b = _p._ip._appendTo6(_b);
                };
                _b = (_b.__append__((93 : stdgo.GoUInt8)));
            };
        };
        _b = (_b.__append__((58 : stdgo.GoUInt8)));
        _b = stdgo._internal.strconv.Strconv_appendUint.appendUint(_b, (_p._port : stdgo.GoUInt64), (10 : stdgo.GoInt));
        return _b;
    }
    @:keep
    static public function string( _p:stdgo._internal.net.netip.Netip_AddrPort.AddrPort):stdgo.GoString {
        @:recv var _p:stdgo._internal.net.netip.Netip_AddrPort.AddrPort = _p?.__copy__();
        {
            final __value__ = _p._ip._z;
            if (__value__ == (stdgo._internal.net.netip.Netip__z0._z0)) {
                return ("invalid AddrPort" : stdgo.GoString);
            } else if (__value__ == (stdgo._internal.net.netip.Netip__z4._z4)) {
                var _a = _p._ip.as4()?.__copy__();
                var _buf = (new stdgo.Slice<stdgo.GoUInt8>((0 : stdgo.GoInt).toBasic(), (21 : stdgo.GoInt)).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
                for (_i => _ in _a) {
                    _buf = stdgo._internal.strconv.Strconv_appendUint.appendUint(_buf, (_a[(_i : stdgo.GoInt)] : stdgo.GoUInt64), (10 : stdgo.GoInt));
                    _buf = (_buf.__append__(("...:" : stdgo.GoString)[(_i : stdgo.GoInt)]));
                };
                _buf = stdgo._internal.strconv.Strconv_appendUint.appendUint(_buf, (_p._port : stdgo.GoUInt64), (10 : stdgo.GoInt));
                return (_buf : stdgo.GoString)?.__copy__();
            } else {
                return stdgo._internal.net.netip.Netip__joinHostPort._joinHostPort((_p._ip.string() : stdgo.GoString)?.__copy__(), stdgo._internal.internal.itoa.Itoa_itoa.itoa((_p._port : stdgo.GoInt))?.__copy__())?.__copy__();
            };
        };
    }
    @:keep
    static public function isValid( _p:stdgo._internal.net.netip.Netip_AddrPort.AddrPort):Bool {
        @:recv var _p:stdgo._internal.net.netip.Netip_AddrPort.AddrPort = _p?.__copy__();
        return _p._ip.isValid();
    }
    @:keep
    static public function port( _p:stdgo._internal.net.netip.Netip_AddrPort.AddrPort):stdgo.GoUInt16 {
        @:recv var _p:stdgo._internal.net.netip.Netip_AddrPort.AddrPort = _p?.__copy__();
        return _p._port;
    }
    @:keep
    static public function addr( _p:stdgo._internal.net.netip.Netip_AddrPort.AddrPort):stdgo._internal.net.netip.Netip_Addr.Addr {
        @:recv var _p:stdgo._internal.net.netip.Netip_AddrPort.AddrPort = _p?.__copy__();
        return _p._ip?.__copy__();
    }
}
