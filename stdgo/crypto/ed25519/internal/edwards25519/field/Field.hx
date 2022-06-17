package stdgo.crypto.ed25519.internal.edwards25519.field;
import stdgo.StdGoTypes;
import stdgo.Error;
import stdgo.Go;
import stdgo.GoString;
import stdgo.Pointer;
import stdgo.Slice;
import stdgo.GoArray;
import stdgo.GoMap;
import stdgo.Chan;
var _feZero : Ref<Element> = ((new Element(((0 : GoUInt64)), ((0 : GoUInt64)), ((0 : GoUInt64)), ((0 : GoUInt64)), ((0 : GoUInt64))) : Element));
var _feOne : Ref<Element> = ((new Element(((1 : GoUInt64)), ((0 : GoUInt64)), ((0 : GoUInt64)), ((0 : GoUInt64)), ((0 : GoUInt64))) : Element));
var _sqrtM1 : Ref<Element> = ((new Element((("1718705420411056" : GoUInt64)), (("234908883556509" : GoUInt64)), (("2233514472574048" : GoUInt64)), (("2117202627021982" : GoUInt64)), (("765476049583133" : GoUInt64))) : Element));
@:structInit @:using(crypto.ed25519.internal.edwards25519.field.Field.Element_static_extension) class Element {
    public var _l0 : GoUInt64 = ((0 : GoUInt64));
    public var _l1 : GoUInt64 = ((0 : GoUInt64));
    public var _l2 : GoUInt64 = ((0 : GoUInt64));
    public var _l3 : GoUInt64 = ((0 : GoUInt64));
    public var _l4 : GoUInt64 = ((0 : GoUInt64));
    public function new(?_l0:GoUInt64, ?_l1:GoUInt64, ?_l2:GoUInt64, ?_l3:GoUInt64, ?_l4:GoUInt64) {
        if (_l0 != null) this._l0 = _l0;
        if (_l1 != null) this._l1 = _l1;
        if (_l2 != null) this._l2 = _l2;
        if (_l3 != null) this._l3 = _l3;
        if (_l4 != null) this._l4 = _l4;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new Element(_l0, _l1, _l2, _l3, _l4);
    }
}
@:structInit class T_uint128 {
    public var _lo : GoUInt64 = ((0 : GoUInt64));
    public var _hi : GoUInt64 = ((0 : GoUInt64));
    public function new(?_lo:GoUInt64, ?_hi:GoUInt64) {
        if (_lo != null) this._lo = _lo;
        if (_hi != null) this._hi = _hi;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_uint128(_lo, _hi);
    }
}
/**
    // mask64Bits returns 0xffffffff if cond is 1, and 0 otherwise.
**/
function _mask64Bits(_cond:GoInt):GoUInt64 {
        return (-1 ^ (((_cond : GoUInt64)) - ((1 : GoUInt64))));
    }
/**
    // mul51 returns lo + hi * 2⁵¹ = a * b.
**/
function _mul51(_a:GoUInt64, _b:GoUInt32):{ var _0 : GoUInt64; var _1 : GoUInt64; } {
        var _lo:GoUInt64 = ((0 : GoUInt64)), _hi:GoUInt64 = ((0 : GoUInt64));
        var __tmp__ = stdgo.math.bits.Bits.mul64(_a, ((_b : GoUInt64))), _mh:GoUInt64 = __tmp__._0, _ml:GoUInt64 = __tmp__._1;
        _lo = _ml & (("2251799813685247" : GoUInt64));
        _hi = (_mh << ((13 : GoUnTypedInt))) | (_ml >> ((51 : GoUnTypedInt)));
        return { _0 : _lo, _1 : _hi };
    }
function _feMul(_v:Element, _x:Element, _y:Element):Void {
        _feMulGeneric(_v, _x, _y);
    }
function _feSquare(_v:Element, _x:Element):Void {
        _feSquareGeneric(_v, _x);
    }
/**
    // mul64 returns a * b.
**/
function _mul64(_a:GoUInt64, _b:GoUInt64):T_uint128 {
        var __tmp__ = stdgo.math.bits.Bits.mul64(_a, _b), _hi:GoUInt64 = __tmp__._0, _lo:GoUInt64 = __tmp__._1;
        return ((new T_uint128(_lo, _hi) : T_uint128));
    }
/**
    // addMul64 returns v + a * b.
**/
function _addMul64(_v:T_uint128, _a:GoUInt64, _b:GoUInt64):T_uint128 {
        var __tmp__ = stdgo.math.bits.Bits.mul64(_a, _b), _hi:GoUInt64 = __tmp__._0, _lo:GoUInt64 = __tmp__._1;
        var __tmp__ = stdgo.math.bits.Bits.add64(_lo, _v._lo, ((0 : GoUInt64))), _lo:GoUInt64 = __tmp__._0, _c:GoUInt64 = __tmp__._1;
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_hi, _v._hi, _c);
            _hi = __tmp__._0;
        };
        return ((new T_uint128(_lo, _hi) : T_uint128));
    }
/**
    // shiftRightBy51 returns a >> 51. a is assumed to be at most 115 bits.
**/
function _shiftRightBy51(_a:T_uint128):GoUInt64 {
        return (_a._hi << ((13 : GoUnTypedInt))) | (_a._lo >> ((51 : GoUnTypedInt)));
    }
