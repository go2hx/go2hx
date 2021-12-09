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

@:structInit class Element {
	public function _carryPropagateGeneric():Pointer<Element> {
		var _v = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		var _c0:GoUInt64 = (_v.value._l0 >> ((51 : GoUnTypedInt)));
		var _c1:GoUInt64 = (_v.value._l1 >> ((51 : GoUnTypedInt)));
		var _c2:GoUInt64 = (_v.value._l2 >> ((51 : GoUnTypedInt)));
		var _c3:GoUInt64 = (_v.value._l3 >> ((51 : GoUnTypedInt)));
		var _c4:GoUInt64 = (_v.value._l4 >> ((51 : GoUnTypedInt)));
		_v.value._l0 = _v.value._l0 & _maskLow51Bits + _c4 * ((19 : GoUInt64));
		_v.value._l1 = _v.value._l1 & _maskLow51Bits + _c0;
		_v.value._l2 = _v.value._l2 & _maskLow51Bits + _c1;
		_v.value._l3 = _v.value._l3 & _maskLow51Bits + _c2;
		_v.value._l4 = _v.value._l4 & _maskLow51Bits + _c3;
		return _v;
	}

	public function _carryPropagate():Pointer<Element> {
		var _v = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		return _v.value._carryPropagateGeneric();
	}

	public function sqrtRatio(_u:Pointer<Element>, _v:Pointer<Element>):{var _0:Pointer<Element>; var _1:GoInt;} {
		var _r = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		var _rr:Pointer<Element> = new Pointer<Element>().nil(),
			_wasSquare:GoInt = ((0 : GoInt));
		var _a:Element = new Element(), _b:Element = new Element();
		var _v2:Pointer<Element> = _a.square(_v);
		var _uv3:Pointer<Element> = _b.multiply(_u, _b.multiply(_v2, _v));
		var _uv7:Pointer<Element> = _a.multiply(_uv3, _a.square(_v2));
		_r.value.multiply(_uv3, _r.value.pow22523(_uv7));
		var _check:Pointer<Element> = _a.multiply(_v, _a.square(_r));
		var _uNeg:Pointer<Element> = _b.negate(_u);
		var _correctSignSqrt:GoInt = _check.value.equal(_u);
		var _flippedSignSqrt:GoInt = _check.value.equal(_uNeg);
		var _flippedSignSqrtI:GoInt = _check.value.equal(_uNeg.value.multiply(_uNeg, _sqrtM1));
		var _rPrime:Pointer<Element> = _b.multiply(_r, _sqrtM1);
		_r.value.select(_rPrime, _r, _flippedSignSqrt | _flippedSignSqrtI);
		_r.value.absolute(_r);
		return {_0: _r, _1: _correctSignSqrt | _flippedSignSqrt};
	}

	public function pow22523(_x:Pointer<Element>):Pointer<Element> {
		var _v = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		var _t0:Element = new Element(),
			_t1:Element = new Element(),
			_t2:Element = new Element();
		_t0.square(_x);
		_t1.square(Go.pointer(_t0));
		_t1.square(Go.pointer(_t1));
		_t1.multiply(_x, Go.pointer(_t1));
		_t0.multiply(Go.pointer(_t0), Go.pointer(_t1));
		_t0.square(Go.pointer(_t0));
		_t0.multiply(Go.pointer(_t1), Go.pointer(_t0));
		_t1.square(Go.pointer(_t0));
		{
			var _i:GoInt = ((1 : GoInt));
			Go.cfor(_i < ((5 : GoInt)), _i++, {
				_t1.square(Go.pointer(_t1));
			});
		};
		_t0.multiply(Go.pointer(_t1), Go.pointer(_t0));
		_t1.square(Go.pointer(_t0));
		{
			var _i:GoInt = ((1 : GoInt));
			Go.cfor(_i < ((10 : GoInt)), _i++, {
				_t1.square(Go.pointer(_t1));
			});
		};
		_t1.multiply(Go.pointer(_t1), Go.pointer(_t0));
		_t2.square(Go.pointer(_t1));
		{
			var _i:GoInt = ((1 : GoInt));
			Go.cfor(_i < ((20 : GoInt)), _i++, {
				_t2.square(Go.pointer(_t2));
			});
		};
		_t1.multiply(Go.pointer(_t2), Go.pointer(_t1));
		_t1.square(Go.pointer(_t1));
		{
			var _i:GoInt = ((1 : GoInt));
			Go.cfor(_i < ((10 : GoInt)), _i++, {
				_t1.square(Go.pointer(_t1));
			});
		};
		_t0.multiply(Go.pointer(_t1), Go.pointer(_t0));
		_t1.square(Go.pointer(_t0));
		{
			var _i:GoInt = ((1 : GoInt));
			Go.cfor(_i < ((50 : GoInt)), _i++, {
				_t1.square(Go.pointer(_t1));
			});
		};
		_t1.multiply(Go.pointer(_t1), Go.pointer(_t0));
		_t2.square(Go.pointer(_t1));
		{
			var _i:GoInt = ((1 : GoInt));
			Go.cfor(_i < ((100 : GoInt)), _i++, {
				_t2.square(Go.pointer(_t2));
			});
		};
		_t1.multiply(Go.pointer(_t2), Go.pointer(_t1));
		_t1.square(Go.pointer(_t1));
		{
			var _i:GoInt = ((1 : GoInt));
			Go.cfor(_i < ((50 : GoInt)), _i++, {
				_t1.square(Go.pointer(_t1));
			});
		};
		_t0.multiply(Go.pointer(_t1), Go.pointer(_t0));
		_t0.square(Go.pointer(_t0));
		_t0.square(Go.pointer(_t0));
		return _v.value.multiply(Go.pointer(_t0), _x);
	}

	public function mult32(_x:Pointer<Element>, _y:GoUInt32):Pointer<Element> {
		var _v = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		var __tmp__ = _mul51(_x.value._l0, _y),
			_x0lo:GoUInt64 = __tmp__._0,
			_x0hi:GoUInt64 = __tmp__._1;
		var __tmp__ = _mul51(_x.value._l1, _y),
			_x1lo:GoUInt64 = __tmp__._0,
			_x1hi:GoUInt64 = __tmp__._1;
		var __tmp__ = _mul51(_x.value._l2, _y),
			_x2lo:GoUInt64 = __tmp__._0,
			_x2hi:GoUInt64 = __tmp__._1;
		var __tmp__ = _mul51(_x.value._l3, _y),
			_x3lo:GoUInt64 = __tmp__._0,
			_x3hi:GoUInt64 = __tmp__._1;
		var __tmp__ = _mul51(_x.value._l4, _y),
			_x4lo:GoUInt64 = __tmp__._0,
			_x4hi:GoUInt64 = __tmp__._1;
		_v.value._l0 = _x0lo + ((19 : GoUInt64)) * _x4hi;
		_v.value._l1 = _x1lo + _x0hi;
		_v.value._l2 = _x2lo + _x1hi;
		_v.value._l3 = _x3lo + _x2hi;
		_v.value._l4 = _x4lo + _x3hi;
		return _v;
	}

	public function square(_x:Pointer<Element>):Pointer<Element> {
		var _v = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		_feSquare(_v, _x);
		return _v;
	}

	public function multiply(_x:Pointer<Element>, _y:Pointer<Element>):Pointer<Element> {
		var _v = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		_feMul(_v, _x, _y);
		return _v;
	}

	public function absolute(_u:Pointer<Element>):Pointer<Element> {
		var _v = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		return _v.value.select(Go.pointer(new Element()).value.negate(_u), _u, _u.value.isNegative());
	}

	public function isNegative():GoInt {
		var _v = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		return (((_v.value.bytes()[((0 : GoInt))] & ((1 : GoUInt8))) : GoInt));
	}

	public function swap(_u:Pointer<Element>, _cond:GoInt):Void {
		var _v = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		var _m:GoUInt64 = _mask64Bits(_cond);
		var _t:GoUInt64 = _m & (_v.value._l0 ^ _u.value._l0);
		_v.value._l0 = _v.value._l0 ^ (_t);
		_u.value._l0 = _u.value._l0 ^ (_t);
		_t = _m & (_v.value._l1 ^ _u.value._l1);
		_v.value._l1 = _v.value._l1 ^ (_t);
		_u.value._l1 = _u.value._l1 ^ (_t);
		_t = _m & (_v.value._l2 ^ _u.value._l2);
		_v.value._l2 = _v.value._l2 ^ (_t);
		_u.value._l2 = _u.value._l2 ^ (_t);
		_t = _m & (_v.value._l3 ^ _u.value._l3);
		_v.value._l3 = _v.value._l3 ^ (_t);
		_u.value._l3 = _u.value._l3 ^ (_t);
		_t = _m & (_v.value._l4 ^ _u.value._l4);
		_v.value._l4 = _v.value._l4 ^ (_t);
		_u.value._l4 = _u.value._l4 ^ (_t);
	}

	public function select(_a:Pointer<Element>, _b:Pointer<Element>, _cond:GoInt):Pointer<Element> {
		var _v = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		var _m:GoUInt64 = _mask64Bits(_cond);
		_v.value._l0 = (_m & _a.value._l0) | (-1 ^ _m & _b.value._l0);
		_v.value._l1 = (_m & _a.value._l1) | (-1 ^ _m & _b.value._l1);
		_v.value._l2 = (_m & _a.value._l2) | (-1 ^ _m & _b.value._l2);
		_v.value._l3 = (_m & _a.value._l3) | (-1 ^ _m & _b.value._l3);
		_v.value._l4 = (_m & _a.value._l4) | (-1 ^ _m & _b.value._l4);
		return _v;
	}

	public function equal(_u:Pointer<Element>):GoInt {
		var _v = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		var _sa:Slice<GoUInt8> = _u.value.bytes(),
			_sv:Slice<GoUInt8> = _v.value.bytes();
		return stdgo.crypto.subtle.Subtle.constantTimeCompare(_sa, _sv);
	}

	public function _bytes(_out:Pointer<GoArray<GoByte>>):Slice<GoByte> {
		var _v = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		var _t:Element = _v.value.__copy__();
		_t._reduce();
		var _buf:GoArray<GoByte> = new GoArray<GoUInt8>(...[for (i in 0...8) ((0 : GoUInt8))]);
		for (_i => _l in new GoArray<GoUInt64>(_t._l0, _t._l1, _t._l2, _t._l3, _t._l4)) {
			var _bitsOffset:GoInt = _i * ((51 : GoInt));
			stdgo.encoding.binary.Binary.littleEndian.putUint64(_buf.__slice__(0), (_l << (((_bitsOffset % ((8 : GoInt))) : GoUInt))));
			for (_i => _bb in _buf) {
				var _off:GoInt = _bitsOffset / ((8 : GoInt)) + _i;
				if (_off >= _out.length) {
					break;
				};
				_out.value[_off] = _out.value[_off] | (_bb);
			};
		};
		return _out.value.__slice__(0);
	}

	public function bytes():Slice<GoByte> {
		var _v = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		var _out:GoArray<GoByte> = new GoArray<GoUInt8>(...[for (i in 0...32) ((0 : GoUInt8))]);
		return _v.value._bytes(Go.pointer(_out));
	}

	public function setBytes(_x:Slice<GoByte>):Pointer<Element> {
		var _v = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		if (_x.length != ((32 : GoInt))) {
			throw "edwards25519: invalid field element input size";
		};
		_v.value._l0 = stdgo.encoding.binary.Binary.littleEndian.uint64(_x.__slice__(((0 : GoInt)), ((8 : GoInt))));
		_v.value._l0 = _v.value._l0 & (_maskLow51Bits);
		_v.value._l1 = (stdgo.encoding.binary.Binary.littleEndian.uint64(_x.__slice__(((6 : GoInt)), ((14 : GoInt)))) >> ((3 : GoUnTypedInt)));
		_v.value._l1 = _v.value._l1 & (_maskLow51Bits);
		_v.value._l2 = (stdgo.encoding.binary.Binary.littleEndian.uint64(_x.__slice__(((12 : GoInt)), ((20 : GoInt)))) >> ((6 : GoUnTypedInt)));
		_v.value._l2 = _v.value._l2 & (_maskLow51Bits);
		_v.value._l3 = (stdgo.encoding.binary.Binary.littleEndian.uint64(_x.__slice__(((19 : GoInt)), ((27 : GoInt)))) >> ((1 : GoUnTypedInt)));
		_v.value._l3 = _v.value._l3 & (_maskLow51Bits);
		_v.value._l4 = (stdgo.encoding.binary.Binary.littleEndian.uint64(_x.__slice__(((24 : GoInt)), ((32 : GoInt)))) >> ((12 : GoUnTypedInt)));
		_v.value._l4 = _v.value._l4 & (_maskLow51Bits);
		return _v;
	}

	public function set(_a:Pointer<Element>):Pointer<Element> {
		var _v = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		_v.value = _a.value.__copy__();
		return _v;
	}

	public function invert(_z:Pointer<Element>):Pointer<Element> {
		var _v = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		var _z2:Element = new Element(),
			_z9:Element = new Element(),
			_z11:Element = new Element(),
			_z2_5_0:Element = new Element(),
			_z2_10_0:Element = new Element(),
			_z2_20_0:Element = new Element(),
			_z2_50_0:Element = new Element(),
			_z2_100_0:Element = new Element(),
			_t:Element = new Element();
		_z2.square(_z);
		_t.square(Go.pointer(_z2));
		_t.square(Go.pointer(_t));
		_z9.multiply(Go.pointer(_t), _z);
		_z11.multiply(Go.pointer(_z9), Go.pointer(_z2));
		_t.square(Go.pointer(_z11));
		_z2_5_0.multiply(Go.pointer(_t), Go.pointer(_z9));
		_t.square(Go.pointer(_z2_5_0));
		{
			var _i:GoInt = ((0 : GoInt));
			Go.cfor(_i < ((4 : GoInt)), _i++, {
				_t.square(Go.pointer(_t));
			});
		};
		_z2_10_0.multiply(Go.pointer(_t), Go.pointer(_z2_5_0));
		_t.square(Go.pointer(_z2_10_0));
		{
			var _i:GoInt = ((0 : GoInt));
			Go.cfor(_i < ((9 : GoInt)), _i++, {
				_t.square(Go.pointer(_t));
			});
		};
		_z2_20_0.multiply(Go.pointer(_t), Go.pointer(_z2_10_0));
		_t.square(Go.pointer(_z2_20_0));
		{
			var _i:GoInt = ((0 : GoInt));
			Go.cfor(_i < ((19 : GoInt)), _i++, {
				_t.square(Go.pointer(_t));
			});
		};
		_t.multiply(Go.pointer(_t), Go.pointer(_z2_20_0));
		_t.square(Go.pointer(_t));
		{
			var _i:GoInt = ((0 : GoInt));
			Go.cfor(_i < ((9 : GoInt)), _i++, {
				_t.square(Go.pointer(_t));
			});
		};
		_z2_50_0.multiply(Go.pointer(_t), Go.pointer(_z2_10_0));
		_t.square(Go.pointer(_z2_50_0));
		{
			var _i:GoInt = ((0 : GoInt));
			Go.cfor(_i < ((49 : GoInt)), _i++, {
				_t.square(Go.pointer(_t));
			});
		};
		_z2_100_0.multiply(Go.pointer(_t), Go.pointer(_z2_50_0));
		_t.square(Go.pointer(_z2_100_0));
		{
			var _i:GoInt = ((0 : GoInt));
			Go.cfor(_i < ((99 : GoInt)), _i++, {
				_t.square(Go.pointer(_t));
			});
		};
		_t.multiply(Go.pointer(_t), Go.pointer(_z2_100_0));
		_t.square(Go.pointer(_t));
		{
			var _i:GoInt = ((0 : GoInt));
			Go.cfor(_i < ((49 : GoInt)), _i++, {
				_t.square(Go.pointer(_t));
			});
		};
		_t.multiply(Go.pointer(_t), Go.pointer(_z2_50_0));
		_t.square(Go.pointer(_t));
		_t.square(Go.pointer(_t));
		_t.square(Go.pointer(_t));
		_t.square(Go.pointer(_t));
		_t.square(Go.pointer(_t));
		return _v.value.multiply(Go.pointer(_t), Go.pointer(_z11));
	}

	public function negate(_a:Pointer<Element>):Pointer<Element> {
		var _v = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		return _v.value.subtract(_feZero, _a);
	}

	public function subtract(_a:Pointer<Element>, _b:Pointer<Element>):Pointer<Element> {
		var _v = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		_v.value._l0 = (_a.value._l0 + (("4503599627370458" : GoUInt64))) - _b.value._l0;
		_v.value._l1 = (_a.value._l1 + (("4503599627370494" : GoUInt64))) - _b.value._l1;
		_v.value._l2 = (_a.value._l2 + (("4503599627370494" : GoUInt64))) - _b.value._l2;
		_v.value._l3 = (_a.value._l3 + (("4503599627370494" : GoUInt64))) - _b.value._l3;
		_v.value._l4 = (_a.value._l4 + (("4503599627370494" : GoUInt64))) - _b.value._l4;
		return _v.value._carryPropagate();
	}

	public function add(_a:Pointer<Element>, _b:Pointer<Element>):Pointer<Element> {
		var _v = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		_v.value._l0 = _a.value._l0 + _b.value._l0;
		_v.value._l1 = _a.value._l1 + _b.value._l1;
		_v.value._l2 = _a.value._l2 + _b.value._l2;
		_v.value._l3 = _a.value._l3 + _b.value._l3;
		_v.value._l4 = _a.value._l4 + _b.value._l4;
		return _v.value._carryPropagateGeneric();
	}

	public function _reduce():Pointer<Element> {
		var _v = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		_v.value._carryPropagate();
		var _c:GoUInt64 = ((_v.value._l0 + ((19 : GoUInt64))) >> ((51 : GoUnTypedInt)));
		_c = ((_v.value._l1 + _c) >> ((51 : GoUnTypedInt)));
		_c = ((_v.value._l2 + _c) >> ((51 : GoUnTypedInt)));
		_c = ((_v.value._l3 + _c) >> ((51 : GoUnTypedInt)));
		_c = ((_v.value._l4 + _c) >> ((51 : GoUnTypedInt)));
		_v.value._l0 = _v.value._l0 + (((19 : GoUInt64)) * _c);
		_v.value._l1 = _v.value._l1 + ((_v.value._l0 >> ((51 : GoUnTypedInt))));
		_v.value._l0 = _v.value._l0 & _maskLow51Bits;
		_v.value._l2 = _v.value._l2 + ((_v.value._l1 >> ((51 : GoUnTypedInt))));
		_v.value._l1 = _v.value._l1 & _maskLow51Bits;
		_v.value._l3 = _v.value._l3 + ((_v.value._l2 >> ((51 : GoUnTypedInt))));
		_v.value._l2 = _v.value._l2 & _maskLow51Bits;
		_v.value._l4 = _v.value._l4 + ((_v.value._l3 >> ((51 : GoUnTypedInt))));
		_v.value._l3 = _v.value._l3 & _maskLow51Bits;
		_v.value._l4 = _v.value._l4 & _maskLow51Bits;
		return _v;
	}

	public function one():Pointer<Element> {
		var _v = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		_v.value = _feOne.value.__copy__();
		return _v;
	}

	public function zero():Pointer<Element> {
		var _v = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		_v.value = _feZero.value.__copy__();
		return _v;
	}

	public var _l0:GoUInt64 = ((0 : GoUInt64));
	public var _l1:GoUInt64 = ((0 : GoUInt64));
	public var _l2:GoUInt64 = ((0 : GoUInt64));
	public var _l3:GoUInt64 = ((0 : GoUInt64));
	public var _l4:GoUInt64 = ((0 : GoUInt64));

	public function new(?_l0:GoUInt64, ?_l1:GoUInt64, ?_l2:GoUInt64, ?_l3:GoUInt64, ?_l4:GoUInt64)
		stdgo.internal.Macro.initLocals();

	public function toString() {
		return '{' + Go.string(_l0) + " " + Go.string(_l1) + " " + Go.string(_l2) + " " + Go.string(_l3) + " " + Go.string(_l4) + "}";
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new Element(_l0, _l1, _l2, _l3, _l4);
	}

	public function __set__(__tmp__) {
		this._l0 = __tmp__._l0;
		this._l1 = __tmp__._l1;
		this._l2 = __tmp__._l2;
		this._l3 = __tmp__._l3;
		this._l4 = __tmp__._l4;
		return this;
	}
}

