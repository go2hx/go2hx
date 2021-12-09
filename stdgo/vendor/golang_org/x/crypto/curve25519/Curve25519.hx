package stdgo.vendor.golang_org.x.crypto.curve25519;

import stdgo.StdGoTypes;
import stdgo.Error;
import stdgo.Go;
import stdgo.GoString;
import stdgo.Pointer;
import stdgo.Slice;
import stdgo.GoArray;
import stdgo.GoMap;
import stdgo.Chan;

@:named class T_fieldElement {
	public var __t__:GoArray<GoInt32>;

	public function new(?t:GoArray<GoInt32>) {
		__t__ = t == null ? new GoArray<GoInt32>(...[for (i in 0...10) ((0 : GoInt32))]) : t;
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	@:implicit
	public function toString():GoString
		return Go.string(__t__);

	public function __copy__()
		return new T_fieldElement(__t__.copy());

	public function __slice__(low:GoInt, high:GoInt = -1)
		return this.__t__.__slice__(low, high);
}

var basepoint:Slice<GoByte> = new Slice<GoUInt8>().nil();
final scalarSize:GoInt64 = ((32 : GoUnTypedInt));

var _basePoint:GoArray<GoUInt8> = new GoArray<GoUInt8>(((9 : GoUInt8)), ((0 : GoUInt8)), ((0 : GoUInt8)), ((0 : GoUInt8)), ((0 : GoUInt8)), ((0 : GoUInt8)),
	((0 : GoUInt8)), ((0 : GoUInt8)), ((0 : GoUInt8)), ((0 : GoUInt8)), ((0 : GoUInt8)), ((0 : GoUInt8)), ((0 : GoUInt8)), ((0 : GoUInt8)), ((0 : GoUInt8)),
	((0 : GoUInt8)), ((0 : GoUInt8)), ((0 : GoUInt8)), ((0 : GoUInt8)), ((0 : GoUInt8)), ((0 : GoUInt8)), ((0 : GoUInt8)), ((0 : GoUInt8)), ((0 : GoUInt8)),
	((0 : GoUInt8)), ((0 : GoUInt8)), ((0 : GoUInt8)), ((0 : GoUInt8)), ((0 : GoUInt8)), ((0 : GoUInt8)), ((0 : GoUInt8)), ((0 : GoUInt8))).copy();

final pointSize:GoInt64 = ((32 : GoUnTypedInt));

/**
	// ScalarMult sets dst to the product scalar * point.
	//
	// Deprecated: when provided a low-order point, ScalarMult will set dst to all
	// zeroes, irrespective of the scalar. Instead, use the X25519 function, which
	// will return an error.
**/
function scalarMult(_dst:Pointer<GoArray<GoByte>>, _scalar:Pointer<GoArray<GoByte>>, _point:Pointer<GoArray<GoByte>>):Void {
	_scalarMult(_dst, _scalar, _point);
}

/**
	// ScalarBaseMult sets dst to the product scalar * base where base is the
	// standard generator.
	//
	// It is recommended to use the X25519 function with Basepoint instead, as
	// copying into fixed size arrays can lead to unexpected bugs.
**/
function scalarBaseMult(_dst:Pointer<GoArray<GoByte>>, _scalar:Pointer<GoArray<GoByte>>):Void {
	scalarMult(_dst, _scalar, Go.pointer(_basePoint));
}

function _checkBasepoint():Void {
	if (stdgo.crypto.subtle.Subtle.constantTimeCompare(basepoint,
		new Slice<GoUInt8>(((9 : GoUInt8)), ((0 : GoUInt8)), ((0 : GoUInt8)), ((0 : GoUInt8)), ((0 : GoUInt8)), ((0 : GoUInt8)), ((0 : GoUInt8)),
			((0 : GoUInt8)), ((0 : GoUInt8)), ((0 : GoUInt8)), ((0 : GoUInt8)), ((0 : GoUInt8)), ((0 : GoUInt8)), ((0 : GoUInt8)), ((0 : GoUInt8)),
			((0 : GoUInt8)), ((0 : GoUInt8)), ((0 : GoUInt8)), ((0 : GoUInt8)), ((0 : GoUInt8)), ((0 : GoUInt8)), ((0 : GoUInt8)), ((0 : GoUInt8)),
			((0 : GoUInt8)), ((0 : GoUInt8)), ((0 : GoUInt8)), ((0 : GoUInt8)), ((0 : GoUInt8)), ((0 : GoUInt8)), ((0 : GoUInt8)), ((0 : GoUInt8)),
			((0 : GoUInt8)))) != ((1 : GoInt))) {
		throw "curve25519: global Basepoint value was modified";
	};
}

/**
	// X25519 returns the result of the scalar multiplication (scalar * point),
	// according to RFC 7748, Section 5. scalar, point and the return value are
	// slices of 32 bytes.
	//
	// scalar can be generated at random, for example with crypto/rand. point should
	// be either Basepoint or the output of another X25519 call.
	//
	// If point is Basepoint (but not if it's a different slice with the same
	// contents) a precomputed implementation might be used for performance.
**/
function x25519(_scalar:Slice<GoByte>, _point:Slice<GoByte>):{var _0:Slice<GoByte>; var _1:Error;} {
	var _dst:GoArray<GoByte> = new GoArray<GoUInt8>(...[for (i in 0...32) ((0 : GoUInt8))]);
	return _x25519(Go.pointer(_dst), _scalar, _point);
}

function _x25519(_dst:Pointer<GoArray<GoByte>>, _scalar:Slice<GoByte>, _point:Slice<GoByte>):{var _0:Slice<GoByte>; var _1:Error;} {
	var _in:GoArray<GoByte> = new GoArray<GoUInt8>(...[for (i in 0...32) ((0 : GoUInt8))]);
	{
		var _l:GoInt = _scalar.length;
		if (_l != ((32 : GoInt))) {
			return {_0: new Slice<GoUInt8>().nil(), _1: stdgo.fmt.Fmt.errorf("bad scalar length: %d, expected %d", Go.toInterface(_l),
				Go.toInterface(((32 : GoInt))))};
		};
	};
	{
		var _l:GoInt = _point.length;
		if (_l != ((32 : GoInt))) {
			return {_0: new Slice<GoUInt8>().nil(), _1: stdgo.fmt.Fmt.errorf("bad point length: %d, expected %d", Go.toInterface(_l),
				Go.toInterface(((32 : GoInt))))};
		};
	};
	Go.copy(_in.__slice__(0), _scalar);
	if (Go.pointer(_point[((0 : GoInt))]) == Go.pointer(basepoint[((0 : GoInt))])) {
		_checkBasepoint();
		scalarBaseMult(_dst, Go.pointer(_in));
	} else {
		var _base:GoArray<GoByte> = new GoArray<GoUInt8>(...[for (i in 0...32) ((0 : GoUInt8))]),
			_zero:GoArray<GoByte> = new GoArray<GoUInt8>(...[for (i in 0...32) ((0 : GoUInt8))]);
		Go.copy(_base.__slice__(0), _point);
		scalarMult(_dst, Go.pointer(_in), Go.pointer(_base));
		if (stdgo.crypto.subtle.Subtle.constantTimeCompare(_dst.value.__slice__(0), _zero.__slice__(0)) == ((1 : GoInt))) {
			return {_0: new Slice<GoUInt8>().nil(), _1: stdgo.fmt.Fmt.errorf("bad input point: low order point")};
		};
	};
	return {_0: _dst.value.__slice__(0), _1: ((null : stdgo.Error))};
}

function _feZero(_fe:Pointer<T_fieldElement>):Void {
	for (_i => _ in _fe.value.__t__) {
		_fe.value.__t__[_i] = ((0 : GoInt32));
	};
}

function _feOne(_fe:Pointer<T_fieldElement>):Void {
	_feZero(_fe);
	_fe.value.__t__[((0 : GoInt))] = ((1 : GoInt32));
}

function _feAdd(_dst:Pointer<T_fieldElement>, _a:Pointer<T_fieldElement>, _b:Pointer<T_fieldElement>):Void {
	for (_i => _ in _dst.value.__t__) {
		_dst.value.__t__[_i] = _a.value.__t__[_i] + _b.value.__t__[_i];
	};
}

function _feSub(_dst:Pointer<T_fieldElement>, _a:Pointer<T_fieldElement>, _b:Pointer<T_fieldElement>):Void {
	for (_i => _ in _dst.value.__t__) {
		_dst.value.__t__[_i] = _a.value.__t__[_i] - _b.value.__t__[_i];
	};
}

function _feCopy(_dst:Pointer<T_fieldElement>, _src:Pointer<T_fieldElement>):Void {
	for (_i => _ in _dst.value.__t__) {
		_dst.value.__t__[_i] = _src.value.__t__[_i];
	};
}

/**
	// feCSwap replaces (f,g) with (g,f) if b == 1; replaces (f,g) with (f,g) if b == 0.
	//
	// Preconditions: b in {0,1}.
**/
function _feCSwap(_f:Pointer<T_fieldElement>, _g:Pointer<T_fieldElement>, _b:GoInt32):Void {
	_b = -_b;
	for (_i => _ in _f.value.__t__) {
		var _t:GoInt32 = _b & (_f.value.__t__[_i] ^ _g.value.__t__[_i]);
		_f.value.__t__[_i] = _f.value.__t__[_i] ^ (_t);
		_g.value.__t__[_i] = _g.value.__t__[_i] ^ (_t);
	};
}

/**
	// load3 reads a 24-bit, little-endian value from in.
**/
function _load3(_in:Slice<GoByte>):GoInt64 {
	var _r:GoInt64 = ((0 : GoInt64));
	_r = ((_in[((0 : GoInt))] : GoInt64));
	_r = _r | ((((_in[((1 : GoInt))] : GoInt64)) << ((8 : GoUnTypedInt))));
	_r = _r | ((((_in[((2 : GoInt))] : GoInt64)) << ((16 : GoUnTypedInt))));
	return _r;
}

/**
	// load4 reads a 32-bit, little-endian value from in.
**/
function _load4(_in:Slice<GoByte>):GoInt64 {
	return ((stdgo.encoding.binary.Binary.littleEndian.uint32(_in) : GoInt64));
}

function _feFromBytes(_dst:Pointer<T_fieldElement>, _src:Pointer<GoArray<GoByte>>):Void {
	var _h0:GoInt64 = _load4(_src.value.__slice__(0));
	var _h1:GoInt64 = (_load3(_src.value.__slice__(((4 : GoInt)))) << ((6 : GoUnTypedInt)));
	var _h2:GoInt64 = (_load3(_src.value.__slice__(((7 : GoInt)))) << ((5 : GoUnTypedInt)));
	var _h3:GoInt64 = (_load3(_src.value.__slice__(((10 : GoInt)))) << ((3 : GoUnTypedInt)));
	var _h4:GoInt64 = (_load3(_src.value.__slice__(((13 : GoInt)))) << ((2 : GoUnTypedInt)));
	var _h5:GoInt64 = _load4(_src.value.__slice__(((16 : GoInt))));
	var _h6:GoInt64 = (_load3(_src.value.__slice__(((20 : GoInt)))) << ((7 : GoUnTypedInt)));
	var _h7:GoInt64 = (_load3(_src.value.__slice__(((23 : GoInt)))) << ((5 : GoUnTypedInt)));
	var _h8:GoInt64 = (_load3(_src.value.__slice__(((26 : GoInt)))) << ((4 : GoUnTypedInt)));
	var _h9:GoInt64 = ((_load3(_src.value.__slice__(((29 : GoInt)))) & ((8388607 : GoInt64))) << ((2 : GoUnTypedInt)));
	var _carry:GoArray<GoInt64> = new GoArray<GoInt64>(...[for (i in 0...10) ((0 : GoInt64))]);
	_carry[((9 : GoInt))] = ((_h9 + (((1 : GoUnTypedInt)) << ((24 : GoUnTypedInt)))) >> ((25 : GoUnTypedInt)));
	_h0 = _h0 + (_carry[((9 : GoInt))] * ((19 : GoInt64)));
	_h9 = _h9 - ((_carry[((9 : GoInt))] << ((25 : GoUnTypedInt))));
	_carry[((1 : GoInt))] = ((_h1 + (((1 : GoUnTypedInt)) << ((24 : GoUnTypedInt)))) >> ((25 : GoUnTypedInt)));
	_h2 = _h2 + (_carry[((1 : GoInt))]);
	_h1 = _h1 - ((_carry[((1 : GoInt))] << ((25 : GoUnTypedInt))));
	_carry[((3 : GoInt))] = ((_h3 + (((1 : GoUnTypedInt)) << ((24 : GoUnTypedInt)))) >> ((25 : GoUnTypedInt)));
	_h4 = _h4 + (_carry[((3 : GoInt))]);
	_h3 = _h3 - ((_carry[((3 : GoInt))] << ((25 : GoUnTypedInt))));
	_carry[((5 : GoInt))] = ((_h5 + (((1 : GoUnTypedInt)) << ((24 : GoUnTypedInt)))) >> ((25 : GoUnTypedInt)));
	_h6 = _h6 + (_carry[((5 : GoInt))]);
	_h5 = _h5 - ((_carry[((5 : GoInt))] << ((25 : GoUnTypedInt))));
	_carry[((7 : GoInt))] = ((_h7 + (((1 : GoUnTypedInt)) << ((24 : GoUnTypedInt)))) >> ((25 : GoUnTypedInt)));
	_h8 = _h8 + (_carry[((7 : GoInt))]);
	_h7 = _h7 - ((_carry[((7 : GoInt))] << ((25 : GoUnTypedInt))));
	_carry[((0 : GoInt))] = ((_h0 + (((1 : GoUnTypedInt)) << ((25 : GoUnTypedInt)))) >> ((26 : GoUnTypedInt)));
	_h1 = _h1 + (_carry[((0 : GoInt))]);
	_h0 = _h0 - ((_carry[((0 : GoInt))] << ((26 : GoUnTypedInt))));
	_carry[((2 : GoInt))] = ((_h2 + (((1 : GoUnTypedInt)) << ((25 : GoUnTypedInt)))) >> ((26 : GoUnTypedInt)));
	_h3 = _h3 + (_carry[((2 : GoInt))]);
	_h2 = _h2 - ((_carry[((2 : GoInt))] << ((26 : GoUnTypedInt))));
	_carry[((4 : GoInt))] = ((_h4 + (((1 : GoUnTypedInt)) << ((25 : GoUnTypedInt)))) >> ((26 : GoUnTypedInt)));
	_h5 = _h5 + (_carry[((4 : GoInt))]);
	_h4 = _h4 - ((_carry[((4 : GoInt))] << ((26 : GoUnTypedInt))));
	_carry[((6 : GoInt))] = ((_h6 + (((1 : GoUnTypedInt)) << ((25 : GoUnTypedInt)))) >> ((26 : GoUnTypedInt)));
	_h7 = _h7 + (_carry[((6 : GoInt))]);
	_h6 = _h6 - ((_carry[((6 : GoInt))] << ((26 : GoUnTypedInt))));
	_carry[((8 : GoInt))] = ((_h8 + (((1 : GoUnTypedInt)) << ((25 : GoUnTypedInt)))) >> ((26 : GoUnTypedInt)));
	_h9 = _h9 + (_carry[((8 : GoInt))]);
	_h8 = _h8 - ((_carry[((8 : GoInt))] << ((26 : GoUnTypedInt))));
	_dst.value.__t__[((0 : GoInt))] = ((_h0 : GoInt32));
	_dst.value.__t__[((1 : GoInt))] = ((_h1 : GoInt32));
	_dst.value.__t__[((2 : GoInt))] = ((_h2 : GoInt32));
	_dst.value.__t__[((3 : GoInt))] = ((_h3 : GoInt32));
	_dst.value.__t__[((4 : GoInt))] = ((_h4 : GoInt32));
	_dst.value.__t__[((5 : GoInt))] = ((_h5 : GoInt32));
	_dst.value.__t__[((6 : GoInt))] = ((_h6 : GoInt32));
	_dst.value.__t__[((7 : GoInt))] = ((_h7 : GoInt32));
	_dst.value.__t__[((8 : GoInt))] = ((_h8 : GoInt32));
	_dst.value.__t__[((9 : GoInt))] = ((_h9 : GoInt32));
}

/**
	// feToBytes marshals h to s.
	// Preconditions:
	//   |h| bounded by 1.1*2^25,1.1*2^24,1.1*2^25,1.1*2^24,etc.
	//
	// Write p=2^255-19; q=floor(h/p).
	// Basic claim: q = floor(2^(-255)(h + 19 2^(-25)h9 + 2^(-1))).
	//
	// Proof:
	//   Have |h|<=p so |q|<=1 so |19^2 2^(-255) q|<1/4.
	//   Also have |h-2^230 h9|<2^230 so |19 2^(-255)(h-2^230 h9)|<1/4.
	//
	//   Write y=2^(-1)-19^2 2^(-255)q-19 2^(-255)(h-2^230 h9).
	//   Then 0<y<1.
	//
	//   Write r=h-pq.
	//   Have 0<=r<=p-1=2^255-20.
	//   Thus 0<=r+19(2^-255)r<r+19(2^-255)2^255<=2^255-1.
	//
	//   Write x=r+19(2^-255)r+y.
	//   Then 0<x<2^255 so floor(2^(-255)x) = 0 so floor(q+2^(-255)x) = q.
	//
	//   Have q+2^(-255)x = 2^(-255)(h + 19 2^(-25) h9 + 2^(-1))
	//   so floor(2^(-255)(h + 19 2^(-25) h9 + 2^(-1))) = q.
**/
function _feToBytes(_s:Pointer<GoArray<GoByte>>, _h:Pointer<T_fieldElement>):Void {
	var _carry:GoArray<GoInt32> = new GoArray<GoInt32>(...[for (i in 0...10) ((0 : GoInt32))]);
	var _q:GoInt32 = ((((19 : GoInt32)) * _h.value.__t__[((9 : GoInt))] + ((((1 : GoUnTypedInt)) << ((24 : GoUnTypedInt))))) >> ((25 : GoUnTypedInt)));
	_q = ((_h.value.__t__[((0 : GoInt))] + _q) >> ((26 : GoUnTypedInt)));
	_q = ((_h.value.__t__[((1 : GoInt))] + _q) >> ((25 : GoUnTypedInt)));
	_q = ((_h.value.__t__[((2 : GoInt))] + _q) >> ((26 : GoUnTypedInt)));
	_q = ((_h.value.__t__[((3 : GoInt))] + _q) >> ((25 : GoUnTypedInt)));
	_q = ((_h.value.__t__[((4 : GoInt))] + _q) >> ((26 : GoUnTypedInt)));
	_q = ((_h.value.__t__[((5 : GoInt))] + _q) >> ((25 : GoUnTypedInt)));
	_q = ((_h.value.__t__[((6 : GoInt))] + _q) >> ((26 : GoUnTypedInt)));
	_q = ((_h.value.__t__[((7 : GoInt))] + _q) >> ((25 : GoUnTypedInt)));
	_q = ((_h.value.__t__[((8 : GoInt))] + _q) >> ((26 : GoUnTypedInt)));
	_q = ((_h.value.__t__[((9 : GoInt))] + _q) >> ((25 : GoUnTypedInt)));
	_h.value.__t__[((0 : GoInt))] = _h.value.__t__[((0 : GoInt))] + (((19 : GoInt32)) * _q);
	_carry[((0 : GoInt))] = (_h.value.__t__[((0 : GoInt))] >> ((26 : GoUnTypedInt)));
	_h.value.__t__[((1 : GoInt))] = _h.value.__t__[((1 : GoInt))] + (_carry[((0 : GoInt))]);
	_h.value.__t__[((0 : GoInt))] = _h.value.__t__[((0 : GoInt))] - ((_carry[((0 : GoInt))] << ((26 : GoUnTypedInt))));
	_carry[((1 : GoInt))] = (_h.value.__t__[((1 : GoInt))] >> ((25 : GoUnTypedInt)));
	_h.value.__t__[((2 : GoInt))] = _h.value.__t__[((2 : GoInt))] + (_carry[((1 : GoInt))]);
	_h.value.__t__[((1 : GoInt))] = _h.value.__t__[((1 : GoInt))] - ((_carry[((1 : GoInt))] << ((25 : GoUnTypedInt))));
	_carry[((2 : GoInt))] = (_h.value.__t__[((2 : GoInt))] >> ((26 : GoUnTypedInt)));
	_h.value.__t__[((3 : GoInt))] = _h.value.__t__[((3 : GoInt))] + (_carry[((2 : GoInt))]);
	_h.value.__t__[((2 : GoInt))] = _h.value.__t__[((2 : GoInt))] - ((_carry[((2 : GoInt))] << ((26 : GoUnTypedInt))));
	_carry[((3 : GoInt))] = (_h.value.__t__[((3 : GoInt))] >> ((25 : GoUnTypedInt)));
	_h.value.__t__[((4 : GoInt))] = _h.value.__t__[((4 : GoInt))] + (_carry[((3 : GoInt))]);
	_h.value.__t__[((3 : GoInt))] = _h.value.__t__[((3 : GoInt))] - ((_carry[((3 : GoInt))] << ((25 : GoUnTypedInt))));
	_carry[((4 : GoInt))] = (_h.value.__t__[((4 : GoInt))] >> ((26 : GoUnTypedInt)));
	_h.value.__t__[((5 : GoInt))] = _h.value.__t__[((5 : GoInt))] + (_carry[((4 : GoInt))]);
	_h.value.__t__[((4 : GoInt))] = _h.value.__t__[((4 : GoInt))] - ((_carry[((4 : GoInt))] << ((26 : GoUnTypedInt))));
	_carry[((5 : GoInt))] = (_h.value.__t__[((5 : GoInt))] >> ((25 : GoUnTypedInt)));
	_h.value.__t__[((6 : GoInt))] = _h.value.__t__[((6 : GoInt))] + (_carry[((5 : GoInt))]);
	_h.value.__t__[((5 : GoInt))] = _h.value.__t__[((5 : GoInt))] - ((_carry[((5 : GoInt))] << ((25 : GoUnTypedInt))));
	_carry[((6 : GoInt))] = (_h.value.__t__[((6 : GoInt))] >> ((26 : GoUnTypedInt)));
	_h.value.__t__[((7 : GoInt))] = _h.value.__t__[((7 : GoInt))] + (_carry[((6 : GoInt))]);
	_h.value.__t__[((6 : GoInt))] = _h.value.__t__[((6 : GoInt))] - ((_carry[((6 : GoInt))] << ((26 : GoUnTypedInt))));
	_carry[((7 : GoInt))] = (_h.value.__t__[((7 : GoInt))] >> ((25 : GoUnTypedInt)));
	_h.value.__t__[((8 : GoInt))] = _h.value.__t__[((8 : GoInt))] + (_carry[((7 : GoInt))]);
	_h.value.__t__[((7 : GoInt))] = _h.value.__t__[((7 : GoInt))] - ((_carry[((7 : GoInt))] << ((25 : GoUnTypedInt))));
	_carry[((8 : GoInt))] = (_h.value.__t__[((8 : GoInt))] >> ((26 : GoUnTypedInt)));
	_h.value.__t__[((9 : GoInt))] = _h.value.__t__[((9 : GoInt))] + (_carry[((8 : GoInt))]);
	_h.value.__t__[((8 : GoInt))] = _h.value.__t__[((8 : GoInt))] - ((_carry[((8 : GoInt))] << ((26 : GoUnTypedInt))));
	_carry[((9 : GoInt))] = (_h.value.__t__[((9 : GoInt))] >> ((25 : GoUnTypedInt)));
	_h.value.__t__[((9 : GoInt))] = _h.value.__t__[((9 : GoInt))] - ((_carry[((9 : GoInt))] << ((25 : GoUnTypedInt))));
	_s.value[((0 : GoInt))] = (((_h.value.__t__[((0 : GoInt))] >> ((0 : GoUnTypedInt))) : GoByte));
	_s.value[((1 : GoInt))] = (((_h.value.__t__[((0 : GoInt))] >> ((8 : GoUnTypedInt))) : GoByte));
	_s.value[((2 : GoInt))] = (((_h.value.__t__[((0 : GoInt))] >> ((16 : GoUnTypedInt))) : GoByte));
	_s.value[((3 : GoInt))] = (((((_h.value.__t__[((0 : GoInt))] >> ((24 : GoUnTypedInt)))) | ((_h.value.__t__[((1 : GoInt))] << ((2 : GoUnTypedInt))))) : GoByte));
	_s.value[((4 : GoInt))] = (((_h.value.__t__[((1 : GoInt))] >> ((6 : GoUnTypedInt))) : GoByte));
	_s.value[((5 : GoInt))] = (((_h.value.__t__[((1 : GoInt))] >> ((14 : GoUnTypedInt))) : GoByte));
	_s.value[((6 : GoInt))] = (((((_h.value.__t__[((1 : GoInt))] >> ((22 : GoUnTypedInt)))) | ((_h.value.__t__[((2 : GoInt))] << ((3 : GoUnTypedInt))))) : GoByte));
	_s.value[((7 : GoInt))] = (((_h.value.__t__[((2 : GoInt))] >> ((5 : GoUnTypedInt))) : GoByte));
	_s.value[((8 : GoInt))] = (((_h.value.__t__[((2 : GoInt))] >> ((13 : GoUnTypedInt))) : GoByte));
	_s.value[((9 : GoInt))] = (((((_h.value.__t__[((2 : GoInt))] >> ((21 : GoUnTypedInt)))) | ((_h.value.__t__[((3 : GoInt))] << ((5 : GoUnTypedInt))))) : GoByte));
	_s.value[((10 : GoInt))] = (((_h.value.__t__[((3 : GoInt))] >> ((3 : GoUnTypedInt))) : GoByte));
	_s.value[((11 : GoInt))] = (((_h.value.__t__[((3 : GoInt))] >> ((11 : GoUnTypedInt))) : GoByte));
	_s.value[((12 : GoInt))] = (((((_h.value.__t__[((3 : GoInt))] >> ((19 : GoUnTypedInt)))) | ((_h.value.__t__[((4 : GoInt))] << ((6 : GoUnTypedInt))))) : GoByte));
	_s.value[((13 : GoInt))] = (((_h.value.__t__[((4 : GoInt))] >> ((2 : GoUnTypedInt))) : GoByte));
	_s.value[((14 : GoInt))] = (((_h.value.__t__[((4 : GoInt))] >> ((10 : GoUnTypedInt))) : GoByte));
	_s.value[((15 : GoInt))] = (((_h.value.__t__[((4 : GoInt))] >> ((18 : GoUnTypedInt))) : GoByte));
	_s.value[((16 : GoInt))] = (((_h.value.__t__[((5 : GoInt))] >> ((0 : GoUnTypedInt))) : GoByte));
	_s.value[((17 : GoInt))] = (((_h.value.__t__[((5 : GoInt))] >> ((8 : GoUnTypedInt))) : GoByte));
	_s.value[((18 : GoInt))] = (((_h.value.__t__[((5 : GoInt))] >> ((16 : GoUnTypedInt))) : GoByte));
	_s.value[((19 : GoInt))] = (((((_h.value.__t__[((5 : GoInt))] >> ((24 : GoUnTypedInt)))) | ((_h.value.__t__[((6 : GoInt))] << ((1 : GoUnTypedInt))))) : GoByte));
	_s.value[((20 : GoInt))] = (((_h.value.__t__[((6 : GoInt))] >> ((7 : GoUnTypedInt))) : GoByte));
	_s.value[((21 : GoInt))] = (((_h.value.__t__[((6 : GoInt))] >> ((15 : GoUnTypedInt))) : GoByte));
	_s.value[((22 : GoInt))] = (((((_h.value.__t__[((6 : GoInt))] >> ((23 : GoUnTypedInt)))) | ((_h.value.__t__[((7 : GoInt))] << ((3 : GoUnTypedInt))))) : GoByte));
	_s.value[((23 : GoInt))] = (((_h.value.__t__[((7 : GoInt))] >> ((5 : GoUnTypedInt))) : GoByte));
	_s.value[((24 : GoInt))] = (((_h.value.__t__[((7 : GoInt))] >> ((13 : GoUnTypedInt))) : GoByte));
	_s.value[((25 : GoInt))] = (((((_h.value.__t__[((7 : GoInt))] >> ((21 : GoUnTypedInt)))) | ((_h.value.__t__[((8 : GoInt))] << ((4 : GoUnTypedInt))))) : GoByte));
	_s.value[((26 : GoInt))] = (((_h.value.__t__[((8 : GoInt))] >> ((4 : GoUnTypedInt))) : GoByte));
	_s.value[((27 : GoInt))] = (((_h.value.__t__[((8 : GoInt))] >> ((12 : GoUnTypedInt))) : GoByte));
	_s.value[((28 : GoInt))] = (((((_h.value.__t__[((8 : GoInt))] >> ((20 : GoUnTypedInt)))) | ((_h.value.__t__[((9 : GoInt))] << ((6 : GoUnTypedInt))))) : GoByte));
	_s.value[((29 : GoInt))] = (((_h.value.__t__[((9 : GoInt))] >> ((2 : GoUnTypedInt))) : GoByte));
	_s.value[((30 : GoInt))] = (((_h.value.__t__[((9 : GoInt))] >> ((10 : GoUnTypedInt))) : GoByte));
	_s.value[((31 : GoInt))] = (((_h.value.__t__[((9 : GoInt))] >> ((18 : GoUnTypedInt))) : GoByte));
}

/**
	// feMul calculates h = f * g
	// Can overlap h with f or g.
	//
	// Preconditions:
	//    |f| bounded by 1.1*2^26,1.1*2^25,1.1*2^26,1.1*2^25,etc.
	//    |g| bounded by 1.1*2^26,1.1*2^25,1.1*2^26,1.1*2^25,etc.
	//
	// Postconditions:
	//    |h| bounded by 1.1*2^25,1.1*2^24,1.1*2^25,1.1*2^24,etc.
	//
	// Notes on implementation strategy:
	//
	// Using schoolbook multiplication.
	// Karatsuba would save a little in some cost models.
	//
	// Most multiplications by 2 and 19 are 32-bit precomputations;
	// cheaper than 64-bit postcomputations.
	//
	// There is one remaining multiplication by 19 in the carry chain;
	// one *19 precomputation can be merged into this,
	// but the resulting data flow is considerably less clean.
	//
	// There are 12 carries below.
	// 10 of them are 2-way parallelizable and vectorizable.
	// Can get away with 11 carries, but then data flow is much deeper.
	//
	// With tighter constraints on inputs can squeeze carries into int32.
**/
function _feMul(_h:Pointer<T_fieldElement>, _f:Pointer<T_fieldElement>, _g:Pointer<T_fieldElement>):Void {
	var _f0:GoInt32 = _f.value.__t__[((0 : GoInt))];
	var _f1:GoInt32 = _f.value.__t__[((1 : GoInt))];
	var _f2:GoInt32 = _f.value.__t__[((2 : GoInt))];
	var _f3:GoInt32 = _f.value.__t__[((3 : GoInt))];
	var _f4:GoInt32 = _f.value.__t__[((4 : GoInt))];
	var _f5:GoInt32 = _f.value.__t__[((5 : GoInt))];
	var _f6:GoInt32 = _f.value.__t__[((6 : GoInt))];
	var _f7:GoInt32 = _f.value.__t__[((7 : GoInt))];
	var _f8:GoInt32 = _f.value.__t__[((8 : GoInt))];
	var _f9:GoInt32 = _f.value.__t__[((9 : GoInt))];
	var _g0:GoInt32 = _g.value.__t__[((0 : GoInt))];
	var _g1:GoInt32 = _g.value.__t__[((1 : GoInt))];
	var _g2:GoInt32 = _g.value.__t__[((2 : GoInt))];
	var _g3:GoInt32 = _g.value.__t__[((3 : GoInt))];
	var _g4:GoInt32 = _g.value.__t__[((4 : GoInt))];
	var _g5:GoInt32 = _g.value.__t__[((5 : GoInt))];
	var _g6:GoInt32 = _g.value.__t__[((6 : GoInt))];
	var _g7:GoInt32 = _g.value.__t__[((7 : GoInt))];
	var _g8:GoInt32 = _g.value.__t__[((8 : GoInt))];
	var _g9:GoInt32 = _g.value.__t__[((9 : GoInt))];
	var _g1_19:GoInt32 = ((19 : GoInt32)) * _g1;
	var _g2_19:GoInt32 = ((19 : GoInt32)) * _g2;
	var _g3_19:GoInt32 = ((19 : GoInt32)) * _g3;
	var _g4_19:GoInt32 = ((19 : GoInt32)) * _g4;
	var _g5_19:GoInt32 = ((19 : GoInt32)) * _g5;
	var _g6_19:GoInt32 = ((19 : GoInt32)) * _g6;
	var _g7_19:GoInt32 = ((19 : GoInt32)) * _g7;
	var _g8_19:GoInt32 = ((19 : GoInt32)) * _g8;
	var _g9_19:GoInt32 = ((19 : GoInt32)) * _g9;
	var _f1_2:GoInt32 = ((2 : GoInt32)) * _f1;
	var _f3_2:GoInt32 = ((2 : GoInt32)) * _f3;
	var _f5_2:GoInt32 = ((2 : GoInt32)) * _f5;
	var _f7_2:GoInt32 = ((2 : GoInt32)) * _f7;
	var _f9_2:GoInt32 = ((2 : GoInt32)) * _f9;
	var _f0g0:GoInt64 = ((_f0 : GoInt64)) * ((_g0 : GoInt64));
	var _f0g1:GoInt64 = ((_f0 : GoInt64)) * ((_g1 : GoInt64));
	var _f0g2:GoInt64 = ((_f0 : GoInt64)) * ((_g2 : GoInt64));
	var _f0g3:GoInt64 = ((_f0 : GoInt64)) * ((_g3 : GoInt64));
	var _f0g4:GoInt64 = ((_f0 : GoInt64)) * ((_g4 : GoInt64));
	var _f0g5:GoInt64 = ((_f0 : GoInt64)) * ((_g5 : GoInt64));
	var _f0g6:GoInt64 = ((_f0 : GoInt64)) * ((_g6 : GoInt64));
	var _f0g7:GoInt64 = ((_f0 : GoInt64)) * ((_g7 : GoInt64));
	var _f0g8:GoInt64 = ((_f0 : GoInt64)) * ((_g8 : GoInt64));
	var _f0g9:GoInt64 = ((_f0 : GoInt64)) * ((_g9 : GoInt64));
	var _f1g0:GoInt64 = ((_f1 : GoInt64)) * ((_g0 : GoInt64));
	var _f1g1_2:GoInt64 = ((_f1_2 : GoInt64)) * ((_g1 : GoInt64));
	var _f1g2:GoInt64 = ((_f1 : GoInt64)) * ((_g2 : GoInt64));
	var _f1g3_2:GoInt64 = ((_f1_2 : GoInt64)) * ((_g3 : GoInt64));
	var _f1g4:GoInt64 = ((_f1 : GoInt64)) * ((_g4 : GoInt64));
	var _f1g5_2:GoInt64 = ((_f1_2 : GoInt64)) * ((_g5 : GoInt64));
	var _f1g6:GoInt64 = ((_f1 : GoInt64)) * ((_g6 : GoInt64));
	var _f1g7_2:GoInt64 = ((_f1_2 : GoInt64)) * ((_g7 : GoInt64));
	var _f1g8:GoInt64 = ((_f1 : GoInt64)) * ((_g8 : GoInt64));
	var _f1g9_38:GoInt64 = ((_f1_2 : GoInt64)) * ((_g9_19 : GoInt64));
	var _f2g0:GoInt64 = ((_f2 : GoInt64)) * ((_g0 : GoInt64));
	var _f2g1:GoInt64 = ((_f2 : GoInt64)) * ((_g1 : GoInt64));
	var _f2g2:GoInt64 = ((_f2 : GoInt64)) * ((_g2 : GoInt64));
	var _f2g3:GoInt64 = ((_f2 : GoInt64)) * ((_g3 : GoInt64));
	var _f2g4:GoInt64 = ((_f2 : GoInt64)) * ((_g4 : GoInt64));
	var _f2g5:GoInt64 = ((_f2 : GoInt64)) * ((_g5 : GoInt64));
	var _f2g6:GoInt64 = ((_f2 : GoInt64)) * ((_g6 : GoInt64));
	var _f2g7:GoInt64 = ((_f2 : GoInt64)) * ((_g7 : GoInt64));
	var _f2g8_19:GoInt64 = ((_f2 : GoInt64)) * ((_g8_19 : GoInt64));
	var _f2g9_19:GoInt64 = ((_f2 : GoInt64)) * ((_g9_19 : GoInt64));
	var _f3g0:GoInt64 = ((_f3 : GoInt64)) * ((_g0 : GoInt64));
	var _f3g1_2:GoInt64 = ((_f3_2 : GoInt64)) * ((_g1 : GoInt64));
	var _f3g2:GoInt64 = ((_f3 : GoInt64)) * ((_g2 : GoInt64));
	var _f3g3_2:GoInt64 = ((_f3_2 : GoInt64)) * ((_g3 : GoInt64));
	var _f3g4:GoInt64 = ((_f3 : GoInt64)) * ((_g4 : GoInt64));
	var _f3g5_2:GoInt64 = ((_f3_2 : GoInt64)) * ((_g5 : GoInt64));
	var _f3g6:GoInt64 = ((_f3 : GoInt64)) * ((_g6 : GoInt64));
	var _f3g7_38:GoInt64 = ((_f3_2 : GoInt64)) * ((_g7_19 : GoInt64));
	var _f3g8_19:GoInt64 = ((_f3 : GoInt64)) * ((_g8_19 : GoInt64));
	var _f3g9_38:GoInt64 = ((_f3_2 : GoInt64)) * ((_g9_19 : GoInt64));
	var _f4g0:GoInt64 = ((_f4 : GoInt64)) * ((_g0 : GoInt64));
	var _f4g1:GoInt64 = ((_f4 : GoInt64)) * ((_g1 : GoInt64));
	var _f4g2:GoInt64 = ((_f4 : GoInt64)) * ((_g2 : GoInt64));
	var _f4g3:GoInt64 = ((_f4 : GoInt64)) * ((_g3 : GoInt64));
	var _f4g4:GoInt64 = ((_f4 : GoInt64)) * ((_g4 : GoInt64));
	var _f4g5:GoInt64 = ((_f4 : GoInt64)) * ((_g5 : GoInt64));
	var _f4g6_19:GoInt64 = ((_f4 : GoInt64)) * ((_g6_19 : GoInt64));
	var _f4g7_19:GoInt64 = ((_f4 : GoInt64)) * ((_g7_19 : GoInt64));
	var _f4g8_19:GoInt64 = ((_f4 : GoInt64)) * ((_g8_19 : GoInt64));
	var _f4g9_19:GoInt64 = ((_f4 : GoInt64)) * ((_g9_19 : GoInt64));
	var _f5g0:GoInt64 = ((_f5 : GoInt64)) * ((_g0 : GoInt64));
	var _f5g1_2:GoInt64 = ((_f5_2 : GoInt64)) * ((_g1 : GoInt64));
	var _f5g2:GoInt64 = ((_f5 : GoInt64)) * ((_g2 : GoInt64));
	var _f5g3_2:GoInt64 = ((_f5_2 : GoInt64)) * ((_g3 : GoInt64));
	var _f5g4:GoInt64 = ((_f5 : GoInt64)) * ((_g4 : GoInt64));
	var _f5g5_38:GoInt64 = ((_f5_2 : GoInt64)) * ((_g5_19 : GoInt64));
	var _f5g6_19:GoInt64 = ((_f5 : GoInt64)) * ((_g6_19 : GoInt64));
	var _f5g7_38:GoInt64 = ((_f5_2 : GoInt64)) * ((_g7_19 : GoInt64));
	var _f5g8_19:GoInt64 = ((_f5 : GoInt64)) * ((_g8_19 : GoInt64));
	var _f5g9_38:GoInt64 = ((_f5_2 : GoInt64)) * ((_g9_19 : GoInt64));
	var _f6g0:GoInt64 = ((_f6 : GoInt64)) * ((_g0 : GoInt64));
	var _f6g1:GoInt64 = ((_f6 : GoInt64)) * ((_g1 : GoInt64));
	var _f6g2:GoInt64 = ((_f6 : GoInt64)) * ((_g2 : GoInt64));
	var _f6g3:GoInt64 = ((_f6 : GoInt64)) * ((_g3 : GoInt64));
	var _f6g4_19:GoInt64 = ((_f6 : GoInt64)) * ((_g4_19 : GoInt64));
	var _f6g5_19:GoInt64 = ((_f6 : GoInt64)) * ((_g5_19 : GoInt64));
	var _f6g6_19:GoInt64 = ((_f6 : GoInt64)) * ((_g6_19 : GoInt64));
	var _f6g7_19:GoInt64 = ((_f6 : GoInt64)) * ((_g7_19 : GoInt64));
	var _f6g8_19:GoInt64 = ((_f6 : GoInt64)) * ((_g8_19 : GoInt64));
	var _f6g9_19:GoInt64 = ((_f6 : GoInt64)) * ((_g9_19 : GoInt64));
	var _f7g0:GoInt64 = ((_f7 : GoInt64)) * ((_g0 : GoInt64));
	var _f7g1_2:GoInt64 = ((_f7_2 : GoInt64)) * ((_g1 : GoInt64));
	var _f7g2:GoInt64 = ((_f7 : GoInt64)) * ((_g2 : GoInt64));
	var _f7g3_38:GoInt64 = ((_f7_2 : GoInt64)) * ((_g3_19 : GoInt64));
	var _f7g4_19:GoInt64 = ((_f7 : GoInt64)) * ((_g4_19 : GoInt64));
	var _f7g5_38:GoInt64 = ((_f7_2 : GoInt64)) * ((_g5_19 : GoInt64));
	var _f7g6_19:GoInt64 = ((_f7 : GoInt64)) * ((_g6_19 : GoInt64));
	var _f7g7_38:GoInt64 = ((_f7_2 : GoInt64)) * ((_g7_19 : GoInt64));
	var _f7g8_19:GoInt64 = ((_f7 : GoInt64)) * ((_g8_19 : GoInt64));
	var _f7g9_38:GoInt64 = ((_f7_2 : GoInt64)) * ((_g9_19 : GoInt64));
	var _f8g0:GoInt64 = ((_f8 : GoInt64)) * ((_g0 : GoInt64));
	var _f8g1:GoInt64 = ((_f8 : GoInt64)) * ((_g1 : GoInt64));
	var _f8g2_19:GoInt64 = ((_f8 : GoInt64)) * ((_g2_19 : GoInt64));
	var _f8g3_19:GoInt64 = ((_f8 : GoInt64)) * ((_g3_19 : GoInt64));
	var _f8g4_19:GoInt64 = ((_f8 : GoInt64)) * ((_g4_19 : GoInt64));
	var _f8g5_19:GoInt64 = ((_f8 : GoInt64)) * ((_g5_19 : GoInt64));
	var _f8g6_19:GoInt64 = ((_f8 : GoInt64)) * ((_g6_19 : GoInt64));
	var _f8g7_19:GoInt64 = ((_f8 : GoInt64)) * ((_g7_19 : GoInt64));
	var _f8g8_19:GoInt64 = ((_f8 : GoInt64)) * ((_g8_19 : GoInt64));
	var _f8g9_19:GoInt64 = ((_f8 : GoInt64)) * ((_g9_19 : GoInt64));
	var _f9g0:GoInt64 = ((_f9 : GoInt64)) * ((_g0 : GoInt64));
	var _f9g1_38:GoInt64 = ((_f9_2 : GoInt64)) * ((_g1_19 : GoInt64));
	var _f9g2_19:GoInt64 = ((_f9 : GoInt64)) * ((_g2_19 : GoInt64));
	var _f9g3_38:GoInt64 = ((_f9_2 : GoInt64)) * ((_g3_19 : GoInt64));
	var _f9g4_19:GoInt64 = ((_f9 : GoInt64)) * ((_g4_19 : GoInt64));
	var _f9g5_38:GoInt64 = ((_f9_2 : GoInt64)) * ((_g5_19 : GoInt64));
	var _f9g6_19:GoInt64 = ((_f9 : GoInt64)) * ((_g6_19 : GoInt64));
	var _f9g7_38:GoInt64 = ((_f9_2 : GoInt64)) * ((_g7_19 : GoInt64));
	var _f9g8_19:GoInt64 = ((_f9 : GoInt64)) * ((_g8_19 : GoInt64));
	var _f9g9_38:GoInt64 = ((_f9_2 : GoInt64)) * ((_g9_19 : GoInt64));
	var _h0:GoInt64 = _f0g0 + _f1g9_38 + _f2g8_19 + _f3g7_38 + _f4g6_19 + _f5g5_38 + _f6g4_19 + _f7g3_38 + _f8g2_19 + _f9g1_38;
	var _h1:GoInt64 = _f0g1 + _f1g0 + _f2g9_19 + _f3g8_19 + _f4g7_19 + _f5g6_19 + _f6g5_19 + _f7g4_19 + _f8g3_19 + _f9g2_19;
	var _h2:GoInt64 = _f0g2 + _f1g1_2 + _f2g0 + _f3g9_38 + _f4g8_19 + _f5g7_38 + _f6g6_19 + _f7g5_38 + _f8g4_19 + _f9g3_38;
	var _h3:GoInt64 = _f0g3 + _f1g2 + _f2g1 + _f3g0 + _f4g9_19 + _f5g8_19 + _f6g7_19 + _f7g6_19 + _f8g5_19 + _f9g4_19;
	var _h4:GoInt64 = _f0g4 + _f1g3_2 + _f2g2 + _f3g1_2 + _f4g0 + _f5g9_38 + _f6g8_19 + _f7g7_38 + _f8g6_19 + _f9g5_38;
	var _h5:GoInt64 = _f0g5 + _f1g4 + _f2g3 + _f3g2 + _f4g1 + _f5g0 + _f6g9_19 + _f7g8_19 + _f8g7_19 + _f9g6_19;
	var _h6:GoInt64 = _f0g6 + _f1g5_2 + _f2g4 + _f3g3_2 + _f4g2 + _f5g1_2 + _f6g0 + _f7g9_38 + _f8g8_19 + _f9g7_38;
	var _h7:GoInt64 = _f0g7 + _f1g6 + _f2g5 + _f3g4 + _f4g3 + _f5g2 + _f6g1 + _f7g0 + _f8g9_19 + _f9g8_19;
	var _h8:GoInt64 = _f0g8 + _f1g7_2 + _f2g6 + _f3g5_2 + _f4g4 + _f5g3_2 + _f6g2 + _f7g1_2 + _f8g0 + _f9g9_38;
	var _h9:GoInt64 = _f0g9 + _f1g8 + _f2g7 + _f3g6 + _f4g5 + _f5g4 + _f6g3 + _f7g2 + _f8g1 + _f9g0;
	var _carry:GoArray<GoInt64> = new GoArray<GoInt64>(...[for (i in 0...10) ((0 : GoInt64))]);
	_carry[((0 : GoInt))] = ((_h0 + ((((1 : GoUnTypedInt)) << ((25 : GoUnTypedInt))))) >> ((26 : GoUnTypedInt)));
	_h1 = _h1 + (_carry[((0 : GoInt))]);
	_h0 = _h0 - ((_carry[((0 : GoInt))] << ((26 : GoUnTypedInt))));
	_carry[((4 : GoInt))] = ((_h4 + ((((1 : GoUnTypedInt)) << ((25 : GoUnTypedInt))))) >> ((26 : GoUnTypedInt)));
	_h5 = _h5 + (_carry[((4 : GoInt))]);
	_h4 = _h4 - ((_carry[((4 : GoInt))] << ((26 : GoUnTypedInt))));
	_carry[((1 : GoInt))] = ((_h1 + ((((1 : GoUnTypedInt)) << ((24 : GoUnTypedInt))))) >> ((25 : GoUnTypedInt)));
	_h2 = _h2 + (_carry[((1 : GoInt))]);
	_h1 = _h1 - ((_carry[((1 : GoInt))] << ((25 : GoUnTypedInt))));
	_carry[((5 : GoInt))] = ((_h5 + ((((1 : GoUnTypedInt)) << ((24 : GoUnTypedInt))))) >> ((25 : GoUnTypedInt)));
	_h6 = _h6 + (_carry[((5 : GoInt))]);
	_h5 = _h5 - ((_carry[((5 : GoInt))] << ((25 : GoUnTypedInt))));
	_carry[((2 : GoInt))] = ((_h2 + ((((1 : GoUnTypedInt)) << ((25 : GoUnTypedInt))))) >> ((26 : GoUnTypedInt)));
	_h3 = _h3 + (_carry[((2 : GoInt))]);
	_h2 = _h2 - ((_carry[((2 : GoInt))] << ((26 : GoUnTypedInt))));
	_carry[((6 : GoInt))] = ((_h6 + ((((1 : GoUnTypedInt)) << ((25 : GoUnTypedInt))))) >> ((26 : GoUnTypedInt)));
	_h7 = _h7 + (_carry[((6 : GoInt))]);
	_h6 = _h6 - ((_carry[((6 : GoInt))] << ((26 : GoUnTypedInt))));
	_carry[((3 : GoInt))] = ((_h3 + ((((1 : GoUnTypedInt)) << ((24 : GoUnTypedInt))))) >> ((25 : GoUnTypedInt)));
	_h4 = _h4 + (_carry[((3 : GoInt))]);
	_h3 = _h3 - ((_carry[((3 : GoInt))] << ((25 : GoUnTypedInt))));
	_carry[((7 : GoInt))] = ((_h7 + ((((1 : GoUnTypedInt)) << ((24 : GoUnTypedInt))))) >> ((25 : GoUnTypedInt)));
	_h8 = _h8 + (_carry[((7 : GoInt))]);
	_h7 = _h7 - ((_carry[((7 : GoInt))] << ((25 : GoUnTypedInt))));
	_carry[((4 : GoInt))] = ((_h4 + ((((1 : GoUnTypedInt)) << ((25 : GoUnTypedInt))))) >> ((26 : GoUnTypedInt)));
	_h5 = _h5 + (_carry[((4 : GoInt))]);
	_h4 = _h4 - ((_carry[((4 : GoInt))] << ((26 : GoUnTypedInt))));
	_carry[((8 : GoInt))] = ((_h8 + ((((1 : GoUnTypedInt)) << ((25 : GoUnTypedInt))))) >> ((26 : GoUnTypedInt)));
	_h9 = _h9 + (_carry[((8 : GoInt))]);
	_h8 = _h8 - ((_carry[((8 : GoInt))] << ((26 : GoUnTypedInt))));
	_carry[((9 : GoInt))] = ((_h9 + ((((1 : GoUnTypedInt)) << ((24 : GoUnTypedInt))))) >> ((25 : GoUnTypedInt)));
	_h0 = _h0 + (_carry[((9 : GoInt))] * ((19 : GoInt64)));
	_h9 = _h9 - ((_carry[((9 : GoInt))] << ((25 : GoUnTypedInt))));
	_carry[((0 : GoInt))] = ((_h0 + ((((1 : GoUnTypedInt)) << ((25 : GoUnTypedInt))))) >> ((26 : GoUnTypedInt)));
	_h1 = _h1 + (_carry[((0 : GoInt))]);
	_h0 = _h0 - ((_carry[((0 : GoInt))] << ((26 : GoUnTypedInt))));
	_h.value.__t__[((0 : GoInt))] = ((_h0 : GoInt32));
	_h.value.__t__[((1 : GoInt))] = ((_h1 : GoInt32));
	_h.value.__t__[((2 : GoInt))] = ((_h2 : GoInt32));
	_h.value.__t__[((3 : GoInt))] = ((_h3 : GoInt32));
	_h.value.__t__[((4 : GoInt))] = ((_h4 : GoInt32));
	_h.value.__t__[((5 : GoInt))] = ((_h5 : GoInt32));
	_h.value.__t__[((6 : GoInt))] = ((_h6 : GoInt32));
	_h.value.__t__[((7 : GoInt))] = ((_h7 : GoInt32));
	_h.value.__t__[((8 : GoInt))] = ((_h8 : GoInt32));
	_h.value.__t__[((9 : GoInt))] = ((_h9 : GoInt32));
}

/**
	// feSquare calculates h = f*f. Can overlap h with f.
	//
	// Preconditions:
	//    |f| bounded by 1.1*2^26,1.1*2^25,1.1*2^26,1.1*2^25,etc.
	//
	// Postconditions:
	//    |h| bounded by 1.1*2^25,1.1*2^24,1.1*2^25,1.1*2^24,etc.
**/
function _feSquare(_h:Pointer<T_fieldElement>, _f:Pointer<T_fieldElement>):Void {
	var _f0:GoInt32 = _f.value.__t__[((0 : GoInt))];
	var _f1:GoInt32 = _f.value.__t__[((1 : GoInt))];
	var _f2:GoInt32 = _f.value.__t__[((2 : GoInt))];
	var _f3:GoInt32 = _f.value.__t__[((3 : GoInt))];
	var _f4:GoInt32 = _f.value.__t__[((4 : GoInt))];
	var _f5:GoInt32 = _f.value.__t__[((5 : GoInt))];
	var _f6:GoInt32 = _f.value.__t__[((6 : GoInt))];
	var _f7:GoInt32 = _f.value.__t__[((7 : GoInt))];
	var _f8:GoInt32 = _f.value.__t__[((8 : GoInt))];
	var _f9:GoInt32 = _f.value.__t__[((9 : GoInt))];
	var _f0_2:GoInt32 = ((2 : GoInt32)) * _f0;
	var _f1_2:GoInt32 = ((2 : GoInt32)) * _f1;
	var _f2_2:GoInt32 = ((2 : GoInt32)) * _f2;
	var _f3_2:GoInt32 = ((2 : GoInt32)) * _f3;
	var _f4_2:GoInt32 = ((2 : GoInt32)) * _f4;
	var _f5_2:GoInt32 = ((2 : GoInt32)) * _f5;
	var _f6_2:GoInt32 = ((2 : GoInt32)) * _f6;
	var _f7_2:GoInt32 = ((2 : GoInt32)) * _f7;
	var _f5_38:GoInt32 = ((38 : GoInt32)) * _f5;
	var _f6_19:GoInt32 = ((19 : GoInt32)) * _f6;
	var _f7_38:GoInt32 = ((38 : GoInt32)) * _f7;
	var _f8_19:GoInt32 = ((19 : GoInt32)) * _f8;
	var _f9_38:GoInt32 = ((38 : GoInt32)) * _f9;
	var _f0f0:GoInt64 = ((_f0 : GoInt64)) * ((_f0 : GoInt64));
	var _f0f1_2:GoInt64 = ((_f0_2 : GoInt64)) * ((_f1 : GoInt64));
	var _f0f2_2:GoInt64 = ((_f0_2 : GoInt64)) * ((_f2 : GoInt64));
	var _f0f3_2:GoInt64 = ((_f0_2 : GoInt64)) * ((_f3 : GoInt64));
	var _f0f4_2:GoInt64 = ((_f0_2 : GoInt64)) * ((_f4 : GoInt64));
	var _f0f5_2:GoInt64 = ((_f0_2 : GoInt64)) * ((_f5 : GoInt64));
	var _f0f6_2:GoInt64 = ((_f0_2 : GoInt64)) * ((_f6 : GoInt64));
	var _f0f7_2:GoInt64 = ((_f0_2 : GoInt64)) * ((_f7 : GoInt64));
	var _f0f8_2:GoInt64 = ((_f0_2 : GoInt64)) * ((_f8 : GoInt64));
	var _f0f9_2:GoInt64 = ((_f0_2 : GoInt64)) * ((_f9 : GoInt64));
	var _f1f1_2:GoInt64 = ((_f1_2 : GoInt64)) * ((_f1 : GoInt64));
	var _f1f2_2:GoInt64 = ((_f1_2 : GoInt64)) * ((_f2 : GoInt64));
	var _f1f3_4:GoInt64 = ((_f1_2 : GoInt64)) * ((_f3_2 : GoInt64));
	var _f1f4_2:GoInt64 = ((_f1_2 : GoInt64)) * ((_f4 : GoInt64));
	var _f1f5_4:GoInt64 = ((_f1_2 : GoInt64)) * ((_f5_2 : GoInt64));
	var _f1f6_2:GoInt64 = ((_f1_2 : GoInt64)) * ((_f6 : GoInt64));
	var _f1f7_4:GoInt64 = ((_f1_2 : GoInt64)) * ((_f7_2 : GoInt64));
	var _f1f8_2:GoInt64 = ((_f1_2 : GoInt64)) * ((_f8 : GoInt64));
	var _f1f9_76:GoInt64 = ((_f1_2 : GoInt64)) * ((_f9_38 : GoInt64));
	var _f2f2:GoInt64 = ((_f2 : GoInt64)) * ((_f2 : GoInt64));
	var _f2f3_2:GoInt64 = ((_f2_2 : GoInt64)) * ((_f3 : GoInt64));
	var _f2f4_2:GoInt64 = ((_f2_2 : GoInt64)) * ((_f4 : GoInt64));
	var _f2f5_2:GoInt64 = ((_f2_2 : GoInt64)) * ((_f5 : GoInt64));
	var _f2f6_2:GoInt64 = ((_f2_2 : GoInt64)) * ((_f6 : GoInt64));
	var _f2f7_2:GoInt64 = ((_f2_2 : GoInt64)) * ((_f7 : GoInt64));
	var _f2f8_38:GoInt64 = ((_f2_2 : GoInt64)) * ((_f8_19 : GoInt64));
	var _f2f9_38:GoInt64 = ((_f2 : GoInt64)) * ((_f9_38 : GoInt64));
	var _f3f3_2:GoInt64 = ((_f3_2 : GoInt64)) * ((_f3 : GoInt64));
	var _f3f4_2:GoInt64 = ((_f3_2 : GoInt64)) * ((_f4 : GoInt64));
	var _f3f5_4:GoInt64 = ((_f3_2 : GoInt64)) * ((_f5_2 : GoInt64));
	var _f3f6_2:GoInt64 = ((_f3_2 : GoInt64)) * ((_f6 : GoInt64));
	var _f3f7_76:GoInt64 = ((_f3_2 : GoInt64)) * ((_f7_38 : GoInt64));
	var _f3f8_38:GoInt64 = ((_f3_2 : GoInt64)) * ((_f8_19 : GoInt64));
	var _f3f9_76:GoInt64 = ((_f3_2 : GoInt64)) * ((_f9_38 : GoInt64));
	var _f4f4:GoInt64 = ((_f4 : GoInt64)) * ((_f4 : GoInt64));
	var _f4f5_2:GoInt64 = ((_f4_2 : GoInt64)) * ((_f5 : GoInt64));
	var _f4f6_38:GoInt64 = ((_f4_2 : GoInt64)) * ((_f6_19 : GoInt64));
	var _f4f7_38:GoInt64 = ((_f4 : GoInt64)) * ((_f7_38 : GoInt64));
	var _f4f8_38:GoInt64 = ((_f4_2 : GoInt64)) * ((_f8_19 : GoInt64));
	var _f4f9_38:GoInt64 = ((_f4 : GoInt64)) * ((_f9_38 : GoInt64));
	var _f5f5_38:GoInt64 = ((_f5 : GoInt64)) * ((_f5_38 : GoInt64));
	var _f5f6_38:GoInt64 = ((_f5_2 : GoInt64)) * ((_f6_19 : GoInt64));
	var _f5f7_76:GoInt64 = ((_f5_2 : GoInt64)) * ((_f7_38 : GoInt64));
	var _f5f8_38:GoInt64 = ((_f5_2 : GoInt64)) * ((_f8_19 : GoInt64));
	var _f5f9_76:GoInt64 = ((_f5_2 : GoInt64)) * ((_f9_38 : GoInt64));
	var _f6f6_19:GoInt64 = ((_f6 : GoInt64)) * ((_f6_19 : GoInt64));
	var _f6f7_38:GoInt64 = ((_f6 : GoInt64)) * ((_f7_38 : GoInt64));
	var _f6f8_38:GoInt64 = ((_f6_2 : GoInt64)) * ((_f8_19 : GoInt64));
	var _f6f9_38:GoInt64 = ((_f6 : GoInt64)) * ((_f9_38 : GoInt64));
	var _f7f7_38:GoInt64 = ((_f7 : GoInt64)) * ((_f7_38 : GoInt64));
	var _f7f8_38:GoInt64 = ((_f7_2 : GoInt64)) * ((_f8_19 : GoInt64));
	var _f7f9_76:GoInt64 = ((_f7_2 : GoInt64)) * ((_f9_38 : GoInt64));
	var _f8f8_19:GoInt64 = ((_f8 : GoInt64)) * ((_f8_19 : GoInt64));
	var _f8f9_38:GoInt64 = ((_f8 : GoInt64)) * ((_f9_38 : GoInt64));
	var _f9f9_38:GoInt64 = ((_f9 : GoInt64)) * ((_f9_38 : GoInt64));
	var _h0:GoInt64 = _f0f0 + _f1f9_76 + _f2f8_38 + _f3f7_76 + _f4f6_38 + _f5f5_38;
	var _h1:GoInt64 = _f0f1_2 + _f2f9_38 + _f3f8_38 + _f4f7_38 + _f5f6_38;
	var _h2:GoInt64 = _f0f2_2 + _f1f1_2 + _f3f9_76 + _f4f8_38 + _f5f7_76 + _f6f6_19;
	var _h3:GoInt64 = _f0f3_2 + _f1f2_2 + _f4f9_38 + _f5f8_38 + _f6f7_38;
	var _h4:GoInt64 = _f0f4_2 + _f1f3_4 + _f2f2 + _f5f9_76 + _f6f8_38 + _f7f7_38;
	var _h5:GoInt64 = _f0f5_2 + _f1f4_2 + _f2f3_2 + _f6f9_38 + _f7f8_38;
	var _h6:GoInt64 = _f0f6_2 + _f1f5_4 + _f2f4_2 + _f3f3_2 + _f7f9_76 + _f8f8_19;
	var _h7:GoInt64 = _f0f7_2 + _f1f6_2 + _f2f5_2 + _f3f4_2 + _f8f9_38;
	var _h8:GoInt64 = _f0f8_2 + _f1f7_4 + _f2f6_2 + _f3f5_4 + _f4f4 + _f9f9_38;
	var _h9:GoInt64 = _f0f9_2 + _f1f8_2 + _f2f7_2 + _f3f6_2 + _f4f5_2;
	var _carry:GoArray<GoInt64> = new GoArray<GoInt64>(...[for (i in 0...10) ((0 : GoInt64))]);
	_carry[((0 : GoInt))] = ((_h0 + ((((1 : GoUnTypedInt)) << ((25 : GoUnTypedInt))))) >> ((26 : GoUnTypedInt)));
	_h1 = _h1 + (_carry[((0 : GoInt))]);
	_h0 = _h0 - ((_carry[((0 : GoInt))] << ((26 : GoUnTypedInt))));
	_carry[((4 : GoInt))] = ((_h4 + ((((1 : GoUnTypedInt)) << ((25 : GoUnTypedInt))))) >> ((26 : GoUnTypedInt)));
	_h5 = _h5 + (_carry[((4 : GoInt))]);
	_h4 = _h4 - ((_carry[((4 : GoInt))] << ((26 : GoUnTypedInt))));
	_carry[((1 : GoInt))] = ((_h1 + ((((1 : GoUnTypedInt)) << ((24 : GoUnTypedInt))))) >> ((25 : GoUnTypedInt)));
	_h2 = _h2 + (_carry[((1 : GoInt))]);
	_h1 = _h1 - ((_carry[((1 : GoInt))] << ((25 : GoUnTypedInt))));
	_carry[((5 : GoInt))] = ((_h5 + ((((1 : GoUnTypedInt)) << ((24 : GoUnTypedInt))))) >> ((25 : GoUnTypedInt)));
	_h6 = _h6 + (_carry[((5 : GoInt))]);
	_h5 = _h5 - ((_carry[((5 : GoInt))] << ((25 : GoUnTypedInt))));
	_carry[((2 : GoInt))] = ((_h2 + ((((1 : GoUnTypedInt)) << ((25 : GoUnTypedInt))))) >> ((26 : GoUnTypedInt)));
	_h3 = _h3 + (_carry[((2 : GoInt))]);
	_h2 = _h2 - ((_carry[((2 : GoInt))] << ((26 : GoUnTypedInt))));
	_carry[((6 : GoInt))] = ((_h6 + ((((1 : GoUnTypedInt)) << ((25 : GoUnTypedInt))))) >> ((26 : GoUnTypedInt)));
	_h7 = _h7 + (_carry[((6 : GoInt))]);
	_h6 = _h6 - ((_carry[((6 : GoInt))] << ((26 : GoUnTypedInt))));
	_carry[((3 : GoInt))] = ((_h3 + ((((1 : GoUnTypedInt)) << ((24 : GoUnTypedInt))))) >> ((25 : GoUnTypedInt)));
	_h4 = _h4 + (_carry[((3 : GoInt))]);
	_h3 = _h3 - ((_carry[((3 : GoInt))] << ((25 : GoUnTypedInt))));
	_carry[((7 : GoInt))] = ((_h7 + ((((1 : GoUnTypedInt)) << ((24 : GoUnTypedInt))))) >> ((25 : GoUnTypedInt)));
	_h8 = _h8 + (_carry[((7 : GoInt))]);
	_h7 = _h7 - ((_carry[((7 : GoInt))] << ((25 : GoUnTypedInt))));
	_carry[((4 : GoInt))] = ((_h4 + ((((1 : GoUnTypedInt)) << ((25 : GoUnTypedInt))))) >> ((26 : GoUnTypedInt)));
	_h5 = _h5 + (_carry[((4 : GoInt))]);
	_h4 = _h4 - ((_carry[((4 : GoInt))] << ((26 : GoUnTypedInt))));
	_carry[((8 : GoInt))] = ((_h8 + ((((1 : GoUnTypedInt)) << ((25 : GoUnTypedInt))))) >> ((26 : GoUnTypedInt)));
	_h9 = _h9 + (_carry[((8 : GoInt))]);
	_h8 = _h8 - ((_carry[((8 : GoInt))] << ((26 : GoUnTypedInt))));
	_carry[((9 : GoInt))] = ((_h9 + ((((1 : GoUnTypedInt)) << ((24 : GoUnTypedInt))))) >> ((25 : GoUnTypedInt)));
	_h0 = _h0 + (_carry[((9 : GoInt))] * ((19 : GoInt64)));
	_h9 = _h9 - ((_carry[((9 : GoInt))] << ((25 : GoUnTypedInt))));
	_carry[((0 : GoInt))] = ((_h0 + ((((1 : GoUnTypedInt)) << ((25 : GoUnTypedInt))))) >> ((26 : GoUnTypedInt)));
	_h1 = _h1 + (_carry[((0 : GoInt))]);
	_h0 = _h0 - ((_carry[((0 : GoInt))] << ((26 : GoUnTypedInt))));
	_h.value.__t__[((0 : GoInt))] = ((_h0 : GoInt32));
	_h.value.__t__[((1 : GoInt))] = ((_h1 : GoInt32));
	_h.value.__t__[((2 : GoInt))] = ((_h2 : GoInt32));
	_h.value.__t__[((3 : GoInt))] = ((_h3 : GoInt32));
	_h.value.__t__[((4 : GoInt))] = ((_h4 : GoInt32));
	_h.value.__t__[((5 : GoInt))] = ((_h5 : GoInt32));
	_h.value.__t__[((6 : GoInt))] = ((_h6 : GoInt32));
	_h.value.__t__[((7 : GoInt))] = ((_h7 : GoInt32));
	_h.value.__t__[((8 : GoInt))] = ((_h8 : GoInt32));
	_h.value.__t__[((9 : GoInt))] = ((_h9 : GoInt32));
}

/**
	// feMul121666 calculates h = f * 121666. Can overlap h with f.
	//
	// Preconditions:
	//    |f| bounded by 1.1*2^26,1.1*2^25,1.1*2^26,1.1*2^25,etc.
	//
	// Postconditions:
	//    |h| bounded by 1.1*2^25,1.1*2^24,1.1*2^25,1.1*2^24,etc.
**/
function _feMul121666(_h:Pointer<T_fieldElement>, _f:Pointer<T_fieldElement>):Void {
	var _h0:GoInt64 = ((_f.value.__t__[((0 : GoInt))] : GoInt64)) * ((121666 : GoInt64));
	var _h1:GoInt64 = ((_f.value.__t__[((1 : GoInt))] : GoInt64)) * ((121666 : GoInt64));
	var _h2:GoInt64 = ((_f.value.__t__[((2 : GoInt))] : GoInt64)) * ((121666 : GoInt64));
	var _h3:GoInt64 = ((_f.value.__t__[((3 : GoInt))] : GoInt64)) * ((121666 : GoInt64));
	var _h4:GoInt64 = ((_f.value.__t__[((4 : GoInt))] : GoInt64)) * ((121666 : GoInt64));
	var _h5:GoInt64 = ((_f.value.__t__[((5 : GoInt))] : GoInt64)) * ((121666 : GoInt64));
	var _h6:GoInt64 = ((_f.value.__t__[((6 : GoInt))] : GoInt64)) * ((121666 : GoInt64));
	var _h7:GoInt64 = ((_f.value.__t__[((7 : GoInt))] : GoInt64)) * ((121666 : GoInt64));
	var _h8:GoInt64 = ((_f.value.__t__[((8 : GoInt))] : GoInt64)) * ((121666 : GoInt64));
	var _h9:GoInt64 = ((_f.value.__t__[((9 : GoInt))] : GoInt64)) * ((121666 : GoInt64));
	var _carry:GoArray<GoInt64> = new GoArray<GoInt64>(...[for (i in 0...10) ((0 : GoInt64))]);
	_carry[((9 : GoInt))] = ((_h9 + ((((1 : GoUnTypedInt)) << ((24 : GoUnTypedInt))))) >> ((25 : GoUnTypedInt)));
	_h0 = _h0 + (_carry[((9 : GoInt))] * ((19 : GoInt64)));
	_h9 = _h9 - ((_carry[((9 : GoInt))] << ((25 : GoUnTypedInt))));
	_carry[((1 : GoInt))] = ((_h1 + ((((1 : GoUnTypedInt)) << ((24 : GoUnTypedInt))))) >> ((25 : GoUnTypedInt)));
	_h2 = _h2 + (_carry[((1 : GoInt))]);
	_h1 = _h1 - ((_carry[((1 : GoInt))] << ((25 : GoUnTypedInt))));
	_carry[((3 : GoInt))] = ((_h3 + ((((1 : GoUnTypedInt)) << ((24 : GoUnTypedInt))))) >> ((25 : GoUnTypedInt)));
	_h4 = _h4 + (_carry[((3 : GoInt))]);
	_h3 = _h3 - ((_carry[((3 : GoInt))] << ((25 : GoUnTypedInt))));
	_carry[((5 : GoInt))] = ((_h5 + ((((1 : GoUnTypedInt)) << ((24 : GoUnTypedInt))))) >> ((25 : GoUnTypedInt)));
	_h6 = _h6 + (_carry[((5 : GoInt))]);
	_h5 = _h5 - ((_carry[((5 : GoInt))] << ((25 : GoUnTypedInt))));
	_carry[((7 : GoInt))] = ((_h7 + ((((1 : GoUnTypedInt)) << ((24 : GoUnTypedInt))))) >> ((25 : GoUnTypedInt)));
	_h8 = _h8 + (_carry[((7 : GoInt))]);
	_h7 = _h7 - ((_carry[((7 : GoInt))] << ((25 : GoUnTypedInt))));
	_carry[((0 : GoInt))] = ((_h0 + ((((1 : GoUnTypedInt)) << ((25 : GoUnTypedInt))))) >> ((26 : GoUnTypedInt)));
	_h1 = _h1 + (_carry[((0 : GoInt))]);
	_h0 = _h0 - ((_carry[((0 : GoInt))] << ((26 : GoUnTypedInt))));
	_carry[((2 : GoInt))] = ((_h2 + ((((1 : GoUnTypedInt)) << ((25 : GoUnTypedInt))))) >> ((26 : GoUnTypedInt)));
	_h3 = _h3 + (_carry[((2 : GoInt))]);
	_h2 = _h2 - ((_carry[((2 : GoInt))] << ((26 : GoUnTypedInt))));
	_carry[((4 : GoInt))] = ((_h4 + ((((1 : GoUnTypedInt)) << ((25 : GoUnTypedInt))))) >> ((26 : GoUnTypedInt)));
	_h5 = _h5 + (_carry[((4 : GoInt))]);
	_h4 = _h4 - ((_carry[((4 : GoInt))] << ((26 : GoUnTypedInt))));
	_carry[((6 : GoInt))] = ((_h6 + ((((1 : GoUnTypedInt)) << ((25 : GoUnTypedInt))))) >> ((26 : GoUnTypedInt)));
	_h7 = _h7 + (_carry[((6 : GoInt))]);
	_h6 = _h6 - ((_carry[((6 : GoInt))] << ((26 : GoUnTypedInt))));
	_carry[((8 : GoInt))] = ((_h8 + ((((1 : GoUnTypedInt)) << ((25 : GoUnTypedInt))))) >> ((26 : GoUnTypedInt)));
	_h9 = _h9 + (_carry[((8 : GoInt))]);
	_h8 = _h8 - ((_carry[((8 : GoInt))] << ((26 : GoUnTypedInt))));
	_h.value.__t__[((0 : GoInt))] = ((_h0 : GoInt32));
	_h.value.__t__[((1 : GoInt))] = ((_h1 : GoInt32));
	_h.value.__t__[((2 : GoInt))] = ((_h2 : GoInt32));
	_h.value.__t__[((3 : GoInt))] = ((_h3 : GoInt32));
	_h.value.__t__[((4 : GoInt))] = ((_h4 : GoInt32));
	_h.value.__t__[((5 : GoInt))] = ((_h5 : GoInt32));
	_h.value.__t__[((6 : GoInt))] = ((_h6 : GoInt32));
	_h.value.__t__[((7 : GoInt))] = ((_h7 : GoInt32));
	_h.value.__t__[((8 : GoInt))] = ((_h8 : GoInt32));
	_h.value.__t__[((9 : GoInt))] = ((_h9 : GoInt32));
}

/**
	// feInvert sets out = z^-1.
**/
function _feInvert(_out:Pointer<T_fieldElement>, _z:Pointer<T_fieldElement>):Void {
	var _t0:T_fieldElement = new T_fieldElement(),
		_t1:T_fieldElement = new T_fieldElement(),
		_t2:T_fieldElement = new T_fieldElement(),
		_t3:T_fieldElement = new T_fieldElement();
	var _i:GoInt = ((0 : GoInt));
	_feSquare(Go.pointer(_t0), _z);
	{
		_i = ((1 : GoInt));
		Go.cfor(_i < ((1 : GoInt)), _i++, {
			_feSquare(Go.pointer(_t0), Go.pointer(_t0));
		});
	};
	_feSquare(Go.pointer(_t1), Go.pointer(_t0));
	{
		_i = ((1 : GoInt));
		Go.cfor(_i < ((2 : GoInt)), _i++, {
			_feSquare(Go.pointer(_t1), Go.pointer(_t1));
		});
	};
	_feMul(Go.pointer(_t1), _z, Go.pointer(_t1));
	_feMul(Go.pointer(_t0), Go.pointer(_t0), Go.pointer(_t1));
	_feSquare(Go.pointer(_t2), Go.pointer(_t0));
	{
		_i = ((1 : GoInt));
		Go.cfor(_i < ((1 : GoInt)), _i++, {
			_feSquare(Go.pointer(_t2), Go.pointer(_t2));
		});
	};
	_feMul(Go.pointer(_t1), Go.pointer(_t1), Go.pointer(_t2));
	_feSquare(Go.pointer(_t2), Go.pointer(_t1));
	{
		_i = ((1 : GoInt));
		Go.cfor(_i < ((5 : GoInt)), _i++, {
			_feSquare(Go.pointer(_t2), Go.pointer(_t2));
		});
	};
	_feMul(Go.pointer(_t1), Go.pointer(_t2), Go.pointer(_t1));
	_feSquare(Go.pointer(_t2), Go.pointer(_t1));
	{
		_i = ((1 : GoInt));
		Go.cfor(_i < ((10 : GoInt)), _i++, {
			_feSquare(Go.pointer(_t2), Go.pointer(_t2));
		});
	};
	_feMul(Go.pointer(_t2), Go.pointer(_t2), Go.pointer(_t1));
	_feSquare(Go.pointer(_t3), Go.pointer(_t2));
	{
		_i = ((1 : GoInt));
		Go.cfor(_i < ((20 : GoInt)), _i++, {
			_feSquare(Go.pointer(_t3), Go.pointer(_t3));
		});
	};
	_feMul(Go.pointer(_t2), Go.pointer(_t3), Go.pointer(_t2));
	_feSquare(Go.pointer(_t2), Go.pointer(_t2));
	{
		_i = ((1 : GoInt));
		Go.cfor(_i < ((10 : GoInt)), _i++, {
			_feSquare(Go.pointer(_t2), Go.pointer(_t2));
		});
	};
	_feMul(Go.pointer(_t1), Go.pointer(_t2), Go.pointer(_t1));
	_feSquare(Go.pointer(_t2), Go.pointer(_t1));
	{
		_i = ((1 : GoInt));
		Go.cfor(_i < ((50 : GoInt)), _i++, {
			_feSquare(Go.pointer(_t2), Go.pointer(_t2));
		});
	};
	_feMul(Go.pointer(_t2), Go.pointer(_t2), Go.pointer(_t1));
	_feSquare(Go.pointer(_t3), Go.pointer(_t2));
	{
		_i = ((1 : GoInt));
		Go.cfor(_i < ((100 : GoInt)), _i++, {
			_feSquare(Go.pointer(_t3), Go.pointer(_t3));
		});
	};
	_feMul(Go.pointer(_t2), Go.pointer(_t3), Go.pointer(_t2));
	_feSquare(Go.pointer(_t2), Go.pointer(_t2));
	{
		_i = ((1 : GoInt));
		Go.cfor(_i < ((50 : GoInt)), _i++, {
			_feSquare(Go.pointer(_t2), Go.pointer(_t2));
		});
	};
	_feMul(Go.pointer(_t1), Go.pointer(_t2), Go.pointer(_t1));
	_feSquare(Go.pointer(_t1), Go.pointer(_t1));
	{
		_i = ((1 : GoInt));
		Go.cfor(_i < ((5 : GoInt)), _i++, {
			_feSquare(Go.pointer(_t1), Go.pointer(_t1));
		});
	};
	_feMul(_out, Go.pointer(_t1), Go.pointer(_t0));
}

function _scalarMultGeneric(_out:Pointer<GoArray<GoByte>>, _in:Pointer<GoArray<GoByte>>, _base:Pointer<GoArray<GoByte>>):Void {
	var _e:GoArray<GoByte> = new GoArray<GoUInt8>(...[for (i in 0...32) ((0 : GoUInt8))]);
	Go.copy(_e.__slice__(0), _in.value.__slice__(0));
	_e[((0 : GoInt))] = _e[((0 : GoInt))] & (((248 : GoUInt8)));
	_e[((31 : GoInt))] = _e[((31 : GoInt))] & (((127 : GoUInt8)));
	_e[((31 : GoInt))] = _e[((31 : GoInt))] | (((64 : GoUInt8)));
	var _x1:T_fieldElement = new T_fieldElement(),
		_x2:T_fieldElement = new T_fieldElement(),
		_z2:T_fieldElement = new T_fieldElement(),
		_x3:T_fieldElement = new T_fieldElement(),
		_z3:T_fieldElement = new T_fieldElement(),
		_tmp0:T_fieldElement = new T_fieldElement(),
		_tmp1:T_fieldElement = new T_fieldElement();
	_feFromBytes(Go.pointer(_x1), _base);
	_feOne(Go.pointer(_x2));
	_feCopy(Go.pointer(_x3), Go.pointer(_x1));
	_feOne(Go.pointer(_z3));
	var _swap:GoInt32 = ((((0 : GoInt32)) : GoInt32));
	{
		var _pos:GoInt = ((254 : GoInt));
		Go.cfor(_pos >= ((0 : GoInt)), _pos--, {
			var _b:GoUInt8 = (_e[_pos / ((8 : GoInt))] >> (((_pos & ((7 : GoInt))) : GoUInt)));
			_b = _b & (((1 : GoUInt8)));
			_swap = _swap ^ (((_b : GoInt32)));
			_feCSwap(Go.pointer(_x2), Go.pointer(_x3), _swap);
			_feCSwap(Go.pointer(_z2), Go.pointer(_z3), _swap);
			_swap = ((_b : GoInt32));
			_feSub(Go.pointer(_tmp0), Go.pointer(_x3), Go.pointer(_z3));
			_feSub(Go.pointer(_tmp1), Go.pointer(_x2), Go.pointer(_z2));
			_feAdd(Go.pointer(_x2), Go.pointer(_x2), Go.pointer(_z2));
			_feAdd(Go.pointer(_z2), Go.pointer(_x3), Go.pointer(_z3));
			_feMul(Go.pointer(_z3), Go.pointer(_tmp0), Go.pointer(_x2));
			_feMul(Go.pointer(_z2), Go.pointer(_z2), Go.pointer(_tmp1));
			_feSquare(Go.pointer(_tmp0), Go.pointer(_tmp1));
			_feSquare(Go.pointer(_tmp1), Go.pointer(_x2));
			_feAdd(Go.pointer(_x3), Go.pointer(_z3), Go.pointer(_z2));
			_feSub(Go.pointer(_z2), Go.pointer(_z3), Go.pointer(_z2));
			_feMul(Go.pointer(_x2), Go.pointer(_tmp1), Go.pointer(_tmp0));
			_feSub(Go.pointer(_tmp1), Go.pointer(_tmp1), Go.pointer(_tmp0));
			_feSquare(Go.pointer(_z2), Go.pointer(_z2));
			_feMul121666(Go.pointer(_z3), Go.pointer(_tmp1));
			_feSquare(Go.pointer(_x3), Go.pointer(_x3));
			_feAdd(Go.pointer(_tmp0), Go.pointer(_tmp0), Go.pointer(_z3));
			_feMul(Go.pointer(_z3), Go.pointer(_x1), Go.pointer(_z2));
			_feMul(Go.pointer(_z2), Go.pointer(_tmp1), Go.pointer(_tmp0));
		});
	};
	_feCSwap(Go.pointer(_x2), Go.pointer(_x3), _swap);
	_feCSwap(Go.pointer(_z2), Go.pointer(_z3), _swap);
	_feInvert(Go.pointer(_z2), Go.pointer(_z2));
	_feMul(Go.pointer(_x2), Go.pointer(_x2), Go.pointer(_z2));
	_feToBytes(_out, Go.pointer(_x2));
}

function _scalarMult(_out:Pointer<GoArray<GoByte>>, _in:Pointer<GoArray<GoByte>>, _base:Pointer<GoArray<GoByte>>):Void {
	_scalarMultGeneric(_out, _in, _base);
}

@:keep var _ = {
	try {
		basepoint = _basePoint.__slice__(0);
	} catch (e)
		if (e.message != "__return__")
			throw e;
	true;
};