function _feMulGeneric(_v:Element, _a:Element, _b:Element):Void {
        var _a0:GoUInt64 = _a._l0;
        var _a1:GoUInt64 = _a._l1;
        var _a2:GoUInt64 = _a._l2;
        var _a3:GoUInt64 = _a._l3;
        var _a4:GoUInt64 = _a._l4;
        var _b0:GoUInt64 = _b._l0;
        var _b1:GoUInt64 = _b._l1;
        var _b2:GoUInt64 = _b._l2;
        var _b3:GoUInt64 = _b._l3;
        var _b4:GoUInt64 = _b._l4;
        var _a1_19:GoUInt64 = _a1 * ((19 : GoUInt64));
        var _a2_19:GoUInt64 = _a2 * ((19 : GoUInt64));
        var _a3_19:GoUInt64 = _a3 * ((19 : GoUInt64));
        var _a4_19:GoUInt64 = _a4 * ((19 : GoUInt64));
        var _r0:T_uint128 = (_mul64(_a0, _b0) == null ? null : _mul64(_a0, _b0).__copy__());
        _r0 = (_addMul64((_r0 == null ? null : _r0.__copy__()), _a1_19, _b4) == null ? null : _addMul64((_r0 == null ? null : _r0.__copy__()), _a1_19, _b4).__copy__());
        _r0 = (_addMul64((_r0 == null ? null : _r0.__copy__()), _a2_19, _b3) == null ? null : _addMul64((_r0 == null ? null : _r0.__copy__()), _a2_19, _b3).__copy__());
        _r0 = (_addMul64((_r0 == null ? null : _r0.__copy__()), _a3_19, _b2) == null ? null : _addMul64((_r0 == null ? null : _r0.__copy__()), _a3_19, _b2).__copy__());
        _r0 = (_addMul64((_r0 == null ? null : _r0.__copy__()), _a4_19, _b1) == null ? null : _addMul64((_r0 == null ? null : _r0.__copy__()), _a4_19, _b1).__copy__());
        var _r1:T_uint128 = (_mul64(_a0, _b1) == null ? null : _mul64(_a0, _b1).__copy__());
        _r1 = (_addMul64((_r1 == null ? null : _r1.__copy__()), _a1, _b0) == null ? null : _addMul64((_r1 == null ? null : _r1.__copy__()), _a1, _b0).__copy__());
        _r1 = (_addMul64((_r1 == null ? null : _r1.__copy__()), _a2_19, _b4) == null ? null : _addMul64((_r1 == null ? null : _r1.__copy__()), _a2_19, _b4).__copy__());
        _r1 = (_addMul64((_r1 == null ? null : _r1.__copy__()), _a3_19, _b3) == null ? null : _addMul64((_r1 == null ? null : _r1.__copy__()), _a3_19, _b3).__copy__());
        _r1 = (_addMul64((_r1 == null ? null : _r1.__copy__()), _a4_19, _b2) == null ? null : _addMul64((_r1 == null ? null : _r1.__copy__()), _a4_19, _b2).__copy__());
        var _r2:T_uint128 = (_mul64(_a0, _b2) == null ? null : _mul64(_a0, _b2).__copy__());
        _r2 = (_addMul64((_r2 == null ? null : _r2.__copy__()), _a1, _b1) == null ? null : _addMul64((_r2 == null ? null : _r2.__copy__()), _a1, _b1).__copy__());
        _r2 = (_addMul64((_r2 == null ? null : _r2.__copy__()), _a2, _b0) == null ? null : _addMul64((_r2 == null ? null : _r2.__copy__()), _a2, _b0).__copy__());
        _r2 = (_addMul64((_r2 == null ? null : _r2.__copy__()), _a3_19, _b4) == null ? null : _addMul64((_r2 == null ? null : _r2.__copy__()), _a3_19, _b4).__copy__());
        _r2 = (_addMul64((_r2 == null ? null : _r2.__copy__()), _a4_19, _b3) == null ? null : _addMul64((_r2 == null ? null : _r2.__copy__()), _a4_19, _b3).__copy__());
        var _r3:T_uint128 = (_mul64(_a0, _b3) == null ? null : _mul64(_a0, _b3).__copy__());
        _r3 = (_addMul64((_r3 == null ? null : _r3.__copy__()), _a1, _b2) == null ? null : _addMul64((_r3 == null ? null : _r3.__copy__()), _a1, _b2).__copy__());
        _r3 = (_addMul64((_r3 == null ? null : _r3.__copy__()), _a2, _b1) == null ? null : _addMul64((_r3 == null ? null : _r3.__copy__()), _a2, _b1).__copy__());
        _r3 = (_addMul64((_r3 == null ? null : _r3.__copy__()), _a3, _b0) == null ? null : _addMul64((_r3 == null ? null : _r3.__copy__()), _a3, _b0).__copy__());
        _r3 = (_addMul64((_r3 == null ? null : _r3.__copy__()), _a4_19, _b4) == null ? null : _addMul64((_r3 == null ? null : _r3.__copy__()), _a4_19, _b4).__copy__());
        var _r4:T_uint128 = (_mul64(_a0, _b4) == null ? null : _mul64(_a0, _b4).__copy__());
        _r4 = (_addMul64((_r4 == null ? null : _r4.__copy__()), _a1, _b3) == null ? null : _addMul64((_r4 == null ? null : _r4.__copy__()), _a1, _b3).__copy__());
        _r4 = (_addMul64((_r4 == null ? null : _r4.__copy__()), _a2, _b2) == null ? null : _addMul64((_r4 == null ? null : _r4.__copy__()), _a2, _b2).__copy__());
        _r4 = (_addMul64((_r4 == null ? null : _r4.__copy__()), _a3, _b1) == null ? null : _addMul64((_r4 == null ? null : _r4.__copy__()), _a3, _b1).__copy__());
        _r4 = (_addMul64((_r4 == null ? null : _r4.__copy__()), _a4, _b0) == null ? null : _addMul64((_r4 == null ? null : _r4.__copy__()), _a4, _b0).__copy__());
        var _c0:GoUInt64 = _shiftRightBy51((_r0 == null ? null : _r0.__copy__()));
        var _c1:GoUInt64 = _shiftRightBy51((_r1 == null ? null : _r1.__copy__()));
        var _c2:GoUInt64 = _shiftRightBy51((_r2 == null ? null : _r2.__copy__()));
        var _c3:GoUInt64 = _shiftRightBy51((_r3 == null ? null : _r3.__copy__()));
        var _c4:GoUInt64 = _shiftRightBy51((_r4 == null ? null : _r4.__copy__()));
        var _rr0:GoUInt64 = (_r0._lo & (("2251799813685247" : GoUInt64))) + (_c4 * ((19 : GoUInt64)));
        var _rr1:GoUInt64 = (_r1._lo & (("2251799813685247" : GoUInt64))) + _c0;
        var _rr2:GoUInt64 = (_r2._lo & (("2251799813685247" : GoUInt64))) + _c1;
        var _rr3:GoUInt64 = (_r3._lo & (("2251799813685247" : GoUInt64))) + _c2;
        var _rr4:GoUInt64 = (_r4._lo & (("2251799813685247" : GoUInt64))) + _c3;
        {
            var __tmp__ = ((new Element(_rr0, _rr1, _rr2, _rr3, _rr4) : Element));
            _v._l0 = __tmp__._l0;
            _v._l1 = __tmp__._l1;
            _v._l2 = __tmp__._l2;
            _v._l3 = __tmp__._l3;
            _v._l4 = __tmp__._l4;
        };
        _v._carryPropagate();
    }
