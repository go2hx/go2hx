package _internal.vendor.golang_dot_org.x.crypto.cryptobyte;
@:keep @:allow(_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte.String__asInterface) class String__static_extension {
    @:keep
    static public function empty( _s:_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_):Bool {
        @:recv var _s:_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_ = _s;
        return (_s.length) == ((0 : stdgo.GoInt));
    }
    @:keep
    static public function copyBytes( _s:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_>, _out:stdgo.Slice<stdgo.GoUInt8>):Bool {
        @:recv var _s:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_> = _s;
        var _n = (_out.length : stdgo.GoInt);
        var _v = _s._read(_n);
        if (_v == null) {
            return false;
        };
        return stdgo.Go.copySlice(_out, _v) == (_n);
    }
    @:keep
    static public function readBytes( _s:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_>, _out:stdgo.Ref<stdgo.Slice<stdgo.GoUInt8>>, _n:stdgo.GoInt):Bool {
        @:recv var _s:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_> = _s;
        var _v = _s._read(_n);
        if (_v == null) {
            return false;
        };
        (_out : stdgo.Slice<stdgo.GoUInt8>).__setData__(_v);
        return true;
    }
    @:keep
    static public function readUint24LengthPrefixed( _s:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_>, _out:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_>):Bool {
        @:recv var _s:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_> = _s;
        return _s._readLengthPrefixed((3 : stdgo.GoInt), _out);
    }
    @:keep
    static public function readUint16LengthPrefixed( _s:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_>, _out:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_>):Bool {
        @:recv var _s:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_> = _s;
        return _s._readLengthPrefixed((2 : stdgo.GoInt), _out);
    }
    @:keep
    static public function readUint8LengthPrefixed( _s:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_>, _out:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_>):Bool {
        @:recv var _s:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_> = _s;
        return _s._readLengthPrefixed((1 : stdgo.GoInt), _out);
    }
    @:keep
    static public function _readLengthPrefixed( _s:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_>, _lenLen:stdgo.GoInt, _outChild:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_>):Bool {
        @:recv var _s:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_> = _s;
        var _lenBytes = _s._read(_lenLen);
        if (_lenBytes == null) {
            return false;
        };
        var _length:stdgo.GoUInt32 = (0 : stdgo.GoUInt32);
        for (__0 => _b in _lenBytes) {
            _length = (_length << (8i64 : stdgo.GoUInt64) : stdgo.GoUInt32);
            _length = (_length | (_b : stdgo.GoUInt32) : stdgo.GoUInt32);
        };
        var _v = _s._read((_length : stdgo.GoInt));
        if (_v == null) {
            return false;
        };
        (_outChild : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_).__setData__(_v);
        return true;
    }
    @:keep
    static public function _readUnsigned( _s:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_>, _out:stdgo.Pointer<stdgo.GoUInt32>, _length:stdgo.GoInt):Bool {
        @:recv var _s:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_> = _s;
        var _v = _s._read(_length);
        if (_v == null) {
            return false;
        };
        var _result:stdgo.GoUInt32 = (0 : stdgo.GoUInt32);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _length : Bool), _i++, {
                _result = (_result << ((8i64 : stdgo.GoUInt64)) : stdgo.GoUInt32);
                _result = (_result | ((_v[(_i : stdgo.GoInt)] : stdgo.GoUInt32)) : stdgo.GoUInt32);
            });
        };
        _out.value = _result;
        return true;
    }
    @:keep
    static public function readUint64( _s:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_>, _out:stdgo.Pointer<stdgo.GoUInt64>):Bool {
        @:recv var _s:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_> = _s;
        var _v = _s._read((8 : stdgo.GoInt));
        if (_v == null) {
            return false;
        };
        _out.value = (((((((((_v[(0 : stdgo.GoInt)] : stdgo.GoUInt64) << (56i64 : stdgo.GoUInt64) : stdgo.GoUInt64) | ((_v[(1 : stdgo.GoInt)] : stdgo.GoUInt64) << (48i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt64) | ((_v[(2 : stdgo.GoInt)] : stdgo.GoUInt64) << (40i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt64) | ((_v[(3 : stdgo.GoInt)] : stdgo.GoUInt64) << (32i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt64) | ((_v[(4 : stdgo.GoInt)] : stdgo.GoUInt64) << (24i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt64) | ((_v[(5 : stdgo.GoInt)] : stdgo.GoUInt64) << (16i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt64) | ((_v[(6 : stdgo.GoInt)] : stdgo.GoUInt64) << (8i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt64) | (_v[(7 : stdgo.GoInt)] : stdgo.GoUInt64) : stdgo.GoUInt64);
        return true;
    }
    @:keep
    static public function readUint32( _s:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_>, _out:stdgo.Pointer<stdgo.GoUInt32>):Bool {
        @:recv var _s:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_> = _s;
        var _v = _s._read((4 : stdgo.GoInt));
        if (_v == null) {
            return false;
        };
        _out.value = (((((_v[(0 : stdgo.GoInt)] : stdgo.GoUInt32) << (24i64 : stdgo.GoUInt64) : stdgo.GoUInt32) | ((_v[(1 : stdgo.GoInt)] : stdgo.GoUInt32) << (16i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoUInt32) | ((_v[(2 : stdgo.GoInt)] : stdgo.GoUInt32) << (8i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoUInt32) | (_v[(3 : stdgo.GoInt)] : stdgo.GoUInt32) : stdgo.GoUInt32);
        return true;
    }
    @:keep
    static public function readUint24( _s:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_>, _out:stdgo.Pointer<stdgo.GoUInt32>):Bool {
        @:recv var _s:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_> = _s;
        var _v = _s._read((3 : stdgo.GoInt));
        if (_v == null) {
            return false;
        };
        _out.value = ((((_v[(0 : stdgo.GoInt)] : stdgo.GoUInt32) << (16i64 : stdgo.GoUInt64) : stdgo.GoUInt32) | ((_v[(1 : stdgo.GoInt)] : stdgo.GoUInt32) << (8i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoUInt32) | (_v[(2 : stdgo.GoInt)] : stdgo.GoUInt32) : stdgo.GoUInt32);
        return true;
    }
    @:keep
    static public function readUint16( _s:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_>, _out:stdgo.Pointer<stdgo.GoUInt16>):Bool {
        @:recv var _s:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_> = _s;
        var _v = _s._read((2 : stdgo.GoInt));
        if (_v == null) {
            return false;
        };
        _out.value = (((_v[(0 : stdgo.GoInt)] : stdgo.GoUInt16) << (8i64 : stdgo.GoUInt64) : stdgo.GoUInt16) | (_v[(1 : stdgo.GoInt)] : stdgo.GoUInt16) : stdgo.GoUInt16);
        return true;
    }
    @:keep
    static public function readUint8( _s:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_>, _out:stdgo.Pointer<stdgo.GoUInt8>):Bool {
        @:recv var _s:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_> = _s;
        var _v = _s._read((1 : stdgo.GoInt));
        if (_v == null) {
            return false;
        };
        _out.value = (_v[(0 : stdgo.GoInt)] : stdgo.GoUInt8);
        return true;
    }
    @:keep
    static public function skip( _s:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_>, _n:stdgo.GoInt):Bool {
        @:recv var _s:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_> = _s;
        return _s._read(_n) != null;
    }
    @:keep
    static public function _read( _s:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_>, _n:stdgo.GoInt):stdgo.Slice<stdgo.GoUInt8> {
        @:recv var _s:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_> = _s;
        if (((((_s : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_).length) < _n : Bool) || (_n < (0 : stdgo.GoInt) : Bool) : Bool)) {
            return (null : stdgo.Slice<stdgo.GoUInt8>);
        };
        var _v = (((_s : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_)).__slice__(0, _n) : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_);
        (_s : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_).__setData__((((_s : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_)).__slice__(_n) : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_));
        return _v;
    }
    @:keep
    static public function _readASN1( _s:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_>, _out:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_>, _outTag:stdgo.Pointer<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.asn1.Asn1_Tag.Tag>, _skipHeader:Bool):Bool {
        @:recv var _s:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_> = _s;
        if ((((_s : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_).length) < (2 : stdgo.GoInt) : Bool)) {
            return false;
        };
        var __0 = (((_s : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_))[(0 : stdgo.GoInt)] : stdgo.GoUInt8), __1 = (((_s : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_))[(1 : stdgo.GoInt)] : stdgo.GoUInt8);
var _lenByte = __1, _tag = __0;
        if ((_tag & (31 : stdgo.GoUInt8) : stdgo.GoUInt8) == ((31 : stdgo.GoUInt8))) {
            return false;
        };
        if (_outTag != null) {
            _outTag.value = (_tag : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.asn1.Asn1_Tag.Tag);
        };
        var __0:stdgo.GoUInt32 = (0 : stdgo.GoUInt32), __1:stdgo.GoUInt32 = (0 : stdgo.GoUInt32);
var _headerLen = __1, _length = __0;
        if ((_lenByte & (128 : stdgo.GoUInt8) : stdgo.GoUInt8) == ((0 : stdgo.GoUInt8))) {
            _length = ((_lenByte : stdgo.GoUInt32) + (2u32 : stdgo.GoUInt32) : stdgo.GoUInt32);
            _headerLen = (2u32 : stdgo.GoUInt32);
        } else {
            var _lenLen = (_lenByte & (127 : stdgo.GoUInt8) : stdgo.GoUInt8);
            var _len32:stdgo.GoUInt32 = (0 : stdgo.GoUInt32);
            if (((_lenLen == ((0 : stdgo.GoUInt8)) || (_lenLen > (4 : stdgo.GoUInt8) : Bool) : Bool) || (((_s : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_).length) < (((2 : stdgo.GoUInt8) + _lenLen : stdgo.GoUInt8) : stdgo.GoInt) : Bool) : Bool)) {
                return false;
            };
            var _lenBytes = ((((_s : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_)).__slice__((2 : stdgo.GoInt), ((2 : stdgo.GoUInt8) + _lenLen : stdgo.GoUInt8)) : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_) : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_);
            if (!_lenBytes._readUnsigned(stdgo.Go.pointer(_len32), (_lenLen : stdgo.GoInt))) {
                return false;
            };
            if ((_len32 < (128u32 : stdgo.GoUInt32) : Bool)) {
                return false;
            };
            if ((_len32 >> ((((_lenLen - (1 : stdgo.GoUInt8) : stdgo.GoUInt8)) * (8 : stdgo.GoUInt8) : stdgo.GoUInt8)) : stdgo.GoUInt32) == ((0u32 : stdgo.GoUInt32))) {
                return false;
            };
            _headerLen = ((2u32 : stdgo.GoUInt32) + (_lenLen : stdgo.GoUInt32) : stdgo.GoUInt32);
            if (((_headerLen + _len32 : stdgo.GoUInt32) < _len32 : Bool)) {
                return false;
            };
            _length = (_headerLen + _len32 : stdgo.GoUInt32);
        };
        if ((((_length : stdgo.GoInt) < (0 : stdgo.GoInt) : Bool) || !_s.readBytes((_out : stdgo.Ref<stdgo.Slice<stdgo.GoUInt8>>), (_length : stdgo.GoInt)) : Bool)) {
            return false;
        };
        if ((_skipHeader && !_out.skip((_headerLen : stdgo.GoInt)) : Bool)) {
            throw stdgo.Go.toInterface(("cryptobyte: internal error" : stdgo.GoString));
        };
        return true;
    }
    @:keep
    static public function readOptionalASN1Boolean( _s:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_>, _out:stdgo.Pointer<Bool>, _defaultValue:Bool):Bool {
        @:recv var _s:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_> = _s;
        var _present:Bool = false;
        var _child:_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_ = new _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_(0, 0);
        if (!_s.readOptionalASN1((stdgo.Go.setRef(_child) : stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_>), stdgo.Go.pointer(_present), (1 : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.asn1.Asn1_Tag.Tag))) {
            return false;
        };
        if (!_present) {
            _out.value = _defaultValue;
            return true;
        };
        return _s.readASN1Boolean(_out);
    }
    @:keep
    static public function readOptionalASN1OctetString( _s:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_>, _out:stdgo.Ref<stdgo.Slice<stdgo.GoUInt8>>, _outPresent:stdgo.Pointer<Bool>, _tag:_internal.vendor.golang_dot_org.x.crypto.cryptobyte.asn1.Asn1_Tag.Tag):Bool {
        @:recv var _s:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_> = _s;
        var _present:Bool = false;
        var _child:_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_ = new _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_(0, 0);
        if (!_s.readOptionalASN1((stdgo.Go.setRef(_child) : stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_>), stdgo.Go.pointer(_present), _tag)) {
            return false;
        };
        if (_outPresent != null) {
            _outPresent.value = _present;
        };
        if (_present) {
            var _oct:_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_ = new _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_(0, 0);
            if ((!_child.readASN1((stdgo.Go.setRef(_oct) : stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_>), (4 : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.asn1.Asn1_Tag.Tag)) || !_child.empty() : Bool)) {
                return false;
            };
            (_out : stdgo.Slice<stdgo.GoUInt8>).__setData__(_oct);
        } else {
            (_out : stdgo.Slice<stdgo.GoUInt8>).__setData__((null : stdgo.Slice<stdgo.GoUInt8>));
        };
        return true;
    }
    @:keep
    static public function readOptionalASN1Integer( _s:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_>, _out:stdgo.AnyInterface, _tag:_internal.vendor.golang_dot_org.x.crypto.cryptobyte.asn1.Asn1_Tag.Tag, _defaultValue:stdgo.AnyInterface):Bool {
        @:recv var _s:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_> = _s;
        var _present:Bool = false;
        var _i:_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_ = new _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_(0, 0);
        if (!_s.readOptionalASN1((stdgo.Go.setRef(_i) : stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_>), stdgo.Go.pointer(_present), _tag)) {
            return false;
        };
        if (!_present) {
            {
                final __type__ = _out;
                if (stdgo.Go.typeEquals((__type__ : stdgo.Pointer<stdgo.GoInt>)) || stdgo.Go.typeEquals((__type__ : stdgo.Pointer<stdgo.GoInt8>)) || stdgo.Go.typeEquals((__type__ : stdgo.Pointer<stdgo.GoInt16>)) || stdgo.Go.typeEquals((__type__ : stdgo.Pointer<stdgo.GoInt32>)) || stdgo.Go.typeEquals((__type__ : stdgo.Pointer<stdgo.GoInt64>)) || stdgo.Go.typeEquals((__type__ : stdgo.Pointer<stdgo.GoUInt>)) || stdgo.Go.typeEquals((__type__ : stdgo.Pointer<stdgo.GoUInt8>)) || stdgo.Go.typeEquals((__type__ : stdgo.Pointer<stdgo.GoUInt16>)) || stdgo.Go.typeEquals((__type__ : stdgo.Pointer<stdgo.GoUInt32>)) || stdgo.Go.typeEquals((__type__ : stdgo.Pointer<stdgo.GoUInt64>)) || stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo.Slice<stdgo.GoUInt8>>))) {
                    stdgo._internal.reflect.Reflect_valueOf.valueOf(_out).elem().set(stdgo._internal.reflect.Reflect_valueOf.valueOf(_defaultValue)?.__copy__());
                } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>))) {
                    {
                        var __tmp__ = try {
                            { _0 : (stdgo.Go.typeAssert((_defaultValue : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>)) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>), _1 : true };
                        } catch(_) {
                            { _0 : (null : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>), _1 : false };
                        }, _defaultValue = __tmp__._0, _ok = __tmp__._1;
                        if (_ok) {
                            (stdgo.Go.typeAssert((_out : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>)) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>).set(_defaultValue);
                        } else {
                            throw stdgo.Go.toInterface(("out points to big.Int, but defaultValue does not" : stdgo.GoString));
                        };
                    };
                } else {
                    throw stdgo.Go.toInterface(("invalid integer type" : stdgo.GoString));
                };
            };
            return true;
        };
        if ((!_i.readASN1Integer(_out) || !_i.empty() : Bool)) {
            return false;
        };
        return true;
    }
    @:keep
    static public function skipOptionalASN1( _s:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_>, _tag:_internal.vendor.golang_dot_org.x.crypto.cryptobyte.asn1.Asn1_Tag.Tag):Bool {
        @:recv var _s:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_> = _s;
        if (!_s.peekASN1Tag(_tag)) {
            return true;
        };
        var _unused:_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_ = new _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_(0, 0);
        return _s.readASN1((stdgo.Go.setRef(_unused) : stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_>), _tag);
    }
    @:keep
    static public function readOptionalASN1( _s:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_>, _out:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_>, _outPresent:stdgo.Pointer<Bool>, _tag:_internal.vendor.golang_dot_org.x.crypto.cryptobyte.asn1.Asn1_Tag.Tag):Bool {
        @:recv var _s:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_> = _s;
        var _present = (_s.peekASN1Tag(_tag) : Bool);
        if (_outPresent != null) {
            _outPresent.value = _present;
        };
        if ((_present && !_s.readASN1(_out, _tag) : Bool)) {
            return false;
        };
        return true;
    }
    @:keep
    static public function skipASN1( _s:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_>, _tag:_internal.vendor.golang_dot_org.x.crypto.cryptobyte.asn1.Asn1_Tag.Tag):Bool {
        @:recv var _s:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_> = _s;
        var _unused:_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_ = new _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_(0, 0);
        return _s.readASN1((stdgo.Go.setRef(_unused) : stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_>), _tag);
    }
    @:keep
    static public function peekASN1Tag( _s:_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_, _tag:_internal.vendor.golang_dot_org.x.crypto.cryptobyte.asn1.Asn1_Tag.Tag):Bool {
        @:recv var _s:_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_ = _s;
        if ((_s.length) == ((0 : stdgo.GoInt))) {
            return false;
        };
        return (_s[(0 : stdgo.GoInt)] : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.asn1.Asn1_Tag.Tag) == (_tag);
    }
    @:keep
    static public function readAnyASN1Element( _s:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_>, _out:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_>, _outTag:stdgo.Pointer<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.asn1.Asn1_Tag.Tag>):Bool {
        @:recv var _s:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_> = _s;
        return _s._readASN1(_out, _outTag, false);
    }
    @:keep
    static public function readAnyASN1( _s:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_>, _out:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_>, _outTag:stdgo.Pointer<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.asn1.Asn1_Tag.Tag>):Bool {
        @:recv var _s:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_> = _s;
        return _s._readASN1(_out, _outTag, true);
    }
    @:keep
    static public function readASN1Element( _s:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_>, _out:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_>, _tag:_internal.vendor.golang_dot_org.x.crypto.cryptobyte.asn1.Asn1_Tag.Tag):Bool {
        @:recv var _s:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_> = _s;
        var _t:_internal.vendor.golang_dot_org.x.crypto.cryptobyte.asn1.Asn1_Tag.Tag = ((0 : stdgo.GoUInt8) : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.asn1.Asn1_Tag.Tag);
        if ((!_s.readAnyASN1Element(_out, stdgo.Go.pointer(_t)) || (_t != _tag) : Bool)) {
            return false;
        };
        return true;
    }
    @:keep
    static public function readASN1( _s:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_>, _out:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_>, _tag:_internal.vendor.golang_dot_org.x.crypto.cryptobyte.asn1.Asn1_Tag.Tag):Bool {
        @:recv var _s:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_> = _s;
        var _t:_internal.vendor.golang_dot_org.x.crypto.cryptobyte.asn1.Asn1_Tag.Tag = ((0 : stdgo.GoUInt8) : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.asn1.Asn1_Tag.Tag);
        if ((!_s.readAnyASN1(_out, stdgo.Go.pointer(_t)) || (_t != _tag) : Bool)) {
            return false;
        };
        return true;
    }
    @:keep
    static public function readASN1Bytes( _s:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_>, _out:stdgo.Ref<stdgo.Slice<stdgo.GoUInt8>>, _tag:_internal.vendor.golang_dot_org.x.crypto.cryptobyte.asn1.Asn1_Tag.Tag):Bool {
        @:recv var _s:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_> = _s;
        return _s.readASN1((_out : stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_>), _tag);
    }
    @:keep
    static public function readASN1BitStringAsBytes( _s:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_>, _out:stdgo.Ref<stdgo.Slice<stdgo.GoUInt8>>):Bool {
        @:recv var _s:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_> = _s;
        var _bytes:_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_ = new _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_(0, 0);
        if ((!_s.readASN1((stdgo.Go.setRef(_bytes) : stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_>), (3 : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.asn1.Asn1_Tag.Tag)) || (_bytes.length == (0 : stdgo.GoInt)) : Bool)) {
            return false;
        };
        var _paddingBits = (_bytes[(0 : stdgo.GoInt)] : stdgo.GoUInt8);
        if (_paddingBits != ((0 : stdgo.GoUInt8))) {
            return false;
        };
        (_out : stdgo.Slice<stdgo.GoUInt8>).__setData__((_bytes.__slice__((1 : stdgo.GoInt)) : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_));
        return true;
    }
    @:keep
    static public function readASN1BitString( _s:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_>, _out:stdgo.Ref<stdgo._internal.encoding.asn1.Asn1_BitString.BitString>):Bool {
        @:recv var _s:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_> = _s;
        var _bytes:_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_ = new _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_(0, 0);
        if (((!_s.readASN1((stdgo.Go.setRef(_bytes) : stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_>), (3 : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.asn1.Asn1_Tag.Tag)) || (_bytes.length) == ((0 : stdgo.GoInt)) : Bool) || ((((_bytes.length) * (8 : stdgo.GoInt) : stdgo.GoInt) / (8 : stdgo.GoInt) : stdgo.GoInt) != (_bytes.length)) : Bool)) {
            return false;
        };
        var _paddingBits = (_bytes[(0 : stdgo.GoInt)] : stdgo.GoUInt8);
        _bytes = (_bytes.__slice__((1 : stdgo.GoInt)) : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_);
        if ((((_paddingBits > (7 : stdgo.GoUInt8) : Bool) || ((_bytes.length) == ((0 : stdgo.GoInt)) && _paddingBits != ((0 : stdgo.GoUInt8)) : Bool) : Bool) || (((_bytes.length) > (0 : stdgo.GoInt) : Bool) && (_bytes[((_bytes.length) - (1 : stdgo.GoInt) : stdgo.GoInt)] & ((((1 : stdgo.GoUInt8) << _paddingBits : stdgo.GoUInt8) - (1 : stdgo.GoUInt8) : stdgo.GoUInt8)) : stdgo.GoUInt8) != ((0 : stdgo.GoUInt8)) : Bool) : Bool)) {
            return false;
        };
        _out.bitLength = (((_bytes.length) * (8 : stdgo.GoInt) : stdgo.GoInt) - (_paddingBits : stdgo.GoInt) : stdgo.GoInt);
        _out.bytes = _bytes;
        return true;
    }
    @:keep
    static public function readASN1UTCTime( _s:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_>, _out:stdgo.Ref<stdgo._internal.time.Time_Time.Time>):Bool {
        @:recv var _s:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_> = _s;
        var _bytes:_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_ = new _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_(0, 0);
        if (!_s.readASN1((stdgo.Go.setRef(_bytes) : stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_>), (23 : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.asn1.Asn1_Tag.Tag))) {
            return false;
        };
        var _t = ((_bytes : stdgo.GoString)?.__copy__() : stdgo.GoString);
        var _formatStr = ("060102150405Z0700" : stdgo.GoString);
        var _err:stdgo.Error = (null : stdgo.Error);
        var __tmp__ = stdgo._internal.time.Time_parse.parse(_formatStr?.__copy__(), _t?.__copy__()), _res:stdgo._internal.time.Time_Time.Time = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _formatStr = ("0601021504Z0700" : stdgo.GoString);
            {
                var __tmp__ = stdgo._internal.time.Time_parse.parse(_formatStr?.__copy__(), _t?.__copy__());
                _res = __tmp__._0?.__copy__();
                _err = __tmp__._1;
            };
        };
        if (_err != null) {
            return false;
        };
        {
            var _serialized = (_res.format(_formatStr?.__copy__())?.__copy__() : stdgo.GoString);
            if (_serialized != (_t)) {
                return false;
            };
        };
        if ((_res.year() >= (2050 : stdgo.GoInt) : Bool)) {
            _res = _res.addDate((-100 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt))?.__copy__();
        };
        {
            var __tmp__ = _res?.__copy__();
            (_out : stdgo._internal.time.Time_Time.Time)._wall = __tmp__._wall;
            (_out : stdgo._internal.time.Time_Time.Time)._ext = __tmp__._ext;
            (_out : stdgo._internal.time.Time_Time.Time)._loc = __tmp__._loc;
        };
        return true;
    }
    @:keep
    static public function readASN1GeneralizedTime( _s:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_>, _out:stdgo.Ref<stdgo._internal.time.Time_Time.Time>):Bool {
        @:recv var _s:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_> = _s;
        var _bytes:_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_ = new _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_(0, 0);
        if (!_s.readASN1((stdgo.Go.setRef(_bytes) : stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_>), (24 : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.asn1.Asn1_Tag.Tag))) {
            return false;
        };
        var _t = ((_bytes : stdgo.GoString)?.__copy__() : stdgo.GoString);
        var __tmp__ = stdgo._internal.time.Time_parse.parse(("20060102150405Z0700" : stdgo.GoString), _t?.__copy__()), _res:stdgo._internal.time.Time_Time.Time = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return false;
        };
        {
            var _serialized = (_res.format(("20060102150405Z0700" : stdgo.GoString))?.__copy__() : stdgo.GoString);
            if (_serialized != (_t)) {
                return false;
            };
        };
        {
            var __tmp__ = _res?.__copy__();
            (_out : stdgo._internal.time.Time_Time.Time)._wall = __tmp__._wall;
            (_out : stdgo._internal.time.Time_Time.Time)._ext = __tmp__._ext;
            (_out : stdgo._internal.time.Time_Time.Time)._loc = __tmp__._loc;
        };
        return true;
    }
    @:keep
    static public function readASN1ObjectIdentifier( _s:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_>, _out:stdgo.Ref<stdgo._internal.encoding.asn1.Asn1_ObjectIdentifier.ObjectIdentifier>):Bool {
        @:recv var _s:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_> = _s;
        var _bytes:_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_ = new _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_(0, 0);
        if ((!_s.readASN1((stdgo.Go.setRef(_bytes) : stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_>), (6 : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.asn1.Asn1_Tag.Tag)) || (_bytes.length == (0 : stdgo.GoInt)) : Bool)) {
            return false;
        };
        var _components = (new stdgo.Slice<stdgo.GoInt>(((_bytes.length) + (1 : stdgo.GoInt) : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
        var _v:stdgo.GoInt = (0 : stdgo.GoInt);
        if (!_bytes._readBase128Int(stdgo.Go.pointer(_v))) {
            return false;
        };
        if ((_v < (80 : stdgo.GoInt) : Bool)) {
            _components[(0 : stdgo.GoInt)] = (_v / (40 : stdgo.GoInt) : stdgo.GoInt);
            _components[(1 : stdgo.GoInt)] = (_v % (40 : stdgo.GoInt) : stdgo.GoInt);
        } else {
            _components[(0 : stdgo.GoInt)] = (2 : stdgo.GoInt);
            _components[(1 : stdgo.GoInt)] = (_v - (80 : stdgo.GoInt) : stdgo.GoInt);
        };
        var _i = (2 : stdgo.GoInt);
        stdgo.Go.cfor(((_bytes.length) > (0 : stdgo.GoInt) : Bool), _i++, {
            if (!_bytes._readBase128Int(stdgo.Go.pointer(_v))) {
                return false;
            };
            _components[(_i : stdgo.GoInt)] = _v;
        });
        (_out : stdgo._internal.encoding.asn1.Asn1_ObjectIdentifier.ObjectIdentifier).__setData__((_components.__slice__(0, _i) : stdgo.Slice<stdgo.GoInt>));
        return true;
    }
    @:keep
    static public function _readBase128Int( _s:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_>, _out:stdgo.Pointer<stdgo.GoInt>):Bool {
        @:recv var _s:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_> = _s;
        var _ret = (0 : stdgo.GoInt);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((((_s : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_).length) > (0 : stdgo.GoInt) : Bool), _i++, {
                if (_i == ((5 : stdgo.GoInt))) {
                    return false;
                };
                if ((_ret >= (16777216 : stdgo.GoInt) : Bool)) {
                    return false;
                };
                _ret = (_ret << ((7i64 : stdgo.GoUInt64)) : stdgo.GoInt);
                var _b = (_s._read((1 : stdgo.GoInt))[(0 : stdgo.GoInt)] : stdgo.GoUInt8);
                if (((_i == (0 : stdgo.GoInt)) && (_b == (128 : stdgo.GoUInt8)) : Bool)) {
                    return false;
                };
                _ret = (_ret | (((_b & (127 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoInt)) : stdgo.GoInt);
                if ((_b & (128 : stdgo.GoUInt8) : stdgo.GoUInt8) == ((0 : stdgo.GoUInt8))) {
                    _out.value = _ret;
                    return true;
                };
            });
        };
        return false;
    }
    @:keep
    static public function readASN1Enum( _s:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_>, _out:stdgo.Pointer<stdgo.GoInt>):Bool {
        @:recv var _s:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_> = _s;
        var _bytes:_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_ = new _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_(0, 0);
        var _i:stdgo.GoInt64 = (0 : stdgo.GoInt64);
        if (((!_s.readASN1((stdgo.Go.setRef(_bytes) : stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_>), (10 : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.asn1.Asn1_Tag.Tag)) || !_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte__checkASN1Integer._checkASN1Integer(_bytes) : Bool) || !_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte__asn1Signed._asn1Signed(stdgo.Go.pointer(_i), _bytes) : Bool)) {
            return false;
        };
        if (((_i : stdgo.GoInt) : stdgo.GoInt64) != (_i)) {
            return false;
        };
        _out.value = (_i : stdgo.GoInt);
        return true;
    }
    @:keep
    static public function readASN1Int64WithTag( _s:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_>, _out:stdgo.Pointer<stdgo.GoInt64>, _tag:_internal.vendor.golang_dot_org.x.crypto.cryptobyte.asn1.Asn1_Tag.Tag):Bool {
        @:recv var _s:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_> = _s;
        var _bytes:_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_ = new _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_(0, 0);
        return ((_s.readASN1((stdgo.Go.setRef(_bytes) : stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_>), _tag) && _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte__checkASN1Integer._checkASN1Integer(_bytes) : Bool) && _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte__asn1Signed._asn1Signed(_out, _bytes) : Bool);
    }
    @:keep
    static public function _readASN1Uint64( _s:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_>, _out:stdgo.Pointer<stdgo.GoUInt64>):Bool {
        @:recv var _s:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_> = _s;
        var _bytes:_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_ = new _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_(0, 0);
        if (((!_s.readASN1((stdgo.Go.setRef(_bytes) : stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_>), (2 : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.asn1.Asn1_Tag.Tag)) || !_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte__checkASN1Integer._checkASN1Integer(_bytes) : Bool) || !_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte__asn1Unsigned._asn1Unsigned(_out, _bytes) : Bool)) {
            return false;
        };
        return true;
    }
    @:keep
    static public function _readASN1Int64( _s:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_>, _out:stdgo.Pointer<stdgo.GoInt64>):Bool {
        @:recv var _s:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_> = _s;
        var _bytes:_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_ = new _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_(0, 0);
        if (((!_s.readASN1((stdgo.Go.setRef(_bytes) : stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_>), (2 : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.asn1.Asn1_Tag.Tag)) || !_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte__checkASN1Integer._checkASN1Integer(_bytes) : Bool) || !_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte__asn1Signed._asn1Signed(_out, _bytes) : Bool)) {
            return false;
        };
        return true;
    }
    @:keep
    static public function _readASN1Bytes( _s:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_>, _out:stdgo.Ref<stdgo.Slice<stdgo.GoUInt8>>):Bool {
        @:recv var _s:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_> = _s;
        var _bytes:_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_ = new _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_(0, 0);
        if ((!_s.readASN1((stdgo.Go.setRef(_bytes) : stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_>), (2 : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.asn1.Asn1_Tag.Tag)) || !_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte__checkASN1Integer._checkASN1Integer(_bytes) : Bool)) {
            return false;
        };
        if ((_bytes[(0 : stdgo.GoInt)] & (128 : stdgo.GoUInt8) : stdgo.GoUInt8) == ((128 : stdgo.GoUInt8))) {
            return false;
        };
        while ((((_bytes.length) > (1 : stdgo.GoInt) : Bool) && (_bytes[(0 : stdgo.GoInt)] == (0 : stdgo.GoUInt8)) : Bool)) {
            _bytes = (_bytes.__slice__((1 : stdgo.GoInt)) : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_);
        };
        (_out : stdgo.Slice<stdgo.GoUInt8>).__setData__(_bytes);
        return true;
    }
    @:keep
    static public function _readASN1BigInt( _s:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_>, _out:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>):Bool {
        @:recv var _s:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_> = _s;
        var _bytes:_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_ = new _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_(0, 0);
        if ((!_s.readASN1((stdgo.Go.setRef(_bytes) : stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_>), (2 : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.asn1.Asn1_Tag.Tag)) || !_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte__checkASN1Integer._checkASN1Integer(_bytes) : Bool)) {
            return false;
        };
        if ((_bytes[(0 : stdgo.GoInt)] & (128 : stdgo.GoUInt8) : stdgo.GoUInt8) == ((128 : stdgo.GoUInt8))) {
            var _neg = (new stdgo.Slice<stdgo.GoUInt8>((_bytes.length : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
            for (_i => _b in _bytes) {
                _neg[(_i : stdgo.GoInt)] = (-1 ^ _b);
            };
            _out.setBytes(_neg);
            _out.add(_out, _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte__bigOne._bigOne);
            _out.neg(_out);
        } else {
            _out.setBytes(_bytes);
        };
        return true;
    }
    @:keep
    static public function readASN1Integer( _s:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_>, _out:stdgo.AnyInterface):Bool {
        @:recv var _s:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_> = _s;
        {
            final __type__ = _out;
            if (stdgo.Go.typeEquals((__type__ : stdgo.Pointer<stdgo.GoInt>)) || stdgo.Go.typeEquals((__type__ : stdgo.Pointer<stdgo.GoInt8>)) || stdgo.Go.typeEquals((__type__ : stdgo.Pointer<stdgo.GoInt16>)) || stdgo.Go.typeEquals((__type__ : stdgo.Pointer<stdgo.GoInt32>)) || stdgo.Go.typeEquals((__type__ : stdgo.Pointer<stdgo.GoInt64>))) {
                var _out:stdgo.AnyInterface = __type__?.__underlying__();
                var _i:stdgo.GoInt64 = (0 : stdgo.GoInt64);
                if ((!_s._readASN1Int64(stdgo.Go.pointer(_i)) || stdgo._internal.reflect.Reflect_valueOf.valueOf(_out).elem().overflowInt(_i) : Bool)) {
                    return false;
                };
                stdgo._internal.reflect.Reflect_valueOf.valueOf(_out).elem().setInt(_i);
                return true;
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Pointer<stdgo.GoUInt>)) || stdgo.Go.typeEquals((__type__ : stdgo.Pointer<stdgo.GoUInt8>)) || stdgo.Go.typeEquals((__type__ : stdgo.Pointer<stdgo.GoUInt16>)) || stdgo.Go.typeEquals((__type__ : stdgo.Pointer<stdgo.GoUInt32>)) || stdgo.Go.typeEquals((__type__ : stdgo.Pointer<stdgo.GoUInt64>))) {
                var _out:stdgo.AnyInterface = __type__?.__underlying__();
                var _u:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
                if ((!_s._readASN1Uint64(stdgo.Go.pointer(_u)) || stdgo._internal.reflect.Reflect_valueOf.valueOf(_out).elem().overflowUint(_u) : Bool)) {
                    return false;
                };
                stdgo._internal.reflect.Reflect_valueOf.valueOf(_out).elem().setUint(_u);
                return true;
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>))) {
                var _out:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>) : __type__.__underlying__().value;
                return _s._readASN1BigInt(_out);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo.Slice<stdgo.GoUInt8>>))) {
                var _out:stdgo.Ref<stdgo.Slice<stdgo.GoUInt8>> = __type__ == null ? (null : stdgo.Ref<stdgo.Slice<stdgo.GoUInt8>>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo.Slice<stdgo.GoUInt8>>) : __type__ == null ? (null : stdgo.Ref<stdgo.Slice<stdgo.GoUInt8>>) : __type__.__underlying__().value;
                return _s._readASN1Bytes(_out);
            } else {
                var _out:stdgo.AnyInterface = __type__?.__underlying__();
                throw stdgo.Go.toInterface(("out does not point to an integer type" : stdgo.GoString));
            };
        };
    }
    @:keep
    static public function readASN1Boolean( _s:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_>, _out:stdgo.Pointer<Bool>):Bool {
        @:recv var _s:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_> = _s;
        var _bytes:_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_ = new _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_(0, 0);
        if ((!_s.readASN1((stdgo.Go.setRef(_bytes) : stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_>), (1 : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.asn1.Asn1_Tag.Tag)) || (_bytes.length != (1 : stdgo.GoInt)) : Bool)) {
            return false;
        };
        {
            final __value__ = _bytes[(0 : stdgo.GoInt)];
            if (__value__ == ((0 : stdgo.GoUInt8))) {
                _out.value = false;
            } else if (__value__ == ((255 : stdgo.GoUInt8))) {
                _out.value = true;
            } else {
                return false;
            };
        };
        return true;
    }
}
