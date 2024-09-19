package _internal.crypto.internal.edwards25519;
@:keep @:allow(_internal.crypto.internal.edwards25519.Edwards25519.Scalar_asInterface) class Scalar_static_extension {
    @:keep
    static public function _signedRadix16( _s:stdgo.Ref<_internal.crypto.internal.edwards25519.Edwards25519_Scalar.Scalar>):stdgo.GoArray<stdgo.GoInt8> {
        @:recv var _s:stdgo.Ref<_internal.crypto.internal.edwards25519.Edwards25519_Scalar.Scalar> = _s;
        var _b = _s.bytes();
        if ((_b[(31 : stdgo.GoInt)] > (127 : stdgo.GoUInt8) : Bool)) {
            throw stdgo.Go.toInterface(("scalar has high bit set illegally" : stdgo.GoString));
        };
        var _digits:stdgo.GoArray<stdgo.GoInt8> = new stdgo.GoArray<stdgo.GoInt8>(64, 64, ...[for (i in 0 ... 64) (0 : stdgo.GoInt8)]);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (32 : stdgo.GoInt) : Bool), _i++, {
                _digits[((2 : stdgo.GoInt) * _i : stdgo.GoInt)] = ((_b[(_i : stdgo.GoInt)] & (15 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoInt8);
                _digits[(((2 : stdgo.GoInt) * _i : stdgo.GoInt) + (1 : stdgo.GoInt) : stdgo.GoInt)] = ((((_b[(_i : stdgo.GoInt)] >> (4i64 : stdgo.GoUInt64) : stdgo.GoUInt8)) & (15 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoInt8);
            });
        };
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (63 : stdgo.GoInt) : Bool), _i++, {
                var _carry = (((_digits[(_i : stdgo.GoInt)] + (8 : stdgo.GoInt8) : stdgo.GoInt8)) >> (4i64 : stdgo.GoUInt64) : stdgo.GoInt8);
                _digits[(_i : stdgo.GoInt)] = (_digits[(_i : stdgo.GoInt)] - ((_carry << (4i64 : stdgo.GoUInt64) : stdgo.GoInt8)) : stdgo.GoInt8);
                _digits[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)] = (_digits[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)] + (_carry) : stdgo.GoInt8);
            });
        };
        return _digits?.__copy__();
    }
    @:keep
    static public function _nonAdjacentForm( _s:stdgo.Ref<_internal.crypto.internal.edwards25519.Edwards25519_Scalar.Scalar>, _w:stdgo.GoUInt):stdgo.GoArray<stdgo.GoInt8> {
        @:recv var _s:stdgo.Ref<_internal.crypto.internal.edwards25519.Edwards25519_Scalar.Scalar> = _s;
        var _b = _s.bytes();
        if ((_b[(31 : stdgo.GoInt)] > (127 : stdgo.GoUInt8) : Bool)) {
            throw stdgo.Go.toInterface(("scalar has high bit set illegally" : stdgo.GoString));
        };
        if ((_w < (2u32 : stdgo.GoUInt) : Bool)) {
            throw stdgo.Go.toInterface(("w must be at least 2 by the definition of NAF" : stdgo.GoString));
        } else if ((_w > (8u32 : stdgo.GoUInt) : Bool)) {
            throw stdgo.Go.toInterface(("NAF digits must fit in int8" : stdgo.GoString));
        };
        var _naf:stdgo.GoArray<stdgo.GoInt8> = new stdgo.GoArray<stdgo.GoInt8>(256, 256, ...[for (i in 0 ... 256) (0 : stdgo.GoInt8)]);
        var _digits:stdgo.GoArray<stdgo.GoUInt64> = new stdgo.GoArray<stdgo.GoUInt64>(5, 5, ...[for (i in 0 ... 5) (0 : stdgo.GoUInt64)]);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (4 : stdgo.GoInt) : Bool), _i++, {
                _digits[(_i : stdgo.GoInt)] = stdgo._internal.encoding.binary.Binary_littleEndian.littleEndian.uint64((_b.__slice__((_i * (8 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
            });
        };
        var _width = (((1i64 : stdgo.GoUInt64) << _w : stdgo.GoUInt64) : stdgo.GoUInt64);
        var _windowMask = ((_width - (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt64);
        var _pos = ((0u32 : stdgo.GoUInt) : stdgo.GoUInt);
        var _carry = ((0i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
        while ((_pos < (256u32 : stdgo.GoUInt) : Bool)) {
            var _indexU64 = (_pos / (64u32 : stdgo.GoUInt) : stdgo.GoUInt);
            var _indexBit = (_pos % (64u32 : stdgo.GoUInt) : stdgo.GoUInt);
            var _bitBuf:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
            if ((_indexBit < ((64u32 : stdgo.GoUInt) - _w : stdgo.GoUInt) : Bool)) {
                _bitBuf = (_digits[(_indexU64 : stdgo.GoInt)] >> _indexBit : stdgo.GoUInt64);
            } else {
                _bitBuf = (((_digits[(_indexU64 : stdgo.GoInt)] >> _indexBit : stdgo.GoUInt64)) | ((_digits[(((1u32 : stdgo.GoUInt) + _indexU64 : stdgo.GoUInt) : stdgo.GoInt)] << (((64u32 : stdgo.GoUInt) - _indexBit : stdgo.GoUInt)) : stdgo.GoUInt64)) : stdgo.GoUInt64);
            };
            var _window = (_carry + ((_bitBuf & _windowMask : stdgo.GoUInt64)) : stdgo.GoUInt64);
            if ((_window & (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64) == ((0i64 : stdgo.GoUInt64))) {
                _pos = (_pos + ((1u32 : stdgo.GoUInt)) : stdgo.GoUInt);
                continue;
            };
            if ((_window < (_width / (2i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : Bool)) {
                _carry = (0i64 : stdgo.GoUInt64);
                _naf[(_pos : stdgo.GoInt)] = (_window : stdgo.GoInt8);
            } else {
                _carry = (1i64 : stdgo.GoUInt64);
                _naf[(_pos : stdgo.GoInt)] = ((_window : stdgo.GoInt8) - (_width : stdgo.GoInt8) : stdgo.GoInt8);
            };
            _pos = (_pos + (_w) : stdgo.GoUInt);
        };
        return _naf?.__copy__();
    }
    @:keep
    static public function equal( _s:stdgo.Ref<_internal.crypto.internal.edwards25519.Edwards25519_Scalar.Scalar>, _t:stdgo.Ref<_internal.crypto.internal.edwards25519.Edwards25519_Scalar.Scalar>):stdgo.GoInt {
        @:recv var _s:stdgo.Ref<_internal.crypto.internal.edwards25519.Edwards25519_Scalar.Scalar> = _s;
        var _diff:_internal.crypto.internal.edwards25519.Edwards25519_T_fiatScalarMontgomeryDomainFieldElement.T_fiatScalarMontgomeryDomainFieldElement = new _internal.crypto.internal.edwards25519.Edwards25519_T_fiatScalarMontgomeryDomainFieldElement.T_fiatScalarMontgomeryDomainFieldElement(4, 4, ...[for (i in 0 ... 4) (0 : stdgo.GoUInt64)]);
        _internal.crypto.internal.edwards25519.Edwards25519__fiatScalarSub._fiatScalarSub((stdgo.Go.setRef(_diff) : stdgo.Ref<_internal.crypto.internal.edwards25519.Edwards25519_T_fiatScalarMontgomeryDomainFieldElement.T_fiatScalarMontgomeryDomainFieldElement>), (stdgo.Go.setRef(_s._s) : stdgo.Ref<_internal.crypto.internal.edwards25519.Edwards25519_T_fiatScalarMontgomeryDomainFieldElement.T_fiatScalarMontgomeryDomainFieldElement>), (stdgo.Go.setRef(_t._s) : stdgo.Ref<_internal.crypto.internal.edwards25519.Edwards25519_T_fiatScalarMontgomeryDomainFieldElement.T_fiatScalarMontgomeryDomainFieldElement>));
        var _nonzero:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        _internal.crypto.internal.edwards25519.Edwards25519__fiatScalarNonzero._fiatScalarNonzero(stdgo.Go.pointer(_nonzero), ((stdgo.Go.setRef(_diff) : stdgo.Ref<_internal.crypto.internal.edwards25519.Edwards25519_T_fiatScalarMontgomeryDomainFieldElement.T_fiatScalarMontgomeryDomainFieldElement>) : stdgo.Ref<stdgo.GoArray<stdgo.GoUInt64>>));
        _nonzero = (_nonzero | ((_nonzero >> (32i64 : stdgo.GoUInt64) : stdgo.GoUInt64)) : stdgo.GoUInt64);
        _nonzero = (_nonzero | ((_nonzero >> (16i64 : stdgo.GoUInt64) : stdgo.GoUInt64)) : stdgo.GoUInt64);
        _nonzero = (_nonzero | ((_nonzero >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt64)) : stdgo.GoUInt64);
        _nonzero = (_nonzero | ((_nonzero >> (4i64 : stdgo.GoUInt64) : stdgo.GoUInt64)) : stdgo.GoUInt64);
        _nonzero = (_nonzero | ((_nonzero >> (2i64 : stdgo.GoUInt64) : stdgo.GoUInt64)) : stdgo.GoUInt64);
        _nonzero = (_nonzero | ((_nonzero >> (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64)) : stdgo.GoUInt64);
        return ((-1 ^ _nonzero : stdgo.GoInt) & (1 : stdgo.GoInt) : stdgo.GoInt);
    }
    @:keep
    static public function _bytes( _s:stdgo.Ref<_internal.crypto.internal.edwards25519.Edwards25519_Scalar.Scalar>, _out:stdgo.Ref<stdgo.GoArray<stdgo.GoUInt8>>):stdgo.Slice<stdgo.GoUInt8> {
        @:recv var _s:stdgo.Ref<_internal.crypto.internal.edwards25519.Edwards25519_Scalar.Scalar> = _s;
        var _ss:_internal.crypto.internal.edwards25519.Edwards25519_T_fiatScalarNonMontgomeryDomainFieldElement.T_fiatScalarNonMontgomeryDomainFieldElement = new _internal.crypto.internal.edwards25519.Edwards25519_T_fiatScalarNonMontgomeryDomainFieldElement.T_fiatScalarNonMontgomeryDomainFieldElement(4, 4, ...[for (i in 0 ... 4) (0 : stdgo.GoUInt64)]);
        _internal.crypto.internal.edwards25519.Edwards25519__fiatScalarFromMontgomery._fiatScalarFromMontgomery((stdgo.Go.setRef(_ss) : stdgo.Ref<_internal.crypto.internal.edwards25519.Edwards25519_T_fiatScalarNonMontgomeryDomainFieldElement.T_fiatScalarNonMontgomeryDomainFieldElement>), (stdgo.Go.setRef(_s._s) : stdgo.Ref<_internal.crypto.internal.edwards25519.Edwards25519_T_fiatScalarMontgomeryDomainFieldElement.T_fiatScalarMontgomeryDomainFieldElement>));
        _internal.crypto.internal.edwards25519.Edwards25519__fiatScalarToBytes._fiatScalarToBytes(_out, ((stdgo.Go.setRef(_ss) : stdgo.Ref<_internal.crypto.internal.edwards25519.Edwards25519_T_fiatScalarNonMontgomeryDomainFieldElement.T_fiatScalarNonMontgomeryDomainFieldElement>) : stdgo.Ref<stdgo.GoArray<stdgo.GoUInt64>>));
        return (_out.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>);
    }
    @:keep
    static public function bytes( _s:stdgo.Ref<_internal.crypto.internal.edwards25519.Edwards25519_Scalar.Scalar>):stdgo.Slice<stdgo.GoUInt8> {
        @:recv var _s:stdgo.Ref<_internal.crypto.internal.edwards25519.Edwards25519_Scalar.Scalar> = _s;
        var _encoded:stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(32, 32, ...[for (i in 0 ... 32) (0 : stdgo.GoUInt8)]);
        return _s._bytes((stdgo.Go.setRef(_encoded) : stdgo.Ref<stdgo.GoArray<stdgo.GoUInt8>>));
    }
    @:keep
    static public function setBytesWithClamping( _s:stdgo.Ref<_internal.crypto.internal.edwards25519.Edwards25519_Scalar.Scalar>, _x:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Ref<_internal.crypto.internal.edwards25519.Edwards25519_Scalar.Scalar>; var _1 : stdgo.Error; } {
        @:recv var _s:stdgo.Ref<_internal.crypto.internal.edwards25519.Edwards25519_Scalar.Scalar> = _s;
        if ((_x.length) != ((32 : stdgo.GoInt))) {
            return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("edwards25519: invalid SetBytesWithClamping input length" : stdgo.GoString)) };
        };
        var _wideBytes:stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(64, 64, ...[for (i in 0 ... 64) (0 : stdgo.GoUInt8)]);
        stdgo.Go.copySlice((_wideBytes.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>), (_x.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>));
        _wideBytes[(0 : stdgo.GoInt)] = (_wideBytes[(0 : stdgo.GoInt)] & ((248 : stdgo.GoUInt8)) : stdgo.GoUInt8);
        _wideBytes[(31 : stdgo.GoInt)] = (_wideBytes[(31 : stdgo.GoInt)] & ((63 : stdgo.GoUInt8)) : stdgo.GoUInt8);
        _wideBytes[(31 : stdgo.GoInt)] = (_wideBytes[(31 : stdgo.GoInt)] | ((64 : stdgo.GoUInt8)) : stdgo.GoUInt8);
        return _s.setUniformBytes((_wideBytes.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>));
    }
    @:keep
    static public function setCanonicalBytes( _s:stdgo.Ref<_internal.crypto.internal.edwards25519.Edwards25519_Scalar.Scalar>, _x:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Ref<_internal.crypto.internal.edwards25519.Edwards25519_Scalar.Scalar>; var _1 : stdgo.Error; } {
        @:recv var _s:stdgo.Ref<_internal.crypto.internal.edwards25519.Edwards25519_Scalar.Scalar> = _s;
        if ((_x.length) != ((32 : stdgo.GoInt))) {
            return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("invalid scalar length" : stdgo.GoString)) };
        };
        if (!_internal.crypto.internal.edwards25519.Edwards25519__isReduced._isReduced(_x)) {
            return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("invalid scalar encoding" : stdgo.GoString)) };
        };
        _internal.crypto.internal.edwards25519.Edwards25519__fiatScalarFromBytes._fiatScalarFromBytes(((stdgo.Go.setRef(_s._s) : stdgo.Ref<_internal.crypto.internal.edwards25519.Edwards25519_T_fiatScalarMontgomeryDomainFieldElement.T_fiatScalarMontgomeryDomainFieldElement>) : stdgo.Ref<stdgo.GoArray<stdgo.GoUInt64>>), (_x : stdgo.Ref<stdgo.GoArray<stdgo.GoUInt8>>));
        _internal.crypto.internal.edwards25519.Edwards25519__fiatScalarToMontgomery._fiatScalarToMontgomery((stdgo.Go.setRef(_s._s) : stdgo.Ref<_internal.crypto.internal.edwards25519.Edwards25519_T_fiatScalarMontgomeryDomainFieldElement.T_fiatScalarMontgomeryDomainFieldElement>), ((stdgo.Go.setRef(_s._s) : stdgo.Ref<_internal.crypto.internal.edwards25519.Edwards25519_T_fiatScalarMontgomeryDomainFieldElement.T_fiatScalarMontgomeryDomainFieldElement>) : stdgo.Ref<_internal.crypto.internal.edwards25519.Edwards25519_T_fiatScalarNonMontgomeryDomainFieldElement.T_fiatScalarNonMontgomeryDomainFieldElement>));
        return { _0 : _s, _1 : (null : stdgo.Error) };
    }
    @:keep
    static public function _setShortBytes( _s:stdgo.Ref<_internal.crypto.internal.edwards25519.Edwards25519_Scalar.Scalar>, _x:stdgo.Slice<stdgo.GoUInt8>):stdgo.Ref<_internal.crypto.internal.edwards25519.Edwards25519_Scalar.Scalar> {
        @:recv var _s:stdgo.Ref<_internal.crypto.internal.edwards25519.Edwards25519_Scalar.Scalar> = _s;
        if (((_x.length) >= (32 : stdgo.GoInt) : Bool)) {
            throw stdgo.Go.toInterface(("edwards25519: internal error: setShortBytes called with a long string" : stdgo.GoString));
        };
        var _buf:stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(32, 32, ...[for (i in 0 ... 32) (0 : stdgo.GoUInt8)]);
        stdgo.Go.copySlice((_buf.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>), _x);
        _internal.crypto.internal.edwards25519.Edwards25519__fiatScalarFromBytes._fiatScalarFromBytes(((stdgo.Go.setRef(_s._s) : stdgo.Ref<_internal.crypto.internal.edwards25519.Edwards25519_T_fiatScalarMontgomeryDomainFieldElement.T_fiatScalarMontgomeryDomainFieldElement>) : stdgo.Ref<stdgo.GoArray<stdgo.GoUInt64>>), (stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo.GoArray<stdgo.GoUInt8>>));
        _internal.crypto.internal.edwards25519.Edwards25519__fiatScalarToMontgomery._fiatScalarToMontgomery((stdgo.Go.setRef(_s._s) : stdgo.Ref<_internal.crypto.internal.edwards25519.Edwards25519_T_fiatScalarMontgomeryDomainFieldElement.T_fiatScalarMontgomeryDomainFieldElement>), ((stdgo.Go.setRef(_s._s) : stdgo.Ref<_internal.crypto.internal.edwards25519.Edwards25519_T_fiatScalarMontgomeryDomainFieldElement.T_fiatScalarMontgomeryDomainFieldElement>) : stdgo.Ref<_internal.crypto.internal.edwards25519.Edwards25519_T_fiatScalarNonMontgomeryDomainFieldElement.T_fiatScalarNonMontgomeryDomainFieldElement>));
        return _s;
    }
    @:keep
    static public function setUniformBytes( _s:stdgo.Ref<_internal.crypto.internal.edwards25519.Edwards25519_Scalar.Scalar>, _x:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Ref<_internal.crypto.internal.edwards25519.Edwards25519_Scalar.Scalar>; var _1 : stdgo.Error; } {
        @:recv var _s:stdgo.Ref<_internal.crypto.internal.edwards25519.Edwards25519_Scalar.Scalar> = _s;
        if ((_x.length) != ((64 : stdgo.GoInt))) {
            return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("edwards25519: invalid SetUniformBytes input length" : stdgo.GoString)) };
        };
        _s._setShortBytes((_x.__slice__(0, (21 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
        var _t = (stdgo.Go.setRef(({} : _internal.crypto.internal.edwards25519.Edwards25519_Scalar.Scalar)) : stdgo.Ref<_internal.crypto.internal.edwards25519.Edwards25519_Scalar.Scalar>)._setShortBytes((_x.__slice__((21 : stdgo.GoInt), (42 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
        _s.add(_s, _t.multiply(_t, _internal.crypto.internal.edwards25519.Edwards25519__scalarTwo168._scalarTwo168));
        _t._setShortBytes((_x.__slice__((42 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
        _s.add(_s, _t.multiply(_t, _internal.crypto.internal.edwards25519.Edwards25519__scalarTwo336._scalarTwo336));
        return { _0 : _s, _1 : (null : stdgo.Error) };
    }
    @:keep
    static public function set( _s:stdgo.Ref<_internal.crypto.internal.edwards25519.Edwards25519_Scalar.Scalar>, _x:stdgo.Ref<_internal.crypto.internal.edwards25519.Edwards25519_Scalar.Scalar>):stdgo.Ref<_internal.crypto.internal.edwards25519.Edwards25519_Scalar.Scalar> {
        @:recv var _s:stdgo.Ref<_internal.crypto.internal.edwards25519.Edwards25519_Scalar.Scalar> = _s;
        {
            var __tmp__ = (_x : _internal.crypto.internal.edwards25519.Edwards25519_Scalar.Scalar)?.__copy__();
            (_s : _internal.crypto.internal.edwards25519.Edwards25519_Scalar.Scalar)._s = __tmp__._s;
        };
        return _s;
    }
    @:keep
    static public function multiply( _s:stdgo.Ref<_internal.crypto.internal.edwards25519.Edwards25519_Scalar.Scalar>, _x:stdgo.Ref<_internal.crypto.internal.edwards25519.Edwards25519_Scalar.Scalar>, _y:stdgo.Ref<_internal.crypto.internal.edwards25519.Edwards25519_Scalar.Scalar>):stdgo.Ref<_internal.crypto.internal.edwards25519.Edwards25519_Scalar.Scalar> {
        @:recv var _s:stdgo.Ref<_internal.crypto.internal.edwards25519.Edwards25519_Scalar.Scalar> = _s;
        _internal.crypto.internal.edwards25519.Edwards25519__fiatScalarMul._fiatScalarMul((stdgo.Go.setRef(_s._s) : stdgo.Ref<_internal.crypto.internal.edwards25519.Edwards25519_T_fiatScalarMontgomeryDomainFieldElement.T_fiatScalarMontgomeryDomainFieldElement>), (stdgo.Go.setRef(_x._s) : stdgo.Ref<_internal.crypto.internal.edwards25519.Edwards25519_T_fiatScalarMontgomeryDomainFieldElement.T_fiatScalarMontgomeryDomainFieldElement>), (stdgo.Go.setRef(_y._s) : stdgo.Ref<_internal.crypto.internal.edwards25519.Edwards25519_T_fiatScalarMontgomeryDomainFieldElement.T_fiatScalarMontgomeryDomainFieldElement>));
        return _s;
    }
    @:keep
    static public function negate( _s:stdgo.Ref<_internal.crypto.internal.edwards25519.Edwards25519_Scalar.Scalar>, _x:stdgo.Ref<_internal.crypto.internal.edwards25519.Edwards25519_Scalar.Scalar>):stdgo.Ref<_internal.crypto.internal.edwards25519.Edwards25519_Scalar.Scalar> {
        @:recv var _s:stdgo.Ref<_internal.crypto.internal.edwards25519.Edwards25519_Scalar.Scalar> = _s;
        _internal.crypto.internal.edwards25519.Edwards25519__fiatScalarOpp._fiatScalarOpp((stdgo.Go.setRef(_s._s) : stdgo.Ref<_internal.crypto.internal.edwards25519.Edwards25519_T_fiatScalarMontgomeryDomainFieldElement.T_fiatScalarMontgomeryDomainFieldElement>), (stdgo.Go.setRef(_x._s) : stdgo.Ref<_internal.crypto.internal.edwards25519.Edwards25519_T_fiatScalarMontgomeryDomainFieldElement.T_fiatScalarMontgomeryDomainFieldElement>));
        return _s;
    }
    @:keep
    static public function subtract( _s:stdgo.Ref<_internal.crypto.internal.edwards25519.Edwards25519_Scalar.Scalar>, _x:stdgo.Ref<_internal.crypto.internal.edwards25519.Edwards25519_Scalar.Scalar>, _y:stdgo.Ref<_internal.crypto.internal.edwards25519.Edwards25519_Scalar.Scalar>):stdgo.Ref<_internal.crypto.internal.edwards25519.Edwards25519_Scalar.Scalar> {
        @:recv var _s:stdgo.Ref<_internal.crypto.internal.edwards25519.Edwards25519_Scalar.Scalar> = _s;
        _internal.crypto.internal.edwards25519.Edwards25519__fiatScalarSub._fiatScalarSub((stdgo.Go.setRef(_s._s) : stdgo.Ref<_internal.crypto.internal.edwards25519.Edwards25519_T_fiatScalarMontgomeryDomainFieldElement.T_fiatScalarMontgomeryDomainFieldElement>), (stdgo.Go.setRef(_x._s) : stdgo.Ref<_internal.crypto.internal.edwards25519.Edwards25519_T_fiatScalarMontgomeryDomainFieldElement.T_fiatScalarMontgomeryDomainFieldElement>), (stdgo.Go.setRef(_y._s) : stdgo.Ref<_internal.crypto.internal.edwards25519.Edwards25519_T_fiatScalarMontgomeryDomainFieldElement.T_fiatScalarMontgomeryDomainFieldElement>));
        return _s;
    }
    @:keep
    static public function add( _s:stdgo.Ref<_internal.crypto.internal.edwards25519.Edwards25519_Scalar.Scalar>, _x:stdgo.Ref<_internal.crypto.internal.edwards25519.Edwards25519_Scalar.Scalar>, _y:stdgo.Ref<_internal.crypto.internal.edwards25519.Edwards25519_Scalar.Scalar>):stdgo.Ref<_internal.crypto.internal.edwards25519.Edwards25519_Scalar.Scalar> {
        @:recv var _s:stdgo.Ref<_internal.crypto.internal.edwards25519.Edwards25519_Scalar.Scalar> = _s;
        _internal.crypto.internal.edwards25519.Edwards25519__fiatScalarAdd._fiatScalarAdd((stdgo.Go.setRef(_s._s) : stdgo.Ref<_internal.crypto.internal.edwards25519.Edwards25519_T_fiatScalarMontgomeryDomainFieldElement.T_fiatScalarMontgomeryDomainFieldElement>), (stdgo.Go.setRef(_x._s) : stdgo.Ref<_internal.crypto.internal.edwards25519.Edwards25519_T_fiatScalarMontgomeryDomainFieldElement.T_fiatScalarMontgomeryDomainFieldElement>), (stdgo.Go.setRef(_y._s) : stdgo.Ref<_internal.crypto.internal.edwards25519.Edwards25519_T_fiatScalarMontgomeryDomainFieldElement.T_fiatScalarMontgomeryDomainFieldElement>));
        return _s;
    }
    @:keep
    static public function multiplyAdd( _s:stdgo.Ref<_internal.crypto.internal.edwards25519.Edwards25519_Scalar.Scalar>, _x:stdgo.Ref<_internal.crypto.internal.edwards25519.Edwards25519_Scalar.Scalar>, _y:stdgo.Ref<_internal.crypto.internal.edwards25519.Edwards25519_Scalar.Scalar>, _z:stdgo.Ref<_internal.crypto.internal.edwards25519.Edwards25519_Scalar.Scalar>):stdgo.Ref<_internal.crypto.internal.edwards25519.Edwards25519_Scalar.Scalar> {
        @:recv var _s:stdgo.Ref<_internal.crypto.internal.edwards25519.Edwards25519_Scalar.Scalar> = _s;
        var _zCopy = (stdgo.Go.setRef(({} : _internal.crypto.internal.edwards25519.Edwards25519_Scalar.Scalar)) : stdgo.Ref<_internal.crypto.internal.edwards25519.Edwards25519_Scalar.Scalar>).set(_z);
        return _s.multiply(_x, _y).add(_s, _zCopy);
    }
}