function _feSquareGeneric(_v:Element, _a:Element):Void {
        var _l0:GoUInt64 = _a._l0;
        var _l1:GoUInt64 = _a._l1;
        var _l2:GoUInt64 = _a._l2;
        var _l3:GoUInt64 = _a._l3;
        var _l4:GoUInt64 = _a._l4;
        var _l0_2:GoUInt64 = _l0 * ((2 : GoUInt64));
        var _l1_2:GoUInt64 = _l1 * ((2 : GoUInt64));
        var _l1_38:GoUInt64 = _l1 * ((38 : GoUInt64));
        var _l2_38:GoUInt64 = _l2 * ((38 : GoUInt64));
        var _l3_38:GoUInt64 = _l3 * ((38 : GoUInt64));
        var _l3_19:GoUInt64 = _l3 * ((19 : GoUInt64));
        var _l4_19:GoUInt64 = _l4 * ((19 : GoUInt64));
        var _r0:T_uint128 = (_mul64(_l0, _l0) == null ? null : _mul64(_l0, _l0).__copy__());
        _r0 = (_addMul64((_r0 == null ? null : _r0.__copy__()), _l1_38, _l4) == null ? null : _addMul64((_r0 == null ? null : _r0.__copy__()), _l1_38, _l4).__copy__());
        _r0 = (_addMul64((_r0 == null ? null : _r0.__copy__()), _l2_38, _l3) == null ? null : _addMul64((_r0 == null ? null : _r0.__copy__()), _l2_38, _l3).__copy__());
        var _r1:T_uint128 = (_mul64(_l0_2, _l1) == null ? null : _mul64(_l0_2, _l1).__copy__());
        _r1 = (_addMul64((_r1 == null ? null : _r1.__copy__()), _l2_38, _l4) == null ? null : _addMul64((_r1 == null ? null : _r1.__copy__()), _l2_38, _l4).__copy__());
        _r1 = (_addMul64((_r1 == null ? null : _r1.__copy__()), _l3_19, _l3) == null ? null : _addMul64((_r1 == null ? null : _r1.__copy__()), _l3_19, _l3).__copy__());
        var _r2:T_uint128 = (_mul64(_l0_2, _l2) == null ? null : _mul64(_l0_2, _l2).__copy__());
        _r2 = (_addMul64((_r2 == null ? null : _r2.__copy__()), _l1, _l1) == null ? null : _addMul64((_r2 == null ? null : _r2.__copy__()), _l1, _l1).__copy__());
        _r2 = (_addMul64((_r2 == null ? null : _r2.__copy__()), _l3_38, _l4) == null ? null : _addMul64((_r2 == null ? null : _r2.__copy__()), _l3_38, _l4).__copy__());
        var _r3:T_uint128 = (_mul64(_l0_2, _l3) == null ? null : _mul64(_l0_2, _l3).__copy__());
        _r3 = (_addMul64((_r3 == null ? null : _r3.__copy__()), _l1_2, _l2) == null ? null : _addMul64((_r3 == null ? null : _r3.__copy__()), _l1_2, _l2).__copy__());
        _r3 = (_addMul64((_r3 == null ? null : _r3.__copy__()), _l4_19, _l4) == null ? null : _addMul64((_r3 == null ? null : _r3.__copy__()), _l4_19, _l4).__copy__());
        var _r4:T_uint128 = (_mul64(_l0_2, _l4) == null ? null : _mul64(_l0_2, _l4).__copy__());
        _r4 = (_addMul64((_r4 == null ? null : _r4.__copy__()), _l1_2, _l3) == null ? null : _addMul64((_r4 == null ? null : _r4.__copy__()), _l1_2, _l3).__copy__());
        _r4 = (_addMul64((_r4 == null ? null : _r4.__copy__()), _l2, _l2) == null ? null : _addMul64((_r4 == null ? null : _r4.__copy__()), _l2, _l2).__copy__());
        var _c0:GoUInt64 = _shiftRightBy51((_r0 == null ? null : _r0.__copy__()));
        var _c1:GoUInt64 = _shiftRightBy51((_r1 == null ? null : _r1.__copy__()));
        var _c2:GoUInt64 = _shiftRightBy51((_r2 == null ? null : _r2.__copy__()));
        var _c3:GoUInt64 = _shiftRightBy51((_r3 == null ? null : _r3.__copy__()));
        var _c4:GoUInt64 = _shiftRightBy51((_r4 == null ? null : _r4.__copy__()));
        var _rr0:GoUInt64 = (_r0._lo & (("2251799813685247" : GoUInt64))) + (_c4 * ((19 : GoUInt64)));
        var _rr1:GoUInt64 = (_r1._lo & (("2251799813685247" : GoUInt64))) + _c0;
        var _rr2:GoUInt64 = (_r2._lo & (("2251799813685247" : GoUInt64))) + _c1;
        var _rr3:GoUInt64 = (_r3._lo & (("2251799813685247" : GoUInt64))) + _c2;
        var _rr4:GoUInt64 = (_r4._lo & (("2251799813685247" : GoUInt64))) + _c3;
        {
            var __tmp__ = ((new Element(_rr0, _rr1, _rr2, _rr3, _rr4) : Element));
            _v._l0 = __tmp__._l0;
            _v._l1 = __tmp__._l1;
            _v._l2 = __tmp__._l2;
            _v._l3 = __tmp__._l3;
            _v._l4 = __tmp__._l4;
        };
        _v._carryPropagate();
    }