@:structInit class T_uint128 {
	public var _lo:GoUInt64 = ((0 : GoUInt64));
	public var _hi:GoUInt64 = ((0 : GoUInt64));

	public function new(?_lo:GoUInt64, ?_hi:GoUInt64)
		stdgo.internal.Macro.initLocals();

	public function toString() {
		return '{' + Go.string(_lo) + " " + Go.string(_hi) + "}";
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new T_uint128(_lo, _hi);
	}

	public function __set__(__tmp__) {
		this._lo = __tmp__._lo;
		this._hi = __tmp__._hi;
		return this;
	}
}

var _feOne:Pointer<Element> = Go.pointer(new Element(((1 : GoUInt64)), ((0 : GoUInt64)), ((0 : GoUInt64)), ((0 : GoUInt64)), ((0 : GoUInt64))));
final _maskLow51Bits:GoUInt64 = ((((1 : GoUnTypedInt)) << ((51 : GoUnTypedInt)))) - ((1 : GoUnTypedInt));
var _feZero:Pointer<Element> = Go.pointer(new Element(((0 : GoUInt64)), ((0 : GoUInt64)), ((0 : GoUInt64)), ((0 : GoUInt64)), ((0 : GoUInt64))));

var _sqrtM1:Pointer<Element> = Go.pointer(new Element((("1718705420411056" : GoUInt64)), (("234908883556509" : GoUInt64)), (("2233514472574048" : GoUInt64)),
	(("2117202627021982" : GoUInt64)), (("765476049583133" : GoUInt64))));

