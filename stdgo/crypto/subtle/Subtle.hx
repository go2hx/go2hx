package stdgo.crypto.subtle;

import stdgo.StdGoTypes;
import stdgo.Error;
import stdgo.Go;
import stdgo.GoString;
import stdgo.Pointer;
import stdgo.Slice;
import stdgo.GoArray;
import stdgo.GoMap;
import stdgo.Chan;

/**
	// ConstantTimeCompare returns 1 if the two slices, x and y, have equal contents
	// and 0 otherwise. The time taken is a function of the length of the slices and
	// is independent of the contents.
**/
function constantTimeCompare(_x:Slice<GoByte>, _y:Slice<GoByte>):GoInt {
	if (_x.length != _y.length) {
		return ((0 : GoInt));
	};
	var _v:GoByte = ((0 : GoUInt8));
	{
		var _i:GoInt = ((0 : GoInt));
		Go.cfor(_i < _x.length, _i++, {
			_v = _v | (_x[_i] ^ _y[_i]);
		});
	};
	return constantTimeByteEq(_v, ((0 : GoUInt8)));
}

/**
	// ConstantTimeSelect returns x if v == 1 and y if v == 0.
	// Its behavior is undefined if v takes any other value.
**/
function constantTimeSelect(_v:GoInt, _x:GoInt, _y:GoInt):GoInt {
	return -1 ^ (_v - ((1 : GoInt))) & _x | (_v - ((1 : GoInt))) & _y;
}

/**
	// ConstantTimeByteEq returns 1 if x == y and 0 otherwise.
**/
function constantTimeByteEq(_x:GoUInt8, _y:GoUInt8):GoInt {
	return (((((((_x ^ _y) : GoUInt32)) - ((1 : GoUInt32))) >> ((31 : GoUnTypedInt))) : GoInt));
}

/**
	// ConstantTimeEq returns 1 if x == y and 0 otherwise.
**/
function constantTimeEq(_x:GoInt32, _y:GoInt32):GoInt {
	return (((((((((_x ^ _y) : GoUInt32)) : GoUInt64)) - ((1 : GoUInt64))) >> ((63 : GoUnTypedInt))) : GoInt));
}

/**
	// ConstantTimeCopy copies the contents of y into x (a slice of equal length)
	// if v == 1. If v == 0, x is left unchanged. Its behavior is undefined if v
	// takes any other value.
**/
function constantTimeCopy(_v:GoInt, _x:Slice<GoByte>, _y:Slice<GoByte>):Void {
	if (_x.length != _y.length) {
		throw "subtle: slices have different lengths";
	};
	var _xmask:GoUInt8 = (((_v - ((1 : GoInt))) : GoByte));
	var _ymask:GoUInt8 = (((-1 ^ (_v - ((1 : GoInt)))) : GoByte));
	{
		var _i:GoInt = ((0 : GoInt));
		Go.cfor(_i < _x.length, _i++, {
			_x[_i] = _x[_i] & _xmask | _y[_i] & _ymask;
		});
	};
}

/**
	// ConstantTimeLessOrEq returns 1 if x <= y and 0 otherwise.
	// Its behavior is undefined if x or y are negative or > 2**31 - 1.
**/
function constantTimeLessOrEq(_x:GoInt, _y:GoInt):GoInt {
	var _x32:GoInt32 = ((_x : GoInt32));
	var _y32:GoInt32 = ((_y : GoInt32));
	return ((((((_x32 - _y32 - ((1 : GoInt32))) >> ((31 : GoUnTypedInt)))) & ((1 : GoInt32))) : GoInt));
}