@:keep class Element_static_extension {
    /**
        // carryPropagate brings the limbs below 52 bits by applying the reduction
        // identity (a * 2²⁵⁵ + b = a * 19 + b) to the l4 carry.
    **/
    @:keep
    public static function _carryPropagateGeneric( _v:Element):Element {
        var _c0:GoUInt64 = _v._l0 >> ((51 : GoUnTypedInt));
        var _c1:GoUInt64 = _v._l1 >> ((51 : GoUnTypedInt));
        var _c2:GoUInt64 = _v._l2 >> ((51 : GoUnTypedInt));
        var _c3:GoUInt64 = _v._l3 >> ((51 : GoUnTypedInt));
        var _c4:GoUInt64 = _v._l4 >> ((51 : GoUnTypedInt));
        _v._l0 = (_v._l0 & (("2251799813685247" : GoUInt64))) + (_c4 * ((19 : GoUInt64)));
        _v._l1 = (_v._l1 & (("2251799813685247" : GoUInt64))) + _c0;
        _v._l2 = (_v._l2 & (("2251799813685247" : GoUInt64))) + _c1;
        _v._l3 = (_v._l3 & (("2251799813685247" : GoUInt64))) + _c2;
        _v._l4 = (_v._l4 & (("2251799813685247" : GoUInt64))) + _c3;
        return _v;
    }
    @:keep
    public static function _carryPropagate( _v:Element):Element {
        return _v._carryPropagateGeneric();
    }
    /**
        // SqrtRatio sets r to the non-negative square root of the ratio of u and v.
        //
        // If u/v is square, SqrtRatio returns r and 1. If u/v is not square, SqrtRatio
        // sets r according to Section 4.3 of draft-irtf-cfrg-ristretto255-decaf448-00,
        // and returns r and 0.
    **/
    @:keep
    public static function sqrtRatio( _r:Element, _u:Element, _v:Element):{ var _0 : Element; var _1 : GoInt; } {
        var _rr:Element = null, _wasSquare:GoInt = ((0 : GoInt));
        var _a:Element = new Element(), _b:Element = new Element();
        var _v2 = _a.square(_v);
        var _uv3 = _b.multiply(_u, _b.multiply(_v2, _v));
        var _uv7 = _a.multiply(_uv3, _a.square(_v2));
        _r.multiply(_uv3, _r.pow22523(_uv7));
        var _check = _a.multiply(_v, _a.square(_r));
        var _uNeg = _b.negate(_u);
        var _correctSignSqrt:GoInt = _check.equal(_u);
        var _flippedSignSqrt:GoInt = _check.equal(_uNeg);
        var _flippedSignSqrtI:GoInt = _check.equal(_uNeg.multiply(_uNeg, _sqrtM1));
        var _rPrime = _b.multiply(_r, _sqrtM1);
        _r.select(_rPrime, _r, _flippedSignSqrt | _flippedSignSqrtI);
        _r.absolute(_r);
        return { _0 : _r, _1 : _correctSignSqrt | _flippedSignSqrt };
    }
    /**
        // Pow22523 set v = x^((p-5)/8), and returns v. (p-5)/8 is 2^252-3.
    **/
    @:keep
    public static function pow22523( _v:Element, _x:Element):Element {
        var _t0:Element = new Element(), _t1:Element = new Element(), _t2:Element = new Element();
        _t0.square(_x);
        _t1.square(_t0);
        _t1.square(_t1);
        _t1.multiply(_x, _t1);
        _t0.multiply(_t0, _t1);
        _t0.square(_t0);
        _t0.multiply(_t1, _t0);
        _t1.square(_t0);
        {
            var _i:GoInt = ((1 : GoInt));
            Go.cfor(_i < ((5 : GoInt)), _i++, {
                _t1.square(_t1);
            });
        };
        _t0.multiply(_t1, _t0);
        _t1.square(_t0);
        {
            var _i:GoInt = ((1 : GoInt));
            Go.cfor(_i < ((10 : GoInt)), _i++, {
                _t1.square(_t1);
            });
        };
        _t1.multiply(_t1, _t0);
        _t2.square(_t1);
        {
            var _i:GoInt = ((1 : GoInt));
            Go.cfor(_i < ((20 : GoInt)), _i++, {
                _t2.square(_t2);
            });
        };
        _t1.multiply(_t2, _t1);
        _t1.square(_t1);
        {
            var _i:GoInt = ((1 : GoInt));
            Go.cfor(_i < ((10 : GoInt)), _i++, {
                _t1.square(_t1);
            });
        };
        _t0.multiply(_t1, _t0);
        _t1.square(_t0);
        {
            var _i:GoInt = ((1 : GoInt));
            Go.cfor(_i < ((50 : GoInt)), _i++, {
                _t1.square(_t1);
            });
        };
        _t1.multiply(_t1, _t0);
        _t2.square(_t1);
        {
            var _i:GoInt = ((1 : GoInt));
            Go.cfor(_i < ((100 : GoInt)), _i++, {
                _t2.square(_t2);
            });
        };
        _t1.multiply(_t2, _t1);
        _t1.square(_t1);
        {
            var _i:GoInt = ((1 : GoInt));
            Go.cfor(_i < ((50 : GoInt)), _i++, {
                _t1.square(_t1);
            });
        };
        _t0.multiply(_t1, _t0);
        _t0.square(_t0);
        _t0.square(_t0);
        return _v.multiply(_t0, _x);
    }
    /**
        // Mult32 sets v = x * y, and returns v.
    **/
    @:keep
    public static function mult32( _v:Element, _x:Element, _y:GoUInt32):Element {
        var __tmp__ = _mul51(_x._l0, _y), _x0lo:GoUInt64 = __tmp__._0, _x0hi:GoUInt64 = __tmp__._1;
        var __tmp__ = _mul51(_x._l1, _y), _x1lo:GoUInt64 = __tmp__._0, _x1hi:GoUInt64 = __tmp__._1;
        var __tmp__ = _mul51(_x._l2, _y), _x2lo:GoUInt64 = __tmp__._0, _x2hi:GoUInt64 = __tmp__._1;
        var __tmp__ = _mul51(_x._l3, _y), _x3lo:GoUInt64 = __tmp__._0, _x3hi:GoUInt64 = __tmp__._1;
        var __tmp__ = _mul51(_x._l4, _y), _x4lo:GoUInt64 = __tmp__._0, _x4hi:GoUInt64 = __tmp__._1;
        _v._l0 = _x0lo + (((19 : GoUInt64)) * _x4hi);
        _v._l1 = _x1lo + _x0hi;
        _v._l2 = _x2lo + _x1hi;
        _v._l3 = _x3lo + _x2hi;
        _v._l4 = _x4lo + _x3hi;
        return _v;
    }
    /**
        // Square sets v = x * x, and returns v.
    **/
    @:keep
    public static function square( _v:Element, _x:Element):Element {
        _feSquare(_v, _x);
        return _v;
    }
    /**
        // Multiply sets v = x * y, and returns v.
    **/
    @:keep
    public static function multiply( _v:Element, _x:Element, _y:Element):Element {
        _feMul(_v, _x, _y);
        return _v;
    }
    /**
        // Absolute sets v to |u|, and returns v.
    **/
    @:keep
    public static function absolute( _v:Element, _u:Element):Element {
        return _v.select(new Element().negate(_u), _u, _u.isNegative());
    }
    /**
        // IsNegative returns 1 if v is negative, and 0 otherwise.
    **/
    @:keep
    public static function isNegative( _v:Element):GoInt {
        return ((((_v.bytes() != null ? _v.bytes()[((0 : GoInt))] : ((0 : GoUInt8))) & ((1 : GoUInt8))) : GoInt));
    }
    /**
        // Swap swaps v and u if cond == 1 or leaves them unchanged if cond == 0, and returns v.
    **/
    @:keep
    public static function swap( _v:Element, _u:Element, _cond:GoInt):Void {
        var _m:GoUInt64 = _mask64Bits(_cond);
        var _t:GoUInt64 = _m & (_v._l0 ^ _u._l0);
        _v._l0 = _v._l0 ^ (_t);
        _u._l0 = _u._l0 ^ (_t);
        _t = _m & (_v._l1 ^ _u._l1);
        _v._l1 = _v._l1 ^ (_t);
        _u._l1 = _u._l1 ^ (_t);
        _t = _m & (_v._l2 ^ _u._l2);
        _v._l2 = _v._l2 ^ (_t);
        _u._l2 = _u._l2 ^ (_t);
        _t = _m & (_v._l3 ^ _u._l3);
        _v._l3 = _v._l3 ^ (_t);
        _u._l3 = _u._l3 ^ (_t);
        _t = _m & (_v._l4 ^ _u._l4);
        _v._l4 = _v._l4 ^ (_t);
        _u._l4 = _u._l4 ^ (_t);
    }
    /**
        // Select sets v to a if cond == 1, and to b if cond == 0.
    **/
    @:keep
    public static function select( _v:Element, _a:Element, _b:Element, _cond:GoInt):Element {
        var _m:GoUInt64 = _mask64Bits(_cond);
        _v._l0 = (_m & _a._l0) | ((-1 ^ _m) & _b._l0);
        _v._l1 = (_m & _a._l1) | ((-1 ^ _m) & _b._l1);
        _v._l2 = (_m & _a._l2) | ((-1 ^ _m) & _b._l2);
        _v._l3 = (_m & _a._l3) | ((-1 ^ _m) & _b._l3);
        _v._l4 = (_m & _a._l4) | ((-1 ^ _m) & _b._l4);
        return _v;
    }
    /**
        // Equal returns 1 if v and u are equal, and 0 otherwise.
    **/
    @:keep
    public static function equal( _v:Element, _u:Element):GoInt {
        var _sa = _u.bytes(), _sv = _v.bytes();
        return stdgo.crypto.subtle.Subtle.constantTimeCompare(_sa, _sv);
    }
    @:keep
    public static function _bytes( _v:Element, _out:GoArray<GoByte>):Slice<GoByte> {
        var _t:Element = (_v == null ? null : _v.__copy__());
        _t._reduce();
        var _buf:GoArray<GoByte> = new GoArray<GoUInt8>(...[for (i in 0 ... 8) ((0 : GoUInt8))]);
        for (_i => _l in ((new GoArray<GoUInt64>(_t._l0, _t._l1, _t._l2, _t._l3, _t._l4) : GoArray<GoUInt64>))) {
            var _bitsOffset:GoInt = _i * ((51 : GoInt));
            stdgo.encoding.binary.Binary.littleEndian.putUint64(((_buf.__slice__(0) : Slice<GoUInt8>)), _l << (((_bitsOffset % ((8 : GoInt))) : GoUInt)));
            for (_i => _bb in _buf) {
                var _off:GoInt = (_bitsOffset / ((8 : GoInt))) + _i;
                if (_off >= (_out != null ? _out.length : ((0 : GoInt)))) {
                    break;
                };
                if (_out != null) (_out != null ? _out[_off] : ((0 : GoUInt8))) | (_bb);
            };
        };
        return ((_out.__slice__(0) : Slice<GoUInt8>));
    }
    /**
        // Bytes returns the canonical 32-byte little-endian encoding of v.
    **/
    @:keep
    public static function bytes( _v:Element):Slice<GoByte> {
        var _out:GoArray<GoByte> = new GoArray<GoUInt8>(...[for (i in 0 ... 32) ((0 : GoUInt8))]);
        return _v._bytes(_out);
    }
    /**
        // SetBytes sets v to x, which must be a 32-byte little-endian encoding.
        //
        // Consistent with RFC 7748, the most significant bit (the high bit of the
        // last byte) is ignored, and non-canonical values (2^255-19 through 2^255-1)
        // are accepted. Note that this is laxer than specified by RFC 8032.
    **/
    @:keep
    public static function setBytes( _v:Element, _x:Slice<GoByte>):Element {
        if ((_x != null ? _x.length : ((0 : GoInt))) != ((32 : GoInt))) {
            throw Go.toInterface(((("edwards25519: invalid field element input size" : GoString))));
        };
        _v._l0 = stdgo.encoding.binary.Binary.littleEndian.uint64(((_x.__slice__(((0 : GoInt)), ((8 : GoInt))) : Slice<GoUInt8>)));
        _v._l0 = _v._l0 & ((("2251799813685247" : GoUInt64)));
        _v._l1 = stdgo.encoding.binary.Binary.littleEndian.uint64(((_x.__slice__(((6 : GoInt)), ((14 : GoInt))) : Slice<GoUInt8>))) >> ((3 : GoUnTypedInt));
        _v._l1 = _v._l1 & ((("2251799813685247" : GoUInt64)));
        _v._l2 = stdgo.encoding.binary.Binary.littleEndian.uint64(((_x.__slice__(((12 : GoInt)), ((20 : GoInt))) : Slice<GoUInt8>))) >> ((6 : GoUnTypedInt));
        _v._l2 = _v._l2 & ((("2251799813685247" : GoUInt64)));
        _v._l3 = stdgo.encoding.binary.Binary.littleEndian.uint64(((_x.__slice__(((19 : GoInt)), ((27 : GoInt))) : Slice<GoUInt8>))) >> ((1 : GoUnTypedInt));
        _v._l3 = _v._l3 & ((("2251799813685247" : GoUInt64)));
        _v._l4 = stdgo.encoding.binary.Binary.littleEndian.uint64(((_x.__slice__(((24 : GoInt)), ((32 : GoInt))) : Slice<GoUInt8>))) >> ((12 : GoUnTypedInt));
        _v._l4 = _v._l4 & ((("2251799813685247" : GoUInt64)));
        return _v;
    }
    /**
        // Set sets v = a, and returns v.
    **/
    @:keep
    public static function set( _v:Element, _a:Element):Element {
        {
            var __tmp__ = (_a == null ? null : _a.__copy__());
            _v._l0 = __tmp__._l0;
            _v._l1 = __tmp__._l1;
            _v._l2 = __tmp__._l2;
            _v._l3 = __tmp__._l3;
            _v._l4 = __tmp__._l4;
        };
        return _v;
    }
    /**
        // Invert sets v = 1/z mod p, and returns v.
        //
        // If z == 0, Invert returns v = 0.
    **/
    @:keep
    public static function invert( _v:Element, _z:Element):Element {
        var _z2:Element = new Element(), _z9:Element = new Element(), _z11:Element = new Element(), _z2_5_0:Element = new Element(), _z2_10_0:Element = new Element(), _z2_20_0:Element = new Element(), _z2_50_0:Element = new Element(), _z2_100_0:Element = new Element(), _t:Element = new Element();
        _z2.square(_z);
        _t.square(_z2);
        _t.square(_t);
        _z9.multiply(_t, _z);
        _z11.multiply(_z9, _z2);
        _t.square(_z11);
        _z2_5_0.multiply(_t, _z9);
        _t.square(_z2_5_0);
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < ((4 : GoInt)), _i++, {
                _t.square(_t);
            });
        };
        _z2_10_0.multiply(_t, _z2_5_0);
        _t.square(_z2_10_0);
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < ((9 : GoInt)), _i++, {
                _t.square(_t);
            });
        };
        _z2_20_0.multiply(_t, _z2_10_0);
        _t.square(_z2_20_0);
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < ((19 : GoInt)), _i++, {
                _t.square(_t);
            });
        };
        _t.multiply(_t, _z2_20_0);
        _t.square(_t);
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < ((9 : GoInt)), _i++, {
                _t.square(_t);
            });
        };
        _z2_50_0.multiply(_t, _z2_10_0);
        _t.square(_z2_50_0);
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < ((49 : GoInt)), _i++, {
                _t.square(_t);
            });
        };
        _z2_100_0.multiply(_t, _z2_50_0);
        _t.square(_z2_100_0);
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < ((99 : GoInt)), _i++, {
                _t.square(_t);
            });
        };
        _t.multiply(_t, _z2_100_0);
        _t.square(_t);
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < ((49 : GoInt)), _i++, {
                _t.square(_t);
            });
        };
        _t.multiply(_t, _z2_50_0);
        _t.square(_t);
        _t.square(_t);
        _t.square(_t);
        _t.square(_t);
        _t.square(_t);
        return _v.multiply(_t, _z11);
    }
    /**
        // Negate sets v = -a, and returns v.
    **/
    @:keep
    public static function negate( _v:Element, _a:Element):Element {
        return _v.subtract(_feZero, _a);
    }
    /**
        // Subtract sets v = a - b, and returns v.
    **/
    @:keep
    public static function subtract( _v:Element, _a:Element, _b:Element):Element {
        _v._l0 = (_a._l0 + (("4503599627370458" : GoUInt64))) - _b._l0;
        _v._l1 = (_a._l1 + (("4503599627370494" : GoUInt64))) - _b._l1;
        _v._l2 = (_a._l2 + (("4503599627370494" : GoUInt64))) - _b._l2;
        _v._l3 = (_a._l3 + (("4503599627370494" : GoUInt64))) - _b._l3;
        _v._l4 = (_a._l4 + (("4503599627370494" : GoUInt64))) - _b._l4;
        return _v._carryPropagate();
    }
    /**
        // Add sets v = a + b, and returns v.
    **/
    @:keep
    public static function add( _v:Element, _a:Element, _b:Element):Element {
        _v._l0 = _a._l0 + _b._l0;
        _v._l1 = _a._l1 + _b._l1;
        _v._l2 = _a._l2 + _b._l2;
        _v._l3 = _a._l3 + _b._l3;
        _v._l4 = _a._l4 + _b._l4;
        return _v._carryPropagateGeneric();
    }
    /**
        // reduce reduces v modulo 2^255 - 19 and returns it.
    **/
    @:keep
    public static function _reduce( _v:Element):Element {
        _v._carryPropagate();
        var _c:GoUInt64 = (_v._l0 + ((19 : GoUInt64))) >> ((51 : GoUnTypedInt));
        _c = (_v._l1 + _c) >> ((51 : GoUnTypedInt));
        _c = (_v._l2 + _c) >> ((51 : GoUnTypedInt));
        _c = (_v._l3 + _c) >> ((51 : GoUnTypedInt));
        _c = (_v._l4 + _c) >> ((51 : GoUnTypedInt));
        _v._l0 = _v._l0 + (((19 : GoUInt64)) * _c);
        _v._l1 = _v._l1 + (_v._l0 >> ((51 : GoUnTypedInt)));
        _v._l0 = _v._l0 & (("2251799813685247" : GoUInt64));
        _v._l2 = _v._l2 + (_v._l1 >> ((51 : GoUnTypedInt)));
        _v._l1 = _v._l1 & (("2251799813685247" : GoUInt64));
        _v._l3 = _v._l3 + (_v._l2 >> ((51 : GoUnTypedInt)));
        _v._l2 = _v._l2 & (("2251799813685247" : GoUInt64));
        _v._l4 = _v._l4 + (_v._l3 >> ((51 : GoUnTypedInt)));
        _v._l3 = _v._l3 & (("2251799813685247" : GoUInt64));
        _v._l4 = _v._l4 & (("2251799813685247" : GoUInt64));
        return _v;
    }
    /**
        // One sets v = 1, and returns v.
    **/
    @:keep
    public static function one( _v:Element):Element {
        {
            var __tmp__ = (_feOne == null ? null : _feOne.__copy__());
            _v._l0 = __tmp__._l0;
            _v._l1 = __tmp__._l1;
            _v._l2 = __tmp__._l2;
            _v._l3 = __tmp__._l3;
            _v._l4 = __tmp__._l4;
        };
        return _v;
    }
    /**
        // Zero sets v = 0, and returns v.
    **/
    @:keep
    public static function zero( _v:Element):Element {
        {
            var __tmp__ = (_feZero == null ? null : _feZero.__copy__());
            _v._l0 = __tmp__._l0;
            _v._l1 = __tmp__._l1;
            _v._l2 = __tmp__._l2;
            _v._l3 = __tmp__._l3;
            _v._l4 = __tmp__._l4;
        };
        return _v;
    }
}
class Element_wrapper {
    /**
        // carryPropagate brings the limbs below 52 bits by applying the reduction
        // identity (a * 2²⁵⁵ + b = a * 19 + b) to the l4 carry.
    **/
    @:keep
    public var _carryPropagateGeneric : () -> Element = null;
    @:keep
    public var _carryPropagate : () -> Element = null;
    /**
        // SqrtRatio sets r to the non-negative square root of the ratio of u and v.
        //
        // If u/v is square, SqrtRatio returns r and 1. If u/v is not square, SqrtRatio
        // sets r according to Section 4.3 of draft-irtf-cfrg-ristretto255-decaf448-00,
        // and returns r and 0.
    **/
    @:keep
    public var sqrtRatio : (Element, Element) -> { var _0 : Element; var _1 : GoInt; } = null;
    /**
        // Pow22523 set v = x^((p-5)/8), and returns v. (p-5)/8 is 2^252-3.
    **/
    @:keep
    public var pow22523 : Element -> Element = null;
    /**
        // Mult32 sets v = x * y, and returns v.
    **/
    @:keep
    public var mult32 : (Element, GoUInt32) -> Element = null;
    /**
        // Square sets v = x * x, and returns v.
    **/
    @:keep
    public var square : Element -> Element = null;
    /**
        // Multiply sets v = x * y, and returns v.
    **/
    @:keep
    public var multiply : (Element, Element) -> Element = null;
    /**
        // Absolute sets v to |u|, and returns v.
    **/
    @:keep
    public var absolute : Element -> Element = null;
    /**
        // IsNegative returns 1 if v is negative, and 0 otherwise.
    **/
    @:keep
    public var isNegative : () -> GoInt = null;
    /**
        // Swap swaps v and u if cond == 1 or leaves them unchanged if cond == 0, and returns v.
    **/
    @:keep
    public var swap : (Element, GoInt) -> Void = null;
    /**
        // Select sets v to a if cond == 1, and to b if cond == 0.
    **/
    @:keep
    public var select : (Element, Element, GoInt) -> Element = null;
    /**
        // Equal returns 1 if v and u are equal, and 0 otherwise.
    **/
    @:keep
    public var equal : Element -> GoInt = null;
    @:keep
    public var _bytes : GoArray<GoByte> -> Slice<GoByte> = null;
    /**
        // Bytes returns the canonical 32-byte little-endian encoding of v.
    **/
    @:keep
    public var bytes : () -> Slice<GoByte> = null;
    /**
        // SetBytes sets v to x, which must be a 32-byte little-endian encoding.
        //
        // Consistent with RFC 7748, the most significant bit (the high bit of the
        // last byte) is ignored, and non-canonical values (2^255-19 through 2^255-1)
        // are accepted. Note that this is laxer than specified by RFC 8032.
    **/
    @:keep
    public var setBytes : Slice<GoByte> -> Element = null;
    /**
        // Set sets v = a, and returns v.
    **/
    @:keep
    public var set : Element -> Element = null;
    /**
        // Invert sets v = 1/z mod p, and returns v.
        //
        // If z == 0, Invert returns v = 0.
    **/
    @:keep
    public var invert : Element -> Element = null;
    /**
        // Negate sets v = -a, and returns v.
    **/
    @:keep
    public var negate : Element -> Element = null;
    /**
        // Subtract sets v = a - b, and returns v.
    **/
    @:keep
    public var subtract : (Element, Element) -> Element = null;
    /**
        // Add sets v = a + b, and returns v.
    **/
    @:keep
    public var add : (Element, Element) -> Element = null;
    /**
        // reduce reduces v modulo 2^255 - 19 and returns it.
    **/
    @:keep
    public var _reduce : () -> Element = null;
    /**
        // One sets v = 1, and returns v.
    **/
    @:keep
    public var one : () -> Element = null;
    /**
        // Zero sets v = 0, and returns v.
    **/
    @:keep
    public var zero : () -> Element = null;
    public function new(__self__) this.__self__ = __self__;
    public function __underlying__() return Go.toInterface(__self__);
    var __self__ : Element;
}