/**
	// mask64Bits returns 0xffffffff if cond is 1, and 0 otherwise.
**/
function _mask64Bits(_cond:GoInt):GoUInt64 {
	return -1 ^ (((_cond : GoUInt64)) - ((1 : GoUInt64)));
}

/**
	// mul51 returns lo + hi * 2⁵¹ = a * b.
**/
function _mul51(_a:GoUInt64, _b:GoUInt32):{var _0:GoUInt64; var _1:GoUInt64;} {
	var _lo:GoUInt64 = ((0 : GoUInt64)), _hi:GoUInt64 = ((0 : GoUInt64));
	var __tmp__ = stdgo.math.bits.Bits.mul64(_a, ((_b : GoUInt64))),
		_mh:GoUInt64 = __tmp__._0,
		_ml:GoUInt64 = __tmp__._1;
	_lo = _ml & _maskLow51Bits;
	_hi = ((_mh << ((13 : GoUnTypedInt)))) | ((_ml >> ((51 : GoUnTypedInt))));
	return {_0: _lo, _1: _hi};
}

function _feMul(_v:Pointer<Element>, _x:Pointer<Element>, _y:Pointer<Element>):Void {
	_feMulGeneric(_v, _x, _y);
}

function _feSquare(_v:Pointer<Element>, _x:Pointer<Element>):Void {
	_feSquareGeneric(_v, _x);
}

