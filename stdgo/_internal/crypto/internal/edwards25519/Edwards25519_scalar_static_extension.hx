package stdgo._internal.crypto.internal.edwards25519;
@:keep @:allow(stdgo._internal.crypto.internal.edwards25519.Edwards25519.Scalar_asInterface) class Scalar_static_extension {
    @:keep
    @:tdfield
    static public function _signedRadix16( _s:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_scalar.Scalar>):stdgo.GoArray<stdgo.GoInt8> {
        @:recv var _s:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_scalar.Scalar> = _s;
        var _b = _s.bytes();
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/edwards25519/scalar.go#L323"
        if ((_b[(31 : stdgo.GoInt)] > (127 : stdgo.GoUInt8) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/crypto/internal/edwards25519/scalar.go#L324"
            throw stdgo.Go.toInterface(("scalar has high bit set illegally" : stdgo.GoString));
        };
        var _digits:stdgo.GoArray<stdgo.GoInt8> = new stdgo.GoArray<stdgo.GoInt8>(64, 64).__setNumber32__();
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/edwards25519/scalar.go#L330"
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (32 : stdgo.GoInt) : Bool)) {
                _digits[((2 : stdgo.GoInt) * _i : stdgo.GoInt)] = ((_b[(_i : stdgo.GoInt)] & (15 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoInt8);
_digits[(((2 : stdgo.GoInt) * _i : stdgo.GoInt) + (1 : stdgo.GoInt) : stdgo.GoInt)] = ((((_b[(_i : stdgo.GoInt)] >> (4i64 : stdgo.GoUInt64) : stdgo.GoUInt8)) & (15 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoInt8);
                _i++;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/edwards25519/scalar.go#L336"
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (63 : stdgo.GoInt) : Bool)) {
                var _carry = (((_digits[(_i : stdgo.GoInt)] + (8 : stdgo.GoInt8) : stdgo.GoInt8)) >> (4i64 : stdgo.GoUInt64) : stdgo.GoInt8);
_digits[(_i : stdgo.GoInt)] = (_digits[(_i : stdgo.GoInt)] - ((_carry << (4i64 : stdgo.GoUInt64) : stdgo.GoInt8)) : stdgo.GoInt8);
_digits[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)] = (_digits[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)] + (_carry) : stdgo.GoInt8);
                _i++;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/edwards25519/scalar.go#L342"
        return _digits?.__copy__();
    }
    @:keep
    @:tdfield
    static public function _nonAdjacentForm( _s:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_scalar.Scalar>, _w:stdgo.GoUInt):stdgo.GoArray<stdgo.GoInt8> {
        @:recv var _s:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_scalar.Scalar> = _s;
        var _b = _s.bytes();
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/edwards25519/scalar.go#L261"
        if ((_b[(31 : stdgo.GoInt)] > (127 : stdgo.GoUInt8) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/crypto/internal/edwards25519/scalar.go#L262"
            throw stdgo.Go.toInterface(("scalar has high bit set illegally" : stdgo.GoString));
        };
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/edwards25519/scalar.go#L264"
        if ((_w < (2u32 : stdgo.GoUInt) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/crypto/internal/edwards25519/scalar.go#L265"
            throw stdgo.Go.toInterface(("w must be at least 2 by the definition of NAF" : stdgo.GoString));
        } else if ((_w > (8u32 : stdgo.GoUInt) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/crypto/internal/edwards25519/scalar.go#L267"
            throw stdgo.Go.toInterface(("NAF digits must fit in int8" : stdgo.GoString));
        };
        var _naf:stdgo.GoArray<stdgo.GoInt8> = new stdgo.GoArray<stdgo.GoInt8>(256, 256).__setNumber32__();
        var _digits:stdgo.GoArray<stdgo.GoUInt64> = new stdgo.GoArray<stdgo.GoUInt64>(5, 5).__setNumber64__();
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/edwards25519/scalar.go#L273"
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (4 : stdgo.GoInt) : Bool)) {
                _digits[(_i : stdgo.GoInt)] = stdgo._internal.encoding.binary.Binary_littleendian.littleEndian.uint64((_b.__slice__((_i * (8 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
                _i++;
            };
        };
        var _width = (((1i64 : stdgo.GoUInt64) << _w : stdgo.GoUInt64) : stdgo.GoUInt64);
        var _windowMask = ((_width - (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt64);
        var _pos = ((0u32 : stdgo.GoUInt) : stdgo.GoUInt);
        var _carry = ((0i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/edwards25519/scalar.go#L282"
        while ((_pos < (256u32 : stdgo.GoUInt) : Bool)) {
            var _indexU64 = (_pos / (64u32 : stdgo.GoUInt) : stdgo.GoUInt);
            var _indexBit = (_pos % (64u32 : stdgo.GoUInt) : stdgo.GoUInt);
            var _bitBuf:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
            //"file:///home/runner/.go/go1.21.3/src/crypto/internal/edwards25519/scalar.go#L286"
            if ((_indexBit < ((64u32 : stdgo.GoUInt) - _w : stdgo.GoUInt) : Bool)) {
                _bitBuf = (_digits[(_indexU64 : stdgo.GoInt)] >> _indexBit : stdgo.GoUInt64);
            } else {
                _bitBuf = (((_digits[(_indexU64 : stdgo.GoInt)] >> _indexBit : stdgo.GoUInt64)) | ((_digits[(((1u32 : stdgo.GoUInt) + _indexU64 : stdgo.GoUInt) : stdgo.GoInt)] << (((64u32 : stdgo.GoUInt) - _indexBit : stdgo.GoUInt)) : stdgo.GoUInt64)) : stdgo.GoUInt64);
            };
            var _window = (_carry + ((_bitBuf & _windowMask : stdgo.GoUInt64)) : stdgo.GoUInt64);
            //"file:///home/runner/.go/go1.21.3/src/crypto/internal/edwards25519/scalar.go#L297"
            if ((_window & (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64) == ((0i64 : stdgo.GoUInt64))) {
                _pos = (_pos + ((1u32 : stdgo.GoUInt)) : stdgo.GoUInt);
                //"file:///home/runner/.go/go1.21.3/src/crypto/internal/edwards25519/scalar.go#L305"
                continue;
            };
            //"file:///home/runner/.go/go1.21.3/src/crypto/internal/edwards25519/scalar.go#L308"
            if ((_window < (_width / (2i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : Bool)) {
                _carry = (0i64 : stdgo.GoUInt64);
                _naf[(_pos : stdgo.GoInt)] = (_window : stdgo.GoInt8);
            } else {
                _carry = (1i64 : stdgo.GoUInt64);
                _naf[(_pos : stdgo.GoInt)] = ((_window : stdgo.GoInt8) - (_width : stdgo.GoInt8) : stdgo.GoInt8);
            };
            _pos = (_pos + (_w) : stdgo.GoUInt);
        };
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/edwards25519/scalar.go#L318"
        return _naf?.__copy__();
    }
    @:keep
    @:tdfield
    static public function equal( _s:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_scalar.Scalar>, _t:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_scalar.Scalar>):stdgo.GoInt {
        @:recv var _s:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_scalar.Scalar> = _s;
        var _diff:stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_fiatscalarmontgomerydomainfieldelement.T_fiatScalarMontgomeryDomainFieldElement = new stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_fiatscalarmontgomerydomainfieldelement.T_fiatScalarMontgomeryDomainFieldElement(4, 4, ...[for (i in 0 ... 4) (0 : stdgo.GoUInt64)]);
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/edwards25519/scalar.go#L241"
        stdgo._internal.crypto.internal.edwards25519.Edwards25519__fiatscalarsub._fiatScalarSub((stdgo.Go.setRef(_diff) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_fiatscalarmontgomerydomainfieldelement.T_fiatScalarMontgomeryDomainFieldElement>), (stdgo.Go.setRef((@:checkr _s ?? throw "null pointer dereference")._s) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_fiatscalarmontgomerydomainfieldelement.T_fiatScalarMontgomeryDomainFieldElement>), (stdgo.Go.setRef((@:checkr _t ?? throw "null pointer dereference")._s) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_fiatscalarmontgomerydomainfieldelement.T_fiatScalarMontgomeryDomainFieldElement>));
        var _nonzero:stdgo.GoUInt64 = (0 : stdgo.GoUInt64), _nonzero__pointer__ = stdgo.Go.pointer(_nonzero);
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/edwards25519/scalar.go#L243"
        stdgo._internal.crypto.internal.edwards25519.Edwards25519__fiatscalarnonzero._fiatScalarNonzero(_nonzero__pointer__, ((stdgo.Go.setRef(_diff) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_fiatscalarmontgomerydomainfieldelement.T_fiatScalarMontgomeryDomainFieldElement>) : stdgo.Ref<stdgo.GoArray<stdgo.GoUInt64>>));
        _nonzero = (_nonzero | ((_nonzero >> (32i64 : stdgo.GoUInt64) : stdgo.GoUInt64)) : stdgo.GoUInt64);
        _nonzero = (_nonzero | ((_nonzero >> (16i64 : stdgo.GoUInt64) : stdgo.GoUInt64)) : stdgo.GoUInt64);
        _nonzero = (_nonzero | ((_nonzero >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt64)) : stdgo.GoUInt64);
        _nonzero = (_nonzero | ((_nonzero >> (4i64 : stdgo.GoUInt64) : stdgo.GoUInt64)) : stdgo.GoUInt64);
        _nonzero = (_nonzero | ((_nonzero >> (2i64 : stdgo.GoUInt64) : stdgo.GoUInt64)) : stdgo.GoUInt64);
        _nonzero = (_nonzero | ((_nonzero >> (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64)) : stdgo.GoUInt64);
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/edwards25519/scalar.go#L250"
        return ((-1 ^ _nonzero : stdgo.GoInt) & (1 : stdgo.GoInt) : stdgo.GoInt);
    }
    @:keep
    @:tdfield
    static public function _bytes( _s:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_scalar.Scalar>, _out:stdgo.Ref<stdgo.GoArray<stdgo.GoUInt8>>):stdgo.Slice<stdgo.GoUInt8> {
        @:recv var _s:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_scalar.Scalar> = _s;
        var _ss:stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_fiatscalarnonmontgomerydomainfieldelement.T_fiatScalarNonMontgomeryDomainFieldElement = new stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_fiatscalarnonmontgomerydomainfieldelement.T_fiatScalarNonMontgomeryDomainFieldElement(4, 4, ...[for (i in 0 ... 4) (0 : stdgo.GoUInt64)]);
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/edwards25519/scalar.go#L233"
        stdgo._internal.crypto.internal.edwards25519.Edwards25519__fiatscalarfrommontgomery._fiatScalarFromMontgomery((stdgo.Go.setRef(_ss) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_fiatscalarnonmontgomerydomainfieldelement.T_fiatScalarNonMontgomeryDomainFieldElement>), (stdgo.Go.setRef((@:checkr _s ?? throw "null pointer dereference")._s) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_fiatscalarmontgomerydomainfieldelement.T_fiatScalarMontgomeryDomainFieldElement>));
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/edwards25519/scalar.go#L234"
        stdgo._internal.crypto.internal.edwards25519.Edwards25519__fiatscalartobytes._fiatScalarToBytes(_out, ((stdgo.Go.setRef(_ss) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_fiatscalarnonmontgomerydomainfieldelement.T_fiatScalarNonMontgomeryDomainFieldElement>) : stdgo.Ref<stdgo.GoArray<stdgo.GoUInt64>>));
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/edwards25519/scalar.go#L235"
        return (_out.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>);
    }
    @:keep
    @:tdfield
    static public function bytes( _s:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_scalar.Scalar>):stdgo.Slice<stdgo.GoUInt8> {
        @:recv var _s:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_scalar.Scalar> = _s;
        var _encoded:stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(32, 32).__setNumber32__();
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/edwards25519/scalar.go#L228"
        return _s._bytes((stdgo.Go.setRef(_encoded) : stdgo.Ref<stdgo.GoArray<stdgo.GoUInt8>>));
    }
    @:keep
    @:tdfield
    static public function setBytesWithClamping( _s:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_scalar.Scalar>, _x:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_scalar.Scalar>; var _1 : stdgo.Error; } {
        @:recv var _s:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_scalar.Scalar> = _s;
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/edwards25519/scalar.go#L209"
        if ((_x.length) != ((32 : stdgo.GoInt))) {
            //"file:///home/runner/.go/go1.21.3/src/crypto/internal/edwards25519/scalar.go#L210"
            return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("edwards25519: invalid SetBytesWithClamping input length" : stdgo.GoString)) };
        };
        var _wideBytes:stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(64, 64).__setNumber32__();
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/edwards25519/scalar.go#L216"
        (_wideBytes.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>).__copyTo__((_x.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>));
        _wideBytes[(0 : stdgo.GoInt)] = (_wideBytes[(0 : stdgo.GoInt)] & ((248 : stdgo.GoUInt8)) : stdgo.GoUInt8);
        _wideBytes[(31 : stdgo.GoInt)] = (_wideBytes[(31 : stdgo.GoInt)] & ((63 : stdgo.GoUInt8)) : stdgo.GoUInt8);
        _wideBytes[(31 : stdgo.GoInt)] = (_wideBytes[(31 : stdgo.GoInt)] | ((64 : stdgo.GoUInt8)) : stdgo.GoUInt8);
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/edwards25519/scalar.go#L220"
        return _s.setUniformBytes((_wideBytes.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>));
    }
    @:keep
    @:tdfield
    static public function setCanonicalBytes( _s:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_scalar.Scalar>, _x:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_scalar.Scalar>; var _1 : stdgo.Error; } {
        @:recv var _s:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_scalar.Scalar> = _s;
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/edwards25519/scalar.go#L159"
        if ((_x.length) != ((32 : stdgo.GoInt))) {
            //"file:///home/runner/.go/go1.21.3/src/crypto/internal/edwards25519/scalar.go#L160"
            return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("invalid scalar length" : stdgo.GoString)) };
        };
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/edwards25519/scalar.go#L162"
        if (!stdgo._internal.crypto.internal.edwards25519.Edwards25519__isreduced._isReduced(_x)) {
            //"file:///home/runner/.go/go1.21.3/src/crypto/internal/edwards25519/scalar.go#L163"
            return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("invalid scalar encoding" : stdgo.GoString)) };
        };
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/edwards25519/scalar.go#L166"
        stdgo._internal.crypto.internal.edwards25519.Edwards25519__fiatscalarfrombytes._fiatScalarFromBytes(((stdgo.Go.setRef((@:checkr _s ?? throw "null pointer dereference")._s) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_fiatscalarmontgomerydomainfieldelement.T_fiatScalarMontgomeryDomainFieldElement>) : stdgo.Ref<stdgo.GoArray<stdgo.GoUInt64>>), (_x : stdgo.Ref<stdgo.GoArray<stdgo.GoUInt8>>));
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/edwards25519/scalar.go#L167"
        stdgo._internal.crypto.internal.edwards25519.Edwards25519__fiatscalartomontgomery._fiatScalarToMontgomery((stdgo.Go.setRef((@:checkr _s ?? throw "null pointer dereference")._s) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_fiatscalarmontgomerydomainfieldelement.T_fiatScalarMontgomeryDomainFieldElement>), ((stdgo.Go.setRef((@:checkr _s ?? throw "null pointer dereference")._s) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_fiatscalarmontgomerydomainfieldelement.T_fiatScalarMontgomeryDomainFieldElement>) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_fiatscalarnonmontgomerydomainfieldelement.T_fiatScalarNonMontgomeryDomainFieldElement>));
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/edwards25519/scalar.go#L169"
        return { _0 : _s, _1 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function _setShortBytes( _s:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_scalar.Scalar>, _x:stdgo.Slice<stdgo.GoUInt8>):stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_scalar.Scalar> {
        @:recv var _s:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_scalar.Scalar> = _s;
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/edwards25519/scalar.go#L145"
        if (((_x.length) >= (32 : stdgo.GoInt) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/crypto/internal/edwards25519/scalar.go#L146"
            throw stdgo.Go.toInterface(("edwards25519: internal error: setShortBytes called with a long string" : stdgo.GoString));
        };
        var _buf:stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(32, 32).__setNumber32__();
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/edwards25519/scalar.go#L149"
        (_buf.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>).__copyTo__(_x);
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/edwards25519/scalar.go#L150"
        stdgo._internal.crypto.internal.edwards25519.Edwards25519__fiatscalarfrombytes._fiatScalarFromBytes(((stdgo.Go.setRef((@:checkr _s ?? throw "null pointer dereference")._s) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_fiatscalarmontgomerydomainfieldelement.T_fiatScalarMontgomeryDomainFieldElement>) : stdgo.Ref<stdgo.GoArray<stdgo.GoUInt64>>), (stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo.GoArray<stdgo.GoUInt8>>));
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/edwards25519/scalar.go#L151"
        stdgo._internal.crypto.internal.edwards25519.Edwards25519__fiatscalartomontgomery._fiatScalarToMontgomery((stdgo.Go.setRef((@:checkr _s ?? throw "null pointer dereference")._s) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_fiatscalarmontgomerydomainfieldelement.T_fiatScalarMontgomeryDomainFieldElement>), ((stdgo.Go.setRef((@:checkr _s ?? throw "null pointer dereference")._s) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_fiatscalarmontgomerydomainfieldelement.T_fiatScalarMontgomeryDomainFieldElement>) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_fiatscalarnonmontgomerydomainfieldelement.T_fiatScalarNonMontgomeryDomainFieldElement>));
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/edwards25519/scalar.go#L152"
        return _s;
    }
    @:keep
    @:tdfield
    static public function setUniformBytes( _s:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_scalar.Scalar>, _x:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_scalar.Scalar>; var _1 : stdgo.Error; } {
        @:recv var _s:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_scalar.Scalar> = _s;
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/edwards25519/scalar.go#L110"
        if ((_x.length) != ((64 : stdgo.GoInt))) {
            //"file:///home/runner/.go/go1.21.3/src/crypto/internal/edwards25519/scalar.go#L111"
            return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("edwards25519: invalid SetUniformBytes input length" : stdgo.GoString)) };
        };
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/edwards25519/scalar.go#L125"
        _s._setShortBytes((_x.__slice__(0, (21 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
        var _t = (stdgo.Go.setRef(({} : stdgo._internal.crypto.internal.edwards25519.Edwards25519_scalar.Scalar)) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_scalar.Scalar>)._setShortBytes((_x.__slice__((21 : stdgo.GoInt), (42 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/edwards25519/scalar.go#L127"
        _s.add(_s, _t.multiply(_t, stdgo._internal.crypto.internal.edwards25519.Edwards25519__scalartwo168._scalarTwo168));
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/edwards25519/scalar.go#L128"
        _t._setShortBytes((_x.__slice__((42 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/edwards25519/scalar.go#L129"
        _s.add(_s, _t.multiply(_t, stdgo._internal.crypto.internal.edwards25519.Edwards25519__scalartwo336._scalarTwo336));
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/edwards25519/scalar.go#L131"
        return { _0 : _s, _1 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function set( _s:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_scalar.Scalar>, _x:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_scalar.Scalar>):stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_scalar.Scalar> {
        @:recv var _s:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_scalar.Scalar> = _s;
        {
            var __tmp__ = (_x : stdgo._internal.crypto.internal.edwards25519.Edwards25519_scalar.Scalar)?.__copy__();
            var x = (_s : stdgo._internal.crypto.internal.edwards25519.Edwards25519_scalar.Scalar);
            x._s = __tmp__?._s;
        };
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/edwards25519/scalar.go#L100"
        return _s;
    }
    @:keep
    @:tdfield
    static public function multiply( _s:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_scalar.Scalar>, _x:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_scalar.Scalar>, _y:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_scalar.Scalar>):stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_scalar.Scalar> {
        @:recv var _s:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_scalar.Scalar> = _s;
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/edwards25519/scalar.go#L93"
        stdgo._internal.crypto.internal.edwards25519.Edwards25519__fiatscalarmul._fiatScalarMul((stdgo.Go.setRef((@:checkr _s ?? throw "null pointer dereference")._s) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_fiatscalarmontgomerydomainfieldelement.T_fiatScalarMontgomeryDomainFieldElement>), (stdgo.Go.setRef((@:checkr _x ?? throw "null pointer dereference")._s) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_fiatscalarmontgomerydomainfieldelement.T_fiatScalarMontgomeryDomainFieldElement>), (stdgo.Go.setRef((@:checkr _y ?? throw "null pointer dereference")._s) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_fiatscalarmontgomerydomainfieldelement.T_fiatScalarMontgomeryDomainFieldElement>));
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/edwards25519/scalar.go#L94"
        return _s;
    }
    @:keep
    @:tdfield
    static public function negate( _s:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_scalar.Scalar>, _x:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_scalar.Scalar>):stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_scalar.Scalar> {
        @:recv var _s:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_scalar.Scalar> = _s;
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/edwards25519/scalar.go#L86"
        stdgo._internal.crypto.internal.edwards25519.Edwards25519__fiatscalaropp._fiatScalarOpp((stdgo.Go.setRef((@:checkr _s ?? throw "null pointer dereference")._s) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_fiatscalarmontgomerydomainfieldelement.T_fiatScalarMontgomeryDomainFieldElement>), (stdgo.Go.setRef((@:checkr _x ?? throw "null pointer dereference")._s) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_fiatscalarmontgomerydomainfieldelement.T_fiatScalarMontgomeryDomainFieldElement>));
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/edwards25519/scalar.go#L87"
        return _s;
    }
    @:keep
    @:tdfield
    static public function subtract( _s:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_scalar.Scalar>, _x:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_scalar.Scalar>, _y:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_scalar.Scalar>):stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_scalar.Scalar> {
        @:recv var _s:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_scalar.Scalar> = _s;
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/edwards25519/scalar.go#L79"
        stdgo._internal.crypto.internal.edwards25519.Edwards25519__fiatscalarsub._fiatScalarSub((stdgo.Go.setRef((@:checkr _s ?? throw "null pointer dereference")._s) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_fiatscalarmontgomerydomainfieldelement.T_fiatScalarMontgomeryDomainFieldElement>), (stdgo.Go.setRef((@:checkr _x ?? throw "null pointer dereference")._s) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_fiatscalarmontgomerydomainfieldelement.T_fiatScalarMontgomeryDomainFieldElement>), (stdgo.Go.setRef((@:checkr _y ?? throw "null pointer dereference")._s) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_fiatscalarmontgomerydomainfieldelement.T_fiatScalarMontgomeryDomainFieldElement>));
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/edwards25519/scalar.go#L80"
        return _s;
    }
    @:keep
    @:tdfield
    static public function add( _s:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_scalar.Scalar>, _x:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_scalar.Scalar>, _y:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_scalar.Scalar>):stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_scalar.Scalar> {
        @:recv var _s:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_scalar.Scalar> = _s;
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/edwards25519/scalar.go#L72"
        stdgo._internal.crypto.internal.edwards25519.Edwards25519__fiatscalaradd._fiatScalarAdd((stdgo.Go.setRef((@:checkr _s ?? throw "null pointer dereference")._s) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_fiatscalarmontgomerydomainfieldelement.T_fiatScalarMontgomeryDomainFieldElement>), (stdgo.Go.setRef((@:checkr _x ?? throw "null pointer dereference")._s) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_fiatscalarmontgomerydomainfieldelement.T_fiatScalarMontgomeryDomainFieldElement>), (stdgo.Go.setRef((@:checkr _y ?? throw "null pointer dereference")._s) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_fiatscalarmontgomerydomainfieldelement.T_fiatScalarMontgomeryDomainFieldElement>));
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/edwards25519/scalar.go#L73"
        return _s;
    }
    @:keep
    @:tdfield
    static public function multiplyAdd( _s:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_scalar.Scalar>, _x:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_scalar.Scalar>, _y:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_scalar.Scalar>, _z:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_scalar.Scalar>):stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_scalar.Scalar> {
        @:recv var _s:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_scalar.Scalar> = _s;
        var _zCopy = (stdgo.Go.setRef(({} : stdgo._internal.crypto.internal.edwards25519.Edwards25519_scalar.Scalar)) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_scalar.Scalar>).set(_z);
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/edwards25519/scalar.go#L66"
        return _s.multiply(_x, _y).add(_s, _zCopy);
    }
}
