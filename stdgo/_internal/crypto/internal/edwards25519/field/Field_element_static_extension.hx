package stdgo._internal.crypto.internal.edwards25519.field;
@:keep @:allow(stdgo._internal.crypto.internal.edwards25519.field.Field.Element_asInterface) class Element_static_extension {
    @:keep
    @:tdfield
    static public function _carryPropagateGeneric( _v:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>):stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element> {
        @:recv var _v:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element> = _v;
        var _c0 = ((@:checkr _v ?? throw "null pointer dereference")._l0 >> (51i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
        var _c1 = ((@:checkr _v ?? throw "null pointer dereference")._l1 >> (51i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
        var _c2 = ((@:checkr _v ?? throw "null pointer dereference")._l2 >> (51i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
        var _c3 = ((@:checkr _v ?? throw "null pointer dereference")._l3 >> (51i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
        var _c4 = ((@:checkr _v ?? throw "null pointer dereference")._l4 >> (51i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
        (@:checkr _v ?? throw "null pointer dereference")._l0 = (((@:checkr _v ?? throw "null pointer dereference")._l0 & (2251799813685247i64 : stdgo.GoUInt64) : stdgo.GoUInt64) + (_c4 * (19i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt64);
        (@:checkr _v ?? throw "null pointer dereference")._l1 = (((@:checkr _v ?? throw "null pointer dereference")._l1 & (2251799813685247i64 : stdgo.GoUInt64) : stdgo.GoUInt64) + _c0 : stdgo.GoUInt64);
        (@:checkr _v ?? throw "null pointer dereference")._l2 = (((@:checkr _v ?? throw "null pointer dereference")._l2 & (2251799813685247i64 : stdgo.GoUInt64) : stdgo.GoUInt64) + _c1 : stdgo.GoUInt64);
        (@:checkr _v ?? throw "null pointer dereference")._l3 = (((@:checkr _v ?? throw "null pointer dereference")._l3 & (2251799813685247i64 : stdgo.GoUInt64) : stdgo.GoUInt64) + _c2 : stdgo.GoUInt64);
        (@:checkr _v ?? throw "null pointer dereference")._l4 = (((@:checkr _v ?? throw "null pointer dereference")._l4 & (2251799813685247i64 : stdgo.GoUInt64) : stdgo.GoUInt64) + _c3 : stdgo.GoUInt64);
        return _v;
    }
    @:keep
    @:tdfield
    static public function _carryPropagate( _v:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>):stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element> {
        @:recv var _v:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element> = _v;
        return @:check2r _v._carryPropagateGeneric();
    }
    @:keep
    @:tdfield
    static public function sqrtRatio( _r:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>, _u:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>, _v:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>):{ var _0 : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>; var _1 : stdgo.GoInt; } {
        @:recv var _r:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element> = _r;
        var r = (null : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>), _wasSquare = (0 : stdgo.GoInt);
        var _t0 = (stdgo.Go.setRef(({} : stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element)) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>);
        var _v2 = @:check2r (stdgo.Go.setRef(({} : stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element)) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>).square(_v);
        var _uv3 = @:check2r (stdgo.Go.setRef(({} : stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element)) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>).multiply(_u, @:check2r _t0.multiply(_v2, _v));
        var _uv7 = @:check2r (stdgo.Go.setRef(({} : stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element)) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>).multiply(_uv3, @:check2r _t0.square(_v2));
        var _rr = @:check2r (stdgo.Go.setRef(({} : stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element)) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>).multiply(_uv3, @:check2r _t0.pow22523(_uv7));
        var _check = @:check2r (stdgo.Go.setRef(({} : stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element)) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>).multiply(_v, @:check2r _t0.square(_rr));
        var _uNeg = @:check2r (stdgo.Go.setRef(({} : stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element)) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>).negate(_u);
        var _correctSignSqrt = (@:check2r _check.equal(_u) : stdgo.GoInt);
        var _flippedSignSqrt = (@:check2r _check.equal(_uNeg) : stdgo.GoInt);
        var _flippedSignSqrtI = (@:check2r _check.equal(@:check2r _t0.multiply(_uNeg, stdgo._internal.crypto.internal.edwards25519.field.Field__sqrtm1._sqrtM1)) : stdgo.GoInt);
        var _rPrime = @:check2r (stdgo.Go.setRef(({} : stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element)) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>).multiply(_rr, stdgo._internal.crypto.internal.edwards25519.field.Field__sqrtm1._sqrtM1);
        @:check2r _rr.select(_rPrime, _rr, (_flippedSignSqrt | _flippedSignSqrtI : stdgo.GoInt));
        @:check2r _r.absolute(_rr);
        return {
            final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>; var _1 : stdgo.GoInt; } = { _0 : _r, _1 : (_correctSignSqrt | _flippedSignSqrt : stdgo.GoInt) };
            r = __tmp__._0;
            _wasSquare = __tmp__._1;
            __tmp__;
        };
    }
    @:keep
    @:tdfield
    static public function pow22523( _v:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>, _x:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>):stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element> {
        @:recv var _v:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element> = _v;
        var __0:stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element = ({} : stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element), __1:stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element = ({} : stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element), __2:stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element = ({} : stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element);
var _t2 = __2, _t1 = __1, _t0 = __0;
        @:check2 _t0.square(_x);
        @:check2 _t1.square((stdgo.Go.setRef(_t0) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>));
        @:check2 _t1.square((stdgo.Go.setRef(_t1) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>));
        @:check2 _t1.multiply(_x, (stdgo.Go.setRef(_t1) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>));
        @:check2 _t0.multiply((stdgo.Go.setRef(_t0) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>), (stdgo.Go.setRef(_t1) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>));
        @:check2 _t0.square((stdgo.Go.setRef(_t0) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>));
        @:check2 _t0.multiply((stdgo.Go.setRef(_t1) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>), (stdgo.Go.setRef(_t0) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>));
        @:check2 _t1.square((stdgo.Go.setRef(_t0) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>));
        {
            var _i = (1 : stdgo.GoInt);
            while ((_i < (5 : stdgo.GoInt) : Bool)) {
                @:check2 _t1.square((stdgo.Go.setRef(_t1) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>));
                _i++;
            };
        };
        @:check2 _t0.multiply((stdgo.Go.setRef(_t1) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>), (stdgo.Go.setRef(_t0) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>));
        @:check2 _t1.square((stdgo.Go.setRef(_t0) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>));
        {
            var _i = (1 : stdgo.GoInt);
            while ((_i < (10 : stdgo.GoInt) : Bool)) {
                @:check2 _t1.square((stdgo.Go.setRef(_t1) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>));
                _i++;
            };
        };
        @:check2 _t1.multiply((stdgo.Go.setRef(_t1) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>), (stdgo.Go.setRef(_t0) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>));
        @:check2 _t2.square((stdgo.Go.setRef(_t1) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>));
        {
            var _i = (1 : stdgo.GoInt);
            while ((_i < (20 : stdgo.GoInt) : Bool)) {
                @:check2 _t2.square((stdgo.Go.setRef(_t2) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>));
                _i++;
            };
        };
        @:check2 _t1.multiply((stdgo.Go.setRef(_t2) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>), (stdgo.Go.setRef(_t1) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>));
        @:check2 _t1.square((stdgo.Go.setRef(_t1) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>));
        {
            var _i = (1 : stdgo.GoInt);
            while ((_i < (10 : stdgo.GoInt) : Bool)) {
                @:check2 _t1.square((stdgo.Go.setRef(_t1) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>));
                _i++;
            };
        };
        @:check2 _t0.multiply((stdgo.Go.setRef(_t1) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>), (stdgo.Go.setRef(_t0) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>));
        @:check2 _t1.square((stdgo.Go.setRef(_t0) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>));
        {
            var _i = (1 : stdgo.GoInt);
            while ((_i < (50 : stdgo.GoInt) : Bool)) {
                @:check2 _t1.square((stdgo.Go.setRef(_t1) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>));
                _i++;
            };
        };
        @:check2 _t1.multiply((stdgo.Go.setRef(_t1) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>), (stdgo.Go.setRef(_t0) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>));
        @:check2 _t2.square((stdgo.Go.setRef(_t1) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>));
        {
            var _i = (1 : stdgo.GoInt);
            while ((_i < (100 : stdgo.GoInt) : Bool)) {
                @:check2 _t2.square((stdgo.Go.setRef(_t2) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>));
                _i++;
            };
        };
        @:check2 _t1.multiply((stdgo.Go.setRef(_t2) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>), (stdgo.Go.setRef(_t1) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>));
        @:check2 _t1.square((stdgo.Go.setRef(_t1) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>));
        {
            var _i = (1 : stdgo.GoInt);
            while ((_i < (50 : stdgo.GoInt) : Bool)) {
                @:check2 _t1.square((stdgo.Go.setRef(_t1) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>));
                _i++;
            };
        };
        @:check2 _t0.multiply((stdgo.Go.setRef(_t1) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>), (stdgo.Go.setRef(_t0) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>));
        @:check2 _t0.square((stdgo.Go.setRef(_t0) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>));
        @:check2 _t0.square((stdgo.Go.setRef(_t0) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>));
        return @:check2r _v.multiply((stdgo.Go.setRef(_t0) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>), _x);
    }
    @:keep
    @:tdfield
    static public function mult32( _v:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>, _x:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>, _y:stdgo.GoUInt32):stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element> {
        @:recv var _v:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element> = _v;
        var __tmp__ = stdgo._internal.crypto.internal.edwards25519.field.Field__mul51._mul51((@:checkr _x ?? throw "null pointer dereference")._l0, _y), _x0lo:stdgo.GoUInt64 = __tmp__._0, _x0hi:stdgo.GoUInt64 = __tmp__._1;
        var __tmp__ = stdgo._internal.crypto.internal.edwards25519.field.Field__mul51._mul51((@:checkr _x ?? throw "null pointer dereference")._l1, _y), _x1lo:stdgo.GoUInt64 = __tmp__._0, _x1hi:stdgo.GoUInt64 = __tmp__._1;
        var __tmp__ = stdgo._internal.crypto.internal.edwards25519.field.Field__mul51._mul51((@:checkr _x ?? throw "null pointer dereference")._l2, _y), _x2lo:stdgo.GoUInt64 = __tmp__._0, _x2hi:stdgo.GoUInt64 = __tmp__._1;
        var __tmp__ = stdgo._internal.crypto.internal.edwards25519.field.Field__mul51._mul51((@:checkr _x ?? throw "null pointer dereference")._l3, _y), _x3lo:stdgo.GoUInt64 = __tmp__._0, _x3hi:stdgo.GoUInt64 = __tmp__._1;
        var __tmp__ = stdgo._internal.crypto.internal.edwards25519.field.Field__mul51._mul51((@:checkr _x ?? throw "null pointer dereference")._l4, _y), _x4lo:stdgo.GoUInt64 = __tmp__._0, _x4hi:stdgo.GoUInt64 = __tmp__._1;
        (@:checkr _v ?? throw "null pointer dereference")._l0 = (_x0lo + ((19i64 : stdgo.GoUInt64) * _x4hi : stdgo.GoUInt64) : stdgo.GoUInt64);
        (@:checkr _v ?? throw "null pointer dereference")._l1 = (_x1lo + _x0hi : stdgo.GoUInt64);
        (@:checkr _v ?? throw "null pointer dereference")._l2 = (_x2lo + _x1hi : stdgo.GoUInt64);
        (@:checkr _v ?? throw "null pointer dereference")._l3 = (_x3lo + _x2hi : stdgo.GoUInt64);
        (@:checkr _v ?? throw "null pointer dereference")._l4 = (_x4lo + _x3hi : stdgo.GoUInt64);
        return _v;
    }
    @:keep
    @:tdfield
    static public function square( _v:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>, _x:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>):stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element> {
        @:recv var _v:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element> = _v;
        stdgo._internal.crypto.internal.edwards25519.field.Field__fesquare._feSquare(_v, _x);
        return _v;
    }
    @:keep
    @:tdfield
    static public function multiply( _v:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>, _x:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>, _y:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>):stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element> {
        @:recv var _v:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element> = _v;
        stdgo._internal.crypto.internal.edwards25519.field.Field__femul._feMul(_v, _x, _y);
        return _v;
    }
    @:keep
    @:tdfield
    static public function absolute( _v:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>, _u:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>):stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element> {
        @:recv var _v:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element> = _v;
        return @:check2r _v.select(@:check2r (stdgo.Go.setRef(({} : stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element)) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>).negate(_u), _u, @:check2r _u.isNegative());
    }
    @:keep
    @:tdfield
    static public function isNegative( _v:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>):stdgo.GoInt {
        @:recv var _v:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element> = _v;
        return ((@:check2r _v.bytes()[(0 : stdgo.GoInt)] & (1 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoInt);
    }
    @:keep
    @:tdfield
    static public function swap( _v:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>, _u:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>, _cond:stdgo.GoInt):Void {
        @:recv var _v:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element> = _v;
        var _m = (stdgo._internal.crypto.internal.edwards25519.field.Field__mask64bits._mask64Bits(_cond) : stdgo.GoUInt64);
        var _t = (_m & (((@:checkr _v ?? throw "null pointer dereference")._l0 ^ (@:checkr _u ?? throw "null pointer dereference")._l0 : stdgo.GoUInt64)) : stdgo.GoUInt64);
        (@:checkr _v ?? throw "null pointer dereference")._l0 = ((@:checkr _v ?? throw "null pointer dereference")._l0 ^ (_t) : stdgo.GoUInt64);
        (@:checkr _u ?? throw "null pointer dereference")._l0 = ((@:checkr _u ?? throw "null pointer dereference")._l0 ^ (_t) : stdgo.GoUInt64);
        _t = (_m & (((@:checkr _v ?? throw "null pointer dereference")._l1 ^ (@:checkr _u ?? throw "null pointer dereference")._l1 : stdgo.GoUInt64)) : stdgo.GoUInt64);
        (@:checkr _v ?? throw "null pointer dereference")._l1 = ((@:checkr _v ?? throw "null pointer dereference")._l1 ^ (_t) : stdgo.GoUInt64);
        (@:checkr _u ?? throw "null pointer dereference")._l1 = ((@:checkr _u ?? throw "null pointer dereference")._l1 ^ (_t) : stdgo.GoUInt64);
        _t = (_m & (((@:checkr _v ?? throw "null pointer dereference")._l2 ^ (@:checkr _u ?? throw "null pointer dereference")._l2 : stdgo.GoUInt64)) : stdgo.GoUInt64);
        (@:checkr _v ?? throw "null pointer dereference")._l2 = ((@:checkr _v ?? throw "null pointer dereference")._l2 ^ (_t) : stdgo.GoUInt64);
        (@:checkr _u ?? throw "null pointer dereference")._l2 = ((@:checkr _u ?? throw "null pointer dereference")._l2 ^ (_t) : stdgo.GoUInt64);
        _t = (_m & (((@:checkr _v ?? throw "null pointer dereference")._l3 ^ (@:checkr _u ?? throw "null pointer dereference")._l3 : stdgo.GoUInt64)) : stdgo.GoUInt64);
        (@:checkr _v ?? throw "null pointer dereference")._l3 = ((@:checkr _v ?? throw "null pointer dereference")._l3 ^ (_t) : stdgo.GoUInt64);
        (@:checkr _u ?? throw "null pointer dereference")._l3 = ((@:checkr _u ?? throw "null pointer dereference")._l3 ^ (_t) : stdgo.GoUInt64);
        _t = (_m & (((@:checkr _v ?? throw "null pointer dereference")._l4 ^ (@:checkr _u ?? throw "null pointer dereference")._l4 : stdgo.GoUInt64)) : stdgo.GoUInt64);
        (@:checkr _v ?? throw "null pointer dereference")._l4 = ((@:checkr _v ?? throw "null pointer dereference")._l4 ^ (_t) : stdgo.GoUInt64);
        (@:checkr _u ?? throw "null pointer dereference")._l4 = ((@:checkr _u ?? throw "null pointer dereference")._l4 ^ (_t) : stdgo.GoUInt64);
    }
    @:keep
    @:tdfield
    static public function select( _v:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>, _a:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>, _b:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>, _cond:stdgo.GoInt):stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element> {
        @:recv var _v:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element> = _v;
        var _m = (stdgo._internal.crypto.internal.edwards25519.field.Field__mask64bits._mask64Bits(_cond) : stdgo.GoUInt64);
        (@:checkr _v ?? throw "null pointer dereference")._l0 = (((_m & (@:checkr _a ?? throw "null pointer dereference")._l0 : stdgo.GoUInt64)) | (((-1 ^ _m) & (@:checkr _b ?? throw "null pointer dereference")._l0 : stdgo.GoUInt64)) : stdgo.GoUInt64);
        (@:checkr _v ?? throw "null pointer dereference")._l1 = (((_m & (@:checkr _a ?? throw "null pointer dereference")._l1 : stdgo.GoUInt64)) | (((-1 ^ _m) & (@:checkr _b ?? throw "null pointer dereference")._l1 : stdgo.GoUInt64)) : stdgo.GoUInt64);
        (@:checkr _v ?? throw "null pointer dereference")._l2 = (((_m & (@:checkr _a ?? throw "null pointer dereference")._l2 : stdgo.GoUInt64)) | (((-1 ^ _m) & (@:checkr _b ?? throw "null pointer dereference")._l2 : stdgo.GoUInt64)) : stdgo.GoUInt64);
        (@:checkr _v ?? throw "null pointer dereference")._l3 = (((_m & (@:checkr _a ?? throw "null pointer dereference")._l3 : stdgo.GoUInt64)) | (((-1 ^ _m) & (@:checkr _b ?? throw "null pointer dereference")._l3 : stdgo.GoUInt64)) : stdgo.GoUInt64);
        (@:checkr _v ?? throw "null pointer dereference")._l4 = (((_m & (@:checkr _a ?? throw "null pointer dereference")._l4 : stdgo.GoUInt64)) | (((-1 ^ _m) & (@:checkr _b ?? throw "null pointer dereference")._l4 : stdgo.GoUInt64)) : stdgo.GoUInt64);
        return _v;
    }
    @:keep
    @:tdfield
    static public function equal( _v:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>, _u:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>):stdgo.GoInt {
        @:recv var _v:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element> = _v;
        var __0 = @:check2r _u.bytes(), __1 = @:check2r _v.bytes();
var _sv = __1, _sa = __0;
        return stdgo._internal.crypto.subtle.Subtle_constanttimecompare.constantTimeCompare(_sa, _sv);
    }
    @:keep
    @:tdfield
    static public function _bytes( _v:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>, _out:stdgo.Ref<stdgo.GoArray<stdgo.GoUInt8>>):stdgo.Slice<stdgo.GoUInt8> {
        @:recv var _v:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element> = _v;
        var _t = ((_v : stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element)?.__copy__() : stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element);
        @:check2 _t._reduce();
        var _buf:stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(8, 8).__setNumber32__();
        for (_i => _l in (new stdgo.GoArray<stdgo.GoUInt64>(5, 5, ...[_t._l0, _t._l1, _t._l2, _t._l3, _t._l4]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)) {
            var _bitsOffset = (_i * (51 : stdgo.GoInt) : stdgo.GoInt);
            stdgo._internal.encoding.binary.Binary_littleendian.littleEndian.putUint64((_buf.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>), (_l << ((_bitsOffset % (8 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoUInt) : stdgo.GoUInt64));
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
    @:tdfield
    static public function bytes( _v:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>):stdgo.Slice<stdgo.GoUInt8> {
        @:recv var _v:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element> = _v;
        var _out:stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(32, 32).__setNumber32__();
        return @:check2r _v._bytes((stdgo.Go.setRef(_out) : stdgo.Ref<stdgo.GoArray<stdgo.GoUInt8>>));
    }
    @:keep
    @:tdfield
    static public function setBytes( _v:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>, _x:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>; var _1 : stdgo.Error; } {
        @:recv var _v:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element> = _v;
        if ((_x.length) != ((32 : stdgo.GoInt))) {
            return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("edwards25519: invalid field element input size" : stdgo.GoString)) };
        };
        (@:checkr _v ?? throw "null pointer dereference")._l0 = stdgo._internal.encoding.binary.Binary_littleendian.littleEndian.uint64((_x.__slice__((0 : stdgo.GoInt), (8 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
        (@:checkr _v ?? throw "null pointer dereference")._l0 = ((@:checkr _v ?? throw "null pointer dereference")._l0 & ((2251799813685247i64 : stdgo.GoUInt64)) : stdgo.GoUInt64);
        (@:checkr _v ?? throw "null pointer dereference")._l1 = (stdgo._internal.encoding.binary.Binary_littleendian.littleEndian.uint64((_x.__slice__((6 : stdgo.GoInt), (14 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)) >> (3i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
        (@:checkr _v ?? throw "null pointer dereference")._l1 = ((@:checkr _v ?? throw "null pointer dereference")._l1 & ((2251799813685247i64 : stdgo.GoUInt64)) : stdgo.GoUInt64);
        (@:checkr _v ?? throw "null pointer dereference")._l2 = (stdgo._internal.encoding.binary.Binary_littleendian.littleEndian.uint64((_x.__slice__((12 : stdgo.GoInt), (20 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)) >> (6i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
        (@:checkr _v ?? throw "null pointer dereference")._l2 = ((@:checkr _v ?? throw "null pointer dereference")._l2 & ((2251799813685247i64 : stdgo.GoUInt64)) : stdgo.GoUInt64);
        (@:checkr _v ?? throw "null pointer dereference")._l3 = (stdgo._internal.encoding.binary.Binary_littleendian.littleEndian.uint64((_x.__slice__((19 : stdgo.GoInt), (27 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)) >> (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
        (@:checkr _v ?? throw "null pointer dereference")._l3 = ((@:checkr _v ?? throw "null pointer dereference")._l3 & ((2251799813685247i64 : stdgo.GoUInt64)) : stdgo.GoUInt64);
        (@:checkr _v ?? throw "null pointer dereference")._l4 = (stdgo._internal.encoding.binary.Binary_littleendian.littleEndian.uint64((_x.__slice__((24 : stdgo.GoInt), (32 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)) >> (12i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
        (@:checkr _v ?? throw "null pointer dereference")._l4 = ((@:checkr _v ?? throw "null pointer dereference")._l4 & ((2251799813685247i64 : stdgo.GoUInt64)) : stdgo.GoUInt64);
        return { _0 : _v, _1 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function set( _v:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>, _a:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>):stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element> {
        @:recv var _v:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element> = _v;
        {
            var __tmp__ = (_a : stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element)?.__copy__();
            var x = (_v : stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element);
            x._l0 = __tmp__?._l0;
            x._l1 = __tmp__?._l1;
            x._l2 = __tmp__?._l2;
            x._l3 = __tmp__?._l3;
            x._l4 = __tmp__?._l4;
        };
        return _v;
    }
    @:keep
    @:tdfield
    static public function invert( _v:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>, _z:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>):stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element> {
        @:recv var _v:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element> = _v;
        var __0:stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element = ({} : stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element), __1:stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element = ({} : stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element), __2:stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element = ({} : stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element), __3:stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element = ({} : stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element), __4:stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element = ({} : stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element), __5:stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element = ({} : stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element), __6:stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element = ({} : stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element), __7:stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element = ({} : stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element), __8:stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element = ({} : stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element);
var _t = __8, _z2_100_0 = __7, _z2_50_0 = __6, _z2_20_0 = __5, _z2_10_0 = __4, _z2_5_0 = __3, _z11 = __2, _z9 = __1, _z2 = __0;
        @:check2 _z2.square(_z);
        @:check2 _t.square((stdgo.Go.setRef(_z2) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>));
        @:check2 _t.square((stdgo.Go.setRef(_t) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>));
        @:check2 _z9.multiply((stdgo.Go.setRef(_t) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>), _z);
        @:check2 _z11.multiply((stdgo.Go.setRef(_z9) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>), (stdgo.Go.setRef(_z2) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>));
        @:check2 _t.square((stdgo.Go.setRef(_z11) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>));
        @:check2 _z2_5_0.multiply((stdgo.Go.setRef(_t) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>), (stdgo.Go.setRef(_z9) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>));
        @:check2 _t.square((stdgo.Go.setRef(_z2_5_0) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>));
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (4 : stdgo.GoInt) : Bool)) {
                @:check2 _t.square((stdgo.Go.setRef(_t) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>));
                _i++;
            };
        };
        @:check2 _z2_10_0.multiply((stdgo.Go.setRef(_t) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>), (stdgo.Go.setRef(_z2_5_0) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>));
        @:check2 _t.square((stdgo.Go.setRef(_z2_10_0) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>));
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (9 : stdgo.GoInt) : Bool)) {
                @:check2 _t.square((stdgo.Go.setRef(_t) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>));
                _i++;
            };
        };
        @:check2 _z2_20_0.multiply((stdgo.Go.setRef(_t) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>), (stdgo.Go.setRef(_z2_10_0) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>));
        @:check2 _t.square((stdgo.Go.setRef(_z2_20_0) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>));
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (19 : stdgo.GoInt) : Bool)) {
                @:check2 _t.square((stdgo.Go.setRef(_t) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>));
                _i++;
            };
        };
        @:check2 _t.multiply((stdgo.Go.setRef(_t) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>), (stdgo.Go.setRef(_z2_20_0) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>));
        @:check2 _t.square((stdgo.Go.setRef(_t) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>));
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (9 : stdgo.GoInt) : Bool)) {
                @:check2 _t.square((stdgo.Go.setRef(_t) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>));
                _i++;
            };
        };
        @:check2 _z2_50_0.multiply((stdgo.Go.setRef(_t) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>), (stdgo.Go.setRef(_z2_10_0) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>));
        @:check2 _t.square((stdgo.Go.setRef(_z2_50_0) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>));
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (49 : stdgo.GoInt) : Bool)) {
                @:check2 _t.square((stdgo.Go.setRef(_t) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>));
                _i++;
            };
        };
        @:check2 _z2_100_0.multiply((stdgo.Go.setRef(_t) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>), (stdgo.Go.setRef(_z2_50_0) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>));
        @:check2 _t.square((stdgo.Go.setRef(_z2_100_0) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>));
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (99 : stdgo.GoInt) : Bool)) {
                @:check2 _t.square((stdgo.Go.setRef(_t) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>));
                _i++;
            };
        };
        @:check2 _t.multiply((stdgo.Go.setRef(_t) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>), (stdgo.Go.setRef(_z2_100_0) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>));
        @:check2 _t.square((stdgo.Go.setRef(_t) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>));
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (49 : stdgo.GoInt) : Bool)) {
                @:check2 _t.square((stdgo.Go.setRef(_t) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>));
                _i++;
            };
        };
        @:check2 _t.multiply((stdgo.Go.setRef(_t) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>), (stdgo.Go.setRef(_z2_50_0) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>));
        @:check2 _t.square((stdgo.Go.setRef(_t) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>));
        @:check2 _t.square((stdgo.Go.setRef(_t) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>));
        @:check2 _t.square((stdgo.Go.setRef(_t) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>));
        @:check2 _t.square((stdgo.Go.setRef(_t) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>));
        @:check2 _t.square((stdgo.Go.setRef(_t) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>));
        return @:check2r _v.multiply((stdgo.Go.setRef(_t) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>), (stdgo.Go.setRef(_z11) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>));
    }
    @:keep
    @:tdfield
    static public function negate( _v:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>, _a:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>):stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element> {
        @:recv var _v:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element> = _v;
        return @:check2r _v.subtract(stdgo._internal.crypto.internal.edwards25519.field.Field__fezero._feZero, _a);
    }
    @:keep
    @:tdfield
    static public function subtract( _v:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>, _a:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>, _b:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>):stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element> {
        @:recv var _v:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element> = _v;
        (@:checkr _v ?? throw "null pointer dereference")._l0 = ((((@:checkr _a ?? throw "null pointer dereference")._l0 + (4503599627370458i64 : stdgo.GoUInt64) : stdgo.GoUInt64)) - (@:checkr _b ?? throw "null pointer dereference")._l0 : stdgo.GoUInt64);
        (@:checkr _v ?? throw "null pointer dereference")._l1 = ((((@:checkr _a ?? throw "null pointer dereference")._l1 + (4503599627370494i64 : stdgo.GoUInt64) : stdgo.GoUInt64)) - (@:checkr _b ?? throw "null pointer dereference")._l1 : stdgo.GoUInt64);
        (@:checkr _v ?? throw "null pointer dereference")._l2 = ((((@:checkr _a ?? throw "null pointer dereference")._l2 + (4503599627370494i64 : stdgo.GoUInt64) : stdgo.GoUInt64)) - (@:checkr _b ?? throw "null pointer dereference")._l2 : stdgo.GoUInt64);
        (@:checkr _v ?? throw "null pointer dereference")._l3 = ((((@:checkr _a ?? throw "null pointer dereference")._l3 + (4503599627370494i64 : stdgo.GoUInt64) : stdgo.GoUInt64)) - (@:checkr _b ?? throw "null pointer dereference")._l3 : stdgo.GoUInt64);
        (@:checkr _v ?? throw "null pointer dereference")._l4 = ((((@:checkr _a ?? throw "null pointer dereference")._l4 + (4503599627370494i64 : stdgo.GoUInt64) : stdgo.GoUInt64)) - (@:checkr _b ?? throw "null pointer dereference")._l4 : stdgo.GoUInt64);
        return @:check2r _v._carryPropagate();
    }
    @:keep
    @:tdfield
    static public function add( _v:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>, _a:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>, _b:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>):stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element> {
        @:recv var _v:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element> = _v;
        (@:checkr _v ?? throw "null pointer dereference")._l0 = ((@:checkr _a ?? throw "null pointer dereference")._l0 + (@:checkr _b ?? throw "null pointer dereference")._l0 : stdgo.GoUInt64);
        (@:checkr _v ?? throw "null pointer dereference")._l1 = ((@:checkr _a ?? throw "null pointer dereference")._l1 + (@:checkr _b ?? throw "null pointer dereference")._l1 : stdgo.GoUInt64);
        (@:checkr _v ?? throw "null pointer dereference")._l2 = ((@:checkr _a ?? throw "null pointer dereference")._l2 + (@:checkr _b ?? throw "null pointer dereference")._l2 : stdgo.GoUInt64);
        (@:checkr _v ?? throw "null pointer dereference")._l3 = ((@:checkr _a ?? throw "null pointer dereference")._l3 + (@:checkr _b ?? throw "null pointer dereference")._l3 : stdgo.GoUInt64);
        (@:checkr _v ?? throw "null pointer dereference")._l4 = ((@:checkr _a ?? throw "null pointer dereference")._l4 + (@:checkr _b ?? throw "null pointer dereference")._l4 : stdgo.GoUInt64);
        return @:check2r _v._carryPropagateGeneric();
    }
    @:keep
    @:tdfield
    static public function _reduce( _v:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>):stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element> {
        @:recv var _v:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element> = _v;
        @:check2r _v._carryPropagate();
        var _c = ((((@:checkr _v ?? throw "null pointer dereference")._l0 + (19i64 : stdgo.GoUInt64) : stdgo.GoUInt64)) >> (51i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
        _c = ((((@:checkr _v ?? throw "null pointer dereference")._l1 + _c : stdgo.GoUInt64)) >> (51i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
        _c = ((((@:checkr _v ?? throw "null pointer dereference")._l2 + _c : stdgo.GoUInt64)) >> (51i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
        _c = ((((@:checkr _v ?? throw "null pointer dereference")._l3 + _c : stdgo.GoUInt64)) >> (51i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
        _c = ((((@:checkr _v ?? throw "null pointer dereference")._l4 + _c : stdgo.GoUInt64)) >> (51i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
        (@:checkr _v ?? throw "null pointer dereference")._l0 = ((@:checkr _v ?? throw "null pointer dereference")._l0 + (((19i64 : stdgo.GoUInt64) * _c : stdgo.GoUInt64)) : stdgo.GoUInt64);
        (@:checkr _v ?? throw "null pointer dereference")._l1 = ((@:checkr _v ?? throw "null pointer dereference")._l1 + (((@:checkr _v ?? throw "null pointer dereference")._l0 >> (51i64 : stdgo.GoUInt64) : stdgo.GoUInt64)) : stdgo.GoUInt64);
        (@:checkr _v ?? throw "null pointer dereference")._l0 = ((@:checkr _v ?? throw "null pointer dereference")._l0 & (2251799813685247i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
        (@:checkr _v ?? throw "null pointer dereference")._l2 = ((@:checkr _v ?? throw "null pointer dereference")._l2 + (((@:checkr _v ?? throw "null pointer dereference")._l1 >> (51i64 : stdgo.GoUInt64) : stdgo.GoUInt64)) : stdgo.GoUInt64);
        (@:checkr _v ?? throw "null pointer dereference")._l1 = ((@:checkr _v ?? throw "null pointer dereference")._l1 & (2251799813685247i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
        (@:checkr _v ?? throw "null pointer dereference")._l3 = ((@:checkr _v ?? throw "null pointer dereference")._l3 + (((@:checkr _v ?? throw "null pointer dereference")._l2 >> (51i64 : stdgo.GoUInt64) : stdgo.GoUInt64)) : stdgo.GoUInt64);
        (@:checkr _v ?? throw "null pointer dereference")._l2 = ((@:checkr _v ?? throw "null pointer dereference")._l2 & (2251799813685247i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
        (@:checkr _v ?? throw "null pointer dereference")._l4 = ((@:checkr _v ?? throw "null pointer dereference")._l4 + (((@:checkr _v ?? throw "null pointer dereference")._l3 >> (51i64 : stdgo.GoUInt64) : stdgo.GoUInt64)) : stdgo.GoUInt64);
        (@:checkr _v ?? throw "null pointer dereference")._l3 = ((@:checkr _v ?? throw "null pointer dereference")._l3 & (2251799813685247i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
        (@:checkr _v ?? throw "null pointer dereference")._l4 = ((@:checkr _v ?? throw "null pointer dereference")._l4 & (2251799813685247i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
        return _v;
    }
    @:keep
    @:tdfield
    static public function one( _v:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>):stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element> {
        @:recv var _v:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element> = _v;
        {
            var __tmp__ = (stdgo._internal.crypto.internal.edwards25519.field.Field__feone._feOne : stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element)?.__copy__();
            var x = (_v : stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element);
            x._l0 = __tmp__?._l0;
            x._l1 = __tmp__?._l1;
            x._l2 = __tmp__?._l2;
            x._l3 = __tmp__?._l3;
            x._l4 = __tmp__?._l4;
        };
        return _v;
    }
    @:keep
    @:tdfield
    static public function zero( _v:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>):stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element> {
        @:recv var _v:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element> = _v;
        {
            var __tmp__ = (stdgo._internal.crypto.internal.edwards25519.field.Field__fezero._feZero : stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element)?.__copy__();
            var x = (_v : stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element);
            x._l0 = __tmp__?._l0;
            x._l1 = __tmp__?._l1;
            x._l2 = __tmp__?._l2;
            x._l3 = __tmp__?._l3;
            x._l4 = __tmp__?._l4;
        };
        return _v;
    }
}