/**
	// mul64 returns a * b.
**/
function _mul64(_a:GoUInt64, _b:GoUInt64):T_uint128 {
	var __tmp__ = stdgo.math.bits.Bits.mul64(_a, _b),
		_hi:GoUInt64 = __tmp__._0,
		_lo:GoUInt64 = __tmp__._1;
	return new T_uint128(_lo, _hi).__copy__();
}

/**
	// addMul64 returns v + a * b.
**/
function _addMul64(_v:T_uint128, _a:GoUInt64, _b:GoUInt64):T_uint128 {
	var __tmp__ = stdgo.math.bits.Bits.mul64(_a, _b),
		_hi:GoUInt64 = __tmp__._0,
		_lo:GoUInt64 = __tmp__._1;
	var __tmp__ = stdgo.math.bits.Bits.add64(_lo, _v._lo, ((0 : GoUInt64))),
		_lo:GoUInt64 = __tmp__._0,
		_c:GoUInt64 = __tmp__._1;
	{
		var __tmp__ = stdgo.math.bits.Bits.add64(_hi, _v._hi, _c);
		_hi = __tmp__._0;
	};
	return new T_uint128(_lo, _hi).__copy__();
}

/**
	// shiftRightBy51 returns a >> 51. a is assumed to be at most 115 bits.
**/
function _shiftRightBy51(_a:T_uint128):GoUInt64 {
	return ((_a._hi << (((64 : GoUnTypedInt)) - ((51 : GoUnTypedInt))))) | ((_a._lo >> ((51 : GoUnTypedInt))));
}

