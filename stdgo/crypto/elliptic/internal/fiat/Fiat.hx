package stdgo.crypto.elliptic.internal.fiat;

import stdgo.StdGoTypes;
import stdgo.Error;
import stdgo.Go;
import stdgo.GoString;
import stdgo.Pointer;
import stdgo.Slice;
import stdgo.GoArray;
import stdgo.GoMap;
import stdgo.Chan;

@:structInit class P521Element {
	public function invert(_t:Pointer<P521Element>):Pointer<P521Element> {
		var _e = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		var _t1:Pointer<P521Element> = Go.pointer(new P521Element()),
			_t2:Pointer<P521Element> = Go.pointer(new P521Element());
		_t1.value.square(_t);
		_t1.value.mul(_t, _t1);
		_t2.value.square(_t1);
		_t2.value.square(_t2);
		_t1.value.mul(_t1, _t2);
		_t2.value.square(_t1);
		{
			var _i:GoInt = ((0 : GoInt));
			Go.cfor(_i < ((3 : GoInt)), _i++, {
				_t2.value.square(_t2);
			});
		};
		_t1.value.mul(_t1, _t2);
		_t2.value.square(_t1);
		{
			var _i:GoInt = ((0 : GoInt));
			Go.cfor(_i < ((7 : GoInt)), _i++, {
				_t2.value.square(_t2);
			});
		};
		_t1.value.mul(_t1, _t2);
		_t2.value.square(_t1);
		{
			var _i:GoInt = ((0 : GoInt));
			Go.cfor(_i < ((15 : GoInt)), _i++, {
				_t2.value.square(_t2);
			});
		};
		_t1.value.mul(_t1, _t2);
		_t2.value.square(_t1);
		{
			var _i:GoInt = ((0 : GoInt));
			Go.cfor(_i < ((31 : GoInt)), _i++, {
				_t2.value.square(_t2);
			});
		};
		_t1.value.mul(_t1, _t2);
		_t2.value.square(_t1);
		_t2.value.mul(_t2, _t);
		{
			var _i:GoInt = ((0 : GoInt));
			Go.cfor(_i < ((64 : GoInt)), _i++, {
				_t2.value.square(_t2);
			});
		};
		_t1.value.mul(_t1, _t2);
		_t2.value.square(_t1);
		_t2.value.mul(_t2, _t);
		{
			var _i:GoInt = ((0 : GoInt));
			Go.cfor(_i < ((129 : GoInt)), _i++, {
				_t2.value.square(_t2);
			});
		};
		_t1.value.mul(_t1, _t2);
		_t2.value.square(_t1);
		_t2.value.mul(_t2, _t);
		{
			var _i:GoInt = ((0 : GoInt));
			Go.cfor(_i < ((259 : GoInt)), _i++, {
				_t2.value.square(_t2);
			});
		};
		_t1.value.mul(_t1, _t2);
		_t1.value.square(_t1);
		_t1.value.square(_t1);
		return _e.value.mul(_t1, _t);
	}

	public function select(_a:Pointer<P521Element>, _b:Pointer<P521Element>, _cond:GoInt):Pointer<P521Element> {
		var _v = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		_p521Selectznz(Go.pointer(_v.value._x), new T_p521Uint1(_cond), Go.pointer(_b.value._x), Go.pointer(_a.value._x));
		return _v;
	}

	public function square(_t:Pointer<P521Element>):Pointer<P521Element> {
		var _e = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		_p521CarrySquare(Go.pointer(_e.value._x), Go.pointer(_t.value._x));
		return _e;
	}

	public function mul(_t1:Pointer<P521Element>, _t2:Pointer<P521Element>):Pointer<P521Element> {
		var _e = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		_p521CarryMul(Go.pointer(_e.value._x), Go.pointer(_t1.value._x), Go.pointer(_t2.value._x));
		return _e;
	}

	public function sub(_t1:Pointer<P521Element>, _t2:Pointer<P521Element>):Pointer<P521Element> {
		var _e = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		_p521Sub(Go.pointer(_e.value._x), Go.pointer(_t1.value._x), Go.pointer(_t2.value._x));
		_p521Carry(Go.pointer(_e.value._x), Go.pointer(_e.value._x));
		return _e;
	}

	public function add(_t1:Pointer<P521Element>, _t2:Pointer<P521Element>):Pointer<P521Element> {
		var _e = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		_p521Add(Go.pointer(_e.value._x), Go.pointer(_t1.value._x), Go.pointer(_t2.value._x));
		_p521Carry(Go.pointer(_e.value._x), Go.pointer(_e.value._x));
		return _e;
	}

	public function setBytes(_v:Slice<GoByte>):{var _0:Pointer<P521Element>; var _1:Error;} {
		var _e = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		if (_v.length != ((66 : GoInt)) || _v[((65 : GoInt))] > ((1 : GoUInt8))) {
			return {_0: new Pointer<P521Element>().nil(), _1: stdgo.errors.Errors.new_("invalid P-521 field encoding")};
		};
		var _in:GoArray<GoByte> = new GoArray<GoUInt8>(...[for (i in 0...66) ((0 : GoUInt8))]);
		Go.copy(_in.__slice__(0), _v);
		_p521FromBytes(Go.pointer(_e.value._x), Go.pointer(_in));
		return {_0: _e, _1: ((null : stdgo.Error))};
	}

	public function bytes():Slice<GoByte> {
		var _e = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		var _out:GoArray<GoByte> = new GoArray<GoUInt8>(...[for (i in 0...66) ((0 : GoUInt8))]);
		_p521ToBytes(Go.pointer(_out), Go.pointer(_e.value._x));
		return _out.__slice__(0);
	}

	public function set(_t:Pointer<P521Element>):Pointer<P521Element> {
		var _e = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		_e.value._x = _t.value._x.copy();
		return _e;
	}

	public function isZero():GoInt {
		var _e = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		var _eBytes:Slice<GoUInt8> = _e.value.bytes();
		return stdgo.crypto.subtle.Subtle.constantTimeCompare(_eBytes, _p521ZeroEncoding);
	}

	public function equal(_t:Pointer<P521Element>):GoInt {
		var _e = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		var _eBytes:Slice<GoUInt8> = _e.value.bytes();
		var _tBytes:Slice<GoUInt8> = _t.value.bytes();
		return stdgo.crypto.subtle.Subtle.constantTimeCompare(_eBytes, _tBytes);
	}

	public function one():Pointer<P521Element> {
		var _e = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		_e.value = new P521Element().__copy__();
		_e.value._x[((0 : GoInt))] = ((1 : GoUInt64));
		return _e;
	}

	public var _x:GoArray<GoUInt64> = new GoArray<GoUInt64>(...[for (i in 0...9) ((0 : GoUInt64))]);

	public function new(?_x:GoArray<GoUInt64>)
		stdgo.internal.Macro.initLocals();

	public function toString() {
		return '{' + Go.string(_x) + "}";
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new P521Element(_x);
	}

	public function __set__(__tmp__) {
		this._x = __tmp__._x;
		return this;
	}
}

