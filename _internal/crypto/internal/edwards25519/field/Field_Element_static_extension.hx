package _internal.crypto.internal.edwards25519.field;
@:keep @:allow(_internal.crypto.internal.edwards25519.field.Field.Element_asInterface) class Element_static_extension {
    @:keep
    static public function _carryPropagateGeneric( _v:stdgo.Ref<_internal.crypto.internal.edwards25519.field.Field_Element.Element>):stdgo.Ref<_internal.crypto.internal.edwards25519.field.Field_Element.Element> {
        @:recv var _v:stdgo.Ref<_internal.crypto.internal.edwards25519.field.Field_Element.Element> = _v;
        var _c0 = (_v._l0 >> (51i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
        var _c1 = (_v._l1 >> (51i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
        var _c2 = (_v._l2 >> (51i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
        var _c3 = (_v._l3 >> (51i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
        var _c4 = (_v._l4 >> (51i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
        _v._l0 = ((_v._l0 & (2251799813685247i64 : stdgo.GoUInt64) : stdgo.GoUInt64) + (_c4 * (19i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt64);
        _v._l1 = ((_v._l1 & (2251799813685247i64 : stdgo.GoUInt64) : stdgo.GoUInt64) + _c0 : stdgo.GoUInt64);
        _v._l2 = ((_v._l2 & (2251799813685247i64 : stdgo.GoUInt64) : stdgo.GoUInt64) + _c1 : stdgo.GoUInt64);
        _v._l3 = ((_v._l3 & (2251799813685247i64 : stdgo.GoUInt64) : stdgo.GoUInt64) + _c2 : stdgo.GoUInt64);
        _v._l4 = ((_v._l4 & (2251799813685247i64 : stdgo.GoUInt64) : stdgo.GoUInt64) + _c3 : stdgo.GoUInt64);
        return _v;
    }
    @:keep
    static public function _carryPropagate( _v:stdgo.Ref<_internal.crypto.internal.edwards25519.field.Field_Element.Element>):stdgo.Ref<_internal.crypto.internal.edwards25519.field.Field_Element.Element> {
        @:recv var _v:stdgo.Ref<_internal.crypto.internal.edwards25519.field.Field_Element.Element> = _v;
        return _v._carryPropagateGeneric();
    }
    @:keep
    static public function sqrtRatio( _r:stdgo.Ref<_internal.crypto.internal.edwards25519.field.Field_Element.Element>, _u:stdgo.Ref<_internal.crypto.internal.edwards25519.field.Field_Element.Element>, _v:stdgo.Ref<_internal.crypto.internal.edwards25519.field.Field_Element.Element>):{ var _0 : stdgo.Ref<_internal.crypto.internal.edwards25519.field.Field_Element.Element>; var _1 : stdgo.GoInt; } {
        @:recv var _r:stdgo.Ref<_internal.crypto.internal.edwards25519.field.Field_Element.Element> = _r;
        var r = (null : stdgo.Ref<_internal.crypto.internal.edwards25519.field.Field_Element.Element>), _wasSquare = (0 : stdgo.GoInt);
        var _t0 = (stdgo.Go.setRef(({} : _internal.crypto.internal.edwards25519.field.Field_Element.Element)) : stdgo.Ref<_internal.crypto.internal.edwards25519.field.Field_Element.Element>);
        var _v2 = (stdgo.Go.setRef(({} : _internal.crypto.internal.edwards25519.field.Field_Element.Element)) : stdgo.Ref<_internal.crypto.internal.edwards25519.field.Field_Element.Element>).square(_v);
        var _uv3 = (stdgo.Go.setRef(({} : _internal.crypto.internal.edwards25519.field.Field_Element.Element)) : stdgo.Ref<_internal.crypto.internal.edwards25519.field.Field_Element.Element>).multiply(_u, _t0.multiply(_v2, _v));
        var _uv7 = (stdgo.Go.setRef(({} : _internal.crypto.internal.edwards25519.field.Field_Element.Element)) : stdgo.Ref<_internal.crypto.internal.edwards25519.field.Field_Element.Element>).multiply(_uv3, _t0.square(_v2));
        var _rr = (stdgo.Go.setRef(({} : _internal.crypto.internal.edwards25519.field.Field_Element.Element)) : stdgo.Ref<_internal.crypto.internal.edwards25519.field.Field_Element.Element>).multiply(_uv3, _t0.pow22523(_uv7));
        var _check = (stdgo.Go.setRef(({} : _internal.crypto.internal.edwards25519.field.Field_Element.Element)) : stdgo.Ref<_internal.crypto.internal.edwards25519.field.Field_Element.Element>).multiply(_v, _t0.square(_rr));
        var _uNeg = (stdgo.Go.setRef(({} : _internal.crypto.internal.edwards25519.field.Field_Element.Element)) : stdgo.Ref<_internal.crypto.internal.edwards25519.field.Field_Element.Element>).negate(_u);
        var _correctSignSqrt = (_check.equal(_u) : stdgo.GoInt);
        var _flippedSignSqrt = (_check.equal(_uNeg) : stdgo.GoInt);
        var _flippedSignSqrtI = (_check.equal(_t0.multiply(_uNeg, _internal.crypto.internal.edwards25519.field.Field__sqrtM1._sqrtM1)) : stdgo.GoInt);
        var _rPrime = (stdgo.Go.setRef(({} : _internal.crypto.internal.edwards25519.field.Field_Element.Element)) : stdgo.Ref<_internal.crypto.internal.edwards25519.field.Field_Element.Element>).multiply(_rr, _internal.crypto.internal.edwards25519.field.Field__sqrtM1._sqrtM1);
        _rr.select(_rPrime, _rr, (_flippedSignSqrt | _flippedSignSqrtI : stdgo.GoInt));
        _r.absolute(_rr);
        return { _0 : _r, _1 : (_correctSignSqrt | _flippedSignSqrt : stdgo.GoInt) };
    }
    @:keep
    static public function pow22523( _v:stdgo.Ref<_internal.crypto.internal.edwards25519.field.Field_Element.Element>, _x:stdgo.Ref<_internal.crypto.internal.edwards25519.field.Field_Element.Element>):stdgo.Ref<_internal.crypto.internal.edwards25519.field.Field_Element.Element> {
        @:recv var _v:stdgo.Ref<_internal.crypto.internal.edwards25519.field.Field_Element.Element> = _v;
        var __0:_internal.crypto.internal.edwards25519.field.Field_Element.Element = ({} : _internal.crypto.internal.edwards25519.field.Field_Element.Element), __1:_internal.crypto.internal.edwards25519.field.Field_Element.Element = ({} : _internal.crypto.internal.edwards25519.field.Field_Element.Element), __2:_internal.crypto.internal.edwards25519.field.Field_Element.Element = ({} : _internal.crypto.internal.edwards25519.field.Field_Element.Element);
var _t2 = __2, _t1 = __1, _t0 = __0;
        _t0.square(_x);
        _t1.square((stdgo.Go.setRef(_t0) : stdgo.Ref<_internal.crypto.internal.edwards25519.field.Field_Element.Element>));
        _t1.square((stdgo.Go.setRef(_t1) : stdgo.Ref<_internal.crypto.internal.edwards25519.field.Field_Element.Element>));
        _t1.multiply(_x, (stdgo.Go.setRef(_t1) : stdgo.Ref<_internal.crypto.internal.edwards25519.field.Field_Element.Element>));
        _t0.multiply((stdgo.Go.setRef(_t0) : stdgo.Ref<_internal.crypto.internal.edwards25519.field.Field_Element.Element>), (stdgo.Go.setRef(_t1) : stdgo.Ref<_internal.crypto.internal.edwards25519.field.Field_Element.Element>));
        _t0.square((stdgo.Go.setRef(_t0) : stdgo.Ref<_internal.crypto.internal.edwards25519.field.Field_Element.Element>));
        _t0.multiply((stdgo.Go.setRef(_t1) : stdgo.Ref<_internal.crypto.internal.edwards25519.field.Field_Element.Element>), (stdgo.Go.setRef(_t0) : stdgo.Ref<_internal.crypto.internal.edwards25519.field.Field_Element.Element>));
        _t1.square((stdgo.Go.setRef(_t0) : stdgo.Ref<_internal.crypto.internal.edwards25519.field.Field_Element.Element>));
        {
            var _i = (1 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (5 : stdgo.GoInt) : Bool), _i++, {
                _t1.square((stdgo.Go.setRef(_t1) : stdgo.Ref<_internal.crypto.internal.edwards25519.field.Field_Element.Element>));
            });
        };
        _t0.multiply((stdgo.Go.setRef(_t1) : stdgo.Ref<_internal.crypto.internal.edwards25519.field.Field_Element.Element>), (stdgo.Go.setRef(_t0) : stdgo.Ref<_internal.crypto.internal.edwards25519.field.Field_Element.Element>));
        _t1.square((stdgo.Go.setRef(_t0) : stdgo.Ref<_internal.crypto.internal.edwards25519.field.Field_Element.Element>));
        {
            var _i = (1 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (10 : stdgo.GoInt) : Bool), _i++, {
                _t1.square((stdgo.Go.setRef(_t1) : stdgo.Ref<_internal.crypto.internal.edwards25519.field.Field_Element.Element>));
            });
        };
        _t1.multiply((stdgo.Go.setRef(_t1) : stdgo.Ref<_internal.crypto.internal.edwards25519.field.Field_Element.Element>), (stdgo.Go.setRef(_t0) : stdgo.Ref<_internal.crypto.internal.edwards25519.field.Field_Element.Element>));
        _t2.square((stdgo.Go.setRef(_t1) : stdgo.Ref<_internal.crypto.internal.edwards25519.field.Field_Element.Element>));
        {
            var _i = (1 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (20 : stdgo.GoInt) : Bool), _i++, {
                _t2.square((stdgo.Go.setRef(_t2) : stdgo.Ref<_internal.crypto.internal.edwards25519.field.Field_Element.Element>));
            });
        };
        _t1.multiply((stdgo.Go.setRef(_t2) : stdgo.Ref<_internal.crypto.internal.edwards25519.field.Field_Element.Element>), (stdgo.Go.setRef(_t1) : stdgo.Ref<_internal.crypto.internal.edwards25519.field.Field_Element.Element>));
        _t1.square((stdgo.Go.setRef(_t1) : stdgo.Ref<_internal.crypto.internal.edwards25519.field.Field_Element.Element>));
        {
            var _i = (1 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (10 : stdgo.GoInt) : Bool), _i++, {
                _t1.square((stdgo.Go.setRef(_t1) : stdgo.Ref<_internal.crypto.internal.edwards25519.field.Field_Element.Element>));
            });
        };
        _t0.multiply((stdgo.Go.setRef(_t1) : stdgo.Ref<_internal.crypto.internal.edwards25519.field.Field_Element.Element>), (stdgo.Go.setRef(_t0) : stdgo.Ref<_internal.crypto.internal.edwards25519.field.Field_Element.Element>));
        _t1.square((stdgo.Go.setRef(_t0) : stdgo.Ref<_internal.crypto.internal.edwards25519.field.Field_Element.Element>));
        {
            var _i = (1 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (50 : stdgo.GoInt) : Bool), _i++, {
                _t1.square((stdgo.Go.setRef(_t1) : stdgo.Ref<_internal.crypto.internal.edwards25519.field.Field_Element.Element>));
            });
        };
        _t1.multiply((stdgo.Go.setRef(_t1) : stdgo.Ref<_internal.crypto.internal.edwards25519.field.Field_Element.Element>), (stdgo.Go.setRef(_t0) : stdgo.Ref<_internal.crypto.internal.edwards25519.field.Field_Element.Element>));
        _t2.square((stdgo.Go.setRef(_t1) : stdgo.Ref<_internal.crypto.internal.edwards25519.field.Field_Element.Element>));
        {
            var _i = (1 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (100 : stdgo.GoInt) : Bool), _i++, {
                _t2.square((stdgo.Go.setRef(_t2) : stdgo.Ref<_internal.crypto.internal.edwards25519.field.Field_Element.Element>));
            });
        };
        _t1.multiply((stdgo.Go.setRef(_t2) : stdgo.Ref<_internal.crypto.internal.edwards25519.field.Field_Element.Element>), (stdgo.Go.setRef(_t1) : stdgo.Ref<_internal.crypto.internal.edwards25519.field.Field_Element.Element>));
        _t1.square((stdgo.Go.setRef(_t1) : stdgo.Ref<_internal.crypto.internal.edwards25519.field.Field_Element.Element>));
        {
            var _i = (1 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (50 : stdgo.GoInt) : Bool), _i++, {
                _t1.square((stdgo.Go.setRef(_t1) : stdgo.Ref<_internal.crypto.internal.edwards25519.field.Field_Element.Element>));
            });
        };
        _t0.multiply((stdgo.Go.setRef(_t1) : stdgo.Ref<_internal.crypto.internal.edwards25519.field.Field_Element.Element>), (stdgo.Go.setRef(_t0) : stdgo.Ref<_internal.crypto.internal.edwards25519.field.Field_Element.Element>));
        _t0.square((stdgo.Go.setRef(_t0) : stdgo.Ref<_internal.crypto.internal.edwards25519.field.Field_Element.Element>));
        _t0.square((stdgo.Go.setRef(_t0) : stdgo.Ref<_internal.crypto.internal.edwards25519.field.Field_Element.Element>));
        return _v.multiply((stdgo.Go.setRef(_t0) : stdgo.Ref<_internal.crypto.internal.edwards25519.field.Field_Element.Element>), _x);
    }
    @:keep
    static public function mult32( _v:stdgo.Ref<_internal.crypto.internal.edwards25519.field.Field_Element.Element>, _x:stdgo.Ref<_internal.crypto.internal.edwards25519.field.Field_Element.Element>, _y:stdgo.GoUInt32):stdgo.Ref<_internal.crypto.internal.edwards25519.field.Field_Element.Element> {
        @:recv var _v:stdgo.Ref<_internal.crypto.internal.edwards25519.field.Field_Element.Element> = _v;
        var __tmp__ = _internal.crypto.internal.edwards25519.field.Field__mul51._mul51(_x._l0, _y), _x0lo:stdgo.GoUInt64 = __tmp__._0, _x0hi:stdgo.GoUInt64 = __tmp__._1;
        var __tmp__ = _internal.crypto.internal.edwards25519.field.Field__mul51._mul51(_x._l1, _y), _x1lo:stdgo.GoUInt64 = __tmp__._0, _x1hi:stdgo.GoUInt64 = __tmp__._1;
        var __tmp__ = _internal.crypto.internal.edwards25519.field.Field__mul51._mul51(_x._l2, _y), _x2lo:stdgo.GoUInt64 = __tmp__._0, _x2hi:stdgo.GoUInt64 = __tmp__._1;
        var __tmp__ = _internal.crypto.internal.edwards25519.field.Field__mul51._mul51(_x._l3, _y), _x3lo:stdgo.GoUInt64 = __tmp__._0, _x3hi:stdgo.GoUInt64 = __tmp__._1;
        var __tmp__ = _internal.crypto.internal.edwards25519.field.Field__mul51._mul51(_x._l4, _y), _x4lo:stdgo.GoUInt64 = __tmp__._0, _x4hi:stdgo.GoUInt64 = __tmp__._1;
        _v._l0 = (_x0lo + ((19i64 : stdgo.GoUInt64) * _x4hi : stdgo.GoUInt64) : stdgo.GoUInt64);
        _v._l1 = (_x1lo + _x0hi : stdgo.GoUInt64);
        _v._l2 = (_x2lo + _x1hi : stdgo.GoUInt64);
        _v._l3 = (_x3lo + _x2hi : stdgo.GoUInt64);
        _v._l4 = (_x4lo + _x3hi : stdgo.GoUInt64);
        return _v;
    }
    @:keep
    static public function square( _v:stdgo.Ref<_internal.crypto.internal.edwards25519.field.Field_Element.Element>, _x:stdgo.Ref<_internal.crypto.internal.edwards25519.field.Field_Element.Element>):stdgo.Ref<_internal.crypto.internal.edwards25519.field.Field_Element.Element> {
        @:recv var _v:stdgo.Ref<_internal.crypto.internal.edwards25519.field.Field_Element.Element> = _v;
        _internal.crypto.internal.edwards25519.field.Field__feSquare._feSquare(_v, _x);
        return _v;
    }
    @:keep
    static public function multiply( _v:stdgo.Ref<_internal.crypto.internal.edwards25519.field.Field_Element.Element>, _x:stdgo.Ref<_internal.crypto.internal.edwards25519.field.Field_Element.Element>, _y:stdgo.Ref<_internal.crypto.internal.edwards25519.field.Field_Element.Element>):stdgo.Ref<_internal.crypto.internal.edwards25519.field.Field_Element.Element> {
        @:recv var _v:stdgo.Ref<_internal.crypto.internal.edwards25519.field.Field_Element.Element> = _v;
        _internal.crypto.internal.edwards25519.field.Field__feMul._feMul(_v, _x, _y);
        return _v;
    }
    @:keep
    static public function absolute( _v:stdgo.Ref<_internal.crypto.internal.edwards25519.field.Field_Element.Element>, _u:stdgo.Ref<_internal.crypto.internal.edwards25519.field.Field_Element.Element>):stdgo.Ref<_internal.crypto.internal.edwards25519.field.Field_Element.Element> {
        @:recv var _v:stdgo.Ref<_internal.crypto.internal.edwards25519.field.Field_Element.Element> = _v;
        return _v.select((stdgo.Go.setRef(({} : _internal.crypto.internal.edwards25519.field.Field_Element.Element)) : stdgo.Ref<_internal.crypto.internal.edwards25519.field.Field_Element.Element>).negate(_u), _u, _u.isNegative());
    }
    @:keep
    static public function isNegative( _v:stdgo.Ref<_internal.crypto.internal.edwards25519.field.Field_Element.Element>):stdgo.GoInt {
        @:recv var _v:stdgo.Ref<_internal.crypto.internal.edwards25519.field.Field_Element.Element> = _v;
        return ((_v.bytes()[(0 : stdgo.GoInt)] & (1 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoInt);
    }
    @:keep
    static public function swap( _v:stdgo.Ref<_internal.crypto.internal.edwards25519.field.Field_Element.Element>, _u:stdgo.Ref<_internal.crypto.internal.edwards25519.field.Field_Element.Element>, _cond:stdgo.GoInt):Void {
        @:recv var _v:stdgo.Ref<_internal.crypto.internal.edwards25519.field.Field_Element.Element> = _v;
        var _m = (_internal.crypto.internal.edwards25519.field.Field__mask64Bits._mask64Bits(_cond) : stdgo.GoUInt64);
        var _t = (_m & ((_v._l0 ^ _u._l0 : stdgo.GoUInt64)) : stdgo.GoUInt64);
        _v._l0 = (_v._l0 ^ (_t) : stdgo.GoUInt64);
        _u._l0 = (_u._l0 ^ (_t) : stdgo.GoUInt64);
        _t = (_m & ((_v._l1 ^ _u._l1 : stdgo.GoUInt64)) : stdgo.GoUInt64);
        _v._l1 = (_v._l1 ^ (_t) : stdgo.GoUInt64);
        _u._l1 = (_u._l1 ^ (_t) : stdgo.GoUInt64);
        _t = (_m & ((_v._l2 ^ _u._l2 : stdgo.GoUInt64)) : stdgo.GoUInt64);
        _v._l2 = (_v._l2 ^ (_t) : stdgo.GoUInt64);
        _u._l2 = (_u._l2 ^ (_t) : stdgo.GoUInt64);
        _t = (_m & ((_v._l3 ^ _u._l3 : stdgo.GoUInt64)) : stdgo.GoUInt64);
        _v._l3 = (_v._l3 ^ (_t) : stdgo.GoUInt64);
        _u._l3 = (_u._l3 ^ (_t) : stdgo.GoUInt64);
        _t = (_m & ((_v._l4 ^ _u._l4 : stdgo.GoUInt64)) : stdgo.GoUInt64);
        _v._l4 = (_v._l4 ^ (_t) : stdgo.GoUInt64);
        _u._l4 = (_u._l4 ^ (_t) : stdgo.GoUInt64);
    }
    @:keep
    static public function select( _v:stdgo.Ref<_internal.crypto.internal.edwards25519.field.Field_Element.Element>, _a:stdgo.Ref<_internal.crypto.internal.edwards25519.field.Field_Element.Element>, _b:stdgo.Ref<_internal.crypto.internal.edwards25519.field.Field_Element.Element>, _cond:stdgo.GoInt):stdgo.Ref<_internal.crypto.internal.edwards25519.field.Field_Element.Element> {
        @:recv var _v:stdgo.Ref<_internal.crypto.internal.edwards25519.field.Field_Element.Element> = _v;
        var _m = (_internal.crypto.internal.edwards25519.field.Field__mask64Bits._mask64Bits(_cond) : stdgo.GoUInt64);
        _v._l0 = (((_m & _a._l0 : stdgo.GoUInt64)) | (((-1 ^ _m) & _b._l0 : stdgo.GoUInt64)) : stdgo.GoUInt64);
        _v._l1 = (((_m & _a._l1 : stdgo.GoUInt64)) | (((-1 ^ _m) & _b._l1 : stdgo.GoUInt64)) : stdgo.GoUInt64);
        _v._l2 = (((_m & _a._l2 : stdgo.GoUInt64)) | (((-1 ^ _m) & _b._l2 : stdgo.GoUInt64)) : stdgo.GoUInt64);
        _v._l3 = (((_m & _a._l3 : stdgo.GoUInt64)) | (((-1 ^ _m) & _b._l3 : stdgo.GoUInt64)) : stdgo.GoUInt64);
        _v._l4 = (((_m & _a._l4 : stdgo.GoUInt64)) | (((-1 ^ _m) & _b._l4 : stdgo.GoUInt64)) : stdgo.GoUInt64);
        return _v;
    }
    @:keep
    static public function equal( _v:stdgo.Ref<_internal.crypto.internal.edwards25519.field.Field_Element.Element>, _u:stdgo.Ref<_internal.crypto.internal.edwards25519.field.Field_Element.Element>):stdgo.GoInt {
        @:recv var _v:stdgo.Ref<_internal.crypto.internal.edwards25519.field.Field_Element.Element> = _v;
        var __0 = _u.bytes(), __1 = _v.bytes();
var _sv = __1, _sa = __0;
        return stdgo._internal.crypto.subtle.Subtle_constantTimeCompare.constantTimeCompare(_sa, _sv);
    }
    @:keep
    static public function _bytes( _v:stdgo.Ref<_internal.crypto.internal.edwards25519.field.Field_Element.Element>, _out:stdgo.Ref<stdgo.GoArray<stdgo.GoUInt8>>):stdgo.Slice<stdgo.GoUInt8> {
        @:recv var _v:stdgo.Ref<_internal.crypto.internal.edwards25519.field.Field_Element.Element> = _v;
        var _t = ((_v : _internal.crypto.internal.edwards25519.field.Field_Element.Element)?.__copy__() : _internal.crypto.internal.edwards25519.field.Field_Element.Element);
        _t._reduce();
        var _buf:stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(8, 8, ...[for (i in 0 ... 8) (0 : stdgo.GoUInt8)]);
        for (_i => _l in (new stdgo.GoArray<stdgo.GoUInt64>(5, 5, ...[_t._l0, _t._l1, _t._l2, _t._l3, _t._l4]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)) {
            var _bitsOffset = (_i * (51 : stdgo.GoInt) : stdgo.GoInt);
            stdgo._internal.encoding.binary.Binary_littleEndian.littleEndian.putUint64((_buf.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>), (_l << ((_bitsOffset % (8 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoUInt) : stdgo.GoUInt64));
            for (_i => _bb in _buf) {
                var _off = ((_bitsOffset / (8 : stdgo.GoInt) : stdgo.GoInt) + _i : stdgo.GoInt);
                if ((_off >= (_out.length) : Bool)) {
                    break;
                };
                _out[(_off : stdgo.GoInt)] = (_out[(_off : stdgo.GoInt)] | (_bb) : stdgo.GoUInt8);
            };
        };
        return (_out.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>);
    }
    @:keep
    static public function bytes( _v:stdgo.Ref<_internal.crypto.internal.edwards25519.field.Field_Element.Element>):stdgo.Slice<stdgo.GoUInt8> {
        @:recv var _v:stdgo.Ref<_internal.crypto.internal.edwards25519.field.Field_Element.Element> = _v;
        var _out:stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(32, 32, ...[for (i in 0 ... 32) (0 : stdgo.GoUInt8)]);
        return _v._bytes((stdgo.Go.setRef(_out) : stdgo.Ref<stdgo.GoArray<stdgo.GoUInt8>>));
    }
    @:keep
    static public function setBytes( _v:stdgo.Ref<_internal.crypto.internal.edwards25519.field.Field_Element.Element>, _x:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Ref<_internal.crypto.internal.edwards25519.field.Field_Element.Element>; var _1 : stdgo.Error; } {
        @:recv var _v:stdgo.Ref<_internal.crypto.internal.edwards25519.field.Field_Element.Element> = _v;
        if ((_x.length) != ((32 : stdgo.GoInt))) {
            return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("edwards25519: invalid field element input size" : stdgo.GoString)) };
        };
        _v._l0 = stdgo._internal.encoding.binary.Binary_littleEndian.littleEndian.uint64((_x.__slice__((0 : stdgo.GoInt), (8 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
        _v._l0 = (_v._l0 & ((2251799813685247i64 : stdgo.GoUInt64)) : stdgo.GoUInt64);
        _v._l1 = (stdgo._internal.encoding.binary.Binary_littleEndian.littleEndian.uint64((_x.__slice__((6 : stdgo.GoInt), (14 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)) >> (3i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
        _v._l1 = (_v._l1 & ((2251799813685247i64 : stdgo.GoUInt64)) : stdgo.GoUInt64);
        _v._l2 = (stdgo._internal.encoding.binary.Binary_littleEndian.littleEndian.uint64((_x.__slice__((12 : stdgo.GoInt), (20 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)) >> (6i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
        _v._l2 = (_v._l2 & ((2251799813685247i64 : stdgo.GoUInt64)) : stdgo.GoUInt64);
        _v._l3 = (stdgo._internal.encoding.binary.Binary_littleEndian.littleEndian.uint64((_x.__slice__((19 : stdgo.GoInt), (27 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)) >> (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
        _v._l3 = (_v._l3 & ((2251799813685247i64 : stdgo.GoUInt64)) : stdgo.GoUInt64);
        _v._l4 = (stdgo._internal.encoding.binary.Binary_littleEndian.littleEndian.uint64((_x.__slice__((24 : stdgo.GoInt), (32 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)) >> (12i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
        _v._l4 = (_v._l4 & ((2251799813685247i64 : stdgo.GoUInt64)) : stdgo.GoUInt64);
        return { _0 : _v, _1 : (null : stdgo.Error) };
    }
    @:keep
    static public function set( _v:stdgo.Ref<_internal.crypto.internal.edwards25519.field.Field_Element.Element>, _a:stdgo.Ref<_internal.crypto.internal.edwards25519.field.Field_Element.Element>):stdgo.Ref<_internal.crypto.internal.edwards25519.field.Field_Element.Element> {
        @:recv var _v:stdgo.Ref<_internal.crypto.internal.edwards25519.field.Field_Element.Element> = _v;
        {
            var __tmp__ = (_a : _internal.crypto.internal.edwards25519.field.Field_Element.Element)?.__copy__();
            (_v : _internal.crypto.internal.edwards25519.field.Field_Element.Element)._l0 = __tmp__._l0;
            (_v : _internal.crypto.internal.edwards25519.field.Field_Element.Element)._l1 = __tmp__._l1;
            (_v : _internal.crypto.internal.edwards25519.field.Field_Element.Element)._l2 = __tmp__._l2;
            (_v : _internal.crypto.internal.edwards25519.field.Field_Element.Element)._l3 = __tmp__._l3;
            (_v : _internal.crypto.internal.edwards25519.field.Field_Element.Element)._l4 = __tmp__._l4;
        };
        return _v;
    }
    @:keep
    static public function invert( _v:stdgo.Ref<_internal.crypto.internal.edwards25519.field.Field_Element.Element>, _z:stdgo.Ref<_internal.crypto.internal.edwards25519.field.Field_Element.Element>):stdgo.Ref<_internal.crypto.internal.edwards25519.field.Field_Element.Element> {
        @:recv var _v:stdgo.Ref<_internal.crypto.internal.edwards25519.field.Field_Element.Element> = _v;
        var __0:_internal.crypto.internal.edwards25519.field.Field_Element.Element = ({} : _internal.crypto.internal.edwards25519.field.Field_Element.Element), __1:_internal.crypto.internal.edwards25519.field.Field_Element.Element = ({} : _internal.crypto.internal.edwards25519.field.Field_Element.Element), __2:_internal.crypto.internal.edwards25519.field.Field_Element.Element = ({} : _internal.crypto.internal.edwards25519.field.Field_Element.Element), __3:_internal.crypto.internal.edwards25519.field.Field_Element.Element = ({} : _internal.crypto.internal.edwards25519.field.Field_Element.Element), __4:_internal.crypto.internal.edwards25519.field.Field_Element.Element = ({} : _internal.crypto.internal.edwards25519.field.Field_Element.Element), __5:_internal.crypto.internal.edwards25519.field.Field_Element.Element = ({} : _internal.crypto.internal.edwards25519.field.Field_Element.Element), __6:_internal.crypto.internal.edwards25519.field.Field_Element.Element = ({} : _internal.crypto.internal.edwards25519.field.Field_Element.Element), __7:_internal.crypto.internal.edwards25519.field.Field_Element.Element = ({} : _internal.crypto.internal.edwards25519.field.Field_Element.Element), __8:_internal.crypto.internal.edwards25519.field.Field_Element.Element = ({} : _internal.crypto.internal.edwards25519.field.Field_Element.Element);
var _t = __8, _z2_100_0 = __7, _z2_50_0 = __6, _z2_20_0 = __5, _z2_10_0 = __4, _z2_5_0 = __3, _z11 = __2, _z9 = __1, _z2 = __0;
        _z2.square(_z);
        _t.square((stdgo.Go.setRef(_z2) : stdgo.Ref<_internal.crypto.internal.edwards25519.field.Field_Element.Element>));
        _t.square((stdgo.Go.setRef(_t) : stdgo.Ref<_internal.crypto.internal.edwards25519.field.Field_Element.Element>));
        _z9.multiply((stdgo.Go.setRef(_t) : stdgo.Ref<_internal.crypto.internal.edwards25519.field.Field_Element.Element>), _z);
        _z11.multiply((stdgo.Go.setRef(_z9) : stdgo.Ref<_internal.crypto.internal.edwards25519.field.Field_Element.Element>), (stdgo.Go.setRef(_z2) : stdgo.Ref<_internal.crypto.internal.edwards25519.field.Field_Element.Element>));
        _t.square((stdgo.Go.setRef(_z11) : stdgo.Ref<_internal.crypto.internal.edwards25519.field.Field_Element.Element>));
        _z2_5_0.multiply((stdgo.Go.setRef(_t) : stdgo.Ref<_internal.crypto.internal.edwards25519.field.Field_Element.Element>), (stdgo.Go.setRef(_z9) : stdgo.Ref<_internal.crypto.internal.edwards25519.field.Field_Element.Element>));
        _t.square((stdgo.Go.setRef(_z2_5_0) : stdgo.Ref<_internal.crypto.internal.edwards25519.field.Field_Element.Element>));
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (4 : stdgo.GoInt) : Bool), _i++, {
                _t.square((stdgo.Go.setRef(_t) : stdgo.Ref<_internal.crypto.internal.edwards25519.field.Field_Element.Element>));
            });
        };
        _z2_10_0.multiply((stdgo.Go.setRef(_t) : stdgo.Ref<_internal.crypto.internal.edwards25519.field.Field_Element.Element>), (stdgo.Go.setRef(_z2_5_0) : stdgo.Ref<_internal.crypto.internal.edwards25519.field.Field_Element.Element>));
        _t.square((stdgo.Go.setRef(_z2_10_0) : stdgo.Ref<_internal.crypto.internal.edwards25519.field.Field_Element.Element>));
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (9 : stdgo.GoInt) : Bool), _i++, {
                _t.square((stdgo.Go.setRef(_t) : stdgo.Ref<_internal.crypto.internal.edwards25519.field.Field_Element.Element>));
            });
        };
        _z2_20_0.multiply((stdgo.Go.setRef(_t) : stdgo.Ref<_internal.crypto.internal.edwards25519.field.Field_Element.Element>), (stdgo.Go.setRef(_z2_10_0) : stdgo.Ref<_internal.crypto.internal.edwards25519.field.Field_Element.Element>));
        _t.square((stdgo.Go.setRef(_z2_20_0) : stdgo.Ref<_internal.crypto.internal.edwards25519.field.Field_Element.Element>));
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (19 : stdgo.GoInt) : Bool), _i++, {
                _t.square((stdgo.Go.setRef(_t) : stdgo.Ref<_internal.crypto.internal.edwards25519.field.Field_Element.Element>));
            });
        };
        _t.multiply((stdgo.Go.setRef(_t) : stdgo.Ref<_internal.crypto.internal.edwards25519.field.Field_Element.Element>), (stdgo.Go.setRef(_z2_20_0) : stdgo.Ref<_internal.crypto.internal.edwards25519.field.Field_Element.Element>));
        _t.square((stdgo.Go.setRef(_t) : stdgo.Ref<_internal.crypto.internal.edwards25519.field.Field_Element.Element>));
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (9 : stdgo.GoInt) : Bool), _i++, {
                _t.square((stdgo.Go.setRef(_t) : stdgo.Ref<_internal.crypto.internal.edwards25519.field.Field_Element.Element>));
            });
        };
        _z2_50_0.multiply((stdgo.Go.setRef(_t) : stdgo.Ref<_internal.crypto.internal.edwards25519.field.Field_Element.Element>), (stdgo.Go.setRef(_z2_10_0) : stdgo.Ref<_internal.crypto.internal.edwards25519.field.Field_Element.Element>));
        _t.square((stdgo.Go.setRef(_z2_50_0) : stdgo.Ref<_internal.crypto.internal.edwards25519.field.Field_Element.Element>));
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (49 : stdgo.GoInt) : Bool), _i++, {
                _t.square((stdgo.Go.setRef(_t) : stdgo.Ref<_internal.crypto.internal.edwards25519.field.Field_Element.Element>));
            });
        };
        _z2_100_0.multiply((stdgo.Go.setRef(_t) : stdgo.Ref<_internal.crypto.internal.edwards25519.field.Field_Element.Element>), (stdgo.Go.setRef(_z2_50_0) : stdgo.Ref<_internal.crypto.internal.edwards25519.field.Field_Element.Element>));
        _t.square((stdgo.Go.setRef(_z2_100_0) : stdgo.Ref<_internal.crypto.internal.edwards25519.field.Field_Element.Element>));
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (99 : stdgo.GoInt) : Bool), _i++, {
                _t.square((stdgo.Go.setRef(_t) : stdgo.Ref<_internal.crypto.internal.edwards25519.field.Field_Element.Element>));
            });
        };
        _t.multiply((stdgo.Go.setRef(_t) : stdgo.Ref<_internal.crypto.internal.edwards25519.field.Field_Element.Element>), (stdgo.Go.setRef(_z2_100_0) : stdgo.Ref<_internal.crypto.internal.edwards25519.field.Field_Element.Element>));
        _t.square((stdgo.Go.setRef(_t) : stdgo.Ref<_internal.crypto.internal.edwards25519.field.Field_Element.Element>));
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (49 : stdgo.GoInt) : Bool), _i++, {
                _t.square((stdgo.Go.setRef(_t) : stdgo.Ref<_internal.crypto.internal.edwards25519.field.Field_Element.Element>));
            });
        };
        _t.multiply((stdgo.Go.setRef(_t) : stdgo.Ref<_internal.crypto.internal.edwards25519.field.Field_Element.Element>), (stdgo.Go.setRef(_z2_50_0) : stdgo.Ref<_internal.crypto.internal.edwards25519.field.Field_Element.Element>));
        _t.square((stdgo.Go.setRef(_t) : stdgo.Ref<_internal.crypto.internal.edwards25519.field.Field_Element.Element>));
        _t.square((stdgo.Go.setRef(_t) : stdgo.Ref<_internal.crypto.internal.edwards25519.field.Field_Element.Element>));
        _t.square((stdgo.Go.setRef(_t) : stdgo.Ref<_internal.crypto.internal.edwards25519.field.Field_Element.Element>));
        _t.square((stdgo.Go.setRef(_t) : stdgo.Ref<_internal.crypto.internal.edwards25519.field.Field_Element.Element>));
        _t.square((stdgo.Go.setRef(_t) : stdgo.Ref<_internal.crypto.internal.edwards25519.field.Field_Element.Element>));
        return _v.multiply((stdgo.Go.setRef(_t) : stdgo.Ref<_internal.crypto.internal.edwards25519.field.Field_Element.Element>), (stdgo.Go.setRef(_z11) : stdgo.Ref<_internal.crypto.internal.edwards25519.field.Field_Element.Element>));
    }
    @:keep
    static public function negate( _v:stdgo.Ref<_internal.crypto.internal.edwards25519.field.Field_Element.Element>, _a:stdgo.Ref<_internal.crypto.internal.edwards25519.field.Field_Element.Element>):stdgo.Ref<_internal.crypto.internal.edwards25519.field.Field_Element.Element> {
        @:recv var _v:stdgo.Ref<_internal.crypto.internal.edwards25519.field.Field_Element.Element> = _v;
        return _v.subtract(_internal.crypto.internal.edwards25519.field.Field__feZero._feZero, _a);
    }
    @:keep
    static public function subtract( _v:stdgo.Ref<_internal.crypto.internal.edwards25519.field.Field_Element.Element>, _a:stdgo.Ref<_internal.crypto.internal.edwards25519.field.Field_Element.Element>, _b:stdgo.Ref<_internal.crypto.internal.edwards25519.field.Field_Element.Element>):stdgo.Ref<_internal.crypto.internal.edwards25519.field.Field_Element.Element> {
        @:recv var _v:stdgo.Ref<_internal.crypto.internal.edwards25519.field.Field_Element.Element> = _v;
        _v._l0 = (((_a._l0 + (4503599627370458i64 : stdgo.GoUInt64) : stdgo.GoUInt64)) - _b._l0 : stdgo.GoUInt64);
        _v._l1 = (((_a._l1 + (4503599627370494i64 : stdgo.GoUInt64) : stdgo.GoUInt64)) - _b._l1 : stdgo.GoUInt64);
        _v._l2 = (((_a._l2 + (4503599627370494i64 : stdgo.GoUInt64) : stdgo.GoUInt64)) - _b._l2 : stdgo.GoUInt64);
        _v._l3 = (((_a._l3 + (4503599627370494i64 : stdgo.GoUInt64) : stdgo.GoUInt64)) - _b._l3 : stdgo.GoUInt64);
        _v._l4 = (((_a._l4 + (4503599627370494i64 : stdgo.GoUInt64) : stdgo.GoUInt64)) - _b._l4 : stdgo.GoUInt64);
        return _v._carryPropagate();
    }
    @:keep
    static public function add( _v:stdgo.Ref<_internal.crypto.internal.edwards25519.field.Field_Element.Element>, _a:stdgo.Ref<_internal.crypto.internal.edwards25519.field.Field_Element.Element>, _b:stdgo.Ref<_internal.crypto.internal.edwards25519.field.Field_Element.Element>):stdgo.Ref<_internal.crypto.internal.edwards25519.field.Field_Element.Element> {
        @:recv var _v:stdgo.Ref<_internal.crypto.internal.edwards25519.field.Field_Element.Element> = _v;
        _v._l0 = (_a._l0 + _b._l0 : stdgo.GoUInt64);
        _v._l1 = (_a._l1 + _b._l1 : stdgo.GoUInt64);
        _v._l2 = (_a._l2 + _b._l2 : stdgo.GoUInt64);
        _v._l3 = (_a._l3 + _b._l3 : stdgo.GoUInt64);
        _v._l4 = (_a._l4 + _b._l4 : stdgo.GoUInt64);
        return _v._carryPropagateGeneric();
    }
    @:keep
    static public function _reduce( _v:stdgo.Ref<_internal.crypto.internal.edwards25519.field.Field_Element.Element>):stdgo.Ref<_internal.crypto.internal.edwards25519.field.Field_Element.Element> {
        @:recv var _v:stdgo.Ref<_internal.crypto.internal.edwards25519.field.Field_Element.Element> = _v;
        _v._carryPropagate();
        var _c = (((_v._l0 + (19i64 : stdgo.GoUInt64) : stdgo.GoUInt64)) >> (51i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
        _c = (((_v._l1 + _c : stdgo.GoUInt64)) >> (51i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
        _c = (((_v._l2 + _c : stdgo.GoUInt64)) >> (51i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
        _c = (((_v._l3 + _c : stdgo.GoUInt64)) >> (51i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
        _c = (((_v._l4 + _c : stdgo.GoUInt64)) >> (51i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
        _v._l0 = (_v._l0 + (((19i64 : stdgo.GoUInt64) * _c : stdgo.GoUInt64)) : stdgo.GoUInt64);
        _v._l1 = (_v._l1 + ((_v._l0 >> (51i64 : stdgo.GoUInt64) : stdgo.GoUInt64)) : stdgo.GoUInt64);
        _v._l0 = (_v._l0 & (2251799813685247i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
        _v._l2 = (_v._l2 + ((_v._l1 >> (51i64 : stdgo.GoUInt64) : stdgo.GoUInt64)) : stdgo.GoUInt64);
        _v._l1 = (_v._l1 & (2251799813685247i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
        _v._l3 = (_v._l3 + ((_v._l2 >> (51i64 : stdgo.GoUInt64) : stdgo.GoUInt64)) : stdgo.GoUInt64);
        _v._l2 = (_v._l2 & (2251799813685247i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
        _v._l4 = (_v._l4 + ((_v._l3 >> (51i64 : stdgo.GoUInt64) : stdgo.GoUInt64)) : stdgo.GoUInt64);
        _v._l3 = (_v._l3 & (2251799813685247i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
        _v._l4 = (_v._l4 & (2251799813685247i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
        return _v;
    }
    @:keep
    static public function one( _v:stdgo.Ref<_internal.crypto.internal.edwards25519.field.Field_Element.Element>):stdgo.Ref<_internal.crypto.internal.edwards25519.field.Field_Element.Element> {
        @:recv var _v:stdgo.Ref<_internal.crypto.internal.edwards25519.field.Field_Element.Element> = _v;
        {
            var __tmp__ = (_internal.crypto.internal.edwards25519.field.Field__feOne._feOne : _internal.crypto.internal.edwards25519.field.Field_Element.Element)?.__copy__();
            (_v : _internal.crypto.internal.edwards25519.field.Field_Element.Element)._l0 = __tmp__._l0;
            (_v : _internal.crypto.internal.edwards25519.field.Field_Element.Element)._l1 = __tmp__._l1;
            (_v : _internal.crypto.internal.edwards25519.field.Field_Element.Element)._l2 = __tmp__._l2;
            (_v : _internal.crypto.internal.edwards25519.field.Field_Element.Element)._l3 = __tmp__._l3;
            (_v : _internal.crypto.internal.edwards25519.field.Field_Element.Element)._l4 = __tmp__._l4;
        };
        return _v;
    }
    @:keep
    static public function zero( _v:stdgo.Ref<_internal.crypto.internal.edwards25519.field.Field_Element.Element>):stdgo.Ref<_internal.crypto.internal.edwards25519.field.Field_Element.Element> {
        @:recv var _v:stdgo.Ref<_internal.crypto.internal.edwards25519.field.Field_Element.Element> = _v;
        {
            var __tmp__ = (_internal.crypto.internal.edwards25519.field.Field__feZero._feZero : _internal.crypto.internal.edwards25519.field.Field_Element.Element)?.__copy__();
            (_v : _internal.crypto.internal.edwards25519.field.Field_Element.Element)._l0 = __tmp__._l0;
            (_v : _internal.crypto.internal.edwards25519.field.Field_Element.Element)._l1 = __tmp__._l1;
            (_v : _internal.crypto.internal.edwards25519.field.Field_Element.Element)._l2 = __tmp__._l2;
            (_v : _internal.crypto.internal.edwards25519.field.Field_Element.Element)._l3 = __tmp__._l3;
            (_v : _internal.crypto.internal.edwards25519.field.Field_Element.Element)._l4 = __tmp__._l4;
        };
        return _v;
    }
}