function _feMulGeneric(_v:Pointer<Element>, _a:Pointer<Element>, _b:Pointer<Element>):Void {
	var _a0:GoUInt64 = _a.value._l0;
	var _a1:GoUInt64 = _a.value._l1;
	var _a2:GoUInt64 = _a.value._l2;
	var _a3:GoUInt64 = _a.value._l3;
	var _a4:GoUInt64 = _a.value._l4;
	var _b0:GoUInt64 = _b.value._l0;
	var _b1:GoUInt64 = _b.value._l1;
	var _b2:GoUInt64 = _b.value._l2;
	var _b3:GoUInt64 = _b.value._l3;
	var _b4:GoUInt64 = _b.value._l4;
	var _a1_19:GoUInt64 = _a1 * ((19 : GoUInt64));
	var _a2_19:GoUInt64 = _a2 * ((19 : GoUInt64));
	var _a3_19:GoUInt64 = _a3 * ((19 : GoUInt64));
	var _a4_19:GoUInt64 = _a4 * ((19 : GoUInt64));
	var _r0:T_uint128 = _mul64(_a0, _b0).__copy__();
	_r0 = _addMul64(_r0.__copy__(), _a1_19, _b4).__copy__();
	_r0 = _addMul64(_r0.__copy__(), _a2_19, _b3).__copy__();
	_r0 = _addMul64(_r0.__copy__(), _a3_19, _b2).__copy__();
	_r0 = _addMul64(_r0.__copy__(), _a4_19, _b1).__copy__();
	var _r1:T_uint128 = _mul64(_a0, _b1).__copy__();
	_r1 = _addMul64(_r1.__copy__(), _a1, _b0).__copy__();
	_r1 = _addMul64(_r1.__copy__(), _a2_19, _b4).__copy__();
	_r1 = _addMul64(_r1.__copy__(), _a3_19, _b3).__copy__();
	_r1 = _addMul64(_r1.__copy__(), _a4_19, _b2).__copy__();
	var _r2:T_uint128 = _mul64(_a0, _b2).__copy__();
	_r2 = _addMul64(_r2.__copy__(), _a1, _b1).__copy__();
	_r2 = _addMul64(_r2.__copy__(), _a2, _b0).__copy__();
	_r2 = _addMul64(_r2.__copy__(), _a3_19, _b4).__copy__();
	_r2 = _addMul64(_r2.__copy__(), _a4_19, _b3).__copy__();
	var _r3:T_uint128 = _mul64(_a0, _b3).__copy__();
	_r3 = _addMul64(_r3.__copy__(), _a1, _b2).__copy__();
	_r3 = _addMul64(_r3.__copy__(), _a2, _b1).__copy__();
	_r3 = _addMul64(_r3.__copy__(), _a3, _b0).__copy__();
	_r3 = _addMul64(_r3.__copy__(), _a4_19, _b4).__copy__();
	var _r4:T_uint128 = _mul64(_a0, _b4).__copy__();
	_r4 = _addMul64(_r4.__copy__(), _a1, _b3).__copy__();
	_r4 = _addMul64(_r4.__copy__(), _a2, _b2).__copy__();
	_r4 = _addMul64(_r4.__copy__(), _a3, _b1).__copy__();
	_r4 = _addMul64(_r4.__copy__(), _a4, _b0).__copy__();
	var _c0:GoUInt64 = _shiftRightBy51(_r0.__copy__());
	var _c1:GoUInt64 = _shiftRightBy51(_r1.__copy__());
	var _c2:GoUInt64 = _shiftRightBy51(_r2.__copy__());
	var _c3:GoUInt64 = _shiftRightBy51(_r3.__copy__());
	var _c4:GoUInt64 = _shiftRightBy51(_r4.__copy__());
	var _rr0:GoUInt64 = _r0._lo & _maskLow51Bits + _c4 * ((19 : GoUInt64));
	var _rr1:GoUInt64 = _r1._lo & _maskLow51Bits + _c0;
	var _rr2:GoUInt64 = _r2._lo & _maskLow51Bits + _c1;
	var _rr3:GoUInt64 = _r3._lo & _maskLow51Bits + _c2;
	var _rr4:GoUInt64 = _r4._lo & _maskLow51Bits + _c3;
	_v.value = new Element(_rr0, _rr1, _rr2, _rr3, _rr4).__copy__();
	_v.value._carryPropagate();
}

