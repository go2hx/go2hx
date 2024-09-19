package _internal.vendor.golang_dot_org.x.net.dns.dnsmessage;
@:keep @:allow(_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage.Name_asInterface) class Name_static_extension {
    @:keep
    static public function _unpackCompressed( _n:stdgo.Ref<_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_Name.Name>, _msg:stdgo.Slice<stdgo.GoUInt8>, _off:stdgo.GoInt, _allowCompression:Bool):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _n:stdgo.Ref<_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_Name.Name> = _n;
        stdgo._internal.internal.Macro.controlFlow({
            var _currOff = (_off : stdgo.GoInt);
            var _newOff = (_off : stdgo.GoInt);
            var _ptr:stdgo.GoInt = (0 : stdgo.GoInt);
            var _name = (_n.data.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
            @:label("Loop") while (true) {
                if ((_currOff >= (_msg.length) : Bool)) {
                    return { _0 : _off, _1 : _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage__errBaseLen._errBaseLen };
                };
                var _c = (_msg[(_currOff : stdgo.GoInt)] : stdgo.GoInt);
                _currOff++;
                {
                    var __switchIndex__ = -1;
                    var __run__ = true;
                    while (__run__) {
                        __run__ = false;
                        {
                            final __value__ = (_c & (192 : stdgo.GoInt) : stdgo.GoInt);
                            if (__value__ == ((0 : stdgo.GoInt))) {
                                if (_c == ((0 : stdgo.GoInt))) {
                                    @:jump("Loop") break;
                                };
                                var _endOff = (_currOff + _c : stdgo.GoInt);
                                if ((_endOff > (_msg.length) : Bool)) {
                                    return { _0 : _off, _1 : _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage__errCalcLen._errCalcLen };
                                };
                                for (__0 => _v in (_msg.__slice__(_currOff, _endOff) : stdgo.Slice<stdgo.GoUInt8>)) {
                                    if (_v == ((46 : stdgo.GoUInt8))) {
                                        return { _0 : _off, _1 : _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage__errInvalidName._errInvalidName };
                                    };
                                };
                                _name = (_name.__append__(...((_msg.__slice__(_currOff, _endOff) : stdgo.Slice<stdgo.GoUInt8>) : Array<stdgo.GoUInt8>)));
                                _name = (_name.__append__((46 : stdgo.GoUInt8)));
                                _currOff = _endOff;
                                break;
                            } else if (__value__ == ((192 : stdgo.GoInt))) {
                                if (!_allowCompression) {
                                    return { _0 : _off, _1 : _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage__errCompressedSRV._errCompressedSRV };
                                };
                                if ((_currOff >= (_msg.length) : Bool)) {
                                    return { _0 : _off, _1 : _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage__errInvalidPtr._errInvalidPtr };
                                };
                                var _c1 = (_msg[(_currOff : stdgo.GoInt)] : stdgo.GoUInt8);
                                _currOff++;
                                if (_ptr == ((0 : stdgo.GoInt))) {
                                    _newOff = _currOff;
                                };
                                {
                                    _ptr++;
                                    if ((_ptr > (10 : stdgo.GoInt) : Bool)) {
                                        return { _0 : _off, _1 : _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage__errTooManyPtr._errTooManyPtr };
                                    };
                                };
                                _currOff = ((((_c ^ (192 : stdgo.GoInt) : stdgo.GoInt)) << (8i64 : stdgo.GoUInt64) : stdgo.GoInt) | (_c1 : stdgo.GoInt) : stdgo.GoInt);
                                break;
                            } else {
                                return { _0 : _off, _1 : _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage__errReserved._errReserved };
                            };
                        };
                        break;
                    };
                };
            };
            if ((_name.length) == ((0 : stdgo.GoInt))) {
                _name = (_name.__append__((46 : stdgo.GoUInt8)));
            };
            if (((_name.length) > (254 : stdgo.GoInt) : Bool)) {
                return { _0 : _off, _1 : _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage__errNameTooLong._errNameTooLong };
            };
            _n.length_ = (_name.length : stdgo.GoUInt8);
            if (_ptr == ((0 : stdgo.GoInt))) {
                _newOff = _currOff;
            };
            return { _0 : _newOff, _1 : (null : stdgo.Error) };
        });
    }
    @:keep
    static public function _unpack( _n:stdgo.Ref<_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_Name.Name>, _msg:stdgo.Slice<stdgo.GoUInt8>, _off:stdgo.GoInt):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _n:stdgo.Ref<_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_Name.Name> = _n;
        return _n._unpackCompressed(_msg, _off, true);
    }
    @:keep
    static public function _pack( _n:stdgo.Ref<_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_Name.Name>, _msg:stdgo.Slice<stdgo.GoUInt8>, _compression:stdgo.GoMap<stdgo.GoString, stdgo.GoInt>, _compressionOff:stdgo.GoInt):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        @:recv var _n:stdgo.Ref<_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_Name.Name> = _n;
        var _oldMsg = _msg;
        if ((_n.length_ > (254 : stdgo.GoUInt8) : Bool)) {
            return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage__errNameTooLong._errNameTooLong };
        };
        if (((_n.length_ == (0 : stdgo.GoUInt8)) || (_n.data[((_n.length_ - (1 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoInt)] != (46 : stdgo.GoUInt8)) : Bool)) {
            return { _0 : _oldMsg, _1 : _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage__errNonCanonicalName._errNonCanonicalName };
        };
        if (((_n.data[(0 : stdgo.GoInt)] == (46 : stdgo.GoUInt8)) && (_n.length_ == (1 : stdgo.GoUInt8)) : Bool)) {
            return { _0 : (_msg.__append__((0 : stdgo.GoUInt8))), _1 : (null : stdgo.Error) };
        };
        {
            var __0 = (0 : stdgo.GoInt), __1 = (0 : stdgo.GoInt);
var _begin = __1, _i = __0;
            stdgo.Go.cfor((_i < (_n.length_ : stdgo.GoInt) : Bool), _i++, {
                if (_n.data[(_i : stdgo.GoInt)] == ((46 : stdgo.GoUInt8))) {
                    if (((_i - _begin : stdgo.GoInt) >= (64 : stdgo.GoInt) : Bool)) {
                        return { _0 : _oldMsg, _1 : _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage__errSegTooLong._errSegTooLong };
                    };
                    if ((_i - _begin : stdgo.GoInt) == ((0 : stdgo.GoInt))) {
                        return { _0 : _oldMsg, _1 : _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage__errZeroSegLen._errZeroSegLen };
                    };
                    _msg = (_msg.__append__(((_i - _begin : stdgo.GoInt) : stdgo.GoUInt8)));
                    {
                        var _j = (_begin : stdgo.GoInt);
                        stdgo.Go.cfor((_j < _i : Bool), _j++, {
                            _msg = (_msg.__append__(_n.data[(_j : stdgo.GoInt)]));
                        });
                    };
                    _begin = (_i + (1 : stdgo.GoInt) : stdgo.GoInt);
                    continue;
                };
                if (((((_i == (0 : stdgo.GoInt)) || (_n.data[(_i - (1 : stdgo.GoInt) : stdgo.GoInt)] == (46 : stdgo.GoUInt8)) : Bool)) && (_compression != null) : Bool)) {
                    {
                        var __tmp__ = (_compression != null && _compression.exists(((_n.data.__slice__(_i) : stdgo.Slice<stdgo.GoUInt8>) : stdgo.GoString)?.__copy__()) ? { _0 : _compression[((_n.data.__slice__(_i) : stdgo.Slice<stdgo.GoUInt8>) : stdgo.GoString)?.__copy__()], _1 : true } : { _0 : (0 : stdgo.GoInt), _1 : false }), _ptr:stdgo.GoInt = __tmp__._0, _ok:Bool = __tmp__._1;
                        if (_ok) {
                            return { _0 : (_msg.__append__((((_ptr >> (8i64 : stdgo.GoUInt64) : stdgo.GoInt) | (192 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoUInt8), (_ptr : stdgo.GoUInt8))), _1 : (null : stdgo.Error) };
                        };
                    };
                    if (((_msg.length) <= ((16383 : stdgo.GoUInt16) : stdgo.GoInt) : Bool)) {
                        _compression[((_n.data.__slice__(_i) : stdgo.Slice<stdgo.GoUInt8>) : stdgo.GoString)] = ((_msg.length) - _compressionOff : stdgo.GoInt);
                    };
                };
            });
        };
        return { _0 : (_msg.__append__((0 : stdgo.GoUInt8))), _1 : (null : stdgo.Error) };
    }
    @:keep
    static public function goString( _n:stdgo.Ref<_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_Name.Name>):stdgo.GoString {
        @:recv var _n:stdgo.Ref<_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_Name.Name> = _n;
        return ((("dnsmessage.MustNewName(\"" : stdgo.GoString) + _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage__printString._printString((_n.data.__slice__(0, _n.length_) : stdgo.Slice<stdgo.GoUInt8>))?.__copy__() : stdgo.GoString) + ("\")" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
    }
    @:keep
    static public function string( _n:_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_Name.Name):stdgo.GoString {
        @:recv var _n:_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_Name.Name = _n?.__copy__();
        return ((_n.data.__slice__(0, _n.length_) : stdgo.Slice<stdgo.GoUInt8>) : stdgo.GoString)?.__copy__();
    }
}