@:named class T_p521Uint1 {
	public var __t__:GoUInt8;

	public function new(?t:GoUInt8) {
		__t__ = t == null ? 0 : t;
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	@:implicit
	public function toString():GoString
		return Go.string(__t__);

	public function __copy__()
		return new T_p521Uint1(__t__);
}

@:named class T_p521Int1 {
	public var __t__:GoInt8;

	public function new(?t:GoInt8) {
		__t__ = t == null ? 0 : t;
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	@:implicit
	public function toString():GoString
		return Go.string(__t__);

	public function __copy__()
		return new T_p521Int1(__t__);
}

var _p521ZeroEncoding:Slice<GoUInt8> = Go.pointer(new P521Element()).value.bytes();

/**
	// p521AddcarryxU64 is a thin wrapper around bits.Add64 that uses p521Uint1 rather than uint64
**/
function _p521AddcarryxU64(_x:GoUInt64, _y:GoUInt64, _carry:T_p521Uint1):{var _0:GoUInt64; var _1:T_p521Uint1;} {
	var __tmp__ = stdgo.math.bits.Bits.add64(_x, _y, _carry.__t__),
		_sum:GoUInt64 = __tmp__._0,
		_carryOut:GoUInt64 = __tmp__._1;
	return {_0: _sum, _1: new T_p521Uint1(_carryOut)};
}

/**
	// p521SubborrowxU64 is a thin wrapper around bits.Sub64 that uses p521Uint1 rather than uint64
**/
function _p521SubborrowxU64(_x:GoUInt64, _y:GoUInt64, _carry:T_p521Uint1):{var _0:GoUInt64; var _1:T_p521Uint1;} {
	var __tmp__ = stdgo.math.bits.Bits.sub64(_x, _y, _carry.__t__),
		_sum:GoUInt64 = __tmp__._0,
		_carryOut:GoUInt64 = __tmp__._1;
	return {_0: _sum, _1: new T_p521Uint1(_carryOut)};
}

/**
	// p521AddcarryxU58 is an addition with carry.
	//
	// Postconditions:
	//   out1 = (arg1 + arg2 + arg3) mod 2^58
	//   out2 = ⌊(arg1 + arg2 + arg3) / 2^58⌋
	//
	// Input Bounds:
	//   arg1: [0x0 ~> 0x1]
	//   arg2: [0x0 ~> 0x3ffffffffffffff]
	//   arg3: [0x0 ~> 0x3ffffffffffffff]
	// Output Bounds:
	//   out1: [0x0 ~> 0x3ffffffffffffff]
	//   out2: [0x0 ~> 0x1]
**/
function _p521AddcarryxU58(_out1:Pointer<GoUInt64>, _out2:Pointer<T_p521Uint1>, _arg1:T_p521Uint1, _arg2:GoUInt64, _arg3:GoUInt64):Void {
	var _x1:GoUInt64 = ((_arg1.__t__ + _arg2) + _arg3);
	var _x2:GoUInt64 = (_x1 & (("288230376151711743" : GoUInt64)));
	var _x3:T_p521Uint1 = new T_p521Uint1(((_x1 >> ((58 : GoUnTypedInt)))));
	_out1.value = _x2;
	_out2.value = _x3;
}

/**
	// p521SubborrowxU58 is a subtraction with borrow.
	//
	// Postconditions:
	//   out1 = (-arg1 + arg2 + -arg3) mod 2^58
	//   out2 = -⌊(-arg1 + arg2 + -arg3) / 2^58⌋
	//
	// Input Bounds:
	//   arg1: [0x0 ~> 0x1]
	//   arg2: [0x0 ~> 0x3ffffffffffffff]
	//   arg3: [0x0 ~> 0x3ffffffffffffff]
	// Output Bounds:
	//   out1: [0x0 ~> 0x3ffffffffffffff]
	//   out2: [0x0 ~> 0x1]
**/
function _p521SubborrowxU58(_out1:Pointer<GoUInt64>, _out2:Pointer<T_p521Uint1>, _arg1:T_p521Uint1, _arg2:GoUInt64, _arg3:GoUInt64):Void {
	var _x1:GoInt64 = ((((_arg2 : GoInt64)) - _arg1.__t__) - ((_arg3 : GoInt64)));
	var _x2:T_p521Int1 = new T_p521Int1(((_x1 >> ((58 : GoUnTypedInt)))));
	var _x3:GoUInt64 = (((_x1 : GoUInt64)) & (("288230376151711743" : GoUInt64)));
	_out1.value = _x3;
	_out2.value = (new T_p521Uint1(((0 : GoUInt8)) - new T_p521Uint1(_x2.__t__).__t__));
}

/**
	// p521AddcarryxU57 is an addition with carry.
	//
	// Postconditions:
	//   out1 = (arg1 + arg2 + arg3) mod 2^57
	//   out2 = ⌊(arg1 + arg2 + arg3) / 2^57⌋
	//
	// Input Bounds:
	//   arg1: [0x0 ~> 0x1]
	//   arg2: [0x0 ~> 0x1ffffffffffffff]
	//   arg3: [0x0 ~> 0x1ffffffffffffff]
	// Output Bounds:
	//   out1: [0x0 ~> 0x1ffffffffffffff]
	//   out2: [0x0 ~> 0x1]
**/
function _p521AddcarryxU57(_out1:Pointer<GoUInt64>, _out2:Pointer<T_p521Uint1>, _arg1:T_p521Uint1, _arg2:GoUInt64, _arg3:GoUInt64):Void {
	var _x1:GoUInt64 = ((_arg1.__t__ + _arg2) + _arg3);
	var _x2:GoUInt64 = (_x1 & (("144115188075855871" : GoUInt64)));
	var _x3:T_p521Uint1 = new T_p521Uint1(((_x1 >> ((57 : GoUnTypedInt)))));
	_out1.value = _x2;
	_out2.value = _x3;
}

/**
	// p521SubborrowxU57 is a subtraction with borrow.
	//
	// Postconditions:
	//   out1 = (-arg1 + arg2 + -arg3) mod 2^57
	//   out2 = -⌊(-arg1 + arg2 + -arg3) / 2^57⌋
	//
	// Input Bounds:
	//   arg1: [0x0 ~> 0x1]
	//   arg2: [0x0 ~> 0x1ffffffffffffff]
	//   arg3: [0x0 ~> 0x1ffffffffffffff]
	// Output Bounds:
	//   out1: [0x0 ~> 0x1ffffffffffffff]
	//   out2: [0x0 ~> 0x1]
**/
function _p521SubborrowxU57(_out1:Pointer<GoUInt64>, _out2:Pointer<T_p521Uint1>, _arg1:T_p521Uint1, _arg2:GoUInt64, _arg3:GoUInt64):Void {
	var _x1:GoInt64 = ((((_arg2 : GoInt64)) - _arg1.__t__) - ((_arg3 : GoInt64)));
	var _x2:T_p521Int1 = new T_p521Int1(((_x1 >> ((57 : GoUnTypedInt)))));
	var _x3:GoUInt64 = (((_x1 : GoUInt64)) & (("144115188075855871" : GoUInt64)));
	_out1.value = _x3;
	_out2.value = (new T_p521Uint1(((0 : GoUInt8)) - new T_p521Uint1(_x2.__t__).__t__));
}

/**
	// p521CmovznzU64 is a single-word conditional move.
	//
	// Postconditions:
	//   out1 = (if arg1 = 0 then arg2 else arg3)
	//
	// Input Bounds:
	//   arg1: [0x0 ~> 0x1]
	//   arg2: [0x0 ~> 0xffffffffffffffff]
	//   arg3: [0x0 ~> 0xffffffffffffffff]
	// Output Bounds:
	//   out1: [0x0 ~> 0xffffffffffffffff]
**/
function _p521CmovznzU64(_out1:Pointer<GoUInt64>, _arg1:T_p521Uint1, _arg2:GoUInt64, _arg3:GoUInt64):Void {
	var _x1:GoUInt64 = (_arg1.__t__ * (("18446744073709551615" : GoUInt64)));
	var _x2:GoUInt64 = ((_x1 & _arg3) | ((-1 ^ _x1) & _arg2));
	_out1.value = _x2;
}

/**
	// p521CarryMul multiplies two field elements and reduces the result.
	//
	// Postconditions:
	//   eval out1 mod m = (eval arg1 * eval arg2) mod m
	//
	// Input Bounds:
	//   arg1: [[0x0 ~> 0xc00000000000000], [0x0 ~> 0xc00000000000000], [0x0 ~> 0xc00000000000000], [0x0 ~> 0xc00000000000000], [0x0 ~> 0xc00000000000000], [0x0 ~> 0xc00000000000000], [0x0 ~> 0xc00000000000000], [0x0 ~> 0xc00000000000000], [0x0 ~> 0x600000000000000]]
	//   arg2: [[0x0 ~> 0xc00000000000000], [0x0 ~> 0xc00000000000000], [0x0 ~> 0xc00000000000000], [0x0 ~> 0xc00000000000000], [0x0 ~> 0xc00000000000000], [0x0 ~> 0xc00000000000000], [0x0 ~> 0xc00000000000000], [0x0 ~> 0xc00000000000000], [0x0 ~> 0x600000000000000]]
	// Output Bounds:
	//   out1: [[0x0 ~> 0x400000000000000], [0x0 ~> 0x400000000000000], [0x0 ~> 0x400000000000000], [0x0 ~> 0x400000000000000], [0x0 ~> 0x400000000000000], [0x0 ~> 0x400000000000000], [0x0 ~> 0x400000000000000], [0x0 ~> 0x400000000000000], [0x0 ~> 0x200000000000000]]
**/
function _p521CarryMul(_out1:Pointer<GoArray<GoUInt64>>, _arg1:Pointer<GoArray<GoUInt64>>, _arg2:Pointer<GoArray<GoUInt64>>):Void {
	var _x1:GoUInt64 = ((0 : GoUInt64));
	var _x2:GoUInt64 = ((0 : GoUInt64));
	{
		var __tmp__ = stdgo.math.bits.Bits.mul64(_arg1.value[((8 : GoInt))], (_arg2.value[((8 : GoInt))] * ((2 : GoUInt64))));
		_x2 = __tmp__._0;
		_x1 = __tmp__._1;
	};
	var _x3:GoUInt64 = ((0 : GoUInt64));
	var _x4:GoUInt64 = ((0 : GoUInt64));
	{
		var __tmp__ = stdgo.math.bits.Bits.mul64(_arg1.value[((8 : GoInt))], (_arg2.value[((7 : GoInt))] * ((2 : GoUInt64))));
		_x4 = __tmp__._0;
		_x3 = __tmp__._1;
	};
	var _x5:GoUInt64 = ((0 : GoUInt64));
	var _x6:GoUInt64 = ((0 : GoUInt64));
	{
		var __tmp__ = stdgo.math.bits.Bits.mul64(_arg1.value[((8 : GoInt))], (_arg2.value[((6 : GoInt))] * ((2 : GoUInt64))));
		_x6 = __tmp__._0;
		_x5 = __tmp__._1;
	};
	var _x7:GoUInt64 = ((0 : GoUInt64));
	var _x8:GoUInt64 = ((0 : GoUInt64));
	{
		var __tmp__ = stdgo.math.bits.Bits.mul64(_arg1.value[((8 : GoInt))], (_arg2.value[((5 : GoInt))] * ((2 : GoUInt64))));
		_x8 = __tmp__._0;
		_x7 = __tmp__._1;
	};
	var _x9:GoUInt64 = ((0 : GoUInt64));
	var _x10:GoUInt64 = ((0 : GoUInt64));
	{
		var __tmp__ = stdgo.math.bits.Bits.mul64(_arg1.value[((8 : GoInt))], (_arg2.value[((4 : GoInt))] * ((2 : GoUInt64))));
		_x10 = __tmp__._0;
		_x9 = __tmp__._1;
	};
	var _x11:GoUInt64 = ((0 : GoUInt64));
	var _x12:GoUInt64 = ((0 : GoUInt64));
	{
		var __tmp__ = stdgo.math.bits.Bits.mul64(_arg1.value[((8 : GoInt))], (_arg2.value[((3 : GoInt))] * ((2 : GoUInt64))));
		_x12 = __tmp__._0;
		_x11 = __tmp__._1;
	};
	var _x13:GoUInt64 = ((0 : GoUInt64));
	var _x14:GoUInt64 = ((0 : GoUInt64));
	{
		var __tmp__ = stdgo.math.bits.Bits.mul64(_arg1.value[((8 : GoInt))], (_arg2.value[((2 : GoInt))] * ((2 : GoUInt64))));
		_x14 = __tmp__._0;
		_x13 = __tmp__._1;
	};
	var _x15:GoUInt64 = ((0 : GoUInt64));
	var _x16:GoUInt64 = ((0 : GoUInt64));
	{
		var __tmp__ = stdgo.math.bits.Bits.mul64(_arg1.value[((8 : GoInt))], (_arg2.value[((1 : GoInt))] * ((2 : GoUInt64))));
		_x16 = __tmp__._0;
		_x15 = __tmp__._1;
	};
	var _x17:GoUInt64 = ((0 : GoUInt64));
	var _x18:GoUInt64 = ((0 : GoUInt64));
	{
		var __tmp__ = stdgo.math.bits.Bits.mul64(_arg1.value[((7 : GoInt))], (_arg2.value[((8 : GoInt))] * ((2 : GoUInt64))));
		_x18 = __tmp__._0;
		_x17 = __tmp__._1;
	};
	var _x19:GoUInt64 = ((0 : GoUInt64));
	var _x20:GoUInt64 = ((0 : GoUInt64));
	{
		var __tmp__ = stdgo.math.bits.Bits.mul64(_arg1.value[((7 : GoInt))], (_arg2.value[((7 : GoInt))] * ((2 : GoUInt64))));
		_x20 = __tmp__._0;
		_x19 = __tmp__._1;
	};
	var _x21:GoUInt64 = ((0 : GoUInt64));
	var _x22:GoUInt64 = ((0 : GoUInt64));
	{
		var __tmp__ = stdgo.math.bits.Bits.mul64(_arg1.value[((7 : GoInt))], (_arg2.value[((6 : GoInt))] * ((2 : GoUInt64))));
		_x22 = __tmp__._0;
		_x21 = __tmp__._1;
	};
	var _x23:GoUInt64 = ((0 : GoUInt64));
	var _x24:GoUInt64 = ((0 : GoUInt64));
	{
		var __tmp__ = stdgo.math.bits.Bits.mul64(_arg1.value[((7 : GoInt))], (_arg2.value[((5 : GoInt))] * ((2 : GoUInt64))));
		_x24 = __tmp__._0;
		_x23 = __tmp__._1;
	};
	var _x25:GoUInt64 = ((0 : GoUInt64));
	var _x26:GoUInt64 = ((0 : GoUInt64));
	{
		var __tmp__ = stdgo.math.bits.Bits.mul64(_arg1.value[((7 : GoInt))], (_arg2.value[((4 : GoInt))] * ((2 : GoUInt64))));
		_x26 = __tmp__._0;
		_x25 = __tmp__._1;
	};
	var _x27:GoUInt64 = ((0 : GoUInt64));
	var _x28:GoUInt64 = ((0 : GoUInt64));
	{
		var __tmp__ = stdgo.math.bits.Bits.mul64(_arg1.value[((7 : GoInt))], (_arg2.value[((3 : GoInt))] * ((2 : GoUInt64))));
		_x28 = __tmp__._0;
		_x27 = __tmp__._1;
	};
	var _x29:GoUInt64 = ((0 : GoUInt64));
	var _x30:GoUInt64 = ((0 : GoUInt64));
	{
		var __tmp__ = stdgo.math.bits.Bits.mul64(_arg1.value[((7 : GoInt))], (_arg2.value[((2 : GoInt))] * ((2 : GoUInt64))));
		_x30 = __tmp__._0;
		_x29 = __tmp__._1;
	};
	var _x31:GoUInt64 = ((0 : GoUInt64));
	var _x32:GoUInt64 = ((0 : GoUInt64));
	{
		var __tmp__ = stdgo.math.bits.Bits.mul64(_arg1.value[((6 : GoInt))], (_arg2.value[((8 : GoInt))] * ((2 : GoUInt64))));
		_x32 = __tmp__._0;
		_x31 = __tmp__._1;
	};
	var _x33:GoUInt64 = ((0 : GoUInt64));
	var _x34:GoUInt64 = ((0 : GoUInt64));
	{
		var __tmp__ = stdgo.math.bits.Bits.mul64(_arg1.value[((6 : GoInt))], (_arg2.value[((7 : GoInt))] * ((2 : GoUInt64))));
		_x34 = __tmp__._0;
		_x33 = __tmp__._1;
	};
	var _x35:GoUInt64 = ((0 : GoUInt64));
	var _x36:GoUInt64 = ((0 : GoUInt64));
	{
		var __tmp__ = stdgo.math.bits.Bits.mul64(_arg1.value[((6 : GoInt))], (_arg2.value[((6 : GoInt))] * ((2 : GoUInt64))));
		_x36 = __tmp__._0;
		_x35 = __tmp__._1;
	};
	var _x37:GoUInt64 = ((0 : GoUInt64));
	var _x38:GoUInt64 = ((0 : GoUInt64));
	{
		var __tmp__ = stdgo.math.bits.Bits.mul64(_arg1.value[((6 : GoInt))], (_arg2.value[((5 : GoInt))] * ((2 : GoUInt64))));
		_x38 = __tmp__._0;
		_x37 = __tmp__._1;
	};
	var _x39:GoUInt64 = ((0 : GoUInt64));
	var _x40:GoUInt64 = ((0 : GoUInt64));
	{
		var __tmp__ = stdgo.math.bits.Bits.mul64(_arg1.value[((6 : GoInt))], (_arg2.value[((4 : GoInt))] * ((2 : GoUInt64))));
		_x40 = __tmp__._0;
		_x39 = __tmp__._1;
	};
	var _x41:GoUInt64 = ((0 : GoUInt64));
	var _x42:GoUInt64 = ((0 : GoUInt64));
	{
		var __tmp__ = stdgo.math.bits.Bits.mul64(_arg1.value[((6 : GoInt))], (_arg2.value[((3 : GoInt))] * ((2 : GoUInt64))));
		_x42 = __tmp__._0;
		_x41 = __tmp__._1;
	};
	var _x43:GoUInt64 = ((0 : GoUInt64));
	var _x44:GoUInt64 = ((0 : GoUInt64));
	{
		var __tmp__ = stdgo.math.bits.Bits.mul64(_arg1.value[((5 : GoInt))], (_arg2.value[((8 : GoInt))] * ((2 : GoUInt64))));
		_x44 = __tmp__._0;
		_x43 = __tmp__._1;
	};
	var _x45:GoUInt64 = ((0 : GoUInt64));
	var _x46:GoUInt64 = ((0 : GoUInt64));
	{
		var __tmp__ = stdgo.math.bits.Bits.mul64(_arg1.value[((5 : GoInt))], (_arg2.value[((7 : GoInt))] * ((2 : GoUInt64))));
		_x46 = __tmp__._0;
		_x45 = __tmp__._1;
	};
	var _x47:GoUInt64 = ((0 : GoUInt64));
	var _x48:GoUInt64 = ((0 : GoUInt64));
	{
		var __tmp__ = stdgo.math.bits.Bits.mul64(_arg1.value[((5 : GoInt))], (_arg2.value[((6 : GoInt))] * ((2 : GoUInt64))));
		_x48 = __tmp__._0;
		_x47 = __tmp__._1;
	};
	var _x49:GoUInt64 = ((0 : GoUInt64));
	var _x50:GoUInt64 = ((0 : GoUInt64));
	{
		var __tmp__ = stdgo.math.bits.Bits.mul64(_arg1.value[((5 : GoInt))], (_arg2.value[((5 : GoInt))] * ((2 : GoUInt64))));
		_x50 = __tmp__._0;
		_x49 = __tmp__._1;
	};
	var _x51:GoUInt64 = ((0 : GoUInt64));
	var _x52:GoUInt64 = ((0 : GoUInt64));
	{
		var __tmp__ = stdgo.math.bits.Bits.mul64(_arg1.value[((5 : GoInt))], (_arg2.value[((4 : GoInt))] * ((2 : GoUInt64))));
		_x52 = __tmp__._0;
		_x51 = __tmp__._1;
	};
	var _x53:GoUInt64 = ((0 : GoUInt64));
	var _x54:GoUInt64 = ((0 : GoUInt64));
	{
		var __tmp__ = stdgo.math.bits.Bits.mul64(_arg1.value[((4 : GoInt))], (_arg2.value[((8 : GoInt))] * ((2 : GoUInt64))));
		_x54 = __tmp__._0;
		_x53 = __tmp__._1;
	};
	var _x55:GoUInt64 = ((0 : GoUInt64));
	var _x56:GoUInt64 = ((0 : GoUInt64));
	{
		var __tmp__ = stdgo.math.bits.Bits.mul64(_arg1.value[((4 : GoInt))], (_arg2.value[((7 : GoInt))] * ((2 : GoUInt64))));
		_x56 = __tmp__._0;
		_x55 = __tmp__._1;
	};
	var _x57:GoUInt64 = ((0 : GoUInt64));
	var _x58:GoUInt64 = ((0 : GoUInt64));
	{
		var __tmp__ = stdgo.math.bits.Bits.mul64(_arg1.value[((4 : GoInt))], (_arg2.value[((6 : GoInt))] * ((2 : GoUInt64))));
		_x58 = __tmp__._0;
		_x57 = __tmp__._1;
	};
	var _x59:GoUInt64 = ((0 : GoUInt64));
	var _x60:GoUInt64 = ((0 : GoUInt64));
	{
		var __tmp__ = stdgo.math.bits.Bits.mul64(_arg1.value[((4 : GoInt))], (_arg2.value[((5 : GoInt))] * ((2 : GoUInt64))));
		_x60 = __tmp__._0;
		_x59 = __tmp__._1;
	};
	var _x61:GoUInt64 = ((0 : GoUInt64));
	var _x62:GoUInt64 = ((0 : GoUInt64));
	{
		var __tmp__ = stdgo.math.bits.Bits.mul64(_arg1.value[((3 : GoInt))], (_arg2.value[((8 : GoInt))] * ((2 : GoUInt64))));
		_x62 = __tmp__._0;
		_x61 = __tmp__._1;
	};
	var _x63:GoUInt64 = ((0 : GoUInt64));
	var _x64:GoUInt64 = ((0 : GoUInt64));
	{
		var __tmp__ = stdgo.math.bits.Bits.mul64(_arg1.value[((3 : GoInt))], (_arg2.value[((7 : GoInt))] * ((2 : GoUInt64))));
		_x64 = __tmp__._0;
		_x63 = __tmp__._1;
	};
	var _x65:GoUInt64 = ((0 : GoUInt64));
	var _x66:GoUInt64 = ((0 : GoUInt64));
	{
		var __tmp__ = stdgo.math.bits.Bits.mul64(_arg1.value[((3 : GoInt))], (_arg2.value[((6 : GoInt))] * ((2 : GoUInt64))));
		_x66 = __tmp__._0;
		_x65 = __tmp__._1;
	};
	var _x67:GoUInt64 = ((0 : GoUInt64));
	var _x68:GoUInt64 = ((0 : GoUInt64));
	{
		var __tmp__ = stdgo.math.bits.Bits.mul64(_arg1.value[((2 : GoInt))], (_arg2.value[((8 : GoInt))] * ((2 : GoUInt64))));
		_x68 = __tmp__._0;
		_x67 = __tmp__._1;
	};
	var _x69:GoUInt64 = ((0 : GoUInt64));
	var _x70:GoUInt64 = ((0 : GoUInt64));
	{
		var __tmp__ = stdgo.math.bits.Bits.mul64(_arg1.value[((2 : GoInt))], (_arg2.value[((7 : GoInt))] * ((2 : GoUInt64))));
		_x70 = __tmp__._0;
		_x69 = __tmp__._1;
	};
	var _x71:GoUInt64 = ((0 : GoUInt64));
	var _x72:GoUInt64 = ((0 : GoUInt64));
	{
		var __tmp__ = stdgo.math.bits.Bits.mul64(_arg1.value[((1 : GoInt))], (_arg2.value[((8 : GoInt))] * ((2 : GoUInt64))));
		_x72 = __tmp__._0;
		_x71 = __tmp__._1;
	};
	var _x73:GoUInt64 = ((0 : GoUInt64));
	var _x74:GoUInt64 = ((0 : GoUInt64));
	{
		var __tmp__ = stdgo.math.bits.Bits.mul64(_arg1.value[((8 : GoInt))], _arg2.value[((0 : GoInt))]);
		_x74 = __tmp__._0;
		_x73 = __tmp__._1;
	};
	var _x75:GoUInt64 = ((0 : GoUInt64));
	var _x76:GoUInt64 = ((0 : GoUInt64));
	{
		var __tmp__ = stdgo.math.bits.Bits.mul64(_arg1.value[((7 : GoInt))], _arg2.value[((1 : GoInt))]);
		_x76 = __tmp__._0;
		_x75 = __tmp__._1;
	};
	var _x77:GoUInt64 = ((0 : GoUInt64));
	var _x78:GoUInt64 = ((0 : GoUInt64));
	{
		var __tmp__ = stdgo.math.bits.Bits.mul64(_arg1.value[((7 : GoInt))], _arg2.value[((0 : GoInt))]);
		_x78 = __tmp__._0;
		_x77 = __tmp__._1;
	};
	var _x79:GoUInt64 = ((0 : GoUInt64));
	var _x80:GoUInt64 = ((0 : GoUInt64));
	{
		var __tmp__ = stdgo.math.bits.Bits.mul64(_arg1.value[((6 : GoInt))], _arg2.value[((2 : GoInt))]);
		_x80 = __tmp__._0;
		_x79 = __tmp__._1;
	};
	var _x81:GoUInt64 = ((0 : GoUInt64));
	var _x82:GoUInt64 = ((0 : GoUInt64));
	{
		var __tmp__ = stdgo.math.bits.Bits.mul64(_arg1.value[((6 : GoInt))], _arg2.value[((1 : GoInt))]);
		_x82 = __tmp__._0;
		_x81 = __tmp__._1;
	};
	var _x83:GoUInt64 = ((0 : GoUInt64));
	var _x84:GoUInt64 = ((0 : GoUInt64));
	{
		var __tmp__ = stdgo.math.bits.Bits.mul64(_arg1.value[((6 : GoInt))], _arg2.value[((0 : GoInt))]);
		_x84 = __tmp__._0;
		_x83 = __tmp__._1;
	};
	var _x85:GoUInt64 = ((0 : GoUInt64));
	var _x86:GoUInt64 = ((0 : GoUInt64));
	{
		var __tmp__ = stdgo.math.bits.Bits.mul64(_arg1.value[((5 : GoInt))], _arg2.value[((3 : GoInt))]);
		_x86 = __tmp__._0;
		_x85 = __tmp__._1;
	};
	var _x87:GoUInt64 = ((0 : GoUInt64));
	var _x88:GoUInt64 = ((0 : GoUInt64));
	{
		var __tmp__ = stdgo.math.bits.Bits.mul64(_arg1.value[((5 : GoInt))], _arg2.value[((2 : GoInt))]);
		_x88 = __tmp__._0;
		_x87 = __tmp__._1;
	};
	var _x89:GoUInt64 = ((0 : GoUInt64));
	var _x90:GoUInt64 = ((0 : GoUInt64));
	{
		var __tmp__ = stdgo.math.bits.Bits.mul64(_arg1.value[((5 : GoInt))], _arg2.value[((1 : GoInt))]);
		_x90 = __tmp__._0;
		_x89 = __tmp__._1;
	};
	var _x91:GoUInt64 = ((0 : GoUInt64));
	var _x92:GoUInt64 = ((0 : GoUInt64));
	{
		var __tmp__ = stdgo.math.bits.Bits.mul64(_arg1.value[((5 : GoInt))], _arg2.value[((0 : GoInt))]);
		_x92 = __tmp__._0;
		_x91 = __tmp__._1;
	};
	var _x93:GoUInt64 = ((0 : GoUInt64));
	var _x94:GoUInt64 = ((0 : GoUInt64));
	{
		var __tmp__ = stdgo.math.bits.Bits.mul64(_arg1.value[((4 : GoInt))], _arg2.value[((4 : GoInt))]);
		_x94 = __tmp__._0;
		_x93 = __tmp__._1;
	};
	var _x95:GoUInt64 = ((0 : GoUInt64));
	var _x96:GoUInt64 = ((0 : GoUInt64));
	{
		var __tmp__ = stdgo.math.bits.Bits.mul64(_arg1.value[((4 : GoInt))], _arg2.value[((3 : GoInt))]);
		_x96 = __tmp__._0;
		_x95 = __tmp__._1;
	};
	var _x97:GoUInt64 = ((0 : GoUInt64));
	var _x98:GoUInt64 = ((0 : GoUInt64));
	{
		var __tmp__ = stdgo.math.bits.Bits.mul64(_arg1.value[((4 : GoInt))], _arg2.value[((2 : GoInt))]);
		_x98 = __tmp__._0;
		_x97 = __tmp__._1;
	};
	var _x99:GoUInt64 = ((0 : GoUInt64));
	var _x100:GoUInt64 = ((0 : GoUInt64));
	{
		var __tmp__ = stdgo.math.bits.Bits.mul64(_arg1.value[((4 : GoInt))], _arg2.value[((1 : GoInt))]);
		_x100 = __tmp__._0;
		_x99 = __tmp__._1;
	};
	var _x101:GoUInt64 = ((0 : GoUInt64));
	var _x102:GoUInt64 = ((0 : GoUInt64));
	{
		var __tmp__ = stdgo.math.bits.Bits.mul64(_arg1.value[((4 : GoInt))], _arg2.value[((0 : GoInt))]);
		_x102 = __tmp__._0;
		_x101 = __tmp__._1;
	};
	var _x103:GoUInt64 = ((0 : GoUInt64));
	var _x104:GoUInt64 = ((0 : GoUInt64));
	{
		var __tmp__ = stdgo.math.bits.Bits.mul64(_arg1.value[((3 : GoInt))], _arg2.value[((5 : GoInt))]);
		_x104 = __tmp__._0;
		_x103 = __tmp__._1;
	};
	var _x105:GoUInt64 = ((0 : GoUInt64));
	var _x106:GoUInt64 = ((0 : GoUInt64));
	{
		var __tmp__ = stdgo.math.bits.Bits.mul64(_arg1.value[((3 : GoInt))], _arg2.value[((4 : GoInt))]);
		_x106 = __tmp__._0;
		_x105 = __tmp__._1;
	};
	var _x107:GoUInt64 = ((0 : GoUInt64));
	var _x108:GoUInt64 = ((0 : GoUInt64));
	{
		var __tmp__ = stdgo.math.bits.Bits.mul64(_arg1.value[((3 : GoInt))], _arg2.value[((3 : GoInt))]);
		_x108 = __tmp__._0;
		_x107 = __tmp__._1;
	};
	var _x109:GoUInt64 = ((0 : GoUInt64));
	var _x110:GoUInt64 = ((0 : GoUInt64));
	{
		var __tmp__ = stdgo.math.bits.Bits.mul64(_arg1.value[((3 : GoInt))], _arg2.value[((2 : GoInt))]);
		_x110 = __tmp__._0;
		_x109 = __tmp__._1;
	};
	var _x111:GoUInt64 = ((0 : GoUInt64));
	var _x112:GoUInt64 = ((0 : GoUInt64));
	{
		var __tmp__ = stdgo.math.bits.Bits.mul64(_arg1.value[((3 : GoInt))], _arg2.value[((1 : GoInt))]);
		_x112 = __tmp__._0;
		_x111 = __tmp__._1;
	};
	var _x113:GoUInt64 = ((0 : GoUInt64));
	var _x114:GoUInt64 = ((0 : GoUInt64));
	{
		var __tmp__ = stdgo.math.bits.Bits.mul64(_arg1.value[((3 : GoInt))], _arg2.value[((0 : GoInt))]);
		_x114 = __tmp__._0;
		_x113 = __tmp__._1;
	};
	var _x115:GoUInt64 = ((0 : GoUInt64));
	var _x116:GoUInt64 = ((0 : GoUInt64));
	{
		var __tmp__ = stdgo.math.bits.Bits.mul64(_arg1.value[((2 : GoInt))], _arg2.value[((6 : GoInt))]);
		_x116 = __tmp__._0;
		_x115 = __tmp__._1;
	};
	var _x117:GoUInt64 = ((0 : GoUInt64));
	var _x118:GoUInt64 = ((0 : GoUInt64));
	{
		var __tmp__ = stdgo.math.bits.Bits.mul64(_arg1.value[((2 : GoInt))], _arg2.value[((5 : GoInt))]);
		_x118 = __tmp__._0;
		_x117 = __tmp__._1;
	};
	var _x119:GoUInt64 = ((0 : GoUInt64));
	var _x120:GoUInt64 = ((0 : GoUInt64));
	{
		var __tmp__ = stdgo.math.bits.Bits.mul64(_arg1.value[((2 : GoInt))], _arg2.value[((4 : GoInt))]);
		_x120 = __tmp__._0;
		_x119 = __tmp__._1;
	};
	var _x121:GoUInt64 = ((0 : GoUInt64));
	var _x122:GoUInt64 = ((0 : GoUInt64));
	{
		var __tmp__ = stdgo.math.bits.Bits.mul64(_arg1.value[((2 : GoInt))], _arg2.value[((3 : GoInt))]);
		_x122 = __tmp__._0;
		_x121 = __tmp__._1;
	};
	var _x123:GoUInt64 = ((0 : GoUInt64));
	var _x124:GoUInt64 = ((0 : GoUInt64));
	{
		var __tmp__ = stdgo.math.bits.Bits.mul64(_arg1.value[((2 : GoInt))], _arg2.value[((2 : GoInt))]);
		_x124 = __tmp__._0;
		_x123 = __tmp__._1;
	};
	var _x125:GoUInt64 = ((0 : GoUInt64));
	var _x126:GoUInt64 = ((0 : GoUInt64));
	{
		var __tmp__ = stdgo.math.bits.Bits.mul64(_arg1.value[((2 : GoInt))], _arg2.value[((1 : GoInt))]);
		_x126 = __tmp__._0;
		_x125 = __tmp__._1;
	};
	var _x127:GoUInt64 = ((0 : GoUInt64));
	var _x128:GoUInt64 = ((0 : GoUInt64));
	{
		var __tmp__ = stdgo.math.bits.Bits.mul64(_arg1.value[((2 : GoInt))], _arg2.value[((0 : GoInt))]);
		_x128 = __tmp__._0;
		_x127 = __tmp__._1;
	};
	var _x129:GoUInt64 = ((0 : GoUInt64));
	var _x130:GoUInt64 = ((0 : GoUInt64));
	{
		var __tmp__ = stdgo.math.bits.Bits.mul64(_arg1.value[((1 : GoInt))], _arg2.value[((7 : GoInt))]);
		_x130 = __tmp__._0;
		_x129 = __tmp__._1;
	};
	var _x131:GoUInt64 = ((0 : GoUInt64));
	var _x132:GoUInt64 = ((0 : GoUInt64));
	{
		var __tmp__ = stdgo.math.bits.Bits.mul64(_arg1.value[((1 : GoInt))], _arg2.value[((6 : GoInt))]);
		_x132 = __tmp__._0;
		_x131 = __tmp__._1;
	};
	var _x133:GoUInt64 = ((0 : GoUInt64));
	var _x134:GoUInt64 = ((0 : GoUInt64));
	{
		var __tmp__ = stdgo.math.bits.Bits.mul64(_arg1.value[((1 : GoInt))], _arg2.value[((5 : GoInt))]);
		_x134 = __tmp__._0;
		_x133 = __tmp__._1;
	};
	var _x135:GoUInt64 = ((0 : GoUInt64));
	var _x136:GoUInt64 = ((0 : GoUInt64));
	{
		var __tmp__ = stdgo.math.bits.Bits.mul64(_arg1.value[((1 : GoInt))], _arg2.value[((4 : GoInt))]);
		_x136 = __tmp__._0;
		_x135 = __tmp__._1;
	};
	var _x137:GoUInt64 = ((0 : GoUInt64));
	var _x138:GoUInt64 = ((0 : GoUInt64));
	{
		var __tmp__ = stdgo.math.bits.Bits.mul64(_arg1.value[((1 : GoInt))], _arg2.value[((3 : GoInt))]);
		_x138 = __tmp__._0;
		_x137 = __tmp__._1;
	};
	var _x139:GoUInt64 = ((0 : GoUInt64));
	var _x140:GoUInt64 = ((0 : GoUInt64));
	{
		var __tmp__ = stdgo.math.bits.Bits.mul64(_arg1.value[((1 : GoInt))], _arg2.value[((2 : GoInt))]);
		_x140 = __tmp__._0;
		_x139 = __tmp__._1;
	};
	var _x141:GoUInt64 = ((0 : GoUInt64));
	var _x142:GoUInt64 = ((0 : GoUInt64));
	{
		var __tmp__ = stdgo.math.bits.Bits.mul64(_arg1.value[((1 : GoInt))], _arg2.value[((1 : GoInt))]);
		_x142 = __tmp__._0;
		_x141 = __tmp__._1;
	};
	var _x143:GoUInt64 = ((0 : GoUInt64));
	var _x144:GoUInt64 = ((0 : GoUInt64));
	{
		var __tmp__ = stdgo.math.bits.Bits.mul64(_arg1.value[((1 : GoInt))], _arg2.value[((0 : GoInt))]);
		_x144 = __tmp__._0;
		_x143 = __tmp__._1;
	};
	var _x145:GoUInt64 = ((0 : GoUInt64));
	var _x146:GoUInt64 = ((0 : GoUInt64));
	{
		var __tmp__ = stdgo.math.bits.Bits.mul64(_arg1.value[((0 : GoInt))], _arg2.value[((8 : GoInt))]);
		_x146 = __tmp__._0;
		_x145 = __tmp__._1;
	};
	var _x147:GoUInt64 = ((0 : GoUInt64));
	var _x148:GoUInt64 = ((0 : GoUInt64));
	{
		var __tmp__ = stdgo.math.bits.Bits.mul64(_arg1.value[((0 : GoInt))], _arg2.value[((7 : GoInt))]);
		_x148 = __tmp__._0;
		_x147 = __tmp__._1;
	};
	var _x149:GoUInt64 = ((0 : GoUInt64));
	var _x150:GoUInt64 = ((0 : GoUInt64));
	{
		var __tmp__ = stdgo.math.bits.Bits.mul64(_arg1.value[((0 : GoInt))], _arg2.value[((6 : GoInt))]);
		_x150 = __tmp__._0;
		_x149 = __tmp__._1;
	};
	var _x151:GoUInt64 = ((0 : GoUInt64));
	var _x152:GoUInt64 = ((0 : GoUInt64));
	{
		var __tmp__ = stdgo.math.bits.Bits.mul64(_arg1.value[((0 : GoInt))], _arg2.value[((5 : GoInt))]);
		_x152 = __tmp__._0;
		_x151 = __tmp__._1;
	};
	var _x153:GoUInt64 = ((0 : GoUInt64));
	var _x154:GoUInt64 = ((0 : GoUInt64));
	{
		var __tmp__ = stdgo.math.bits.Bits.mul64(_arg1.value[((0 : GoInt))], _arg2.value[((4 : GoInt))]);
		_x154 = __tmp__._0;
		_x153 = __tmp__._1;
	};
	var _x155:GoUInt64 = ((0 : GoUInt64));
	var _x156:GoUInt64 = ((0 : GoUInt64));
	{
		var __tmp__ = stdgo.math.bits.Bits.mul64(_arg1.value[((0 : GoInt))], _arg2.value[((3 : GoInt))]);
		_x156 = __tmp__._0;
		_x155 = __tmp__._1;
	};
	var _x157:GoUInt64 = ((0 : GoUInt64));
	var _x158:GoUInt64 = ((0 : GoUInt64));
	{
		var __tmp__ = stdgo.math.bits.Bits.mul64(_arg1.value[((0 : GoInt))], _arg2.value[((2 : GoInt))]);
		_x158 = __tmp__._0;
		_x157 = __tmp__._1;
	};
	var _x159:GoUInt64 = ((0 : GoUInt64));
	var _x160:GoUInt64 = ((0 : GoUInt64));
	{
		var __tmp__ = stdgo.math.bits.Bits.mul64(_arg1.value[((0 : GoInt))], _arg2.value[((1 : GoInt))]);
		_x160 = __tmp__._0;
		_x159 = __tmp__._1;
	};
	var _x161:GoUInt64 = ((0 : GoUInt64));
	var _x162:GoUInt64 = ((0 : GoUInt64));
	{
		var __tmp__ = stdgo.math.bits.Bits.mul64(_arg1.value[((0 : GoInt))], _arg2.value[((0 : GoInt))]);
		_x162 = __tmp__._0;
		_x161 = __tmp__._1;
	};
	var _x163:GoUInt64 = ((0 : GoUInt64));
	var _x164:T_p521Uint1 = new T_p521Uint1();
	{
		var __tmp__ = _p521AddcarryxU64(_x29, _x15, new T_p521Uint1(((0 : GoUInt8))));
		_x163 = __tmp__._0;
		_x164 = __tmp__._1;
	};
	var _x165:GoUInt64 = ((0 : GoUInt64));
	{
		var __tmp__ = _p521AddcarryxU64(_x30, _x16, _x164);
		_x165 = __tmp__._0;
	};
	var _x167:GoUInt64 = ((0 : GoUInt64));
	var _x168:T_p521Uint1 = new T_p521Uint1();
	{
		var __tmp__ = _p521AddcarryxU64(_x41, _x163, new T_p521Uint1(((0 : GoUInt8))));
		_x167 = __tmp__._0;
		_x168 = __tmp__._1;
	};
	var _x169:GoUInt64 = ((0 : GoUInt64));
	{
		var __tmp__ = _p521AddcarryxU64(_x42, _x165, _x168);
		_x169 = __tmp__._0;
	};
	var _x171:GoUInt64 = ((0 : GoUInt64));
	var _x172:T_p521Uint1 = new T_p521Uint1();
	{
		var __tmp__ = _p521AddcarryxU64(_x51, _x167, new T_p521Uint1(((0 : GoUInt8))));
		_x171 = __tmp__._0;
		_x172 = __tmp__._1;
	};
	var _x173:GoUInt64 = ((0 : GoUInt64));
	{
		var __tmp__ = _p521AddcarryxU64(_x52, _x169, _x172);
		_x173 = __tmp__._0;
	};
	var _x175:GoUInt64 = ((0 : GoUInt64));
	var _x176:T_p521Uint1 = new T_p521Uint1();
	{
		var __tmp__ = _p521AddcarryxU64(_x59, _x171, new T_p521Uint1(((0 : GoUInt8))));
		_x175 = __tmp__._0;
		_x176 = __tmp__._1;
	};
	var _x177:GoUInt64 = ((0 : GoUInt64));
	{
		var __tmp__ = _p521AddcarryxU64(_x60, _x173, _x176);
		_x177 = __tmp__._0;
	};
	var _x179:GoUInt64 = ((0 : GoUInt64));
	var _x180:T_p521Uint1 = new T_p521Uint1();
	{
		var __tmp__ = _p521AddcarryxU64(_x65, _x175, new T_p521Uint1(((0 : GoUInt8))));
		_x179 = __tmp__._0;
		_x180 = __tmp__._1;
	};
	var _x181:GoUInt64 = ((0 : GoUInt64));
	{
		var __tmp__ = _p521AddcarryxU64(_x66, _x177, _x180);
		_x181 = __tmp__._0;
	};
	var _x183:GoUInt64 = ((0 : GoUInt64));
	var _x184:T_p521Uint1 = new T_p521Uint1();
	{
		var __tmp__ = _p521AddcarryxU64(_x69, _x179, new T_p521Uint1(((0 : GoUInt8))));
		_x183 = __tmp__._0;
		_x184 = __tmp__._1;
	};
	var _x185:GoUInt64 = ((0 : GoUInt64));
	{
		var __tmp__ = _p521AddcarryxU64(_x70, _x181, _x184);
		_x185 = __tmp__._0;
	};
	var _x187:GoUInt64 = ((0 : GoUInt64));
	var _x188:T_p521Uint1 = new T_p521Uint1();
	{
		var __tmp__ = _p521AddcarryxU64(_x71, _x183, new T_p521Uint1(((0 : GoUInt8))));
		_x187 = __tmp__._0;
		_x188 = __tmp__._1;
	};
	var _x189:GoUInt64 = ((0 : GoUInt64));
	{
		var __tmp__ = _p521AddcarryxU64(_x72, _x185, _x188);
		_x189 = __tmp__._0;
	};
	var _x191:GoUInt64 = ((0 : GoUInt64));
	var _x192:T_p521Uint1 = new T_p521Uint1();
	{
		var __tmp__ = _p521AddcarryxU64(_x161, _x187, new T_p521Uint1(((0 : GoUInt8))));
		_x191 = __tmp__._0;
		_x192 = __tmp__._1;
	};
	var _x193:GoUInt64 = ((0 : GoUInt64));
	{
		var __tmp__ = _p521AddcarryxU64(_x162, _x189, _x192);
		_x193 = __tmp__._0;
	};
	var _x195:GoUInt64 = (((_x191 >> ((58 : GoUnTypedInt)))) | (((_x193 << ((6 : GoUnTypedInt)))) & (("18446744073709551615" : GoUInt64))));
	var _x196:GoUInt64 = ((_x193 >> ((58 : GoUnTypedInt))));
	var _x197:GoUInt64 = (_x191 & (("288230376151711743" : GoUInt64)));
	var _x198:GoUInt64 = ((0 : GoUInt64));
	var _x199:T_p521Uint1 = new T_p521Uint1();
	{
		var __tmp__ = _p521AddcarryxU64(_x75, _x73, new T_p521Uint1(((0 : GoUInt8))));
		_x198 = __tmp__._0;
		_x199 = __tmp__._1;
	};
	var _x200:GoUInt64 = ((0 : GoUInt64));
	{
		var __tmp__ = _p521AddcarryxU64(_x76, _x74, _x199);
		_x200 = __tmp__._0;
	};
	var _x202:GoUInt64 = ((0 : GoUInt64));
	var _x203:T_p521Uint1 = new T_p521Uint1();
	{
		var __tmp__ = _p521AddcarryxU64(_x79, _x198, new T_p521Uint1(((0 : GoUInt8))));
		_x202 = __tmp__._0;
		_x203 = __tmp__._1;
	};
	var _x204:GoUInt64 = ((0 : GoUInt64));
	{
		var __tmp__ = _p521AddcarryxU64(_x80, _x200, _x203);
		_x204 = __tmp__._0;
	};
	var _x206:GoUInt64 = ((0 : GoUInt64));
	var _x207:T_p521Uint1 = new T_p521Uint1();
	{
		var __tmp__ = _p521AddcarryxU64(_x85, _x202, new T_p521Uint1(((0 : GoUInt8))));
		_x206 = __tmp__._0;
		_x207 = __tmp__._1;
	};
	var _x208:GoUInt64 = ((0 : GoUInt64));
	{
		var __tmp__ = _p521AddcarryxU64(_x86, _x204, _x207);
		_x208 = __tmp__._0;
	};
	var _x210:GoUInt64 = ((0 : GoUInt64));
	var _x211:T_p521Uint1 = new T_p521Uint1();
	{
		var __tmp__ = _p521AddcarryxU64(_x93, _x206, new T_p521Uint1(((0 : GoUInt8))));
		_x210 = __tmp__._0;
		_x211 = __tmp__._1;
	};
	var _x212:GoUInt64 = ((0 : GoUInt64));
	{
		var __tmp__ = _p521AddcarryxU64(_x94, _x208, _x211);
		_x212 = __tmp__._0;
	};
	var _x214:GoUInt64 = ((0 : GoUInt64));
	var _x215:T_p521Uint1 = new T_p521Uint1();
	{
		var __tmp__ = _p521AddcarryxU64(_x103, _x210, new T_p521Uint1(((0 : GoUInt8))));
		_x214 = __tmp__._0;
		_x215 = __tmp__._1;
	};
	var _x216:GoUInt64 = ((0 : GoUInt64));
	{
		var __tmp__ = _p521AddcarryxU64(_x104, _x212, _x215);
		_x216 = __tmp__._0;
	};
	var _x218:GoUInt64 = ((0 : GoUInt64));
	var _x219:T_p521Uint1 = new T_p521Uint1();
	{
		var __tmp__ = _p521AddcarryxU64(_x115, _x214, new T_p521Uint1(((0 : GoUInt8))));
		_x218 = __tmp__._0;
		_x219 = __tmp__._1;
	};
	var _x220:GoUInt64 = ((0 : GoUInt64));
	{
		var __tmp__ = _p521AddcarryxU64(_x116, _x216, _x219);
		_x220 = __tmp__._0;
	};
	var _x222:GoUInt64 = ((0 : GoUInt64));
	var _x223:T_p521Uint1 = new T_p521Uint1();
	{
		var __tmp__ = _p521AddcarryxU64(_x129, _x218, new T_p521Uint1(((0 : GoUInt8))));
		_x222 = __tmp__._0;
		_x223 = __tmp__._1;
	};
	var _x224:GoUInt64 = ((0 : GoUInt64));
	{
		var __tmp__ = _p521AddcarryxU64(_x130, _x220, _x223);
		_x224 = __tmp__._0;
	};
	var _x226:GoUInt64 = ((0 : GoUInt64));
	var _x227:T_p521Uint1 = new T_p521Uint1();
	{
		var __tmp__ = _p521AddcarryxU64(_x145, _x222, new T_p521Uint1(((0 : GoUInt8))));
		_x226 = __tmp__._0;
		_x227 = __tmp__._1;
	};
	var _x228:GoUInt64 = ((0 : GoUInt64));
	{
		var __tmp__ = _p521AddcarryxU64(_x146, _x224, _x227);
		_x228 = __tmp__._0;
	};
	var _x230:GoUInt64 = ((0 : GoUInt64));
	var _x231:T_p521Uint1 = new T_p521Uint1();
	{
		var __tmp__ = _p521AddcarryxU64(_x77, _x1, new T_p521Uint1(((0 : GoUInt8))));
		_x230 = __tmp__._0;
		_x231 = __tmp__._1;
	};
	var _x232:GoUInt64 = ((0 : GoUInt64));
	{
		var __tmp__ = _p521AddcarryxU64(_x78, _x2, _x231);
		_x232 = __tmp__._0;
	};
	var _x234:GoUInt64 = ((0 : GoUInt64));
	var _x235:T_p521Uint1 = new T_p521Uint1();
	{
		var __tmp__ = _p521AddcarryxU64(_x81, _x230, new T_p521Uint1(((0 : GoUInt8))));
		_x234 = __tmp__._0;
		_x235 = __tmp__._1;
	};
	var _x236:GoUInt64 = ((0 : GoUInt64));
	{
		var __tmp__ = _p521AddcarryxU64(_x82, _x232, _x235);
		_x236 = __tmp__._0;
	};
	var _x238:GoUInt64 = ((0 : GoUInt64));
	var _x239:T_p521Uint1 = new T_p521Uint1();
	{
		var __tmp__ = _p521AddcarryxU64(_x87, _x234, new T_p521Uint1(((0 : GoUInt8))));
		_x238 = __tmp__._0;
		_x239 = __tmp__._1;
	};
	var _x240:GoUInt64 = ((0 : GoUInt64));
	{
		var __tmp__ = _p521AddcarryxU64(_x88, _x236, _x239);
		_x240 = __tmp__._0;
	};
	var _x242:GoUInt64 = ((0 : GoUInt64));
	var _x243:T_p521Uint1 = new T_p521Uint1();
	{
		var __tmp__ = _p521AddcarryxU64(_x95, _x238, new T_p521Uint1(((0 : GoUInt8))));
		_x242 = __tmp__._0;
		_x243 = __tmp__._1;
	};
	var _x244:GoUInt64 = ((0 : GoUInt64));
	{
		var __tmp__ = _p521AddcarryxU64(_x96, _x240, _x243);
		_x244 = __tmp__._0;
	};
	var _x246:GoUInt64 = ((0 : GoUInt64));
	var _x247:T_p521Uint1 = new T_p521Uint1();
	{
		var __tmp__ = _p521AddcarryxU64(_x105, _x242, new T_p521Uint1(((0 : GoUInt8))));
		_x246 = __tmp__._0;
		_x247 = __tmp__._1;
	};
	var _x248:GoUInt64 = ((0 : GoUInt64));
	{
		var __tmp__ = _p521AddcarryxU64(_x106, _x244, _x247);
		_x248 = __tmp__._0;
	};
	var _x250:GoUInt64 = ((0 : GoUInt64));
	var _x251:T_p521Uint1 = new T_p521Uint1();
	{
		var __tmp__ = _p521AddcarryxU64(_x117, _x246, new T_p521Uint1(((0 : GoUInt8))));
		_x250 = __tmp__._0;
		_x251 = __tmp__._1;
	};
	var _x252:GoUInt64 = ((0 : GoUInt64));
	{
		var __tmp__ = _p521AddcarryxU64(_x118, _x248, _x251);
		_x252 = __tmp__._0;
	};
	var _x254:GoUInt64 = ((0 : GoUInt64));
	var _x255:T_p521Uint1 = new T_p521Uint1();
	{
		var __tmp__ = _p521AddcarryxU64(_x131, _x250, new T_p521Uint1(((0 : GoUInt8))));
		_x254 = __tmp__._0;
		_x255 = __tmp__._1;
	};
	var _x256:GoUInt64 = ((0 : GoUInt64));
	{
		var __tmp__ = _p521AddcarryxU64(_x132, _x252, _x255);
		_x256 = __tmp__._0;
	};
	var _x258:GoUInt64 = ((0 : GoUInt64));
	var _x259:T_p521Uint1 = new T_p521Uint1();
	{
		var __tmp__ = _p521AddcarryxU64(_x147, _x254, new T_p521Uint1(((0 : GoUInt8))));
		_x258 = __tmp__._0;
		_x259 = __tmp__._1;
	};
	var _x260:GoUInt64 = ((0 : GoUInt64));
	{
		var __tmp__ = _p521AddcarryxU64(_x148, _x256, _x259);
		_x260 = __tmp__._0;
	};
	var _x262:GoUInt64 = ((0 : GoUInt64));
	var _x263:T_p521Uint1 = new T_p521Uint1();
	{
		var __tmp__ = _p521AddcarryxU64(_x17, _x3, new T_p521Uint1(((0 : GoUInt8))));
		_x262 = __tmp__._0;
		_x263 = __tmp__._1;
	};
	var _x264:GoUInt64 = ((0 : GoUInt64));
	{
		var __tmp__ = _p521AddcarryxU64(_x18, _x4, _x263);
		_x264 = __tmp__._0;
	};
	var _x266:GoUInt64 = ((0 : GoUInt64));
	var _x267:T_p521Uint1 = new T_p521Uint1();
	{
		var __tmp__ = _p521AddcarryxU64(_x83, _x262, new T_p521Uint1(((0 : GoUInt8))));
		_x266 = __tmp__._0;
		_x267 = __tmp__._1;
	};
	var _x268:GoUInt64 = ((0 : GoUInt64));
	{
		var __tmp__ = _p521AddcarryxU64(_x84, _x264, _x267);
		_x268 = __tmp__._0;
	};
	var _x270:GoUInt64 = ((0 : GoUInt64));
	var _x271:T_p521Uint1 = new T_p521Uint1();
	{
		var __tmp__ = _p521AddcarryxU64(_x89, _x266, new T_p521Uint1(((0 : GoUInt8))));
		_x270 = __tmp__._0;
		_x271 = __tmp__._1;
	};
	var _x272:GoUInt64 = ((0 : GoUInt64));
	{
		var __tmp__ = _p521AddcarryxU64(_x90, _x268, _x271);
		_x272 = __tmp__._0;
	};
	var _x274:GoUInt64 = ((0 : GoUInt64));
	var _x275:T_p521Uint1 = new T_p521Uint1();
	{
		var __tmp__ = _p521AddcarryxU64(_x97, _x270, new T_p521Uint1(((0 : GoUInt8))));
		_x274 = __tmp__._0;
		_x275 = __tmp__._1;
	};
	var _x276:GoUInt64 = ((0 : GoUInt64));
	{
		var __tmp__ = _p521AddcarryxU64(_x98, _x272, _x275);
		_x276 = __tmp__._0;
	};
	var _x278:GoUInt64 = ((0 : GoUInt64));
	var _x279:T_p521Uint1 = new T_p521Uint1();
	{
		var __tmp__ = _p521AddcarryxU64(_x107, _x274, new T_p521Uint1(((0 : GoUInt8))));
		_x278 = __tmp__._0;
		_x279 = __tmp__._1;
	};
	var _x280:GoUInt64 = ((0 : GoUInt64));
	{
		var __tmp__ = _p521AddcarryxU64(_x108, _x276, _x279);
		_x280 = __tmp__._0;
	};
	var _x282:GoUInt64 = ((0 : GoUInt64));
	var _x283:T_p521Uint1 = new T_p521Uint1();
	{
		var __tmp__ = _p521AddcarryxU64(_x119, _x278, new T_p521Uint1(((0 : GoUInt8))));
		_x282 = __tmp__._0;
		_x283 = __tmp__._1;
	};
	var _x284:GoUInt64 = ((0 : GoUInt64));
	{
		var __tmp__ = _p521AddcarryxU64(_x120, _x280, _x283);
		_x284 = __tmp__._0;
	};
	var _x286:GoUInt64 = ((0 : GoUInt64));
	var _x287:T_p521Uint1 = new T_p521Uint1();
	{
		var __tmp__ = _p521AddcarryxU64(_x133, _x282, new T_p521Uint1(((0 : GoUInt8))));
		_x286 = __tmp__._0;
		_x287 = __tmp__._1;
	};
	var _x288:GoUInt64 = ((0 : GoUInt64));
	{
		var __tmp__ = _p521AddcarryxU64(_x134, _x284, _x287);
		_x288 = __tmp__._0;
	};
	var _x290:GoUInt64 = ((0 : GoUInt64));
	var _x291:T_p521Uint1 = new T_p521Uint1();
	{
		var __tmp__ = _p521AddcarryxU64(_x149, _x286, new T_p521Uint1(((0 : GoUInt8))));
		_x290 = __tmp__._0;
		_x291 = __tmp__._1;
	};
	var _x292:GoUInt64 = ((0 : GoUInt64));
	{
		var __tmp__ = _p521AddcarryxU64(_x150, _x288, _x291);
		_x292 = __tmp__._0;
	};
	var _x294:GoUInt64 = ((0 : GoUInt64));
	var _x295:T_p521Uint1 = new T_p521Uint1();
	{
		var __tmp__ = _p521AddcarryxU64(_x19, _x5, new T_p521Uint1(((0 : GoUInt8))));
		_x294 = __tmp__._0;
		_x295 = __tmp__._1;
	};
	var _x296:GoUInt64 = ((0 : GoUInt64));
	{
		var __tmp__ = _p521AddcarryxU64(_x20, _x6, _x295);
		_x296 = __tmp__._0;
	};
	var _x298:GoUInt64 = ((0 : GoUInt64));
	var _x299:T_p521Uint1 = new T_p521Uint1();
	{
		var __tmp__ = _p521AddcarryxU64(_x31, _x294, new T_p521Uint1(((0 : GoUInt8))));
		_x298 = __tmp__._0;
		_x299 = __tmp__._1;
	};
	var _x300:GoUInt64 = ((0 : GoUInt64));
	{
		var __tmp__ = _p521AddcarryxU64(_x32, _x296, _x299);
		_x300 = __tmp__._0;
	};
	var _x302:GoUInt64 = ((0 : GoUInt64));
	var _x303:T_p521Uint1 = new T_p521Uint1();
	{
		var __tmp__ = _p521AddcarryxU64(_x91, _x298, new T_p521Uint1(((0 : GoUInt8))));
		_x302 = __tmp__._0;
		_x303 = __tmp__._1;
	};
	var _x304:GoUInt64 = ((0 : GoUInt64));
	{
		var __tmp__ = _p521AddcarryxU64(_x92, _x300, _x303);
		_x304 = __tmp__._0;
	};
	var _x306:GoUInt64 = ((0 : GoUInt64));
	var _x307:T_p521Uint1 = new T_p521Uint1();
	{
		var __tmp__ = _p521AddcarryxU64(_x99, _x302, new T_p521Uint1(((0 : GoUInt8))));
		_x306 = __tmp__._0;
		_x307 = __tmp__._1;
	};
	var _x308:GoUInt64 = ((0 : GoUInt64));
	{
		var __tmp__ = _p521AddcarryxU64(_x100, _x304, _x307);
		_x308 = __tmp__._0;
	};
	var _x310:GoUInt64 = ((0 : GoUInt64));
	var _x311:T_p521Uint1 = new T_p521Uint1();
	{
		var __tmp__ = _p521AddcarryxU64(_x109, _x306, new T_p521Uint1(((0 : GoUInt8))));
		_x310 = __tmp__._0;
		_x311 = __tmp__._1;
	};
	var _x312:GoUInt64 = ((0 : GoUInt64));
	{
		var __tmp__ = _p521AddcarryxU64(_x110, _x308, _x311);
		_x312 = __tmp__._0;
	};
	var _x314:GoUInt64 = ((0 : GoUInt64));
	var _x315:T_p521Uint1 = new T_p521Uint1();
	{
		var __tmp__ = _p521AddcarryxU64(_x121, _x310, new T_p521Uint1(((0 : GoUInt8))));
		_x314 = __tmp__._0;
		_x315 = __tmp__._1;
	};
	var _x316:GoUInt64 = ((0 : GoUInt64));
	{
		var __tmp__ = _p521AddcarryxU64(_x122, _x312, _x315);
		_x316 = __tmp__._0;
	};
	var _x318:GoUInt64 = ((0 : GoUInt64));
	var _x319:T_p521Uint1 = new T_p521Uint1();
	{
		var __tmp__ = _p521AddcarryxU64(_x135, _x314, new T_p521Uint1(((0 : GoUInt8))));
		_x318 = __tmp__._0;
		_x319 = __tmp__._1;
	};
	var _x320:GoUInt64 = ((0 : GoUInt64));
	{
		var __tmp__ = _p521AddcarryxU64(_x136, _x316, _x319);
		_x320 = __tmp__._0;
	};
	var _x322:GoUInt64 = ((0 : GoUInt64));
	var _x323:T_p521Uint1 = new T_p521Uint1();
	{
		var __tmp__ = _p521AddcarryxU64(_x151, _x318, new T_p521Uint1(((0 : GoUInt8))));
		_x322 = __tmp__._0;
		_x323 = __tmp__._1;
	};
	var _x324:GoUInt64 = ((0 : GoUInt64));
	{
		var __tmp__ = _p521AddcarryxU64(_x152, _x320, _x323);
		_x324 = __tmp__._0;
	};
	var _x326:GoUInt64 = ((0 : GoUInt64));
	var _x327:T_p521Uint1 = new T_p521Uint1();
	{
		var __tmp__ = _p521AddcarryxU64(_x21, _x7, new T_p521Uint1(((0 : GoUInt8))));
		_x326 = __tmp__._0;
		_x327 = __tmp__._1;
	};
	var _x328:GoUInt64 = ((0 : GoUInt64));
	{
		var __tmp__ = _p521AddcarryxU64(_x22, _x8, _x327);
		_x328 = __tmp__._0;
	};
	var _x330:GoUInt64 = ((0 : GoUInt64));
	var _x331:T_p521Uint1 = new T_p521Uint1();
	{
		var __tmp__ = _p521AddcarryxU64(_x33, _x326, new T_p521Uint1(((0 : GoUInt8))));
		_x330 = __tmp__._0;
		_x331 = __tmp__._1;
	};
	var _x332:GoUInt64 = ((0 : GoUInt64));
	{
		var __tmp__ = _p521AddcarryxU64(_x34, _x328, _x331);
		_x332 = __tmp__._0;
	};
	var _x334:GoUInt64 = ((0 : GoUInt64));
	var _x335:T_p521Uint1 = new T_p521Uint1();
	{
		var __tmp__ = _p521AddcarryxU64(_x43, _x330, new T_p521Uint1(((0 : GoUInt8))));
		_x334 = __tmp__._0;
		_x335 = __tmp__._1;
	};
	var _x336:GoUInt64 = ((0 : GoUInt64));
	{
		var __tmp__ = _p521AddcarryxU64(_x44, _x332, _x335);
		_x336 = __tmp__._0;
	};
	var _x338:GoUInt64 = ((0 : GoUInt64));
	var _x339:T_p521Uint1 = new T_p521Uint1();
	{
		var __tmp__ = _p521AddcarryxU64(_x101, _x334, new T_p521Uint1(((0 : GoUInt8))));
		_x338 = __tmp__._0;
		_x339 = __tmp__._1;
	};
	var _x340:GoUInt64 = ((0 : GoUInt64));
	{
		var __tmp__ = _p521AddcarryxU64(_x102, _x336, _x339);
		_x340 = __tmp__._0;
	};
	var _x342:GoUInt64 = ((0 : GoUInt64));
	var _x343:T_p521Uint1 = new T_p521Uint1();
	{
		var __tmp__ = _p521AddcarryxU64(_x111, _x338, new T_p521Uint1(((0 : GoUInt8))));
		_x342 = __tmp__._0;
		_x343 = __tmp__._1;
	};
	var _x344:GoUInt64 = ((0 : GoUInt64));
	{
		var __tmp__ = _p521AddcarryxU64(_x112, _x340, _x343);
		_x344 = __tmp__._0;
	};
	var _x346:GoUInt64 = ((0 : GoUInt64));
	var _x347:T_p521Uint1 = new T_p521Uint1();
	{
		var __tmp__ = _p521AddcarryxU64(_x123, _x342, new T_p521Uint1(((0 : GoUInt8))));
		_x346 = __tmp__._0;
		_x347 = __tmp__._1;
	};
	var _x348:GoUInt64 = ((0 : GoUInt64));
	{
		var __tmp__ = _p521AddcarryxU64(_x124, _x344, _x347);
		_x348 = __tmp__._0;
	};
	var _x350:GoUInt64 = ((0 : GoUInt64));
	var _x351:T_p521Uint1 = new T_p521Uint1();
	{
		var __tmp__ = _p521AddcarryxU64(_x137, _x346, new T_p521Uint1(((0 : GoUInt8))));
		_x350 = __tmp__._0;
		_x351 = __tmp__._1;
	};
	var _x352:GoUInt64 = ((0 : GoUInt64));
	{
		var __tmp__ = _p521AddcarryxU64(_x138, _x348, _x351);
		_x352 = __tmp__._0;
	};
	var _x354:GoUInt64 = ((0 : GoUInt64));
	var _x355:T_p521Uint1 = new T_p521Uint1();
	{
		var __tmp__ = _p521AddcarryxU64(_x153, _x350, new T_p521Uint1(((0 : GoUInt8))));
		_x354 = __tmp__._0;
		_x355 = __tmp__._1;
	};
	var _x356:GoUInt64 = ((0 : GoUInt64));
	{
		var __tmp__ = _p521AddcarryxU64(_x154, _x352, _x355);
		_x356 = __tmp__._0;
	};
	var _x358:GoUInt64 = ((0 : GoUInt64));
	var _x359:T_p521Uint1 = new T_p521Uint1();
	{
		var __tmp__ = _p521AddcarryxU64(_x23, _x9, new T_p521Uint1(((0 : GoUInt8))));
		_x358 = __tmp__._0;
		_x359 = __tmp__._1;
	};
	var _x360:GoUInt64 = ((0 : GoUInt64));
	{
		var __tmp__ = _p521AddcarryxU64(_x24, _x10, _x359);
		_x360 = __tmp__._0;
	};
	var _x362:GoUInt64 = ((0 : GoUInt64));
	var _x363:T_p521Uint1 = new T_p521Uint1();
	{
		var __tmp__ = _p521AddcarryxU64(_x35, _x358, new T_p521Uint1(((0 : GoUInt8))));
		_x362 = __tmp__._0;
		_x363 = __tmp__._1;
	};
	var _x364:GoUInt64 = ((0 : GoUInt64));
	{
		var __tmp__ = _p521AddcarryxU64(_x36, _x360, _x363);
		_x364 = __tmp__._0;
	};
	var _x366:GoUInt64 = ((0 : GoUInt64));
	var _x367:T_p521Uint1 = new T_p521Uint1();
	{
		var __tmp__ = _p521AddcarryxU64(_x45, _x362, new T_p521Uint1(((0 : GoUInt8))));
		_x366 = __tmp__._0;
		_x367 = __tmp__._1;
	};
	var _x368:GoUInt64 = ((0 : GoUInt64));
	{
		var __tmp__ = _p521AddcarryxU64(_x46, _x364, _x367);
		_x368 = __tmp__._0;
	};
	var _x370:GoUInt64 = ((0 : GoUInt64));
	var _x371:T_p521Uint1 = new T_p521Uint1();
	{
		var __tmp__ = _p521AddcarryxU64(_x53, _x366, new T_p521Uint1(((0 : GoUInt8))));
		_x370 = __tmp__._0;
		_x371 = __tmp__._1;
	};
	var _x372:GoUInt64 = ((0 : GoUInt64));
	{
		var __tmp__ = _p521AddcarryxU64(_x54, _x368, _x371);
		_x372 = __tmp__._0;
	};
	var _x374:GoUInt64 = ((0 : GoUInt64));
	var _x375:T_p521Uint1 = new T_p521Uint1();
	{
		var __tmp__ = _p521AddcarryxU64(_x113, _x370, new T_p521Uint1(((0 : GoUInt8))));
		_x374 = __tmp__._0;
		_x375 = __tmp__._1;
	};
	var _x376:GoUInt64 = ((0 : GoUInt64));
	{
		var __tmp__ = _p521AddcarryxU64(_x114, _x372, _x375);
		_x376 = __tmp__._0;
	};
	var _x378:GoUInt64 = ((0 : GoUInt64));
	var _x379:T_p521Uint1 = new T_p521Uint1();
	{
		var __tmp__ = _p521AddcarryxU64(_x125, _x374, new T_p521Uint1(((0 : GoUInt8))));
		_x378 = __tmp__._0;
		_x379 = __tmp__._1;
	};
	var _x380:GoUInt64 = ((0 : GoUInt64));
	{
		var __tmp__ = _p521AddcarryxU64(_x126, _x376, _x379);
		_x380 = __tmp__._0;
	};
	var _x382:GoUInt64 = ((0 : GoUInt64));
	var _x383:T_p521Uint1 = new T_p521Uint1();
	{
		var __tmp__ = _p521AddcarryxU64(_x139, _x378, new T_p521Uint1(((0 : GoUInt8))));
		_x382 = __tmp__._0;
		_x383 = __tmp__._1;
	};
	var _x384:GoUInt64 = ((0 : GoUInt64));
	{
		var __tmp__ = _p521AddcarryxU64(_x140, _x380, _x383);
		_x384 = __tmp__._0;
	};
	var _x386:GoUInt64 = ((0 : GoUInt64));
	var _x387:T_p521Uint1 = new T_p521Uint1();
	{
		var __tmp__ = _p521AddcarryxU64(_x155, _x382, new T_p521Uint1(((0 : GoUInt8))));
		_x386 = __tmp__._0;
		_x387 = __tmp__._1;
	};
	var _x388:GoUInt64 = ((0 : GoUInt64));
	{
		var __tmp__ = _p521AddcarryxU64(_x156, _x384, _x387);
		_x388 = __tmp__._0;
	};
	var _x390:GoUInt64 = ((0 : GoUInt64));
	var _x391:T_p521Uint1 = new T_p521Uint1();
	{
		var __tmp__ = _p521AddcarryxU64(_x25, _x11, new T_p521Uint1(((0 : GoUInt8))));
		_x390 = __tmp__._0;
		_x391 = __tmp__._1;
	};
	var _x392:GoUInt64 = ((0 : GoUInt64));
	{
		var __tmp__ = _p521AddcarryxU64(_x26, _x12, _x391);
		_x392 = __tmp__._0;
	};
	var _x394:GoUInt64 = ((0 : GoUInt64));
	var _x395:T_p521Uint1 = new T_p521Uint1();
	{
		var __tmp__ = _p521AddcarryxU64(_x37, _x390, new T_p521Uint1(((0 : GoUInt8))));
		_x394 = __tmp__._0;
		_x395 = __tmp__._1;
	};
	var _x396:GoUInt64 = ((0 : GoUInt64));
	{
		var __tmp__ = _p521AddcarryxU64(_x38, _x392, _x395);
		_x396 = __tmp__._0;
	};
	var _x398:GoUInt64 = ((0 : GoUInt64));
	var _x399:T_p521Uint1 = new T_p521Uint1();
	{
		var __tmp__ = _p521AddcarryxU64(_x47, _x394, new T_p521Uint1(((0 : GoUInt8))));
		_x398 = __tmp__._0;
		_x399 = __tmp__._1;
	};
	var _x400:GoUInt64 = ((0 : GoUInt64));
	{
		var __tmp__ = _p521AddcarryxU64(_x48, _x396, _x399);
		_x400 = __tmp__._0;
	};
	var _x402:GoUInt64 = ((0 : GoUInt64));
	var _x403:T_p521Uint1 = new T_p521Uint1();
	{
		var __tmp__ = _p521AddcarryxU64(_x55, _x398, new T_p521Uint1(((0 : GoUInt8))));
		_x402 = __tmp__._0;
		_x403 = __tmp__._1;
	};
	var _x404:GoUInt64 = ((0 : GoUInt64));
	{
		var __tmp__ = _p521AddcarryxU64(_x56, _x400, _x403);
		_x404 = __tmp__._0;
	};
	var _x406:GoUInt64 = ((0 : GoUInt64));
	var _x407:T_p521Uint1 = new T_p521Uint1();
	{
		var __tmp__ = _p521AddcarryxU64(_x61, _x402, new T_p521Uint1(((0 : GoUInt8))));
		_x406 = __tmp__._0;
		_x407 = __tmp__._1;
	};
	var _x408:GoUInt64 = ((0 : GoUInt64));
	{
		var __tmp__ = _p521AddcarryxU64(_x62, _x404, _x407);
		_x408 = __tmp__._0;
	};
	var _x410:GoUInt64 = ((0 : GoUInt64));
	var _x411:T_p521Uint1 = new T_p521Uint1();
	{
		var __tmp__ = _p521AddcarryxU64(_x127, _x406, new T_p521Uint1(((0 : GoUInt8))));
		_x410 = __tmp__._0;
		_x411 = __tmp__._1;
	};
	var _x412:GoUInt64 = ((0 : GoUInt64));
	{
		var __tmp__ = _p521AddcarryxU64(_x128, _x408, _x411);
		_x412 = __tmp__._0;
	};
	var _x414:GoUInt64 = ((0 : GoUInt64));
	var _x415:T_p521Uint1 = new T_p521Uint1();
	{
		var __tmp__ = _p521AddcarryxU64(_x141, _x410, new T_p521Uint1(((0 : GoUInt8))));
		_x414 = __tmp__._0;
		_x415 = __tmp__._1;
	};
	var _x416:GoUInt64 = ((0 : GoUInt64));
	{
		var __tmp__ = _p521AddcarryxU64(_x142, _x412, _x415);
		_x416 = __tmp__._0;
	};
	var _x418:GoUInt64 = ((0 : GoUInt64));
	var _x419:T_p521Uint1 = new T_p521Uint1();
	{
		var __tmp__ = _p521AddcarryxU64(_x157, _x414, new T_p521Uint1(((0 : GoUInt8))));
		_x418 = __tmp__._0;
		_x419 = __tmp__._1;
	};
	var _x420:GoUInt64 = ((0 : GoUInt64));
	{
		var __tmp__ = _p521AddcarryxU64(_x158, _x416, _x419);
		_x420 = __tmp__._0;
	};
	var _x422:GoUInt64 = ((0 : GoUInt64));
	var _x423:T_p521Uint1 = new T_p521Uint1();
	{
		var __tmp__ = _p521AddcarryxU64(_x27, _x13, new T_p521Uint1(((0 : GoUInt8))));
		_x422 = __tmp__._0;
		_x423 = __tmp__._1;
	};
	var _x424:GoUInt64 = ((0 : GoUInt64));
	{
		var __tmp__ = _p521AddcarryxU64(_x28, _x14, _x423);
		_x424 = __tmp__._0;
	};
	var _x426:GoUInt64 = ((0 : GoUInt64));
	var _x427:T_p521Uint1 = new T_p521Uint1();
	{
		var __tmp__ = _p521AddcarryxU64(_x39, _x422, new T_p521Uint1(((0 : GoUInt8))));
		_x426 = __tmp__._0;
		_x427 = __tmp__._1;
	};
	var _x428:GoUInt64 = ((0 : GoUInt64));
	{
		var __tmp__ = _p521AddcarryxU64(_x40, _x424, _x427);
		_x428 = __tmp__._0;
	};
	var _x430:GoUInt64 = ((0 : GoUInt64));
	var _x431:T_p521Uint1 = new T_p521Uint1();
	{
		var __tmp__ = _p521AddcarryxU64(_x49, _x426, new T_p521Uint1(((0 : GoUInt8))));
		_x430 = __tmp__._0;
		_x431 = __tmp__._1;
	};
	var _x432:GoUInt64 = ((0 : GoUInt64));
	{
		var __tmp__ = _p521AddcarryxU64(_x50, _x428, _x431);
		_x432 = __tmp__._0;
	};
	var _x434:GoUInt64 = ((0 : GoUInt64));
	var _x435:T_p521Uint1 = new T_p521Uint1();
	{
		var __tmp__ = _p521AddcarryxU64(_x57, _x430, new T_p521Uint1(((0 : GoUInt8))));
		_x434 = __tmp__._0;
		_x435 = __tmp__._1;
	};
	var _x436:GoUInt64 = ((0 : GoUInt64));
	{
		var __tmp__ = _p521AddcarryxU64(_x58, _x432, _x435);
		_x436 = __tmp__._0;
	};
	var _x438:GoUInt64 = ((0 : GoUInt64));
	var _x439:T_p521Uint1 = new T_p521Uint1();
	{
		var __tmp__ = _p521AddcarryxU64(_x63, _x434, new T_p521Uint1(((0 : GoUInt8))));
		_x438 = __tmp__._0;
		_x439 = __tmp__._1;
	};
	var _x440:GoUInt64 = ((0 : GoUInt64));
	{
		var __tmp__ = _p521AddcarryxU64(_x64, _x436, _x439);
		_x440 = __tmp__._0;
	};
	var _x442:GoUInt64 = ((0 : GoUInt64));
	var _x443:T_p521Uint1 = new T_p521Uint1();
	{
		var __tmp__ = _p521AddcarryxU64(_x67, _x438, new T_p521Uint1(((0 : GoUInt8))));
		_x442 = __tmp__._0;
		_x443 = __tmp__._1;
	};
	var _x444:GoUInt64 = ((0 : GoUInt64));
	{
		var __tmp__ = _p521AddcarryxU64(_x68, _x440, _x443);
		_x444 = __tmp__._0;
	};
	var _x446:GoUInt64 = ((0 : GoUInt64));
	var _x447:T_p521Uint1 = new T_p521Uint1();
	{
		var __tmp__ = _p521AddcarryxU64(_x143, _x442, new T_p521Uint1(((0 : GoUInt8))));
		_x446 = __tmp__._0;
		_x447 = __tmp__._1;
	};
	var _x448:GoUInt64 = ((0 : GoUInt64));
	{
		var __tmp__ = _p521AddcarryxU64(_x144, _x444, _x447);
		_x448 = __tmp__._0;
	};
	var _x450:GoUInt64 = ((0 : GoUInt64));
	var _x451:T_p521Uint1 = new T_p521Uint1();
	{
		var __tmp__ = _p521AddcarryxU64(_x159, _x446, new T_p521Uint1(((0 : GoUInt8))));
		_x450 = __tmp__._0;
		_x451 = __tmp__._1;
	};
	var _x452:GoUInt64 = ((0 : GoUInt64));
	{
		var __tmp__ = _p521AddcarryxU64(_x160, _x448, _x451);
		_x452 = __tmp__._0;
	};
	var _x454:GoUInt64 = ((0 : GoUInt64));
	var _x455:T_p521Uint1 = new T_p521Uint1();
	{
		var __tmp__ = _p521AddcarryxU64(_x195, _x450, new T_p521Uint1(((0 : GoUInt8))));
		_x454 = __tmp__._0;
		_x455 = __tmp__._1;
	};
	var _x456:GoUInt64 = ((0 : GoUInt64));
	{
		var __tmp__ = _p521AddcarryxU64(_x196, _x452, _x455);
		_x456 = __tmp__._0;
	};
	var _x458:GoUInt64 = (((_x454 >> ((58 : GoUnTypedInt)))) | (((_x456 << ((6 : GoUnTypedInt)))) & (("18446744073709551615" : GoUInt64))));
	var _x459:GoUInt64 = ((_x456 >> ((58 : GoUnTypedInt))));
	var _x460:GoUInt64 = (_x454 & (("288230376151711743" : GoUInt64)));
	var _x461:GoUInt64 = ((0 : GoUInt64));
	var _x462:T_p521Uint1 = new T_p521Uint1();
	{
		var __tmp__ = _p521AddcarryxU64(_x458, _x418, new T_p521Uint1(((0 : GoUInt8))));
		_x461 = __tmp__._0;
		_x462 = __tmp__._1;
	};
	var _x463:GoUInt64 = ((0 : GoUInt64));
	{
		var __tmp__ = _p521AddcarryxU64(_x459, _x420, _x462);
		_x463 = __tmp__._0;
	};
	var _x465:GoUInt64 = (((_x461 >> ((58 : GoUnTypedInt)))) | (((_x463 << ((6 : GoUnTypedInt)))) & (("18446744073709551615" : GoUInt64))));
	var _x466:GoUInt64 = ((_x463 >> ((58 : GoUnTypedInt))));
	var _x467:GoUInt64 = (_x461 & (("288230376151711743" : GoUInt64)));
	var _x468:GoUInt64 = ((0 : GoUInt64));
	var _x469:T_p521Uint1 = new T_p521Uint1();
	{
		var __tmp__ = _p521AddcarryxU64(_x465, _x386, new T_p521Uint1(((0 : GoUInt8))));
		_x468 = __tmp__._0;
		_x469 = __tmp__._1;
	};
	var _x470:GoUInt64 = ((0 : GoUInt64));
	{
		var __tmp__ = _p521AddcarryxU64(_x466, _x388, _x469);
		_x470 = __tmp__._0;
	};
	var _x472:GoUInt64 = (((_x468 >> ((58 : GoUnTypedInt)))) | (((_x470 << ((6 : GoUnTypedInt)))) & (("18446744073709551615" : GoUInt64))));
	var _x473:GoUInt64 = ((_x470 >> ((58 : GoUnTypedInt))));
	var _x474:GoUInt64 = (_x468 & (("288230376151711743" : GoUInt64)));
	var _x475:GoUInt64 = ((0 : GoUInt64));
	var _x476:T_p521Uint1 = new T_p521Uint1();
	{
		var __tmp__ = _p521AddcarryxU64(_x472, _x354, new T_p521Uint1(((0 : GoUInt8))));
		_x475 = __tmp__._0;
		_x476 = __tmp__._1;
	};
	var _x477:GoUInt64 = ((0 : GoUInt64));
	{
		var __tmp__ = _p521AddcarryxU64(_x473, _x356, _x476);
		_x477 = __tmp__._0;
	};
	var _x479:GoUInt64 = (((_x475 >> ((58 : GoUnTypedInt)))) | (((_x477 << ((6 : GoUnTypedInt)))) & (("18446744073709551615" : GoUInt64))));
	var _x480:GoUInt64 = ((_x477 >> ((58 : GoUnTypedInt))));
	var _x481:GoUInt64 = (_x475 & (("288230376151711743" : GoUInt64)));
	var _x482:GoUInt64 = ((0 : GoUInt64));
	var _x483:T_p521Uint1 = new T_p521Uint1();
	{
		var __tmp__ = _p521AddcarryxU64(_x479, _x322, new T_p521Uint1(((0 : GoUInt8))));
		_x482 = __tmp__._0;
		_x483 = __tmp__._1;
	};
	var _x484:GoUInt64 = ((0 : GoUInt64));
	{
		var __tmp__ = _p521AddcarryxU64(_x480, _x324, _x483);
		_x484 = __tmp__._0;
	};
	var _x486:GoUInt64 = (((_x482 >> ((58 : GoUnTypedInt)))) | (((_x484 << ((6 : GoUnTypedInt)))) & (("18446744073709551615" : GoUInt64))));
	var _x487:GoUInt64 = ((_x484 >> ((58 : GoUnTypedInt))));
	var _x488:GoUInt64 = (_x482 & (("288230376151711743" : GoUInt64)));
	var _x489:GoUInt64 = ((0 : GoUInt64));
	var _x490:T_p521Uint1 = new T_p521Uint1();
	{
		var __tmp__ = _p521AddcarryxU64(_x486, _x290, new T_p521Uint1(((0 : GoUInt8))));
		_x489 = __tmp__._0;
		_x490 = __tmp__._1;
	};
	var _x491:GoUInt64 = ((0 : GoUInt64));
	{
		var __tmp__ = _p521AddcarryxU64(_x487, _x292, _x490);
		_x491 = __tmp__._0;
	};
	var _x493:GoUInt64 = (((_x489 >> ((58 : GoUnTypedInt)))) | (((_x491 << ((6 : GoUnTypedInt)))) & (("18446744073709551615" : GoUInt64))));
	var _x494:GoUInt64 = ((_x491 >> ((58 : GoUnTypedInt))));
	var _x495:GoUInt64 = (_x489 & (("288230376151711743" : GoUInt64)));
	var _x496:GoUInt64 = ((0 : GoUInt64));
	var _x497:T_p521Uint1 = new T_p521Uint1();
	{
		var __tmp__ = _p521AddcarryxU64(_x493, _x258, new T_p521Uint1(((0 : GoUInt8))));
		_x496 = __tmp__._0;
		_x497 = __tmp__._1;
	};
	var _x498:GoUInt64 = ((0 : GoUInt64));
	{
		var __tmp__ = _p521AddcarryxU64(_x494, _x260, _x497);
		_x498 = __tmp__._0;
	};
	var _x500:GoUInt64 = (((_x496 >> ((58 : GoUnTypedInt)))) | (((_x498 << ((6 : GoUnTypedInt)))) & (("18446744073709551615" : GoUInt64))));
	var _x501:GoUInt64 = ((_x498 >> ((58 : GoUnTypedInt))));
	var _x502:GoUInt64 = (_x496 & (("288230376151711743" : GoUInt64)));
	var _x503:GoUInt64 = ((0 : GoUInt64));
	var _x504:T_p521Uint1 = new T_p521Uint1();
	{
		var __tmp__ = _p521AddcarryxU64(_x500, _x226, new T_p521Uint1(((0 : GoUInt8))));
		_x503 = __tmp__._0;
		_x504 = __tmp__._1;
	};
	var _x505:GoUInt64 = ((0 : GoUInt64));
	{
		var __tmp__ = _p521AddcarryxU64(_x501, _x228, _x504);
		_x505 = __tmp__._0;
	};
	var _x507:GoUInt64 = (((_x503 >> ((57 : GoUnTypedInt)))) | (((_x505 << ((7 : GoUnTypedInt)))) & (("18446744073709551615" : GoUInt64))));
	var _x508:GoUInt64 = ((_x505 >> ((57 : GoUnTypedInt))));
	var _x509:GoUInt64 = (_x503 & (("144115188075855871" : GoUInt64)));
	var _x510:GoUInt64 = ((0 : GoUInt64));
	var _x511:T_p521Uint1 = new T_p521Uint1();
	{
		var __tmp__ = _p521AddcarryxU64(_x197, _x507, new T_p521Uint1(((0 : GoUInt8))));
		_x510 = __tmp__._0;
		_x511 = __tmp__._1;
	};
	var _x512:GoUInt64 = (_x511.__t__ + _x508);
	var _x513:GoUInt64 = (((_x510 >> ((58 : GoUnTypedInt)))) | (((_x512 << ((6 : GoUnTypedInt)))) & (("18446744073709551615" : GoUInt64))));
	var _x514:GoUInt64 = (_x510 & (("288230376151711743" : GoUInt64)));
	var _x515:GoUInt64 = (_x513 + _x460);
	var _x516:T_p521Uint1 = new T_p521Uint1(((_x515 >> ((58 : GoUnTypedInt)))));
	var _x517:GoUInt64 = (_x515 & (("288230376151711743" : GoUInt64)));
	var _x518:GoUInt64 = (_x516.__t__ + _x467);
	_out1.value[((0 : GoInt))] = _x514;
	_out1.value[((1 : GoInt))] = _x517;
	_out1.value[((2 : GoInt))] = _x518;
	_out1.value[((3 : GoInt))] = _x474;
	_out1.value[((4 : GoInt))] = _x481;
	_out1.value[((5 : GoInt))] = _x488;
	_out1.value[((6 : GoInt))] = _x495;
	_out1.value[((7 : GoInt))] = _x502;
	_out1.value[((8 : GoInt))] = _x509;
}

/**
	// p521CarrySquare squares a field element and reduces the result.
	//
	// Postconditions:
	//   eval out1 mod m = (eval arg1 * eval arg1) mod m
	//
	// Input Bounds:
	//   arg1: [[0x0 ~> 0xc00000000000000], [0x0 ~> 0xc00000000000000], [0x0 ~> 0xc00000000000000], [0x0 ~> 0xc00000000000000], [0x0 ~> 0xc00000000000000], [0x0 ~> 0xc00000000000000], [0x0 ~> 0xc00000000000000], [0x0 ~> 0xc00000000000000], [0x0 ~> 0x600000000000000]]
	// Output Bounds:
	//   out1: [[0x0 ~> 0x400000000000000], [0x0 ~> 0x400000000000000], [0x0 ~> 0x400000000000000], [0x0 ~> 0x400000000000000], [0x0 ~> 0x400000000000000], [0x0 ~> 0x400000000000000], [0x0 ~> 0x400000000000000], [0x0 ~> 0x400000000000000], [0x0 ~> 0x200000000000000]]
**/
function _p521CarrySquare(_out1:Pointer<GoArray<GoUInt64>>, _arg1:Pointer<GoArray<GoUInt64>>):Void {
	var _x1:GoUInt64 = _arg1.value[((8 : GoInt))];
	var _x2:GoUInt64 = (_x1 * ((2 : GoUInt64)));
	var _x3:GoUInt64 = (_arg1.value[((8 : GoInt))] * ((2 : GoUInt64)));
	var _x4:GoUInt64 = _arg1.value[((7 : GoInt))];
	var _x5:GoUInt64 = (_x4 * ((2 : GoUInt64)));
	var _x6:GoUInt64 = (_arg1.value[((7 : GoInt))] * ((2 : GoUInt64)));
	var _x7:GoUInt64 = _arg1.value[((6 : GoInt))];
	var _x8:GoUInt64 = (_x7 * ((2 : GoUInt64)));
	var _x9:GoUInt64 = (_arg1.value[((6 : GoInt))] * ((2 : GoUInt64)));
	var _x10:GoUInt64 = _arg1.value[((5 : GoInt))];
	var _x11:GoUInt64 = (_x10 * ((2 : GoUInt64)));
	var _x12:GoUInt64 = (_arg1.value[((5 : GoInt))] * ((2 : GoUInt64)));
	var _x13:GoUInt64 = (_arg1.value[((4 : GoInt))] * ((2 : GoUInt64)));
	var _x14:GoUInt64 = (_arg1.value[((3 : GoInt))] * ((2 : GoUInt64)));
	var _x15:GoUInt64 = (_arg1.value[((2 : GoInt))] * ((2 : GoUInt64)));
	var _x16:GoUInt64 = (_arg1.value[((1 : GoInt))] * ((2 : GoUInt64)));
	var _x17:GoUInt64 = ((0 : GoUInt64));
	var _x18:GoUInt64 = ((0 : GoUInt64));
	{
		var __tmp__ = stdgo.math.bits.Bits.mul64(_arg1.value[((8 : GoInt))], (_x1 * ((2 : GoUInt64))));
		_x18 = __tmp__._0;
		_x17 = __tmp__._1;
	};
	var _x19:GoUInt64 = ((0 : GoUInt64));
	var _x20:GoUInt64 = ((0 : GoUInt64));
	{
		var __tmp__ = stdgo.math.bits.Bits.mul64(_arg1.value[((7 : GoInt))], (_x2 * ((2 : GoUInt64))));
		_x20 = __tmp__._0;
		_x19 = __tmp__._1;
	};
	var _x21:GoUInt64 = ((0 : GoUInt64));
	var _x22:GoUInt64 = ((0 : GoUInt64));
	{
		var __tmp__ = stdgo.math.bits.Bits.mul64(_arg1.value[((7 : GoInt))], (_x4 * ((2 : GoUInt64))));
		_x22 = __tmp__._0;
		_x21 = __tmp__._1;
	};
	var _x23:GoUInt64 = ((0 : GoUInt64));
	var _x24:GoUInt64 = ((0 : GoUInt64));
	{
		var __tmp__ = stdgo.math.bits.Bits.mul64(_arg1.value[((6 : GoInt))], (_x2 * ((2 : GoUInt64))));
		_x24 = __tmp__._0;
		_x23 = __tmp__._1;
	};
	var _x25:GoUInt64 = ((0 : GoUInt64));
	var _x26:GoUInt64 = ((0 : GoUInt64));
	{
		var __tmp__ = stdgo.math.bits.Bits.mul64(_arg1.value[((6 : GoInt))], (_x5 * ((2 : GoUInt64))));
		_x26 = __tmp__._0;
		_x25 = __tmp__._1;
	};
	var _x27:GoUInt64 = ((0 : GoUInt64));
	var _x28:GoUInt64 = ((0 : GoUInt64));
	{
		var __tmp__ = stdgo.math.bits.Bits.mul64(_arg1.value[((6 : GoInt))], (_x7 * ((2 : GoUInt64))));
		_x28 = __tmp__._0;
		_x27 = __tmp__._1;
	};
	var _x29:GoUInt64 = ((0 : GoUInt64));
	var _x30:GoUInt64 = ((0 : GoUInt64));
	{
		var __tmp__ = stdgo.math.bits.Bits.mul64(_arg1.value[((5 : GoInt))], (_x2 * ((2 : GoUInt64))));
		_x30 = __tmp__._0;
		_x29 = __tmp__._1;
	};
	var _x31:GoUInt64 = ((0 : GoUInt64));
	var _x32:GoUInt64 = ((0 : GoUInt64));
	{
		var __tmp__ = stdgo.math.bits.Bits.mul64(_arg1.value[((5 : GoInt))], (_x5 * ((2 : GoUInt64))));
		_x32 = __tmp__._0;
		_x31 = __tmp__._1;
	};
	var _x33:GoUInt64 = ((0 : GoUInt64));
	var _x34:GoUInt64 = ((0 : GoUInt64));
	{
		var __tmp__ = stdgo.math.bits.Bits.mul64(_arg1.value[((5 : GoInt))], (_x8 * ((2 : GoUInt64))));
		_x34 = __tmp__._0;
		_x33 = __tmp__._1;
	};
	var _x35:GoUInt64 = ((0 : GoUInt64));
	var _x36:GoUInt64 = ((0 : GoUInt64));
	{
		var __tmp__ = stdgo.math.bits.Bits.mul64(_arg1.value[((5 : GoInt))], (_x10 * ((2 : GoUInt64))));
		_x36 = __tmp__._0;
		_x35 = __tmp__._1;
	};
	var _x37:GoUInt64 = ((0 : GoUInt64));
	var _x38:GoUInt64 = ((0 : GoUInt64));
	{
		var __tmp__ = stdgo.math.bits.Bits.mul64(_arg1.value[((4 : GoInt))], (_x2 * ((2 : GoUInt64))));
		_x38 = __tmp__._0;
		_x37 = __tmp__._1;
	};
	var _x39:GoUInt64 = ((0 : GoUInt64));
	var _x40:GoUInt64 = ((0 : GoUInt64));
	{
		var __tmp__ = stdgo.math.bits.Bits.mul64(_arg1.value[((4 : GoInt))], (_x5 * ((2 : GoUInt64))));
		_x40 = __tmp__._0;
		_x39 = __tmp__._1;
	};
	var _x41:GoUInt64 = ((0 : GoUInt64));
	var _x42:GoUInt64 = ((0 : GoUInt64));
	{
		var __tmp__ = stdgo.math.bits.Bits.mul64(_arg1.value[((4 : GoInt))], (_x8 * ((2 : GoUInt64))));
		_x42 = __tmp__._0;
		_x41 = __tmp__._1;
	};
	var _x43:GoUInt64 = ((0 : GoUInt64));
	var _x44:GoUInt64 = ((0 : GoUInt64));
	{
		var __tmp__ = stdgo.math.bits.Bits.mul64(_arg1.value[((4 : GoInt))], (_x11 * ((2 : GoUInt64))));
		_x44 = __tmp__._0;
		_x43 = __tmp__._1;
	};
	var _x45:GoUInt64 = ((0 : GoUInt64));
	var _x46:GoUInt64 = ((0 : GoUInt64));
	{
		var __tmp__ = stdgo.math.bits.Bits.mul64(_arg1.value[((4 : GoInt))], _arg1.value[((4 : GoInt))]);
		_x46 = __tmp__._0;
		_x45 = __tmp__._1;
	};
	var _x47:GoUInt64 = ((0 : GoUInt64));
	var _x48:GoUInt64 = ((0 : GoUInt64));
	{
		var __tmp__ = stdgo.math.bits.Bits.mul64(_arg1.value[((3 : GoInt))], (_x2 * ((2 : GoUInt64))));
		_x48 = __tmp__._0;
		_x47 = __tmp__._1;
	};
	var _x49:GoUInt64 = ((0 : GoUInt64));
	var _x50:GoUInt64 = ((0 : GoUInt64));
	{
		var __tmp__ = stdgo.math.bits.Bits.mul64(_arg1.value[((3 : GoInt))], (_x5 * ((2 : GoUInt64))));
		_x50 = __tmp__._0;
		_x49 = __tmp__._1;
	};
	var _x51:GoUInt64 = ((0 : GoUInt64));
	var _x52:GoUInt64 = ((0 : GoUInt64));
	{
		var __tmp__ = stdgo.math.bits.Bits.mul64(_arg1.value[((3 : GoInt))], (_x8 * ((2 : GoUInt64))));
		_x52 = __tmp__._0;
		_x51 = __tmp__._1;
	};
	var _x53:GoUInt64 = ((0 : GoUInt64));
	var _x54:GoUInt64 = ((0 : GoUInt64));
	{
		var __tmp__ = stdgo.math.bits.Bits.mul64(_arg1.value[((3 : GoInt))], _x12);
		_x54 = __tmp__._0;
		_x53 = __tmp__._1;
	};
	var _x55:GoUInt64 = ((0 : GoUInt64));
	var _x56:GoUInt64 = ((0 : GoUInt64));
	{
		var __tmp__ = stdgo.math.bits.Bits.mul64(_arg1.value[((3 : GoInt))], _x13);
		_x56 = __tmp__._0;
		_x55 = __tmp__._1;
	};
	var _x57:GoUInt64 = ((0 : GoUInt64));
	var _x58:GoUInt64 = ((0 : GoUInt64));
	{
		var __tmp__ = stdgo.math.bits.Bits.mul64(_arg1.value[((3 : GoInt))], _arg1.value[((3 : GoInt))]);
		_x58 = __tmp__._0;
		_x57 = __tmp__._1;
	};
	var _x59:GoUInt64 = ((0 : GoUInt64));
	var _x60:GoUInt64 = ((0 : GoUInt64));
	{
		var __tmp__ = stdgo.math.bits.Bits.mul64(_arg1.value[((2 : GoInt))], (_x2 * ((2 : GoUInt64))));
		_x60 = __tmp__._0;
		_x59 = __tmp__._1;
	};
	var _x61:GoUInt64 = ((0 : GoUInt64));
	var _x62:GoUInt64 = ((0 : GoUInt64));
	{
		var __tmp__ = stdgo.math.bits.Bits.mul64(_arg1.value[((2 : GoInt))], (_x5 * ((2 : GoUInt64))));
		_x62 = __tmp__._0;
		_x61 = __tmp__._1;
	};
	var _x63:GoUInt64 = ((0 : GoUInt64));
	var _x64:GoUInt64 = ((0 : GoUInt64));
	{
		var __tmp__ = stdgo.math.bits.Bits.mul64(_arg1.value[((2 : GoInt))], _x9);
		_x64 = __tmp__._0;
		_x63 = __tmp__._1;
	};
	var _x65:GoUInt64 = ((0 : GoUInt64));
	var _x66:GoUInt64 = ((0 : GoUInt64));
	{
		var __tmp__ = stdgo.math.bits.Bits.mul64(_arg1.value[((2 : GoInt))], _x12);
		_x66 = __tmp__._0;
		_x65 = __tmp__._1;
	};
	var _x67:GoUInt64 = ((0 : GoUInt64));
	var _x68:GoUInt64 = ((0 : GoUInt64));
	{
		var __tmp__ = stdgo.math.bits.Bits.mul64(_arg1.value[((2 : GoInt))], _x13);
		_x68 = __tmp__._0;
		_x67 = __tmp__._1;
	};
	var _x69:GoUInt64 = ((0 : GoUInt64));
	var _x70:GoUInt64 = ((0 : GoUInt64));
	{
		var __tmp__ = stdgo.math.bits.Bits.mul64(_arg1.value[((2 : GoInt))], _x14);
		_x70 = __tmp__._0;
		_x69 = __tmp__._1;
	};
	var _x71:GoUInt64 = ((0 : GoUInt64));
	var _x72:GoUInt64 = ((0 : GoUInt64));
	{
		var __tmp__ = stdgo.math.bits.Bits.mul64(_arg1.value[((2 : GoInt))], _arg1.value[((2 : GoInt))]);
		_x72 = __tmp__._0;
		_x71 = __tmp__._1;
	};
	var _x73:GoUInt64 = ((0 : GoUInt64));
	var _x74:GoUInt64 = ((0 : GoUInt64));
	{
		var __tmp__ = stdgo.math.bits.Bits.mul64(_arg1.value[((1 : GoInt))], (_x2 * ((2 : GoUInt64))));
		_x74 = __tmp__._0;
		_x73 = __tmp__._1;
	};
	var _x75:GoUInt64 = ((0 : GoUInt64));
	var _x76:GoUInt64 = ((0 : GoUInt64));
	{
		var __tmp__ = stdgo.math.bits.Bits.mul64(_arg1.value[((1 : GoInt))], _x6);
		_x76 = __tmp__._0;
		_x75 = __tmp__._1;
	};
	var _x77:GoUInt64 = ((0 : GoUInt64));
	var _x78:GoUInt64 = ((0 : GoUInt64));
	{
		var __tmp__ = stdgo.math.bits.Bits.mul64(_arg1.value[((1 : GoInt))], _x9);
		_x78 = __tmp__._0;
		_x77 = __tmp__._1;
	};
	var _x79:GoUInt64 = ((0 : GoUInt64));
	var _x80:GoUInt64 = ((0 : GoUInt64));
	{
		var __tmp__ = stdgo.math.bits.Bits.mul64(_arg1.value[((1 : GoInt))], _x12);
		_x80 = __tmp__._0;
		_x79 = __tmp__._1;
	};
	var _x81:GoUInt64 = ((0 : GoUInt64));
	var _x82:GoUInt64 = ((0 : GoUInt64));
	{
		var __tmp__ = stdgo.math.bits.Bits.mul64(_arg1.value[((1 : GoInt))], _x13);
		_x82 = __tmp__._0;
		_x81 = __tmp__._1;
	};
	var _x83:GoUInt64 = ((0 : GoUInt64));
	var _x84:GoUInt64 = ((0 : GoUInt64));
	{
		var __tmp__ = stdgo.math.bits.Bits.mul64(_arg1.value[((1 : GoInt))], _x14);
		_x84 = __tmp__._0;
		_x83 = __tmp__._1;
	};
	var _x85:GoUInt64 = ((0 : GoUInt64));
	var _x86:GoUInt64 = ((0 : GoUInt64));
	{
		var __tmp__ = stdgo.math.bits.Bits.mul64(_arg1.value[((1 : GoInt))], _x15);
		_x86 = __tmp__._0;
		_x85 = __tmp__._1;
	};
	var _x87:GoUInt64 = ((0 : GoUInt64));
	var _x88:GoUInt64 = ((0 : GoUInt64));
	{
		var __tmp__ = stdgo.math.bits.Bits.mul64(_arg1.value[((1 : GoInt))], _arg1.value[((1 : GoInt))]);
		_x88 = __tmp__._0;
		_x87 = __tmp__._1;
	};
	var _x89:GoUInt64 = ((0 : GoUInt64));
	var _x90:GoUInt64 = ((0 : GoUInt64));
	{
		var __tmp__ = stdgo.math.bits.Bits.mul64(_arg1.value[((0 : GoInt))], _x3);
		_x90 = __tmp__._0;
		_x89 = __tmp__._1;
	};
	var _x91:GoUInt64 = ((0 : GoUInt64));
	var _x92:GoUInt64 = ((0 : GoUInt64));
	{
		var __tmp__ = stdgo.math.bits.Bits.mul64(_arg1.value[((0 : GoInt))], _x6);
		_x92 = __tmp__._0;
		_x91 = __tmp__._1;
	};
	var _x93:GoUInt64 = ((0 : GoUInt64));
	var _x94:GoUInt64 = ((0 : GoUInt64));
	{
		var __tmp__ = stdgo.math.bits.Bits.mul64(_arg1.value[((0 : GoInt))], _x9);
		_x94 = __tmp__._0;
		_x93 = __tmp__._1;
	};
	var _x95:GoUInt64 = ((0 : GoUInt64));
	var _x96:GoUInt64 = ((0 : GoUInt64));
	{
		var __tmp__ = stdgo.math.bits.Bits.mul64(_arg1.value[((0 : GoInt))], _x12);
		_x96 = __tmp__._0;
		_x95 = __tmp__._1;
	};
	var _x97:GoUInt64 = ((0 : GoUInt64));
	var _x98:GoUInt64 = ((0 : GoUInt64));
	{
		var __tmp__ = stdgo.math.bits.Bits.mul64(_arg1.value[((0 : GoInt))], _x13);
		_x98 = __tmp__._0;
		_x97 = __tmp__._1;
	};
	var _x99:GoUInt64 = ((0 : GoUInt64));
	var _x100:GoUInt64 = ((0 : GoUInt64));
	{
		var __tmp__ = stdgo.math.bits.Bits.mul64(_arg1.value[((0 : GoInt))], _x14);
		_x100 = __tmp__._0;
		_x99 = __tmp__._1;
	};
	var _x101:GoUInt64 = ((0 : GoUInt64));
	var _x102:GoUInt64 = ((0 : GoUInt64));
	{
		var __tmp__ = stdgo.math.bits.Bits.mul64(_arg1.value[((0 : GoInt))], _x15);
		_x102 = __tmp__._0;
		_x101 = __tmp__._1;
	};
	var _x103:GoUInt64 = ((0 : GoUInt64));
	var _x104:GoUInt64 = ((0 : GoUInt64));
	{
		var __tmp__ = stdgo.math.bits.Bits.mul64(_arg1.value[((0 : GoInt))], _x16);
		_x104 = __tmp__._0;
		_x103 = __tmp__._1;
	};
	var _x105:GoUInt64 = ((0 : GoUInt64));
	var _x106:GoUInt64 = ((0 : GoUInt64));
	{
		var __tmp__ = stdgo.math.bits.Bits.mul64(_arg1.value[((0 : GoInt))], _arg1.value[((0 : GoInt))]);
		_x106 = __tmp__._0;
		_x105 = __tmp__._1;
	};
	var _x107:GoUInt64 = ((0 : GoUInt64));
	var _x108:T_p521Uint1 = new T_p521Uint1();
	{
		var __tmp__ = _p521AddcarryxU64(_x51, _x43, new T_p521Uint1(((0 : GoUInt8))));
		_x107 = __tmp__._0;
		_x108 = __tmp__._1;
	};
	var _x109:GoUInt64 = ((0 : GoUInt64));
	{
		var __tmp__ = _p521AddcarryxU64(_x52, _x44, _x108);
		_x109 = __tmp__._0;
	};
	var _x111:GoUInt64 = ((0 : GoUInt64));
	var _x112:T_p521Uint1 = new T_p521Uint1();
	{
		var __tmp__ = _p521AddcarryxU64(_x61, _x107, new T_p521Uint1(((0 : GoUInt8))));
		_x111 = __tmp__._0;
		_x112 = __tmp__._1;
	};
	var _x113:GoUInt64 = ((0 : GoUInt64));
	{
		var __tmp__ = _p521AddcarryxU64(_x62, _x109, _x112);
		_x113 = __tmp__._0;
	};
	var _x115:GoUInt64 = ((0 : GoUInt64));
	var _x116:T_p521Uint1 = new T_p521Uint1();
	{
		var __tmp__ = _p521AddcarryxU64(_x73, _x111, new T_p521Uint1(((0 : GoUInt8))));
		_x115 = __tmp__._0;
		_x116 = __tmp__._1;
	};
	var _x117:GoUInt64 = ((0 : GoUInt64));
	{
		var __tmp__ = _p521AddcarryxU64(_x74, _x113, _x116);
		_x117 = __tmp__._0;
	};
	var _x119:GoUInt64 = ((0 : GoUInt64));
	var _x120:T_p521Uint1 = new T_p521Uint1();
	{
		var __tmp__ = _p521AddcarryxU64(_x105, _x115, new T_p521Uint1(((0 : GoUInt8))));
		_x119 = __tmp__._0;
		_x120 = __tmp__._1;
	};
	var _x121:GoUInt64 = ((0 : GoUInt64));
	{
		var __tmp__ = _p521AddcarryxU64(_x106, _x117, _x120);
		_x121 = __tmp__._0;
	};
	var _x123:GoUInt64 = (((_x119 >> ((58 : GoUnTypedInt)))) | (((_x121 << ((6 : GoUnTypedInt)))) & (("18446744073709551615" : GoUInt64))));
	var _x124:GoUInt64 = ((_x121 >> ((58 : GoUnTypedInt))));
	var _x125:GoUInt64 = (_x119 & (("288230376151711743" : GoUInt64)));
	var _x126:GoUInt64 = ((0 : GoUInt64));
	var _x127:T_p521Uint1 = new T_p521Uint1();
	{
		var __tmp__ = _p521AddcarryxU64(_x53, _x45, new T_p521Uint1(((0 : GoUInt8))));
		_x126 = __tmp__._0;
		_x127 = __tmp__._1;
	};
	var _x128:GoUInt64 = ((0 : GoUInt64));
	{
		var __tmp__ = _p521AddcarryxU64(_x54, _x46, _x127);
		_x128 = __tmp__._0;
	};
	var _x130:GoUInt64 = ((0 : GoUInt64));
	var _x131:T_p521Uint1 = new T_p521Uint1();
	{
		var __tmp__ = _p521AddcarryxU64(_x63, _x126, new T_p521Uint1(((0 : GoUInt8))));
		_x130 = __tmp__._0;
		_x131 = __tmp__._1;
	};
	var _x132:GoUInt64 = ((0 : GoUInt64));
	{
		var __tmp__ = _p521AddcarryxU64(_x64, _x128, _x131);
		_x132 = __tmp__._0;
	};
	var _x134:GoUInt64 = ((0 : GoUInt64));
	var _x135:T_p521Uint1 = new T_p521Uint1();
	{
		var __tmp__ = _p521AddcarryxU64(_x75, _x130, new T_p521Uint1(((0 : GoUInt8))));
		_x134 = __tmp__._0;
		_x135 = __tmp__._1;
	};
	var _x136:GoUInt64 = ((0 : GoUInt64));
	{
		var __tmp__ = _p521AddcarryxU64(_x76, _x132, _x135);
		_x136 = __tmp__._0;
	};
	var _x138:GoUInt64 = ((0 : GoUInt64));
	var _x139:T_p521Uint1 = new T_p521Uint1();
	{
		var __tmp__ = _p521AddcarryxU64(_x89, _x134, new T_p521Uint1(((0 : GoUInt8))));
		_x138 = __tmp__._0;
		_x139 = __tmp__._1;
	};
	var _x140:GoUInt64 = ((0 : GoUInt64));
	{
		var __tmp__ = _p521AddcarryxU64(_x90, _x136, _x139);
		_x140 = __tmp__._0;
	};
	var _x142:GoUInt64 = ((0 : GoUInt64));
	var _x143:T_p521Uint1 = new T_p521Uint1();
	{
		var __tmp__ = _p521AddcarryxU64(_x55, _x17, new T_p521Uint1(((0 : GoUInt8))));
		_x142 = __tmp__._0;
		_x143 = __tmp__._1;
	};
	var _x144:GoUInt64 = ((0 : GoUInt64));
	{
		var __tmp__ = _p521AddcarryxU64(_x56, _x18, _x143);
		_x144 = __tmp__._0;
	};
	var _x146:GoUInt64 = ((0 : GoUInt64));
	var _x147:T_p521Uint1 = new T_p521Uint1();
	{
		var __tmp__ = _p521AddcarryxU64(_x65, _x142, new T_p521Uint1(((0 : GoUInt8))));
		_x146 = __tmp__._0;
		_x147 = __tmp__._1;
	};
	var _x148:GoUInt64 = ((0 : GoUInt64));
	{
		var __tmp__ = _p521AddcarryxU64(_x66, _x144, _x147);
		_x148 = __tmp__._0;
	};
	var _x150:GoUInt64 = ((0 : GoUInt64));
	var _x151:T_p521Uint1 = new T_p521Uint1();
	{
		var __tmp__ = _p521AddcarryxU64(_x77, _x146, new T_p521Uint1(((0 : GoUInt8))));
		_x150 = __tmp__._0;
		_x151 = __tmp__._1;
	};
	var _x152:GoUInt64 = ((0 : GoUInt64));
	{
		var __tmp__ = _p521AddcarryxU64(_x78, _x148, _x151);
		_x152 = __tmp__._0;
	};
	var _x154:GoUInt64 = ((0 : GoUInt64));
	var _x155:T_p521Uint1 = new T_p521Uint1();
	{
		var __tmp__ = _p521AddcarryxU64(_x91, _x150, new T_p521Uint1(((0 : GoUInt8))));
		_x154 = __tmp__._0;
		_x155 = __tmp__._1;
	};
	var _x156:GoUInt64 = ((0 : GoUInt64));
	{
		var __tmp__ = _p521AddcarryxU64(_x92, _x152, _x155);
		_x156 = __tmp__._0;
	};
	var _x158:GoUInt64 = ((0 : GoUInt64));
	var _x159:T_p521Uint1 = new T_p521Uint1();
	{
		var __tmp__ = _p521AddcarryxU64(_x57, _x19, new T_p521Uint1(((0 : GoUInt8))));
		_x158 = __tmp__._0;
		_x159 = __tmp__._1;
	};
	var _x160:GoUInt64 = ((0 : GoUInt64));
	{
		var __tmp__ = _p521AddcarryxU64(_x58, _x20, _x159);
		_x160 = __tmp__._0;
	};
	var _x162:GoUInt64 = ((0 : GoUInt64));
	var _x163:T_p521Uint1 = new T_p521Uint1();
	{
		var __tmp__ = _p521AddcarryxU64(_x67, _x158, new T_p521Uint1(((0 : GoUInt8))));
		_x162 = __tmp__._0;
		_x163 = __tmp__._1;
	};
	var _x164:GoUInt64 = ((0 : GoUInt64));
	{
		var __tmp__ = _p521AddcarryxU64(_x68, _x160, _x163);
		_x164 = __tmp__._0;
	};
	var _x166:GoUInt64 = ((0 : GoUInt64));
	var _x167:T_p521Uint1 = new T_p521Uint1();
	{
		var __tmp__ = _p521AddcarryxU64(_x79, _x162, new T_p521Uint1(((0 : GoUInt8))));
		_x166 = __tmp__._0;
		_x167 = __tmp__._1;
	};
	var _x168:GoUInt64 = ((0 : GoUInt64));
	{
		var __tmp__ = _p521AddcarryxU64(_x80, _x164, _x167);
		_x168 = __tmp__._0;
	};
	var _x170:GoUInt64 = ((0 : GoUInt64));
	var _x171:T_p521Uint1 = new T_p521Uint1();
	{
		var __tmp__ = _p521AddcarryxU64(_x93, _x166, new T_p521Uint1(((0 : GoUInt8))));
		_x170 = __tmp__._0;
		_x171 = __tmp__._1;
	};
	var _x172:GoUInt64 = ((0 : GoUInt64));
	{
		var __tmp__ = _p521AddcarryxU64(_x94, _x168, _x171);
		_x172 = __tmp__._0;
	};
	var _x174:GoUInt64 = ((0 : GoUInt64));
	var _x175:T_p521Uint1 = new T_p521Uint1();
	{
		var __tmp__ = _p521AddcarryxU64(_x23, _x21, new T_p521Uint1(((0 : GoUInt8))));
		_x174 = __tmp__._0;
		_x175 = __tmp__._1;
	};
	var _x176:GoUInt64 = ((0 : GoUInt64));
	{
		var __tmp__ = _p521AddcarryxU64(_x24, _x22, _x175);
		_x176 = __tmp__._0;
	};
	var _x178:GoUInt64 = ((0 : GoUInt64));
	var _x179:T_p521Uint1 = new T_p521Uint1();
	{
		var __tmp__ = _p521AddcarryxU64(_x69, _x174, new T_p521Uint1(((0 : GoUInt8))));
		_x178 = __tmp__._0;
		_x179 = __tmp__._1;
	};
	var _x180:GoUInt64 = ((0 : GoUInt64));
	{
		var __tmp__ = _p521AddcarryxU64(_x70, _x176, _x179);
		_x180 = __tmp__._0;
	};
	var _x182:GoUInt64 = ((0 : GoUInt64));
	var _x183:T_p521Uint1 = new T_p521Uint1();
	{
		var __tmp__ = _p521AddcarryxU64(_x81, _x178, new T_p521Uint1(((0 : GoUInt8))));
		_x182 = __tmp__._0;
		_x183 = __tmp__._1;
	};
	var _x184:GoUInt64 = ((0 : GoUInt64));
	{
		var __tmp__ = _p521AddcarryxU64(_x82, _x180, _x183);
		_x184 = __tmp__._0;
	};
	var _x186:GoUInt64 = ((0 : GoUInt64));
	var _x187:T_p521Uint1 = new T_p521Uint1();
	{
		var __tmp__ = _p521AddcarryxU64(_x95, _x182, new T_p521Uint1(((0 : GoUInt8))));
		_x186 = __tmp__._0;
		_x187 = __tmp__._1;
	};
	var _x188:GoUInt64 = ((0 : GoUInt64));
	{
		var __tmp__ = _p521AddcarryxU64(_x96, _x184, _x187);
		_x188 = __tmp__._0;
	};
	var _x190:GoUInt64 = ((0 : GoUInt64));
	var _x191:T_p521Uint1 = new T_p521Uint1();
	{
		var __tmp__ = _p521AddcarryxU64(_x29, _x25, new T_p521Uint1(((0 : GoUInt8))));
		_x190 = __tmp__._0;
		_x191 = __tmp__._1;
	};
	var _x192:GoUInt64 = ((0 : GoUInt64));
	{
		var __tmp__ = _p521AddcarryxU64(_x30, _x26, _x191);
		_x192 = __tmp__._0;
	};
	var _x194:GoUInt64 = ((0 : GoUInt64));
	var _x195:T_p521Uint1 = new T_p521Uint1();
	{
		var __tmp__ = _p521AddcarryxU64(_x71, _x190, new T_p521Uint1(((0 : GoUInt8))));
		_x194 = __tmp__._0;
		_x195 = __tmp__._1;
	};
	var _x196:GoUInt64 = ((0 : GoUInt64));
	{
		var __tmp__ = _p521AddcarryxU64(_x72, _x192, _x195);
		_x196 = __tmp__._0;
	};
	var _x198:GoUInt64 = ((0 : GoUInt64));
	var _x199:T_p521Uint1 = new T_p521Uint1();
	{
		var __tmp__ = _p521AddcarryxU64(_x83, _x194, new T_p521Uint1(((0 : GoUInt8))));
		_x198 = __tmp__._0;
		_x199 = __tmp__._1;
	};
	var _x200:GoUInt64 = ((0 : GoUInt64));
	{
		var __tmp__ = _p521AddcarryxU64(_x84, _x196, _x199);
		_x200 = __tmp__._0;
	};
	var _x202:GoUInt64 = ((0 : GoUInt64));
	var _x203:T_p521Uint1 = new T_p521Uint1();
	{
		var __tmp__ = _p521AddcarryxU64(_x97, _x198, new T_p521Uint1(((0 : GoUInt8))));
		_x202 = __tmp__._0;
		_x203 = __tmp__._1;
	};
	var _x204:GoUInt64 = ((0 : GoUInt64));
	{
		var __tmp__ = _p521AddcarryxU64(_x98, _x200, _x203);
		_x204 = __tmp__._0;
	};
	var _x206:GoUInt64 = ((0 : GoUInt64));
	var _x207:T_p521Uint1 = new T_p521Uint1();
	{
		var __tmp__ = _p521AddcarryxU64(_x31, _x27, new T_p521Uint1(((0 : GoUInt8))));
		_x206 = __tmp__._0;
		_x207 = __tmp__._1;
	};
	var _x208:GoUInt64 = ((0 : GoUInt64));
	{
		var __tmp__ = _p521AddcarryxU64(_x32, _x28, _x207);
		_x208 = __tmp__._0;
	};
	var _x210:GoUInt64 = ((0 : GoUInt64));
	var _x211:T_p521Uint1 = new T_p521Uint1();
	{
		var __tmp__ = _p521AddcarryxU64(_x37, _x206, new T_p521Uint1(((0 : GoUInt8))));
		_x210 = __tmp__._0;
		_x211 = __tmp__._1;
	};
	var _x212:GoUInt64 = ((0 : GoUInt64));
	{
		var __tmp__ = _p521AddcarryxU64(_x38, _x208, _x211);
		_x212 = __tmp__._0;
	};
	var _x214:GoUInt64 = ((0 : GoUInt64));
	var _x215:T_p521Uint1 = new T_p521Uint1();
	{
		var __tmp__ = _p521AddcarryxU64(_x85, _x210, new T_p521Uint1(((0 : GoUInt8))));
		_x214 = __tmp__._0;
		_x215 = __tmp__._1;
	};
	var _x216:GoUInt64 = ((0 : GoUInt64));
	{
		var __tmp__ = _p521AddcarryxU64(_x86, _x212, _x215);
		_x216 = __tmp__._0;
	};
	var _x218:GoUInt64 = ((0 : GoUInt64));
	var _x219:T_p521Uint1 = new T_p521Uint1();
	{
		var __tmp__ = _p521AddcarryxU64(_x99, _x214, new T_p521Uint1(((0 : GoUInt8))));
		_x218 = __tmp__._0;
		_x219 = __tmp__._1;
	};
	var _x220:GoUInt64 = ((0 : GoUInt64));
	{
		var __tmp__ = _p521AddcarryxU64(_x100, _x216, _x219);
		_x220 = __tmp__._0;
	};
	var _x222:GoUInt64 = ((0 : GoUInt64));
	var _x223:T_p521Uint1 = new T_p521Uint1();
	{
		var __tmp__ = _p521AddcarryxU64(_x39, _x33, new T_p521Uint1(((0 : GoUInt8))));
		_x222 = __tmp__._0;
		_x223 = __tmp__._1;
	};
	var _x224:GoUInt64 = ((0 : GoUInt64));
	{
		var __tmp__ = _p521AddcarryxU64(_x40, _x34, _x223);
		_x224 = __tmp__._0;
	};
	var _x226:GoUInt64 = ((0 : GoUInt64));
	var _x227:T_p521Uint1 = new T_p521Uint1();
	{
		var __tmp__ = _p521AddcarryxU64(_x47, _x222, new T_p521Uint1(((0 : GoUInt8))));
		_x226 = __tmp__._0;
		_x227 = __tmp__._1;
	};
	var _x228:GoUInt64 = ((0 : GoUInt64));
	{
		var __tmp__ = _p521AddcarryxU64(_x48, _x224, _x227);
		_x228 = __tmp__._0;
	};
	var _x230:GoUInt64 = ((0 : GoUInt64));
	var _x231:T_p521Uint1 = new T_p521Uint1();
	{
		var __tmp__ = _p521AddcarryxU64(_x87, _x226, new T_p521Uint1(((0 : GoUInt8))));
		_x230 = __tmp__._0;
		_x231 = __tmp__._1;
	};
	var _x232:GoUInt64 = ((0 : GoUInt64));
	{
		var __tmp__ = _p521AddcarryxU64(_x88, _x228, _x231);
		_x232 = __tmp__._0;
	};
	var _x234:GoUInt64 = ((0 : GoUInt64));
	var _x235:T_p521Uint1 = new T_p521Uint1();
	{
		var __tmp__ = _p521AddcarryxU64(_x101, _x230, new T_p521Uint1(((0 : GoUInt8))));
		_x234 = __tmp__._0;
		_x235 = __tmp__._1;
	};
	var _x236:GoUInt64 = ((0 : GoUInt64));
	{
		var __tmp__ = _p521AddcarryxU64(_x102, _x232, _x235);
		_x236 = __tmp__._0;
	};
	var _x238:GoUInt64 = ((0 : GoUInt64));
	var _x239:T_p521Uint1 = new T_p521Uint1();
	{
		var __tmp__ = _p521AddcarryxU64(_x41, _x35, new T_p521Uint1(((0 : GoUInt8))));
		_x238 = __tmp__._0;
		_x239 = __tmp__._1;
	};
	var _x240:GoUInt64 = ((0 : GoUInt64));
	{
		var __tmp__ = _p521AddcarryxU64(_x42, _x36, _x239);
		_x240 = __tmp__._0;
	};
	var _x242:GoUInt64 = ((0 : GoUInt64));
	var _x243:T_p521Uint1 = new T_p521Uint1();
	{
		var __tmp__ = _p521AddcarryxU64(_x49, _x238, new T_p521Uint1(((0 : GoUInt8))));
		_x242 = __tmp__._0;
		_x243 = __tmp__._1;
	};
	var _x244:GoUInt64 = ((0 : GoUInt64));
	{
		var __tmp__ = _p521AddcarryxU64(_x50, _x240, _x243);
		_x244 = __tmp__._0;
	};
	var _x246:GoUInt64 = ((0 : GoUInt64));
	var _x247:T_p521Uint1 = new T_p521Uint1();
	{
		var __tmp__ = _p521AddcarryxU64(_x59, _x242, new T_p521Uint1(((0 : GoUInt8))));
		_x246 = __tmp__._0;
		_x247 = __tmp__._1;
	};
	var _x248:GoUInt64 = ((0 : GoUInt64));
	{
		var __tmp__ = _p521AddcarryxU64(_x60, _x244, _x247);
		_x248 = __tmp__._0;
	};
	var _x250:GoUInt64 = ((0 : GoUInt64));
	var _x251:T_p521Uint1 = new T_p521Uint1();
	{
		var __tmp__ = _p521AddcarryxU64(_x103, _x246, new T_p521Uint1(((0 : GoUInt8))));
		_x250 = __tmp__._0;
		_x251 = __tmp__._1;
	};
	var _x252:GoUInt64 = ((0 : GoUInt64));
	{
		var __tmp__ = _p521AddcarryxU64(_x104, _x248, _x251);
		_x252 = __tmp__._0;
	};
	var _x254:GoUInt64 = ((0 : GoUInt64));
	var _x255:T_p521Uint1 = new T_p521Uint1();
	{
		var __tmp__ = _p521AddcarryxU64(_x123, _x250, new T_p521Uint1(((0 : GoUInt8))));
		_x254 = __tmp__._0;
		_x255 = __tmp__._1;
	};
	var _x256:GoUInt64 = ((0 : GoUInt64));
	{
		var __tmp__ = _p521AddcarryxU64(_x124, _x252, _x255);
		_x256 = __tmp__._0;
	};
	var _x258:GoUInt64 = (((_x254 >> ((58 : GoUnTypedInt)))) | (((_x256 << ((6 : GoUnTypedInt)))) & (("18446744073709551615" : GoUInt64))));
	var _x259:GoUInt64 = ((_x256 >> ((58 : GoUnTypedInt))));
	var _x260:GoUInt64 = (_x254 & (("288230376151711743" : GoUInt64)));
	var _x261:GoUInt64 = ((0 : GoUInt64));
	var _x262:T_p521Uint1 = new T_p521Uint1();
	{
		var __tmp__ = _p521AddcarryxU64(_x258, _x234, new T_p521Uint1(((0 : GoUInt8))));
		_x261 = __tmp__._0;
		_x262 = __tmp__._1;
	};
	var _x263:GoUInt64 = ((0 : GoUInt64));
	{
		var __tmp__ = _p521AddcarryxU64(_x259, _x236, _x262);
		_x263 = __tmp__._0;
	};
	var _x265:GoUInt64 = (((_x261 >> ((58 : GoUnTypedInt)))) | (((_x263 << ((6 : GoUnTypedInt)))) & (("18446744073709551615" : GoUInt64))));
	var _x266:GoUInt64 = ((_x263 >> ((58 : GoUnTypedInt))));
	var _x267:GoUInt64 = (_x261 & (("288230376151711743" : GoUInt64)));
	var _x268:GoUInt64 = ((0 : GoUInt64));
	var _x269:T_p521Uint1 = new T_p521Uint1();
	{
		var __tmp__ = _p521AddcarryxU64(_x265, _x218, new T_p521Uint1(((0 : GoUInt8))));
		_x268 = __tmp__._0;
		_x269 = __tmp__._1;
	};
	var _x270:GoUInt64 = ((0 : GoUInt64));
	{
		var __tmp__ = _p521AddcarryxU64(_x266, _x220, _x269);
		_x270 = __tmp__._0;
	};
	var _x272:GoUInt64 = (((_x268 >> ((58 : GoUnTypedInt)))) | (((_x270 << ((6 : GoUnTypedInt)))) & (("18446744073709551615" : GoUInt64))));
	var _x273:GoUInt64 = ((_x270 >> ((58 : GoUnTypedInt))));
	var _x274:GoUInt64 = (_x268 & (("288230376151711743" : GoUInt64)));
	var _x275:GoUInt64 = ((0 : GoUInt64));
	var _x276:T_p521Uint1 = new T_p521Uint1();
	{
		var __tmp__ = _p521AddcarryxU64(_x272, _x202, new T_p521Uint1(((0 : GoUInt8))));
		_x275 = __tmp__._0;
		_x276 = __tmp__._1;
	};
	var _x277:GoUInt64 = ((0 : GoUInt64));
	{
		var __tmp__ = _p521AddcarryxU64(_x273, _x204, _x276);
		_x277 = __tmp__._0;
	};
	var _x279:GoUInt64 = (((_x275 >> ((58 : GoUnTypedInt)))) | (((_x277 << ((6 : GoUnTypedInt)))) & (("18446744073709551615" : GoUInt64))));
	var _x280:GoUInt64 = ((_x277 >> ((58 : GoUnTypedInt))));
	var _x281:GoUInt64 = (_x275 & (("288230376151711743" : GoUInt64)));
	var _x282:GoUInt64 = ((0 : GoUInt64));
	var _x283:T_p521Uint1 = new T_p521Uint1();
	{
		var __tmp__ = _p521AddcarryxU64(_x279, _x186, new T_p521Uint1(((0 : GoUInt8))));
		_x282 = __tmp__._0;
		_x283 = __tmp__._1;
	};
	var _x284:GoUInt64 = ((0 : GoUInt64));
	{
		var __tmp__ = _p521AddcarryxU64(_x280, _x188, _x283);
		_x284 = __tmp__._0;
	};
	var _x286:GoUInt64 = (((_x282 >> ((58 : GoUnTypedInt)))) | (((_x284 << ((6 : GoUnTypedInt)))) & (("18446744073709551615" : GoUInt64))));
	var _x287:GoUInt64 = ((_x284 >> ((58 : GoUnTypedInt))));
	var _x288:GoUInt64 = (_x282 & (("288230376151711743" : GoUInt64)));
	var _x289:GoUInt64 = ((0 : GoUInt64));
	var _x290:T_p521Uint1 = new T_p521Uint1();
	{
		var __tmp__ = _p521AddcarryxU64(_x286, _x170, new T_p521Uint1(((0 : GoUInt8))));
		_x289 = __tmp__._0;
		_x290 = __tmp__._1;
	};
	var _x291:GoUInt64 = ((0 : GoUInt64));
	{
		var __tmp__ = _p521AddcarryxU64(_x287, _x172, _x290);
		_x291 = __tmp__._0;
	};
	var _x293:GoUInt64 = (((_x289 >> ((58 : GoUnTypedInt)))) | (((_x291 << ((6 : GoUnTypedInt)))) & (("18446744073709551615" : GoUInt64))));
	var _x294:GoUInt64 = ((_x291 >> ((58 : GoUnTypedInt))));
	var _x295:GoUInt64 = (_x289 & (("288230376151711743" : GoUInt64)));
	var _x296:GoUInt64 = ((0 : GoUInt64));
	var _x297:T_p521Uint1 = new T_p521Uint1();
	{
		var __tmp__ = _p521AddcarryxU64(_x293, _x154, new T_p521Uint1(((0 : GoUInt8))));
		_x296 = __tmp__._0;
		_x297 = __tmp__._1;
	};
	var _x298:GoUInt64 = ((0 : GoUInt64));
	{
		var __tmp__ = _p521AddcarryxU64(_x294, _x156, _x297);
		_x298 = __tmp__._0;
	};
	var _x300:GoUInt64 = (((_x296 >> ((58 : GoUnTypedInt)))) | (((_x298 << ((6 : GoUnTypedInt)))) & (("18446744073709551615" : GoUInt64))));
	var _x301:GoUInt64 = ((_x298 >> ((58 : GoUnTypedInt))));
	var _x302:GoUInt64 = (_x296 & (("288230376151711743" : GoUInt64)));
	var _x303:GoUInt64 = ((0 : GoUInt64));
	var _x304:T_p521Uint1 = new T_p521Uint1();
	{
		var __tmp__ = _p521AddcarryxU64(_x300, _x138, new T_p521Uint1(((0 : GoUInt8))));
		_x303 = __tmp__._0;
		_x304 = __tmp__._1;
	};
	var _x305:GoUInt64 = ((0 : GoUInt64));
	{
		var __tmp__ = _p521AddcarryxU64(_x301, _x140, _x304);
		_x305 = __tmp__._0;
	};
	var _x307:GoUInt64 = (((_x303 >> ((57 : GoUnTypedInt)))) | (((_x305 << ((7 : GoUnTypedInt)))) & (("18446744073709551615" : GoUInt64))));
	var _x308:GoUInt64 = ((_x305 >> ((57 : GoUnTypedInt))));
	var _x309:GoUInt64 = (_x303 & (("144115188075855871" : GoUInt64)));
	var _x310:GoUInt64 = ((0 : GoUInt64));
	var _x311:T_p521Uint1 = new T_p521Uint1();
	{
		var __tmp__ = _p521AddcarryxU64(_x125, _x307, new T_p521Uint1(((0 : GoUInt8))));
		_x310 = __tmp__._0;
		_x311 = __tmp__._1;
	};
	var _x312:GoUInt64 = (_x311.__t__ + _x308);
	var _x313:GoUInt64 = (((_x310 >> ((58 : GoUnTypedInt)))) | (((_x312 << ((6 : GoUnTypedInt)))) & (("18446744073709551615" : GoUInt64))));
	var _x314:GoUInt64 = (_x310 & (("288230376151711743" : GoUInt64)));
	var _x315:GoUInt64 = (_x313 + _x260);
	var _x316:T_p521Uint1 = new T_p521Uint1(((_x315 >> ((58 : GoUnTypedInt)))));
	var _x317:GoUInt64 = (_x315 & (("288230376151711743" : GoUInt64)));
	var _x318:GoUInt64 = (_x316.__t__ + _x267);
	_out1.value[((0 : GoInt))] = _x314;
	_out1.value[((1 : GoInt))] = _x317;
	_out1.value[((2 : GoInt))] = _x318;
	_out1.value[((3 : GoInt))] = _x274;
	_out1.value[((4 : GoInt))] = _x281;
	_out1.value[((5 : GoInt))] = _x288;
	_out1.value[((6 : GoInt))] = _x295;
	_out1.value[((7 : GoInt))] = _x302;
	_out1.value[((8 : GoInt))] = _x309;
}

/**
	// p521Carry reduces a field element.
	//
	// Postconditions:
	//   eval out1 mod m = eval arg1 mod m
	//
	// Input Bounds:
	//   arg1: [[0x0 ~> 0xc00000000000000], [0x0 ~> 0xc00000000000000], [0x0 ~> 0xc00000000000000], [0x0 ~> 0xc00000000000000], [0x0 ~> 0xc00000000000000], [0x0 ~> 0xc00000000000000], [0x0 ~> 0xc00000000000000], [0x0 ~> 0xc00000000000000], [0x0 ~> 0x600000000000000]]
	// Output Bounds:
	//   out1: [[0x0 ~> 0x400000000000000], [0x0 ~> 0x400000000000000], [0x0 ~> 0x400000000000000], [0x0 ~> 0x400000000000000], [0x0 ~> 0x400000000000000], [0x0 ~> 0x400000000000000], [0x0 ~> 0x400000000000000], [0x0 ~> 0x400000000000000], [0x0 ~> 0x200000000000000]]
**/
function _p521Carry(_out1:Pointer<GoArray<GoUInt64>>, _arg1:Pointer<GoArray<GoUInt64>>):Void {
	var _x1:GoUInt64 = _arg1.value[((0 : GoInt))];
	var _x2:GoUInt64 = (((_x1 >> ((58 : GoUnTypedInt)))) + _arg1.value[((1 : GoInt))]);
	var _x3:GoUInt64 = (((_x2 >> ((58 : GoUnTypedInt)))) + _arg1.value[((2 : GoInt))]);
	var _x4:GoUInt64 = (((_x3 >> ((58 : GoUnTypedInt)))) + _arg1.value[((3 : GoInt))]);
	var _x5:GoUInt64 = (((_x4 >> ((58 : GoUnTypedInt)))) + _arg1.value[((4 : GoInt))]);
	var _x6:GoUInt64 = (((_x5 >> ((58 : GoUnTypedInt)))) + _arg1.value[((5 : GoInt))]);
	var _x7:GoUInt64 = (((_x6 >> ((58 : GoUnTypedInt)))) + _arg1.value[((6 : GoInt))]);
	var _x8:GoUInt64 = (((_x7 >> ((58 : GoUnTypedInt)))) + _arg1.value[((7 : GoInt))]);
	var _x9:GoUInt64 = (((_x8 >> ((58 : GoUnTypedInt)))) + _arg1.value[((8 : GoInt))]);
	var _x10:GoUInt64 = ((_x1 & (("288230376151711743" : GoUInt64))) + ((_x9 >> ((57 : GoUnTypedInt)))));
	var _x11:GoUInt64 = (new T_p521Uint1(((_x10 >> ((58 : GoUnTypedInt))))).__t__ + (_x2 & (("288230376151711743" : GoUInt64))));
	var _x12:GoUInt64 = (_x10 & (("288230376151711743" : GoUInt64)));
	var _x13:GoUInt64 = (_x11 & (("288230376151711743" : GoUInt64)));
	var _x14:GoUInt64 = (new T_p521Uint1(((_x11 >> ((58 : GoUnTypedInt))))).__t__ + (_x3 & (("288230376151711743" : GoUInt64))));
	var _x15:GoUInt64 = (_x4 & (("288230376151711743" : GoUInt64)));
	var _x16:GoUInt64 = (_x5 & (("288230376151711743" : GoUInt64)));
	var _x17:GoUInt64 = (_x6 & (("288230376151711743" : GoUInt64)));
	var _x18:GoUInt64 = (_x7 & (("288230376151711743" : GoUInt64)));
	var _x19:GoUInt64 = (_x8 & (("288230376151711743" : GoUInt64)));
	var _x20:GoUInt64 = (_x9 & (("144115188075855871" : GoUInt64)));
	_out1.value[((0 : GoInt))] = _x12;
	_out1.value[((1 : GoInt))] = _x13;
	_out1.value[((2 : GoInt))] = _x14;
	_out1.value[((3 : GoInt))] = _x15;
	_out1.value[((4 : GoInt))] = _x16;
	_out1.value[((5 : GoInt))] = _x17;
	_out1.value[((6 : GoInt))] = _x18;
	_out1.value[((7 : GoInt))] = _x19;
	_out1.value[((8 : GoInt))] = _x20;
}

/**
	// p521Add adds two field elements.
	//
	// Postconditions:
	//   eval out1 mod m = (eval arg1 + eval arg2) mod m
	//
	// Input Bounds:
	//   arg1: [[0x0 ~> 0x400000000000000], [0x0 ~> 0x400000000000000], [0x0 ~> 0x400000000000000], [0x0 ~> 0x400000000000000], [0x0 ~> 0x400000000000000], [0x0 ~> 0x400000000000000], [0x0 ~> 0x400000000000000], [0x0 ~> 0x400000000000000], [0x0 ~> 0x200000000000000]]
	//   arg2: [[0x0 ~> 0x400000000000000], [0x0 ~> 0x400000000000000], [0x0 ~> 0x400000000000000], [0x0 ~> 0x400000000000000], [0x0 ~> 0x400000000000000], [0x0 ~> 0x400000000000000], [0x0 ~> 0x400000000000000], [0x0 ~> 0x400000000000000], [0x0 ~> 0x200000000000000]]
	// Output Bounds:
	//   out1: [[0x0 ~> 0xc00000000000000], [0x0 ~> 0xc00000000000000], [0x0 ~> 0xc00000000000000], [0x0 ~> 0xc00000000000000], [0x0 ~> 0xc00000000000000], [0x0 ~> 0xc00000000000000], [0x0 ~> 0xc00000000000000], [0x0 ~> 0xc00000000000000], [0x0 ~> 0x600000000000000]]
**/
function _p521Add(_out1:Pointer<GoArray<GoUInt64>>, _arg1:Pointer<GoArray<GoUInt64>>, _arg2:Pointer<GoArray<GoUInt64>>):Void {
	var _x1:GoUInt64 = (_arg1.value[((0 : GoInt))] + _arg2.value[((0 : GoInt))]);
	var _x2:GoUInt64 = (_arg1.value[((1 : GoInt))] + _arg2.value[((1 : GoInt))]);
	var _x3:GoUInt64 = (_arg1.value[((2 : GoInt))] + _arg2.value[((2 : GoInt))]);
	var _x4:GoUInt64 = (_arg1.value[((3 : GoInt))] + _arg2.value[((3 : GoInt))]);
	var _x5:GoUInt64 = (_arg1.value[((4 : GoInt))] + _arg2.value[((4 : GoInt))]);
	var _x6:GoUInt64 = (_arg1.value[((5 : GoInt))] + _arg2.value[((5 : GoInt))]);
	var _x7:GoUInt64 = (_arg1.value[((6 : GoInt))] + _arg2.value[((6 : GoInt))]);
	var _x8:GoUInt64 = (_arg1.value[((7 : GoInt))] + _arg2.value[((7 : GoInt))]);
	var _x9:GoUInt64 = (_arg1.value[((8 : GoInt))] + _arg2.value[((8 : GoInt))]);
	_out1.value[((0 : GoInt))] = _x1;
	_out1.value[((1 : GoInt))] = _x2;
	_out1.value[((2 : GoInt))] = _x3;
	_out1.value[((3 : GoInt))] = _x4;
	_out1.value[((4 : GoInt))] = _x5;
	_out1.value[((5 : GoInt))] = _x6;
	_out1.value[((6 : GoInt))] = _x7;
	_out1.value[((7 : GoInt))] = _x8;
	_out1.value[((8 : GoInt))] = _x9;
}

/**
	// p521Sub subtracts two field elements.
	//
	// Postconditions:
	//   eval out1 mod m = (eval arg1 - eval arg2) mod m
	//
	// Input Bounds:
	//   arg1: [[0x0 ~> 0x400000000000000], [0x0 ~> 0x400000000000000], [0x0 ~> 0x400000000000000], [0x0 ~> 0x400000000000000], [0x0 ~> 0x400000000000000], [0x0 ~> 0x400000000000000], [0x0 ~> 0x400000000000000], [0x0 ~> 0x400000000000000], [0x0 ~> 0x200000000000000]]
	//   arg2: [[0x0 ~> 0x400000000000000], [0x0 ~> 0x400000000000000], [0x0 ~> 0x400000000000000], [0x0 ~> 0x400000000000000], [0x0 ~> 0x400000000000000], [0x0 ~> 0x400000000000000], [0x0 ~> 0x400000000000000], [0x0 ~> 0x400000000000000], [0x0 ~> 0x200000000000000]]
	// Output Bounds:
	//   out1: [[0x0 ~> 0xc00000000000000], [0x0 ~> 0xc00000000000000], [0x0 ~> 0xc00000000000000], [0x0 ~> 0xc00000000000000], [0x0 ~> 0xc00000000000000], [0x0 ~> 0xc00000000000000], [0x0 ~> 0xc00000000000000], [0x0 ~> 0xc00000000000000], [0x0 ~> 0x600000000000000]]
**/
function _p521Sub(_out1:Pointer<GoArray<GoUInt64>>, _arg1:Pointer<GoArray<GoUInt64>>, _arg2:Pointer<GoArray<GoUInt64>>):Void {
	var _x1:GoUInt64 = (((("576460752303423486" : GoUInt64)) + _arg1.value[((0 : GoInt))]) - _arg2.value[((0 : GoInt))]);
	var _x2:GoUInt64 = (((("576460752303423486" : GoUInt64)) + _arg1.value[((1 : GoInt))]) - _arg2.value[((1 : GoInt))]);
	var _x3:GoUInt64 = (((("576460752303423486" : GoUInt64)) + _arg1.value[((2 : GoInt))]) - _arg2.value[((2 : GoInt))]);
	var _x4:GoUInt64 = (((("576460752303423486" : GoUInt64)) + _arg1.value[((3 : GoInt))]) - _arg2.value[((3 : GoInt))]);
	var _x5:GoUInt64 = (((("576460752303423486" : GoUInt64)) + _arg1.value[((4 : GoInt))]) - _arg2.value[((4 : GoInt))]);
	var _x6:GoUInt64 = (((("576460752303423486" : GoUInt64)) + _arg1.value[((5 : GoInt))]) - _arg2.value[((5 : GoInt))]);
	var _x7:GoUInt64 = (((("576460752303423486" : GoUInt64)) + _arg1.value[((6 : GoInt))]) - _arg2.value[((6 : GoInt))]);
	var _x8:GoUInt64 = (((("576460752303423486" : GoUInt64)) + _arg1.value[((7 : GoInt))]) - _arg2.value[((7 : GoInt))]);
	var _x9:GoUInt64 = (((("288230376151711742" : GoUInt64)) + _arg1.value[((8 : GoInt))]) - _arg2.value[((8 : GoInt))]);
	_out1.value[((0 : GoInt))] = _x1;
	_out1.value[((1 : GoInt))] = _x2;
	_out1.value[((2 : GoInt))] = _x3;
	_out1.value[((3 : GoInt))] = _x4;
	_out1.value[((4 : GoInt))] = _x5;
	_out1.value[((5 : GoInt))] = _x6;
	_out1.value[((6 : GoInt))] = _x7;
	_out1.value[((7 : GoInt))] = _x8;
	_out1.value[((8 : GoInt))] = _x9;
}

/**
	// p521ToBytes serializes a field element to bytes in little-endian order.
	//
	// Postconditions:
	//   out1 = map (λ x, ⌊((eval arg1 mod m) mod 2^(8 * (x + 1))) / 2^(8 * x)⌋) [0..65]
	//
	// Input Bounds:
	//   arg1: [[0x0 ~> 0x400000000000000], [0x0 ~> 0x400000000000000], [0x0 ~> 0x400000000000000], [0x0 ~> 0x400000000000000], [0x0 ~> 0x400000000000000], [0x0 ~> 0x400000000000000], [0x0 ~> 0x400000000000000], [0x0 ~> 0x400000000000000], [0x0 ~> 0x200000000000000]]
	// Output Bounds:
	//   out1: [[0x0 ~> 0xff], [0x0 ~> 0xff], [0x0 ~> 0xff], [0x0 ~> 0xff], [0x0 ~> 0xff], [0x0 ~> 0xff], [0x0 ~> 0xff], [0x0 ~> 0xff], [0x0 ~> 0xff], [0x0 ~> 0xff], [0x0 ~> 0xff], [0x0 ~> 0xff], [0x0 ~> 0xff], [0x0 ~> 0xff], [0x0 ~> 0xff], [0x0 ~> 0xff], [0x0 ~> 0xff], [0x0 ~> 0xff], [0x0 ~> 0xff], [0x0 ~> 0xff], [0x0 ~> 0xff], [0x0 ~> 0xff], [0x0 ~> 0xff], [0x0 ~> 0xff], [0x0 ~> 0xff], [0x0 ~> 0xff], [0x0 ~> 0xff], [0x0 ~> 0xff], [0x0 ~> 0xff], [0x0 ~> 0xff], [0x0 ~> 0xff], [0x0 ~> 0xff], [0x0 ~> 0xff], [0x0 ~> 0xff], [0x0 ~> 0xff], [0x0 ~> 0xff], [0x0 ~> 0xff], [0x0 ~> 0xff], [0x0 ~> 0xff], [0x0 ~> 0xff], [0x0 ~> 0xff], [0x0 ~> 0xff], [0x0 ~> 0xff], [0x0 ~> 0xff], [0x0 ~> 0xff], [0x0 ~> 0xff], [0x0 ~> 0xff], [0x0 ~> 0xff], [0x0 ~> 0xff], [0x0 ~> 0xff], [0x0 ~> 0xff], [0x0 ~> 0xff], [0x0 ~> 0xff], [0x0 ~> 0xff], [0x0 ~> 0xff], [0x0 ~> 0xff], [0x0 ~> 0xff], [0x0 ~> 0xff], [0x0 ~> 0xff], [0x0 ~> 0xff], [0x0 ~> 0xff], [0x0 ~> 0xff], [0x0 ~> 0xff], [0x0 ~> 0xff], [0x0 ~> 0xff], [0x0 ~> 0x1]]
**/
function _p521ToBytes(_out1:Pointer<GoArray<GoUInt8>>, _arg1:Pointer<GoArray<GoUInt64>>):Void {
	var _x1:GoUInt64 = ((0 : GoUInt64));
	var _x2:T_p521Uint1 = new T_p521Uint1();
	_p521SubborrowxU58(Go.pointer(_x1), Go.pointer(_x2), new T_p521Uint1(((0 : GoUInt8))), _arg1.value[((0 : GoInt))], (("288230376151711743" : GoUInt64)));
	var _x3:GoUInt64 = ((0 : GoUInt64));
	var _x4:T_p521Uint1 = new T_p521Uint1();
	_p521SubborrowxU58(Go.pointer(_x3), Go.pointer(_x4), _x2, _arg1.value[((1 : GoInt))], (("288230376151711743" : GoUInt64)));
	var _x5:GoUInt64 = ((0 : GoUInt64));
	var _x6:T_p521Uint1 = new T_p521Uint1();
	_p521SubborrowxU58(Go.pointer(_x5), Go.pointer(_x6), _x4, _arg1.value[((2 : GoInt))], (("288230376151711743" : GoUInt64)));
	var _x7:GoUInt64 = ((0 : GoUInt64));
	var _x8:T_p521Uint1 = new T_p521Uint1();
	_p521SubborrowxU58(Go.pointer(_x7), Go.pointer(_x8), _x6, _arg1.value[((3 : GoInt))], (("288230376151711743" : GoUInt64)));
	var _x9:GoUInt64 = ((0 : GoUInt64));
	var _x10:T_p521Uint1 = new T_p521Uint1();
	_p521SubborrowxU58(Go.pointer(_x9), Go.pointer(_x10), _x8, _arg1.value[((4 : GoInt))], (("288230376151711743" : GoUInt64)));
	var _x11:GoUInt64 = ((0 : GoUInt64));
	var _x12:T_p521Uint1 = new T_p521Uint1();
	_p521SubborrowxU58(Go.pointer(_x11), Go.pointer(_x12), _x10, _arg1.value[((5 : GoInt))], (("288230376151711743" : GoUInt64)));
	var _x13:GoUInt64 = ((0 : GoUInt64));
	var _x14:T_p521Uint1 = new T_p521Uint1();
	_p521SubborrowxU58(Go.pointer(_x13), Go.pointer(_x14), _x12, _arg1.value[((6 : GoInt))], (("288230376151711743" : GoUInt64)));
	var _x15:GoUInt64 = ((0 : GoUInt64));
	var _x16:T_p521Uint1 = new T_p521Uint1();
	_p521SubborrowxU58(Go.pointer(_x15), Go.pointer(_x16), _x14, _arg1.value[((7 : GoInt))], (("288230376151711743" : GoUInt64)));
	var _x17:GoUInt64 = ((0 : GoUInt64));
	var _x18:T_p521Uint1 = new T_p521Uint1();
	_p521SubborrowxU57(Go.pointer(_x17), Go.pointer(_x18), _x16, _arg1.value[((8 : GoInt))], (("144115188075855871" : GoUInt64)));
	var _x19:GoUInt64 = ((0 : GoUInt64));
	_p521CmovznzU64(Go.pointer(_x19), _x18, ((((0 : GoUInt64)) : GoUInt64)), (("18446744073709551615" : GoUInt64)));
	var _x20:GoUInt64 = ((0 : GoUInt64));
	var _x21:T_p521Uint1 = new T_p521Uint1();
	_p521AddcarryxU58(Go.pointer(_x20), Go.pointer(_x21), new T_p521Uint1(((0 : GoUInt8))), _x1, (_x19 & (("288230376151711743" : GoUInt64))));
	var _x22:GoUInt64 = ((0 : GoUInt64));
	var _x23:T_p521Uint1 = new T_p521Uint1();
	_p521AddcarryxU58(Go.pointer(_x22), Go.pointer(_x23), _x21, _x3, (_x19 & (("288230376151711743" : GoUInt64))));
	var _x24:GoUInt64 = ((0 : GoUInt64));
	var _x25:T_p521Uint1 = new T_p521Uint1();
	_p521AddcarryxU58(Go.pointer(_x24), Go.pointer(_x25), _x23, _x5, (_x19 & (("288230376151711743" : GoUInt64))));
	var _x26:GoUInt64 = ((0 : GoUInt64));
	var _x27:T_p521Uint1 = new T_p521Uint1();
	_p521AddcarryxU58(Go.pointer(_x26), Go.pointer(_x27), _x25, _x7, (_x19 & (("288230376151711743" : GoUInt64))));
	var _x28:GoUInt64 = ((0 : GoUInt64));
	var _x29:T_p521Uint1 = new T_p521Uint1();
	_p521AddcarryxU58(Go.pointer(_x28), Go.pointer(_x29), _x27, _x9, (_x19 & (("288230376151711743" : GoUInt64))));
	var _x30:GoUInt64 = ((0 : GoUInt64));
	var _x31:T_p521Uint1 = new T_p521Uint1();
	_p521AddcarryxU58(Go.pointer(_x30), Go.pointer(_x31), _x29, _x11, (_x19 & (("288230376151711743" : GoUInt64))));
	var _x32:GoUInt64 = ((0 : GoUInt64));
	var _x33:T_p521Uint1 = new T_p521Uint1();
	_p521AddcarryxU58(Go.pointer(_x32), Go.pointer(_x33), _x31, _x13, (_x19 & (("288230376151711743" : GoUInt64))));
	var _x34:GoUInt64 = ((0 : GoUInt64));
	var _x35:T_p521Uint1 = new T_p521Uint1();
	_p521AddcarryxU58(Go.pointer(_x34), Go.pointer(_x35), _x33, _x15, (_x19 & (("288230376151711743" : GoUInt64))));
	var _x36:GoUInt64 = ((0 : GoUInt64));
	var _x37:T_p521Uint1 = new T_p521Uint1();
	_p521AddcarryxU57(Go.pointer(_x36), Go.pointer(_x37), _x35, _x17, (_x19 & (("144115188075855871" : GoUInt64))));
	var _x38:GoUInt64 = ((_x34 << ((6 : GoUnTypedInt))));
	var _x39:GoUInt64 = ((_x32 << ((4 : GoUnTypedInt))));
	var _x40:GoUInt64 = ((_x30 << ((2 : GoUnTypedInt))));
	var _x41:GoUInt64 = ((_x26 << ((6 : GoUnTypedInt))));
	var _x42:GoUInt64 = ((_x24 << ((4 : GoUnTypedInt))));
	var _x43:GoUInt64 = ((_x22 << ((2 : GoUnTypedInt))));
	var _x44:GoUInt8 = (((_x20 : GoUInt8)) & ((255 : GoUInt8)));
	var _x45:GoUInt64 = ((_x20 >> ((8 : GoUnTypedInt))));
	var _x46:GoUInt8 = (((_x45 : GoUInt8)) & ((255 : GoUInt8)));
	var _x47:GoUInt64 = ((_x45 >> ((8 : GoUnTypedInt))));
	var _x48:GoUInt8 = (((_x47 : GoUInt8)) & ((255 : GoUInt8)));
	var _x49:GoUInt64 = ((_x47 >> ((8 : GoUnTypedInt))));
	var _x50:GoUInt8 = (((_x49 : GoUInt8)) & ((255 : GoUInt8)));
	var _x51:GoUInt64 = ((_x49 >> ((8 : GoUnTypedInt))));
	var _x52:GoUInt8 = (((_x51 : GoUInt8)) & ((255 : GoUInt8)));
	var _x53:GoUInt64 = ((_x51 >> ((8 : GoUnTypedInt))));
	var _x54:GoUInt8 = (((_x53 : GoUInt8)) & ((255 : GoUInt8)));
	var _x55:GoUInt64 = ((_x53 >> ((8 : GoUnTypedInt))));
	var _x56:GoUInt8 = (((_x55 : GoUInt8)) & ((255 : GoUInt8)));
	var _x57:GoUInt8 = ((((_x55 >> ((8 : GoUnTypedInt)))) : GoUInt8));
	var _x58:GoUInt64 = (_x43 + ((_x57 : GoUInt64)));
	var _x59:GoUInt8 = (((_x58 : GoUInt8)) & ((255 : GoUInt8)));
	var _x60:GoUInt64 = ((_x58 >> ((8 : GoUnTypedInt))));
	var _x61:GoUInt8 = (((_x60 : GoUInt8)) & ((255 : GoUInt8)));
	var _x62:GoUInt64 = ((_x60 >> ((8 : GoUnTypedInt))));
	var _x63:GoUInt8 = (((_x62 : GoUInt8)) & ((255 : GoUInt8)));
	var _x64:GoUInt64 = ((_x62 >> ((8 : GoUnTypedInt))));
	var _x65:GoUInt8 = (((_x64 : GoUInt8)) & ((255 : GoUInt8)));
	var _x66:GoUInt64 = ((_x64 >> ((8 : GoUnTypedInt))));
	var _x67:GoUInt8 = (((_x66 : GoUInt8)) & ((255 : GoUInt8)));
	var _x68:GoUInt64 = ((_x66 >> ((8 : GoUnTypedInt))));
	var _x69:GoUInt8 = (((_x68 : GoUInt8)) & ((255 : GoUInt8)));
	var _x70:GoUInt64 = ((_x68 >> ((8 : GoUnTypedInt))));
	var _x71:GoUInt8 = (((_x70 : GoUInt8)) & ((255 : GoUInt8)));
	var _x72:GoUInt8 = ((((_x70 >> ((8 : GoUnTypedInt)))) : GoUInt8));
	var _x73:GoUInt64 = (_x42 + ((_x72 : GoUInt64)));
	var _x74:GoUInt8 = (((_x73 : GoUInt8)) & ((255 : GoUInt8)));
	var _x75:GoUInt64 = ((_x73 >> ((8 : GoUnTypedInt))));
	var _x76:GoUInt8 = (((_x75 : GoUInt8)) & ((255 : GoUInt8)));
	var _x77:GoUInt64 = ((_x75 >> ((8 : GoUnTypedInt))));
	var _x78:GoUInt8 = (((_x77 : GoUInt8)) & ((255 : GoUInt8)));
	var _x79:GoUInt64 = ((_x77 >> ((8 : GoUnTypedInt))));
	var _x80:GoUInt8 = (((_x79 : GoUInt8)) & ((255 : GoUInt8)));
	var _x81:GoUInt64 = ((_x79 >> ((8 : GoUnTypedInt))));
	var _x82:GoUInt8 = (((_x81 : GoUInt8)) & ((255 : GoUInt8)));
	var _x83:GoUInt64 = ((_x81 >> ((8 : GoUnTypedInt))));
	var _x84:GoUInt8 = (((_x83 : GoUInt8)) & ((255 : GoUInt8)));
	var _x85:GoUInt64 = ((_x83 >> ((8 : GoUnTypedInt))));
	var _x86:GoUInt8 = (((_x85 : GoUInt8)) & ((255 : GoUInt8)));
	var _x87:GoUInt8 = ((((_x85 >> ((8 : GoUnTypedInt)))) : GoUInt8));
	var _x88:GoUInt64 = (_x41 + ((_x87 : GoUInt64)));
	var _x89:GoUInt8 = (((_x88 : GoUInt8)) & ((255 : GoUInt8)));
	var _x90:GoUInt64 = ((_x88 >> ((8 : GoUnTypedInt))));
	var _x91:GoUInt8 = (((_x90 : GoUInt8)) & ((255 : GoUInt8)));
	var _x92:GoUInt64 = ((_x90 >> ((8 : GoUnTypedInt))));
	var _x93:GoUInt8 = (((_x92 : GoUInt8)) & ((255 : GoUInt8)));
	var _x94:GoUInt64 = ((_x92 >> ((8 : GoUnTypedInt))));
	var _x95:GoUInt8 = (((_x94 : GoUInt8)) & ((255 : GoUInt8)));
	var _x96:GoUInt64 = ((_x94 >> ((8 : GoUnTypedInt))));
	var _x97:GoUInt8 = (((_x96 : GoUInt8)) & ((255 : GoUInt8)));
	var _x98:GoUInt64 = ((_x96 >> ((8 : GoUnTypedInt))));
	var _x99:GoUInt8 = (((_x98 : GoUInt8)) & ((255 : GoUInt8)));
	var _x100:GoUInt64 = ((_x98 >> ((8 : GoUnTypedInt))));
	var _x101:GoUInt8 = (((_x100 : GoUInt8)) & ((255 : GoUInt8)));
	var _x102:GoUInt8 = ((((_x100 >> ((8 : GoUnTypedInt)))) : GoUInt8));
	var _x103:GoUInt8 = (((_x28 : GoUInt8)) & ((255 : GoUInt8)));
	var _x104:GoUInt64 = ((_x28 >> ((8 : GoUnTypedInt))));
	var _x105:GoUInt8 = (((_x104 : GoUInt8)) & ((255 : GoUInt8)));
	var _x106:GoUInt64 = ((_x104 >> ((8 : GoUnTypedInt))));
	var _x107:GoUInt8 = (((_x106 : GoUInt8)) & ((255 : GoUInt8)));
	var _x108:GoUInt64 = ((_x106 >> ((8 : GoUnTypedInt))));
	var _x109:GoUInt8 = (((_x108 : GoUInt8)) & ((255 : GoUInt8)));
	var _x110:GoUInt64 = ((_x108 >> ((8 : GoUnTypedInt))));
	var _x111:GoUInt8 = (((_x110 : GoUInt8)) & ((255 : GoUInt8)));
	var _x112:GoUInt64 = ((_x110 >> ((8 : GoUnTypedInt))));
	var _x113:GoUInt8 = (((_x112 : GoUInt8)) & ((255 : GoUInt8)));
	var _x114:GoUInt64 = ((_x112 >> ((8 : GoUnTypedInt))));
	var _x115:GoUInt8 = (((_x114 : GoUInt8)) & ((255 : GoUInt8)));
	var _x116:GoUInt8 = ((((_x114 >> ((8 : GoUnTypedInt)))) : GoUInt8));
	var _x117:GoUInt64 = (_x40 + ((_x116 : GoUInt64)));
	var _x118:GoUInt8 = (((_x117 : GoUInt8)) & ((255 : GoUInt8)));
	var _x119:GoUInt64 = ((_x117 >> ((8 : GoUnTypedInt))));
	var _x120:GoUInt8 = (((_x119 : GoUInt8)) & ((255 : GoUInt8)));
	var _x121:GoUInt64 = ((_x119 >> ((8 : GoUnTypedInt))));
	var _x122:GoUInt8 = (((_x121 : GoUInt8)) & ((255 : GoUInt8)));
	var _x123:GoUInt64 = ((_x121 >> ((8 : GoUnTypedInt))));
	var _x124:GoUInt8 = (((_x123 : GoUInt8)) & ((255 : GoUInt8)));
	var _x125:GoUInt64 = ((_x123 >> ((8 : GoUnTypedInt))));
	var _x126:GoUInt8 = (((_x125 : GoUInt8)) & ((255 : GoUInt8)));
	var _x127:GoUInt64 = ((_x125 >> ((8 : GoUnTypedInt))));
	var _x128:GoUInt8 = (((_x127 : GoUInt8)) & ((255 : GoUInt8)));
	var _x129:GoUInt64 = ((_x127 >> ((8 : GoUnTypedInt))));
	var _x130:GoUInt8 = (((_x129 : GoUInt8)) & ((255 : GoUInt8)));
	var _x131:GoUInt8 = ((((_x129 >> ((8 : GoUnTypedInt)))) : GoUInt8));
	var _x132:GoUInt64 = (_x39 + ((_x131 : GoUInt64)));
	var _x133:GoUInt8 = (((_x132 : GoUInt8)) & ((255 : GoUInt8)));
	var _x134:GoUInt64 = ((_x132 >> ((8 : GoUnTypedInt))));
	var _x135:GoUInt8 = (((_x134 : GoUInt8)) & ((255 : GoUInt8)));
	var _x136:GoUInt64 = ((_x134 >> ((8 : GoUnTypedInt))));
	var _x137:GoUInt8 = (((_x136 : GoUInt8)) & ((255 : GoUInt8)));
	var _x138:GoUInt64 = ((_x136 >> ((8 : GoUnTypedInt))));
	var _x139:GoUInt8 = (((_x138 : GoUInt8)) & ((255 : GoUInt8)));
	var _x140:GoUInt64 = ((_x138 >> ((8 : GoUnTypedInt))));
	var _x141:GoUInt8 = (((_x140 : GoUInt8)) & ((255 : GoUInt8)));
	var _x142:GoUInt64 = ((_x140 >> ((8 : GoUnTypedInt))));
	var _x143:GoUInt8 = (((_x142 : GoUInt8)) & ((255 : GoUInt8)));
	var _x144:GoUInt64 = ((_x142 >> ((8 : GoUnTypedInt))));
	var _x145:GoUInt8 = (((_x144 : GoUInt8)) & ((255 : GoUInt8)));
	var _x146:GoUInt8 = ((((_x144 >> ((8 : GoUnTypedInt)))) : GoUInt8));
	var _x147:GoUInt64 = (_x38 + ((_x146 : GoUInt64)));
	var _x148:GoUInt8 = (((_x147 : GoUInt8)) & ((255 : GoUInt8)));
	var _x149:GoUInt64 = ((_x147 >> ((8 : GoUnTypedInt))));
	var _x150:GoUInt8 = (((_x149 : GoUInt8)) & ((255 : GoUInt8)));
	var _x151:GoUInt64 = ((_x149 >> ((8 : GoUnTypedInt))));
	var _x152:GoUInt8 = (((_x151 : GoUInt8)) & ((255 : GoUInt8)));
	var _x153:GoUInt64 = ((_x151 >> ((8 : GoUnTypedInt))));
	var _x154:GoUInt8 = (((_x153 : GoUInt8)) & ((255 : GoUInt8)));
	var _x155:GoUInt64 = ((_x153 >> ((8 : GoUnTypedInt))));
	var _x156:GoUInt8 = (((_x155 : GoUInt8)) & ((255 : GoUInt8)));
	var _x157:GoUInt64 = ((_x155 >> ((8 : GoUnTypedInt))));
	var _x158:GoUInt8 = (((_x157 : GoUInt8)) & ((255 : GoUInt8)));
	var _x159:GoUInt64 = ((_x157 >> ((8 : GoUnTypedInt))));
	var _x160:GoUInt8 = (((_x159 : GoUInt8)) & ((255 : GoUInt8)));
	var _x161:GoUInt8 = ((((_x159 >> ((8 : GoUnTypedInt)))) : GoUInt8));
	var _x162:GoUInt8 = (((_x36 : GoUInt8)) & ((255 : GoUInt8)));
	var _x163:GoUInt64 = ((_x36 >> ((8 : GoUnTypedInt))));
	var _x164:GoUInt8 = (((_x163 : GoUInt8)) & ((255 : GoUInt8)));
	var _x165:GoUInt64 = ((_x163 >> ((8 : GoUnTypedInt))));
	var _x166:GoUInt8 = (((_x165 : GoUInt8)) & ((255 : GoUInt8)));
	var _x167:GoUInt64 = ((_x165 >> ((8 : GoUnTypedInt))));
	var _x168:GoUInt8 = (((_x167 : GoUInt8)) & ((255 : GoUInt8)));
	var _x169:GoUInt64 = ((_x167 >> ((8 : GoUnTypedInt))));
	var _x170:GoUInt8 = (((_x169 : GoUInt8)) & ((255 : GoUInt8)));
	var _x171:GoUInt64 = ((_x169 >> ((8 : GoUnTypedInt))));
	var _x172:GoUInt8 = (((_x171 : GoUInt8)) & ((255 : GoUInt8)));
	var _x173:GoUInt64 = ((_x171 >> ((8 : GoUnTypedInt))));
	var _x174:GoUInt8 = (((_x173 : GoUInt8)) & ((255 : GoUInt8)));
	var _x175:T_p521Uint1 = new T_p521Uint1(((_x173 >> ((8 : GoUnTypedInt)))));
	_out1.value[((0 : GoInt))] = _x44;
	_out1.value[((1 : GoInt))] = _x46;
	_out1.value[((2 : GoInt))] = _x48;
	_out1.value[((3 : GoInt))] = _x50;
	_out1.value[((4 : GoInt))] = _x52;
	_out1.value[((5 : GoInt))] = _x54;
	_out1.value[((6 : GoInt))] = _x56;
	_out1.value[((7 : GoInt))] = _x59;
	_out1.value[((8 : GoInt))] = _x61;
	_out1.value[((9 : GoInt))] = _x63;
	_out1.value[((10 : GoInt))] = _x65;
	_out1.value[((11 : GoInt))] = _x67;
	_out1.value[((12 : GoInt))] = _x69;
	_out1.value[((13 : GoInt))] = _x71;
	_out1.value[((14 : GoInt))] = _x74;
	_out1.value[((15 : GoInt))] = _x76;
	_out1.value[((16 : GoInt))] = _x78;
	_out1.value[((17 : GoInt))] = _x80;
	_out1.value[((18 : GoInt))] = _x82;
	_out1.value[((19 : GoInt))] = _x84;
	_out1.value[((20 : GoInt))] = _x86;
	_out1.value[((21 : GoInt))] = _x89;
	_out1.value[((22 : GoInt))] = _x91;
	_out1.value[((23 : GoInt))] = _x93;
	_out1.value[((24 : GoInt))] = _x95;
	_out1.value[((25 : GoInt))] = _x97;
	_out1.value[((26 : GoInt))] = _x99;
	_out1.value[((27 : GoInt))] = _x101;
	_out1.value[((28 : GoInt))] = _x102;
	_out1.value[((29 : GoInt))] = _x103;
	_out1.value[((30 : GoInt))] = _x105;
	_out1.value[((31 : GoInt))] = _x107;
	_out1.value[((32 : GoInt))] = _x109;
	_out1.value[((33 : GoInt))] = _x111;
	_out1.value[((34 : GoInt))] = _x113;
	_out1.value[((35 : GoInt))] = _x115;
	_out1.value[((36 : GoInt))] = _x118;
	_out1.value[((37 : GoInt))] = _x120;
	_out1.value[((38 : GoInt))] = _x122;
	_out1.value[((39 : GoInt))] = _x124;
	_out1.value[((40 : GoInt))] = _x126;
	_out1.value[((41 : GoInt))] = _x128;
	_out1.value[((42 : GoInt))] = _x130;
	_out1.value[((43 : GoInt))] = _x133;
	_out1.value[((44 : GoInt))] = _x135;
	_out1.value[((45 : GoInt))] = _x137;
	_out1.value[((46 : GoInt))] = _x139;
	_out1.value[((47 : GoInt))] = _x141;
	_out1.value[((48 : GoInt))] = _x143;
	_out1.value[((49 : GoInt))] = _x145;
	_out1.value[((50 : GoInt))] = _x148;
	_out1.value[((51 : GoInt))] = _x150;
	_out1.value[((52 : GoInt))] = _x152;
	_out1.value[((53 : GoInt))] = _x154;
	_out1.value[((54 : GoInt))] = _x156;
	_out1.value[((55 : GoInt))] = _x158;
	_out1.value[((56 : GoInt))] = _x160;
	_out1.value[((57 : GoInt))] = _x161;
	_out1.value[((58 : GoInt))] = _x162;
	_out1.value[((59 : GoInt))] = _x164;
	_out1.value[((60 : GoInt))] = _x166;
	_out1.value[((61 : GoInt))] = _x168;
	_out1.value[((62 : GoInt))] = _x170;
	_out1.value[((63 : GoInt))] = _x172;
	_out1.value[((64 : GoInt))] = _x174;
	_out1.value[((65 : GoInt))] = _x175.__t__;
}

/**
	// p521FromBytes deserializes a field element from bytes in little-endian order.
	//
	// Postconditions:
	//   eval out1 mod m = bytes_eval arg1 mod m
	//
	// Input Bounds:
	//   arg1: [[0x0 ~> 0xff], [0x0 ~> 0xff], [0x0 ~> 0xff], [0x0 ~> 0xff], [0x0 ~> 0xff], [0x0 ~> 0xff], [0x0 ~> 0xff], [0x0 ~> 0xff], [0x0 ~> 0xff], [0x0 ~> 0xff], [0x0 ~> 0xff], [0x0 ~> 0xff], [0x0 ~> 0xff], [0x0 ~> 0xff], [0x0 ~> 0xff], [0x0 ~> 0xff], [0x0 ~> 0xff], [0x0 ~> 0xff], [0x0 ~> 0xff], [0x0 ~> 0xff], [0x0 ~> 0xff], [0x0 ~> 0xff], [0x0 ~> 0xff], [0x0 ~> 0xff], [0x0 ~> 0xff], [0x0 ~> 0xff], [0x0 ~> 0xff], [0x0 ~> 0xff], [0x0 ~> 0xff], [0x0 ~> 0xff], [0x0 ~> 0xff], [0x0 ~> 0xff], [0x0 ~> 0xff], [0x0 ~> 0xff], [0x0 ~> 0xff], [0x0 ~> 0xff], [0x0 ~> 0xff], [0x0 ~> 0xff], [0x0 ~> 0xff], [0x0 ~> 0xff], [0x0 ~> 0xff], [0x0 ~> 0xff], [0x0 ~> 0xff], [0x0 ~> 0xff], [0x0 ~> 0xff], [0x0 ~> 0xff], [0x0 ~> 0xff], [0x0 ~> 0xff], [0x0 ~> 0xff], [0x0 ~> 0xff], [0x0 ~> 0xff], [0x0 ~> 0xff], [0x0 ~> 0xff], [0x0 ~> 0xff], [0x0 ~> 0xff], [0x0 ~> 0xff], [0x0 ~> 0xff], [0x0 ~> 0xff], [0x0 ~> 0xff], [0x0 ~> 0xff], [0x0 ~> 0xff], [0x0 ~> 0xff], [0x0 ~> 0xff], [0x0 ~> 0xff], [0x0 ~> 0xff], [0x0 ~> 0x1]]
	// Output Bounds:
	//   out1: [[0x0 ~> 0x400000000000000], [0x0 ~> 0x400000000000000], [0x0 ~> 0x400000000000000], [0x0 ~> 0x400000000000000], [0x0 ~> 0x400000000000000], [0x0 ~> 0x400000000000000], [0x0 ~> 0x400000000000000], [0x0 ~> 0x400000000000000], [0x0 ~> 0x200000000000000]]
**/
function _p521FromBytes(_out1:Pointer<GoArray<GoUInt64>>, _arg1:Pointer<GoArray<GoUInt8>>):Void {
	var _x1:GoUInt64 = ((new T_p521Uint1(_arg1.value[((65 : GoInt))]).__t__ << ((56 : GoUnTypedInt))));
	var _x2:GoUInt64 = ((((_arg1.value[((64 : GoInt))] : GoUInt64)) << ((48 : GoUnTypedInt))));
	var _x3:GoUInt64 = ((((_arg1.value[((63 : GoInt))] : GoUInt64)) << ((40 : GoUnTypedInt))));
	var _x4:GoUInt64 = ((((_arg1.value[((62 : GoInt))] : GoUInt64)) << ((32 : GoUnTypedInt))));
	var _x5:GoUInt64 = ((((_arg1.value[((61 : GoInt))] : GoUInt64)) << ((24 : GoUnTypedInt))));
	var _x6:GoUInt64 = ((((_arg1.value[((60 : GoInt))] : GoUInt64)) << ((16 : GoUnTypedInt))));
	var _x7:GoUInt64 = ((((_arg1.value[((59 : GoInt))] : GoUInt64)) << ((8 : GoUnTypedInt))));
	var _x8:GoUInt8 = _arg1.value[((58 : GoInt))];
	var _x9:GoUInt64 = ((((_arg1.value[((57 : GoInt))] : GoUInt64)) << ((50 : GoUnTypedInt))));
	var _x10:GoUInt64 = ((((_arg1.value[((56 : GoInt))] : GoUInt64)) << ((42 : GoUnTypedInt))));
	var _x11:GoUInt64 = ((((_arg1.value[((55 : GoInt))] : GoUInt64)) << ((34 : GoUnTypedInt))));
	var _x12:GoUInt64 = ((((_arg1.value[((54 : GoInt))] : GoUInt64)) << ((26 : GoUnTypedInt))));
	var _x13:GoUInt64 = ((((_arg1.value[((53 : GoInt))] : GoUInt64)) << ((18 : GoUnTypedInt))));
	var _x14:GoUInt64 = ((((_arg1.value[((52 : GoInt))] : GoUInt64)) << ((10 : GoUnTypedInt))));
	var _x15:GoUInt64 = ((((_arg1.value[((51 : GoInt))] : GoUInt64)) << ((2 : GoUnTypedInt))));
	var _x16:GoUInt64 = ((((_arg1.value[((50 : GoInt))] : GoUInt64)) << ((52 : GoUnTypedInt))));
	var _x17:GoUInt64 = ((((_arg1.value[((49 : GoInt))] : GoUInt64)) << ((44 : GoUnTypedInt))));
	var _x18:GoUInt64 = ((((_arg1.value[((48 : GoInt))] : GoUInt64)) << ((36 : GoUnTypedInt))));
	var _x19:GoUInt64 = ((((_arg1.value[((47 : GoInt))] : GoUInt64)) << ((28 : GoUnTypedInt))));
	var _x20:GoUInt64 = ((((_arg1.value[((46 : GoInt))] : GoUInt64)) << ((20 : GoUnTypedInt))));
	var _x21:GoUInt64 = ((((_arg1.value[((45 : GoInt))] : GoUInt64)) << ((12 : GoUnTypedInt))));
	var _x22:GoUInt64 = ((((_arg1.value[((44 : GoInt))] : GoUInt64)) << ((4 : GoUnTypedInt))));
	var _x23:GoUInt64 = ((((_arg1.value[((43 : GoInt))] : GoUInt64)) << ((54 : GoUnTypedInt))));
	var _x24:GoUInt64 = ((((_arg1.value[((42 : GoInt))] : GoUInt64)) << ((46 : GoUnTypedInt))));
	var _x25:GoUInt64 = ((((_arg1.value[((41 : GoInt))] : GoUInt64)) << ((38 : GoUnTypedInt))));
	var _x26:GoUInt64 = ((((_arg1.value[((40 : GoInt))] : GoUInt64)) << ((30 : GoUnTypedInt))));
	var _x27:GoUInt64 = ((((_arg1.value[((39 : GoInt))] : GoUInt64)) << ((22 : GoUnTypedInt))));
	var _x28:GoUInt64 = ((((_arg1.value[((38 : GoInt))] : GoUInt64)) << ((14 : GoUnTypedInt))));
	var _x29:GoUInt64 = ((((_arg1.value[((37 : GoInt))] : GoUInt64)) << ((6 : GoUnTypedInt))));
	var _x30:GoUInt64 = ((((_arg1.value[((36 : GoInt))] : GoUInt64)) << ((56 : GoUnTypedInt))));
	var _x31:GoUInt64 = ((((_arg1.value[((35 : GoInt))] : GoUInt64)) << ((48 : GoUnTypedInt))));
	var _x32:GoUInt64 = ((((_arg1.value[((34 : GoInt))] : GoUInt64)) << ((40 : GoUnTypedInt))));
	var _x33:GoUInt64 = ((((_arg1.value[((33 : GoInt))] : GoUInt64)) << ((32 : GoUnTypedInt))));
	var _x34:GoUInt64 = ((((_arg1.value[((32 : GoInt))] : GoUInt64)) << ((24 : GoUnTypedInt))));
	var _x35:GoUInt64 = ((((_arg1.value[((31 : GoInt))] : GoUInt64)) << ((16 : GoUnTypedInt))));
	var _x36:GoUInt64 = ((((_arg1.value[((30 : GoInt))] : GoUInt64)) << ((8 : GoUnTypedInt))));
	var _x37:GoUInt8 = _arg1.value[((29 : GoInt))];
	var _x38:GoUInt64 = ((((_arg1.value[((28 : GoInt))] : GoUInt64)) << ((50 : GoUnTypedInt))));
	var _x39:GoUInt64 = ((((_arg1.value[((27 : GoInt))] : GoUInt64)) << ((42 : GoUnTypedInt))));
	var _x40:GoUInt64 = ((((_arg1.value[((26 : GoInt))] : GoUInt64)) << ((34 : GoUnTypedInt))));
	var _x41:GoUInt64 = ((((_arg1.value[((25 : GoInt))] : GoUInt64)) << ((26 : GoUnTypedInt))));
	var _x42:GoUInt64 = ((((_arg1.value[((24 : GoInt))] : GoUInt64)) << ((18 : GoUnTypedInt))));
	var _x43:GoUInt64 = ((((_arg1.value[((23 : GoInt))] : GoUInt64)) << ((10 : GoUnTypedInt))));
	var _x44:GoUInt64 = ((((_arg1.value[((22 : GoInt))] : GoUInt64)) << ((2 : GoUnTypedInt))));
	var _x45:GoUInt64 = ((((_arg1.value[((21 : GoInt))] : GoUInt64)) << ((52 : GoUnTypedInt))));
	var _x46:GoUInt64 = ((((_arg1.value[((20 : GoInt))] : GoUInt64)) << ((44 : GoUnTypedInt))));
	var _x47:GoUInt64 = ((((_arg1.value[((19 : GoInt))] : GoUInt64)) << ((36 : GoUnTypedInt))));
	var _x48:GoUInt64 = ((((_arg1.value[((18 : GoInt))] : GoUInt64)) << ((28 : GoUnTypedInt))));
	var _x49:GoUInt64 = ((((_arg1.value[((17 : GoInt))] : GoUInt64)) << ((20 : GoUnTypedInt))));
	var _x50:GoUInt64 = ((((_arg1.value[((16 : GoInt))] : GoUInt64)) << ((12 : GoUnTypedInt))));
	var _x51:GoUInt64 = ((((_arg1.value[((15 : GoInt))] : GoUInt64)) << ((4 : GoUnTypedInt))));
	var _x52:GoUInt64 = ((((_arg1.value[((14 : GoInt))] : GoUInt64)) << ((54 : GoUnTypedInt))));
	var _x53:GoUInt64 = ((((_arg1.value[((13 : GoInt))] : GoUInt64)) << ((46 : GoUnTypedInt))));
	var _x54:GoUInt64 = ((((_arg1.value[((12 : GoInt))] : GoUInt64)) << ((38 : GoUnTypedInt))));
	var _x55:GoUInt64 = ((((_arg1.value[((11 : GoInt))] : GoUInt64)) << ((30 : GoUnTypedInt))));
	var _x56:GoUInt64 = ((((_arg1.value[((10 : GoInt))] : GoUInt64)) << ((22 : GoUnTypedInt))));
	var _x57:GoUInt64 = ((((_arg1.value[((9 : GoInt))] : GoUInt64)) << ((14 : GoUnTypedInt))));
	var _x58:GoUInt64 = ((((_arg1.value[((8 : GoInt))] : GoUInt64)) << ((6 : GoUnTypedInt))));
	var _x59:GoUInt64 = ((((_arg1.value[((7 : GoInt))] : GoUInt64)) << ((56 : GoUnTypedInt))));
	var _x60:GoUInt64 = ((((_arg1.value[((6 : GoInt))] : GoUInt64)) << ((48 : GoUnTypedInt))));
	var _x61:GoUInt64 = ((((_arg1.value[((5 : GoInt))] : GoUInt64)) << ((40 : GoUnTypedInt))));
	var _x62:GoUInt64 = ((((_arg1.value[((4 : GoInt))] : GoUInt64)) << ((32 : GoUnTypedInt))));
	var _x63:GoUInt64 = ((((_arg1.value[((3 : GoInt))] : GoUInt64)) << ((24 : GoUnTypedInt))));
	var _x64:GoUInt64 = ((((_arg1.value[((2 : GoInt))] : GoUInt64)) << ((16 : GoUnTypedInt))));
	var _x65:GoUInt64 = ((((_arg1.value[((1 : GoInt))] : GoUInt64)) << ((8 : GoUnTypedInt))));
	var _x66:GoUInt8 = _arg1.value[((0 : GoInt))];
	var _x67:GoUInt64 = (_x65 + ((_x66 : GoUInt64)));
	var _x68:GoUInt64 = (_x64 + _x67);
	var _x69:GoUInt64 = (_x63 + _x68);
	var _x70:GoUInt64 = (_x62 + _x69);
	var _x71:GoUInt64 = (_x61 + _x70);
	var _x72:GoUInt64 = (_x60 + _x71);
	var _x73:GoUInt64 = (_x59 + _x72);
	var _x74:GoUInt64 = (_x73 & (("288230376151711743" : GoUInt64)));
	var _x75:GoUInt8 = ((((_x73 >> ((58 : GoUnTypedInt)))) : GoUInt8));
	var _x76:GoUInt64 = (_x58 + ((_x75 : GoUInt64)));
	var _x77:GoUInt64 = (_x57 + _x76);
	var _x78:GoUInt64 = (_x56 + _x77);
	var _x79:GoUInt64 = (_x55 + _x78);
	var _x80:GoUInt64 = (_x54 + _x79);
	var _x81:GoUInt64 = (_x53 + _x80);
	var _x82:GoUInt64 = (_x52 + _x81);
	var _x83:GoUInt64 = (_x82 & (("288230376151711743" : GoUInt64)));
	var _x84:GoUInt8 = ((((_x82 >> ((58 : GoUnTypedInt)))) : GoUInt8));
	var _x85:GoUInt64 = (_x51 + ((_x84 : GoUInt64)));
	var _x86:GoUInt64 = (_x50 + _x85);
	var _x87:GoUInt64 = (_x49 + _x86);
	var _x88:GoUInt64 = (_x48 + _x87);
	var _x89:GoUInt64 = (_x47 + _x88);
	var _x90:GoUInt64 = (_x46 + _x89);
	var _x91:GoUInt64 = (_x45 + _x90);
	var _x92:GoUInt64 = (_x91 & (("288230376151711743" : GoUInt64)));
	var _x93:GoUInt8 = ((((_x91 >> ((58 : GoUnTypedInt)))) : GoUInt8));
	var _x94:GoUInt64 = (_x44 + ((_x93 : GoUInt64)));
	var _x95:GoUInt64 = (_x43 + _x94);
	var _x96:GoUInt64 = (_x42 + _x95);
	var _x97:GoUInt64 = (_x41 + _x96);
	var _x98:GoUInt64 = (_x40 + _x97);
	var _x99:GoUInt64 = (_x39 + _x98);
	var _x100:GoUInt64 = (_x38 + _x99);
	var _x101:GoUInt64 = (_x36 + ((_x37 : GoUInt64)));
	var _x102:GoUInt64 = (_x35 + _x101);
	var _x103:GoUInt64 = (_x34 + _x102);
	var _x104:GoUInt64 = (_x33 + _x103);
	var _x105:GoUInt64 = (_x32 + _x104);
	var _x106:GoUInt64 = (_x31 + _x105);
	var _x107:GoUInt64 = (_x30 + _x106);
	var _x108:GoUInt64 = (_x107 & (("288230376151711743" : GoUInt64)));
	var _x109:GoUInt8 = ((((_x107 >> ((58 : GoUnTypedInt)))) : GoUInt8));
	var _x110:GoUInt64 = (_x29 + ((_x109 : GoUInt64)));
	var _x111:GoUInt64 = (_x28 + _x110);
	var _x112:GoUInt64 = (_x27 + _x111);
	var _x113:GoUInt64 = (_x26 + _x112);
	var _x114:GoUInt64 = (_x25 + _x113);
	var _x115:GoUInt64 = (_x24 + _x114);
	var _x116:GoUInt64 = (_x23 + _x115);
	var _x117:GoUInt64 = (_x116 & (("288230376151711743" : GoUInt64)));
	var _x118:GoUInt8 = ((((_x116 >> ((58 : GoUnTypedInt)))) : GoUInt8));
	var _x119:GoUInt64 = (_x22 + ((_x118 : GoUInt64)));
	var _x120:GoUInt64 = (_x21 + _x119);
	var _x121:GoUInt64 = (_x20 + _x120);
	var _x122:GoUInt64 = (_x19 + _x121);
	var _x123:GoUInt64 = (_x18 + _x122);
	var _x124:GoUInt64 = (_x17 + _x123);
	var _x125:GoUInt64 = (_x16 + _x124);
	var _x126:GoUInt64 = (_x125 & (("288230376151711743" : GoUInt64)));
	var _x127:GoUInt8 = ((((_x125 >> ((58 : GoUnTypedInt)))) : GoUInt8));
	var _x128:GoUInt64 = (_x15 + ((_x127 : GoUInt64)));
	var _x129:GoUInt64 = (_x14 + _x128);
	var _x130:GoUInt64 = (_x13 + _x129);
	var _x131:GoUInt64 = (_x12 + _x130);
	var _x132:GoUInt64 = (_x11 + _x131);
	var _x133:GoUInt64 = (_x10 + _x132);
	var _x134:GoUInt64 = (_x9 + _x133);
	var _x135:GoUInt64 = (_x7 + ((_x8 : GoUInt64)));
	var _x136:GoUInt64 = (_x6 + _x135);
	var _x137:GoUInt64 = (_x5 + _x136);
	var _x138:GoUInt64 = (_x4 + _x137);
	var _x139:GoUInt64 = (_x3 + _x138);
	var _x140:GoUInt64 = (_x2 + _x139);
	var _x141:GoUInt64 = (_x1 + _x140);
	_out1.value[((0 : GoInt))] = _x74;
	_out1.value[((1 : GoInt))] = _x83;
	_out1.value[((2 : GoInt))] = _x92;
	_out1.value[((3 : GoInt))] = _x100;
	_out1.value[((4 : GoInt))] = _x108;
	_out1.value[((5 : GoInt))] = _x117;
	_out1.value[((6 : GoInt))] = _x126;
	_out1.value[((7 : GoInt))] = _x134;
	_out1.value[((8 : GoInt))] = _x141;
}

/**
	// p521Selectznz is a multi-limb conditional select.
	//
	// Postconditions:
	//   eval out1 = (if arg1 = 0 then eval arg2 else eval arg3)
	//
	// Input Bounds:
	//   arg1: [0x0 ~> 0x1]
	//   arg2: [[0x0 ~> 0xffffffffffffffff], [0x0 ~> 0xffffffffffffffff], [0x0 ~> 0xffffffffffffffff], [0x0 ~> 0xffffffffffffffff], [0x0 ~> 0xffffffffffffffff], [0x0 ~> 0xffffffffffffffff], [0x0 ~> 0xffffffffffffffff], [0x0 ~> 0xffffffffffffffff], [0x0 ~> 0xffffffffffffffff]]
	//   arg3: [[0x0 ~> 0xffffffffffffffff], [0x0 ~> 0xffffffffffffffff], [0x0 ~> 0xffffffffffffffff], [0x0 ~> 0xffffffffffffffff], [0x0 ~> 0xffffffffffffffff], [0x0 ~> 0xffffffffffffffff], [0x0 ~> 0xffffffffffffffff], [0x0 ~> 0xffffffffffffffff], [0x0 ~> 0xffffffffffffffff]]
	// Output Bounds:
	//   out1: [[0x0 ~> 0xffffffffffffffff], [0x0 ~> 0xffffffffffffffff], [0x0 ~> 0xffffffffffffffff], [0x0 ~> 0xffffffffffffffff], [0x0 ~> 0xffffffffffffffff], [0x0 ~> 0xffffffffffffffff], [0x0 ~> 0xffffffffffffffff], [0x0 ~> 0xffffffffffffffff], [0x0 ~> 0xffffffffffffffff]]
**/
function _p521Selectznz(_out1:Pointer<GoArray<GoUInt64>>, _arg1:T_p521Uint1, _arg2:Pointer<GoArray<GoUInt64>>, _arg3:Pointer<GoArray<GoUInt64>>):Void {
	var _x1:GoUInt64 = ((0 : GoUInt64));
	_p521CmovznzU64(Go.pointer(_x1), _arg1, _arg2.value[((0 : GoInt))], _arg3.value[((0 : GoInt))]);
	var _x2:GoUInt64 = ((0 : GoUInt64));
	_p521CmovznzU64(Go.pointer(_x2), _arg1, _arg2.value[((1 : GoInt))], _arg3.value[((1 : GoInt))]);
	var _x3:GoUInt64 = ((0 : GoUInt64));
	_p521CmovznzU64(Go.pointer(_x3), _arg1, _arg2.value[((2 : GoInt))], _arg3.value[((2 : GoInt))]);
	var _x4:GoUInt64 = ((0 : GoUInt64));
	_p521CmovznzU64(Go.pointer(_x4), _arg1, _arg2.value[((3 : GoInt))], _arg3.value[((3 : GoInt))]);
	var _x5:GoUInt64 = ((0 : GoUInt64));
	_p521CmovznzU64(Go.pointer(_x5), _arg1, _arg2.value[((4 : GoInt))], _arg3.value[((4 : GoInt))]);
	var _x6:GoUInt64 = ((0 : GoUInt64));
	_p521CmovznzU64(Go.pointer(_x6), _arg1, _arg2.value[((5 : GoInt))], _arg3.value[((5 : GoInt))]);
	var _x7:GoUInt64 = ((0 : GoUInt64));
	_p521CmovznzU64(Go.pointer(_x7), _arg1, _arg2.value[((6 : GoInt))], _arg3.value[((6 : GoInt))]);
	var _x8:GoUInt64 = ((0 : GoUInt64));
	_p521CmovznzU64(Go.pointer(_x8), _arg1, _arg2.value[((7 : GoInt))], _arg3.value[((7 : GoInt))]);
	var _x9:GoUInt64 = ((0 : GoUInt64));
	_p521CmovznzU64(Go.pointer(_x9), _arg1, _arg2.value[((8 : GoInt))], _arg3.value[((8 : GoInt))]);
	_out1.value[((0 : GoInt))] = _x1;
	_out1.value[((1 : GoInt))] = _x2;
	_out1.value[((2 : GoInt))] = _x3;
	_out1.value[((3 : GoInt))] = _x4;
	_out1.value[((4 : GoInt))] = _x5;
	_out1.value[((5 : GoInt))] = _x6;
	_out1.value[((6 : GoInt))] = _x7;
	_out1.value[((7 : GoInt))] = _x8;
	_out1.value[((8 : GoInt))] = _x9;
}

class P521Element_extension_fields {
	public function one(__tmp__):Pointer<P521Element>
		return __tmp__.one();

	public function equal(__tmp__, _t:Pointer<P521Element>):GoInt
		return __tmp__.equal(_t);

	public function isZero(__tmp__):GoInt
		return __tmp__.isZero();

	public function set(__tmp__, _t:Pointer<P521Element>):Pointer<P521Element>
		return __tmp__.set(_t);

	public function bytes(__tmp__):Slice<GoByte>
		return __tmp__.bytes();

	public function setBytes(__tmp__, _v:Slice<GoByte>):{var _0:Pointer<P521Element>; var _1:Error;}
		return __tmp__.setBytes(_v);

	public function add(__tmp__, _t1:Pointer<P521Element>, _t2:Pointer<P521Element>):Pointer<P521Element>
		return __tmp__.add(_t1, _t2);

	public function sub(__tmp__, _t1:Pointer<P521Element>, _t2:Pointer<P521Element>):Pointer<P521Element>
		return __tmp__.sub(_t1, _t2);

	public function mul(__tmp__, _t1:Pointer<P521Element>, _t2:Pointer<P521Element>):Pointer<P521Element>
		return __tmp__.mul(_t1, _t2);

	public function square(__tmp__, _t:Pointer<P521Element>):Pointer<P521Element>
		return __tmp__.square(_t);

	public function select(__tmp__, _a:Pointer<P521Element>, _b:Pointer<P521Element>, _cond:GoInt):Pointer<P521Element>
		return __tmp__.select(_a, _b, _cond);

	public function invert(__tmp__, _t:Pointer<P521Element>):Pointer<P521Element>
		return __tmp__.invert(_t);
}