function _feSquareGeneric(_v:Pointer<Element>, _a:Pointer<Element>):Void {
	var _l0:GoUInt64 = _a.value._l0;
	var _l1:GoUInt64 = _a.value._l1;
	var _l2:GoUInt64 = _a.value._l2;
	var _l3:GoUInt64 = _a.value._l3;
	var _l4:GoUInt64 = _a.value._l4;
	var _l0_2:GoUInt64 = _l0 * ((2 : GoUInt64));
	var _l1_2:GoUInt64 = _l1 * ((2 : GoUInt64));
	var _l1_38:GoUInt64 = _l1 * ((38 : GoUInt64));
	var _l2_38:GoUInt64 = _l2 * ((38 : GoUInt64));
	var _l3_38:GoUInt64 = _l3 * ((38 : GoUInt64));
	var _l3_19:GoUInt64 = _l3 * ((19 : GoUInt64));
	var _l4_19:GoUInt64 = _l4 * ((19 : GoUInt64));
	var _r0:T_uint128 = _mul64(_l0, _l0).__copy__();
	_r0 = _addMul64(_r0.__copy__(), _l1_38, _l4).__copy__();
	_r0 = _addMul64(_r0.__copy__(), _l2_38, _l3).__copy__();
	var _r1:T_uint128 = _mul64(_l0_2, _l1).__copy__();
	_r1 = _addMul64(_r1.__copy__(), _l2_38, _l4).__copy__();
	_r1 = _addMul64(_r1.__copy__(), _l3_19, _l3).__copy__();
	var _r2:T_uint128 = _mul64(_l0_2, _l2).__copy__();
	_r2 = _addMul64(_r2.__copy__(), _l1, _l1).__copy__();
	_r2 = _addMul64(_r2.__copy__(), _l3_38, _l4).__copy__();
	var _r3:T_uint128 = _mul64(_l0_2, _l3).__copy__();
	_r3 = _addMul64(_r3.__copy__(), _l1_2, _l2).__copy__();
	_r3 = _addMul64(_r3.__copy__(), _l4_19, _l4).__copy__();
	var _r4:T_uint128 = _mul64(_l0_2, _l4).__copy__();
	_r4 = _addMul64(_r4.__copy__(), _l1_2, _l3).__copy__();
	_r4 = _addMul64(_r4.__copy__(), _l2, _l2).__copy__();
	var _c0:GoUInt64 = _shiftRightBy51(_r0.__copy__());
	var _c1:GoUInt64 = _shiftRightBy51(_r1.__copy__());
	var _c2:GoUInt64 = _shiftRightBy51(_r2.__copy__());
	var _c3:GoUInt64 = _shiftRightBy51(_r3.__copy__());
	var _c4:GoUInt64 = _shiftRightBy51(_r4.__copy__());
	var _rr0:GoUInt64 = _r0._lo & _maskLow51Bits + _c4 * ((19 : GoUInt64));
	var _rr1:GoUInt64 = _r1._lo & _maskLow51Bits + _c0;
	var _rr2:GoUInt64 = _r2._lo & _maskLow51Bits + _c1;
	var _rr3:GoUInt64 = _r3._lo & _maskLow51Bits + _c2;
	var _rr4:GoUInt64 = _r4._lo & _maskLow51Bits + _c3;
	_v.value = new Element(_rr0, _rr1, _rr2, _rr3, _rr4).__copy__();
	_v.value._carryPropagate();
}

class Element_extension_fields {
	public function zero(__tmp__):Pointer<Element>
		return __tmp__.zero();

	public function one(__tmp__):Pointer<Element>
		return __tmp__.one();

	public function _reduce(__tmp__):Pointer<Element>
		return __tmp__._reduce();

	public function add(__tmp__, _a:Pointer<Element>, _b:Pointer<Element>):Pointer<Element>
		return __tmp__.add(_a, _b);

	public function subtract(__tmp__, _a:Pointer<Element>, _b:Pointer<Element>):Pointer<Element>
		return __tmp__.subtract(_a, _b);

	public function negate(__tmp__, _a:Pointer<Element>):Pointer<Element>
		return __tmp__.negate(_a);

	public function invert(__tmp__, _z:Pointer<Element>):Pointer<Element>
		return __tmp__.invert(_z);

	public function set(__tmp__, _a:Pointer<Element>):Pointer<Element>
		return __tmp__.set(_a);

	public function setBytes(__tmp__, _x:Slice<GoByte>):Pointer<Element>
		return __tmp__.setBytes(_x);

	public function bytes(__tmp__):Slice<GoByte>
		return __tmp__.bytes();

	public function _bytes(__tmp__, _out:Pointer<GoArray<GoByte>>):Slice<GoByte>
		return __tmp__._bytes(_out);

	public function equal(__tmp__, _u:Pointer<Element>):GoInt
		return __tmp__.equal(_u);

	public function select(__tmp__, _a:Pointer<Element>, _b:Pointer<Element>, _cond:GoInt):Pointer<Element>
		return __tmp__.select(_a, _b, _cond);

	public function swap(__tmp__, _u:Pointer<Element>, _cond:GoInt):Void
		__tmp__.swap(_u, _cond);

	public function isNegative(__tmp__):GoInt
		return __tmp__.isNegative();

	public function absolute(__tmp__, _u:Pointer<Element>):Pointer<Element>
		return __tmp__.absolute(_u);

	public function multiply(__tmp__, _x:Pointer<Element>, _y:Pointer<Element>):Pointer<Element>
		return __tmp__.multiply(_x, _y);

	public function square(__tmp__, _x:Pointer<Element>):Pointer<Element>
		return __tmp__.square(_x);

	public function mult32(__tmp__, _x:Pointer<Element>, _y:GoUInt32):Pointer<Element>
		return __tmp__.mult32(_x, _y);

	public function pow22523(__tmp__, _x:Pointer<Element>):Pointer<Element>
		return __tmp__.pow22523(_x);

	public function sqrtRatio(__tmp__, _u:Pointer<Element>, _v:Pointer<Element>):{var _0:Pointer<Element>; var _1:GoInt;}
		return __tmp__.sqrtRatio(_u, _v);

	public function _carryPropagate(__tmp__):Pointer<Element>
		return __tmp__._carryPropagate();

	public function _carryPropagateGeneric(__tmp__):Pointer<Element>
		return __tmp__._carryPropagateGeneric();
}
