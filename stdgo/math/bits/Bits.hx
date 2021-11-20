package stdgo.math.bits;

import stdgo.Chan;
import stdgo.Error;
import stdgo.Go;
import stdgo.GoArray;
import stdgo.GoMap;
import stdgo.GoString;
import stdgo.Pointer;
import stdgo.Slice;
import stdgo.StdGoTypes;

final _m1:GoInt64 = (("3689348814741910323" : GoUnTypedInt));
final _uintSize:GoUnTypedInt = (((32 : GoUnTypedInt)) << ((-1 ^ ((((0 : GoUInt)) : GoUInt)) >> ((63 : GoUnTypedInt)))));

final _ntz8tab:GoString = (("" : GoString))
	+ (("\\x08\\x00\\x01\\x00\\x02\\x00\\x01\\x00\\x03\\x00\\x01\\x00\\x02\\x00\\x01\\x00" : GoString))
	+ (("\\x04\\x00\\x01\\x00\\x02\\x00\\x01\\x00\\x03\\x00\\x01\\x00\\x02\\x00\\x01\\x00" : GoString))
	+ (("\\x05\\x00\\x01\\x00\\x02\\x00\\x01\\x00\\x03\\x00\\x01\\x00\\x02\\x00\\x01\\x00" : GoString))
	+ (("\\x04\\x00\\x01\\x00\\x02\\x00\\x01\\x00\\x03\\x00\\x01\\x00\\x02\\x00\\x01\\x00" : GoString))
	+ (("\\x06\\x00\\x01\\x00\\x02\\x00\\x01\\x00\\x03\\x00\\x01\\x00\\x02\\x00\\x01\\x00" : GoString))
	+ (("\\x04\\x00\\x01\\x00\\x02\\x00\\x01\\x00\\x03\\x00\\x01\\x00\\x02\\x00\\x01\\x00" : GoString))
	+ (("\\x05\\x00\\x01\\x00\\x02\\x00\\x01\\x00\\x03\\x00\\x01\\x00\\x02\\x00\\x01\\x00" : GoString))
	+ (("\\x04\\x00\\x01\\x00\\x02\\x00\\x01\\x00\\x03\\x00\\x01\\x00\\x02\\x00\\x01\\x00" : GoString))
	+ (("\\x07\\x00\\x01\\x00\\x02\\x00\\x01\\x00\\x03\\x00\\x01\\x00\\x02\\x00\\x01\\x00" : GoString))
	+ (("\\x04\\x00\\x01\\x00\\x02\\x00\\x01\\x00\\x03\\x00\\x01\\x00\\x02\\x00\\x01\\x00" : GoString))
	+ (("\\x05\\x00\\x01\\x00\\x02\\x00\\x01\\x00\\x03\\x00\\x01\\x00\\x02\\x00\\x01\\x00" : GoString))
	+ (("\\x04\\x00\\x01\\x00\\x02\\x00\\x01\\x00\\x03\\x00\\x01\\x00\\x02\\x00\\x01\\x00" : GoString))
	+ (("\\x06\\x00\\x01\\x00\\x02\\x00\\x01\\x00\\x03\\x00\\x01\\x00\\x02\\x00\\x01\\x00" : GoString))
	+ (("\\x04\\x00\\x01\\x00\\x02\\x00\\x01\\x00\\x03\\x00\\x01\\x00\\x02\\x00\\x01\\x00" : GoString))
	+ (("\\x05\\x00\\x01\\x00\\x02\\x00\\x01\\x00\\x03\\x00\\x01\\x00\\x02\\x00\\x01\\x00" : GoString))
	+ (("\\x04\\x00\\x01\\x00\\x02\\x00\\x01\\x00\\x03\\x00\\x01\\x00\\x02\\x00\\x01\\x00" : GoString));

final _m2:GoInt64 = (("1085102592571150095" : GoUnTypedInt));
var _overflowError:Error = ((null : stdgo.Error));
final _m3:GoInt64 = (("71777214294589695" : GoUnTypedInt));

final _rev8tab:GoString = (("" : GoString))
	+ (("\\x00\\x80\\x40\\xc0\\x20\\xa0\\x60\\xe0\\x10\\x90\\x50\\xd0\\x30\\xb0\\x70\\xf0" : GoString))
	+ (("\\x08\\x88\\x48\\xc8\\x28\\xa8\\x68\\xe8\\x18\\x98\\x58\\xd8\\x38\\xb8\\x78\\xf8" : GoString))
	+ (("\\x04\\x84\\x44\\xc4\\x24\\xa4\\x64\\xe4\\x14\\x94\\x54\\xd4\\x34\\xb4\\x74\\xf4" : GoString))
	+ (("\\x0c\\x8c\\x4c\\xcc\\x2c\\xac\\x6c\\xec\\x1c\\x9c\\x5c\\xdc\\x3c\\xbc\\x7c\\xfc" : GoString))
	+ (("\\x02\\x82\\x42\\xc2\\x22\\xa2\\x62\\xe2\\x12\\x92\\x52\\xd2\\x32\\xb2\\x72\\xf2" : GoString))
	+ (("\\x0a\\x8a\\x4a\\xca\\x2a\\xaa\\x6a\\xea\\x1a\\x9a\\x5a\\xda\\x3a\\xba\\x7a\\xfa" : GoString))
	+ (("\\x06\\x86\\x46\\xc6\\x26\\xa6\\x66\\xe6\\x16\\x96\\x56\\xd6\\x36\\xb6\\x76\\xf6" : GoString))
	+ (("\\x0e\\x8e\\x4e\\xce\\x2e\\xae\\x6e\\xee\\x1e\\x9e\\x5e\\xde\\x3e\\xbe\\x7e\\xfe" : GoString))
	+ (("\\x01\\x81\\x41\\xc1\\x21\\xa1\\x61\\xe1\\x11\\x91\\x51\\xd1\\x31\\xb1\\x71\\xf1" : GoString))
	+ (("\\x09\\x89\\x49\\xc9\\x29\\xa9\\x69\\xe9\\x19\\x99\\x59\\xd9\\x39\\xb9\\x79\\xf9" : GoString))
	+ (("\\x05\\x85\\x45\\xc5\\x25\\xa5\\x65\\xe5\\x15\\x95\\x55\\xd5\\x35\\xb5\\x75\\xf5" : GoString))
	+ (("\\x0d\\x8d\\x4d\\xcd\\x2d\\xad\\x6d\\xed\\x1d\\x9d\\x5d\\xdd\\x3d\\xbd\\x7d\\xfd" : GoString))
	+ (("\\x03\\x83\\x43\\xc3\\x23\\xa3\\x63\\xe3\\x13\\x93\\x53\\xd3\\x33\\xb3\\x73\\xf3" : GoString))
	+ (("\\x0b\\x8b\\x4b\\xcb\\x2b\\xab\\x6b\\xeb\\x1b\\x9b\\x5b\\xdb\\x3b\\xbb\\x7b\\xfb" : GoString))
	+ (("\\x07\\x87\\x47\\xc7\\x27\\xa7\\x67\\xe7\\x17\\x97\\x57\\xd7\\x37\\xb7\\x77\\xf7" : GoString))
	+ (("\\x0f\\x8f\\x4f\\xcf\\x2f\\xaf\\x6f\\xef\\x1f\\x9f\\x5f\\xdf\\x3f\\xbf\\x7f\\xff" : GoString));

final _m4:GoInt64 = (("281470681808895" : GoUnTypedInt));
final _deBruijn64:GoInt64 = (("285870213051353865" : GoUnTypedInt));
var _divideError:Error = ((null : stdgo.Error));

var _deBruijn32tab:GoArray<GoUInt8> = new GoArray<GoUInt8>(((0 : GoUInt8)), ((1 : GoUInt8)), ((28 : GoUInt8)), ((2 : GoUInt8)), ((29 : GoUInt8)),
	((14 : GoUInt8)), ((24 : GoUInt8)), ((3 : GoUInt8)), ((30 : GoUInt8)), ((22 : GoUInt8)), ((20 : GoUInt8)), ((15 : GoUInt8)), ((25 : GoUInt8)),
	((17 : GoUInt8)), ((4 : GoUInt8)), ((8 : GoUInt8)), ((31 : GoUInt8)), ((27 : GoUInt8)), ((13 : GoUInt8)), ((23 : GoUInt8)), ((21 : GoUInt8)),
	((19 : GoUInt8)), ((16 : GoUInt8)), ((7 : GoUInt8)), ((26 : GoUInt8)), ((12 : GoUInt8)), ((18 : GoUInt8)), ((6 : GoUInt8)), ((11 : GoUInt8)),
	((5 : GoUInt8)), ((10 : GoUInt8)), ((9 : GoUInt8))).copy();

final _deBruijn32:GoInt64 = ((125613361 : GoUnTypedInt));

final _pop8tab:GoString = (("" : GoString))
	+ (("\\x00\\x01\\x01\\x02\\x01\\x02\\x02\\x03\\x01\\x02\\x02\\x03\\x02\\x03\\x03\\x04" : GoString))
	+ (("\\x01\\x02\\x02\\x03\\x02\\x03\\x03\\x04\\x02\\x03\\x03\\x04\\x03\\x04\\x04\\x05" : GoString))
	+ (("\\x01\\x02\\x02\\x03\\x02\\x03\\x03\\x04\\x02\\x03\\x03\\x04\\x03\\x04\\x04\\x05" : GoString))
	+ (("\\x02\\x03\\x03\\x04\\x03\\x04\\x04\\x05\\x03\\x04\\x04\\x05\\x04\\x05\\x05\\x06" : GoString))
	+ (("\\x01\\x02\\x02\\x03\\x02\\x03\\x03\\x04\\x02\\x03\\x03\\x04\\x03\\x04\\x04\\x05" : GoString))
	+ (("\\x02\\x03\\x03\\x04\\x03\\x04\\x04\\x05\\x03\\x04\\x04\\x05\\x04\\x05\\x05\\x06" : GoString))
	+ (("\\x02\\x03\\x03\\x04\\x03\\x04\\x04\\x05\\x03\\x04\\x04\\x05\\x04\\x05\\x05\\x06" : GoString))
	+ (("\\x03\\x04\\x04\\x05\\x04\\x05\\x05\\x06\\x04\\x05\\x05\\x06\\x05\\x06\\x06\\x07" : GoString))
	+ (("\\x01\\x02\\x02\\x03\\x02\\x03\\x03\\x04\\x02\\x03\\x03\\x04\\x03\\x04\\x04\\x05" : GoString))
	+ (("\\x02\\x03\\x03\\x04\\x03\\x04\\x04\\x05\\x03\\x04\\x04\\x05\\x04\\x05\\x05\\x06" : GoString))
	+ (("\\x02\\x03\\x03\\x04\\x03\\x04\\x04\\x05\\x03\\x04\\x04\\x05\\x04\\x05\\x05\\x06" : GoString))
	+ (("\\x03\\x04\\x04\\x05\\x04\\x05\\x05\\x06\\x04\\x05\\x05\\x06\\x05\\x06\\x06\\x07" : GoString))
	+ (("\\x02\\x03\\x03\\x04\\x03\\x04\\x04\\x05\\x03\\x04\\x04\\x05\\x04\\x05\\x05\\x06" : GoString))
	+ (("\\x03\\x04\\x04\\x05\\x04\\x05\\x05\\x06\\x04\\x05\\x05\\x06\\x05\\x06\\x06\\x07" : GoString))
	+ (("\\x03\\x04\\x04\\x05\\x04\\x05\\x05\\x06\\x04\\x05\\x05\\x06\\x05\\x06\\x06\\x07" : GoString))
	+ (("\\x04\\x05\\x05\\x06\\x05\\x06\\x06\\x07\\x05\\x06\\x06\\x07\\x06\\x07\\x07\\x08" : GoString));

var _deBruijn64tab:GoArray<GoUInt8> = new GoArray<GoUInt8>(((0 : GoUInt8)), ((1 : GoUInt8)), ((56 : GoUInt8)), ((2 : GoUInt8)), ((57 : GoUInt8)),
	((49 : GoUInt8)), ((28 : GoUInt8)), ((3 : GoUInt8)), ((61 : GoUInt8)), ((58 : GoUInt8)), ((42 : GoUInt8)), ((50 : GoUInt8)), ((38 : GoUInt8)),
	((29 : GoUInt8)), ((17 : GoUInt8)), ((4 : GoUInt8)), ((62 : GoUInt8)), ((47 : GoUInt8)), ((59 : GoUInt8)), ((36 : GoUInt8)), ((45 : GoUInt8)),
	((43 : GoUInt8)), ((51 : GoUInt8)), ((22 : GoUInt8)), ((53 : GoUInt8)), ((39 : GoUInt8)), ((33 : GoUInt8)), ((30 : GoUInt8)), ((24 : GoUInt8)),
	((18 : GoUInt8)), ((12 : GoUInt8)), ((5 : GoUInt8)), ((63 : GoUInt8)), ((55 : GoUInt8)), ((48 : GoUInt8)), ((27 : GoUInt8)), ((60 : GoUInt8)),
	((41 : GoUInt8)), ((37 : GoUInt8)), ((16 : GoUInt8)), ((46 : GoUInt8)), ((35 : GoUInt8)), ((44 : GoUInt8)), ((21 : GoUInt8)), ((52 : GoUInt8)),
	((32 : GoUInt8)), ((23 : GoUInt8)), ((11 : GoUInt8)), ((54 : GoUInt8)), ((26 : GoUInt8)), ((40 : GoUInt8)), ((15 : GoUInt8)), ((34 : GoUInt8)),
	((20 : GoUInt8)), ((31 : GoUInt8)), ((10 : GoUInt8)), ((25 : GoUInt8)), ((14 : GoUInt8)), ((19 : GoUInt8)), ((9 : GoUInt8)), ((13 : GoUInt8)),
	((8 : GoUInt8)), ((7 : GoUInt8)), ((6 : GoUInt8))).copy();

final uintSize:GoUnTypedInt = _uintSize;

final _len8tab:GoString = (("" : GoString))
	+ (("\\x00\\x01\\x02\\x02\\x03\\x03\\x03\\x03\\x04\\x04\\x04\\x04\\x04\\x04\\x04\\x04" : GoString))
	+ (("\\x05\\x05\\x05\\x05\\x05\\x05\\x05\\x05\\x05\\x05\\x05\\x05\\x05\\x05\\x05\\x05" : GoString))
	+ (("\\x06\\x06\\x06\\x06\\x06\\x06\\x06\\x06\\x06\\x06\\x06\\x06\\x06\\x06\\x06\\x06" : GoString))
	+ (("\\x06\\x06\\x06\\x06\\x06\\x06\\x06\\x06\\x06\\x06\\x06\\x06\\x06\\x06\\x06\\x06" : GoString))
	+ (("\\x07\\x07\\x07\\x07\\x07\\x07\\x07\\x07\\x07\\x07\\x07\\x07\\x07\\x07\\x07\\x07" : GoString))
	+ (("\\x07\\x07\\x07\\x07\\x07\\x07\\x07\\x07\\x07\\x07\\x07\\x07\\x07\\x07\\x07\\x07" : GoString))
	+ (("\\x07\\x07\\x07\\x07\\x07\\x07\\x07\\x07\\x07\\x07\\x07\\x07\\x07\\x07\\x07\\x07" : GoString))
	+ (("\\x07\\x07\\x07\\x07\\x07\\x07\\x07\\x07\\x07\\x07\\x07\\x07\\x07\\x07\\x07\\x07" : GoString))
	+ (("\\x08\\x08\\x08\\x08\\x08\\x08\\x08\\x08\\x08\\x08\\x08\\x08\\x08\\x08\\x08\\x08" : GoString))
	+ (("\\x08\\x08\\x08\\x08\\x08\\x08\\x08\\x08\\x08\\x08\\x08\\x08\\x08\\x08\\x08\\x08" : GoString))
	+ (("\\x08\\x08\\x08\\x08\\x08\\x08\\x08\\x08\\x08\\x08\\x08\\x08\\x08\\x08\\x08\\x08" : GoString))
	+ (("\\x08\\x08\\x08\\x08\\x08\\x08\\x08\\x08\\x08\\x08\\x08\\x08\\x08\\x08\\x08\\x08" : GoString))
	+ (("\\x08\\x08\\x08\\x08\\x08\\x08\\x08\\x08\\x08\\x08\\x08\\x08\\x08\\x08\\x08\\x08" : GoString))
	+ (("\\x08\\x08\\x08\\x08\\x08\\x08\\x08\\x08\\x08\\x08\\x08\\x08\\x08\\x08\\x08\\x08" : GoString))
	+ (("\\x08\\x08\\x08\\x08\\x08\\x08\\x08\\x08\\x08\\x08\\x08\\x08\\x08\\x08\\x08\\x08" : GoString))
	+ (("\\x08\\x08\\x08\\x08\\x08\\x08\\x08\\x08\\x08\\x08\\x08\\x08\\x08\\x08\\x08\\x08" : GoString));

final _m0:GoInt64 = (("6148914691236517205" : GoUnTypedInt));

/**
	// LeadingZeros returns the number of leading zero bits in x; the result is UintSize for x == 0.
**/
function leadingZeros(_x:GoUInt):GoInt {
	return uintSize - len(_x);
}

/**
	// LeadingZeros8 returns the number of leading zero bits in x; the result is 8 for x == 0.
**/
function leadingZeros8(_x:GoUInt8):GoInt {
	return ((8 : GoInt)) - len8(_x);
}

/**
	// LeadingZeros16 returns the number of leading zero bits in x; the result is 16 for x == 0.
**/
function leadingZeros16(_x:GoUInt16):GoInt {
	return ((16 : GoInt)) - len16(_x);
}

/**
	// LeadingZeros32 returns the number of leading zero bits in x; the result is 32 for x == 0.
**/
function leadingZeros32(_x:GoUInt32):GoInt {
	return ((32 : GoInt)) - len32(_x);
}

/**
	// LeadingZeros64 returns the number of leading zero bits in x; the result is 64 for x == 0.
**/
function leadingZeros64(_x:GoUInt64):GoInt {
	return ((64 : GoInt)) - len64(_x);
}

/**
	// TrailingZeros returns the number of trailing zero bits in x; the result is UintSize for x == 0.
**/
function trailingZeros(_x:GoUInt):GoInt {
	if (uintSize == ((32 : GoUnTypedInt))) {
		return trailingZeros32(((_x : GoUInt32)));
	};
	return trailingZeros64(((_x : GoUInt64)));
}

/**
	// TrailingZeros8 returns the number of trailing zero bits in x; the result is 8 for x == 0.
**/
function trailingZeros8(_x:GoUInt8):GoInt {
	return ((_ntz8tab[_x] : GoInt));
}

/**
	// TrailingZeros16 returns the number of trailing zero bits in x; the result is 16 for x == 0.
**/
function trailingZeros16(_x:GoUInt16):GoInt {
	if (_x == ((0 : GoUInt16))) {
		return ((16 : GoInt));
	};
	return ((_deBruijn32tab[
		((((_x & -_x) : GoUInt32)) * _deBruijn32 >> (((32 : GoUnTypedInt)) - ((5 : GoUnTypedInt))))
	] : GoInt));
}

/**
	// TrailingZeros32 returns the number of trailing zero bits in x; the result is 32 for x == 0.
**/
function trailingZeros32(_x:GoUInt32):GoInt {
	if (_x == ((0 : GoUInt32))) {
		return ((32 : GoInt));
	};
	return ((_deBruijn32tab[((_x & -_x) * _deBruijn32 >> (((32 : GoUnTypedInt)) - ((5 : GoUnTypedInt))))] : GoInt));
}

/**
	// TrailingZeros64 returns the number of trailing zero bits in x; the result is 64 for x == 0.
**/
function trailingZeros64(_x:GoUInt64):GoInt {
	if (_x == ((0 : GoUInt64))) {
		return ((64 : GoInt));
	};
	return ((_deBruijn64tab[((_x & -_x) * _deBruijn64 >> (((64 : GoUnTypedInt)) - ((6 : GoUnTypedInt))))] : GoInt));
}

/**
	// OnesCount returns the number of one bits ("population count") in x.
**/
function onesCount(_x:GoUInt):GoInt {
	if (uintSize == ((32 : GoUnTypedInt))) {
		return onesCount32(((_x : GoUInt32)));
	};
	return onesCount64(((_x : GoUInt64)));
}

/**
	// OnesCount8 returns the number of one bits ("population count") in x.
**/
function onesCount8(_x:GoUInt8):GoInt {
	return ((_pop8tab[_x] : GoInt));
}

/**
	// OnesCount16 returns the number of one bits ("population count") in x.
**/
function onesCount16(_x:GoUInt16):GoInt {
	return (((_pop8tab[(_x >> ((8 : GoUnTypedInt)))] + _pop8tab[_x & ((255 : GoUInt16))]) : GoInt));
}

/**
	// OnesCount32 returns the number of one bits ("population count") in x.
**/
function onesCount32(_x:GoUInt32):GoInt {
	return (((_pop8tab[(_x >> ((24 : GoUnTypedInt)))]
		+ _pop8tab[(_x >> ((16 : GoUnTypedInt))) & ((255 : GoUInt32))]
		+ _pop8tab[(_x >> ((8 : GoUnTypedInt))) & ((255 : GoUInt32))]
		+ _pop8tab[_x & ((255 : GoUInt32))]) : GoInt));
}

/**
	// OnesCount64 returns the number of one bits ("population count") in x.
**/
function onesCount64(_x:GoUInt64):GoInt {
	final _m:GoUnTypedInt = (((1 : GoUnTypedInt)) << ((64 : GoUnTypedInt))) - ((1 : GoUnTypedInt));
	_x = (_x >> ((1 : GoUnTypedInt))) & (_m0 & _m) + _x & (_m0 & _m);
	_x = (_x >> ((2 : GoUnTypedInt))) & (_m1 & _m) + _x & (_m1 & _m);
	_x = ((_x >> ((4 : GoUnTypedInt))) + _x) & (_m2 & _m);
	_x = _x + ((_x >> ((8 : GoUnTypedInt))));
	_x = _x + ((_x >> ((16 : GoUnTypedInt))));
	_x = _x + ((_x >> ((32 : GoUnTypedInt))));
	return ((_x : GoInt)) & ((((1 : GoUnTypedInt)) << ((7 : GoUnTypedInt))) - ((1 : GoUnTypedInt)));
}

/**
	// RotateLeft returns the value of x rotated left by (k mod UintSize) bits.
	// To rotate x right by k bits, call RotateLeft(x, -k).
	//
	// This function's execution time does not depend on the inputs.
**/
function rotateLeft(_x:GoUInt, _k:GoInt):GoUInt {
	if (uintSize == ((32 : GoUnTypedInt))) {
		return ((rotateLeft32(((_x : GoUInt32)), _k) : GoUInt));
	};
	return ((rotateLeft64(((_x : GoUInt64)), _k) : GoUInt));
}

/**
	// RotateLeft8 returns the value of x rotated left by (k mod 8) bits.
	// To rotate x right by k bits, call RotateLeft8(x, -k).
	//
	// This function's execution time does not depend on the inputs.
**/
function rotateLeft8(_x:GoUInt8, _k:GoInt):GoUInt8 {
	final _n:GoUnTypedInt = ((8 : GoUnTypedInt));
	var _s:GoUInt = ((_k : GoUInt)) & (_n - ((1 : GoUnTypedInt)));
	return (_x << _s) | (_x >> (_n - _s));
}

/**
	// RotateLeft16 returns the value of x rotated left by (k mod 16) bits.
	// To rotate x right by k bits, call RotateLeft16(x, -k).
	//
	// This function's execution time does not depend on the inputs.
**/
function rotateLeft16(_x:GoUInt16, _k:GoInt):GoUInt16 {
	final _n:GoUnTypedInt = ((16 : GoUnTypedInt));
	var _s:GoUInt = ((_k : GoUInt)) & (_n - ((1 : GoUnTypedInt)));
	return (_x << _s) | (_x >> (_n - _s));
}

/**
	// RotateLeft32 returns the value of x rotated left by (k mod 32) bits.
	// To rotate x right by k bits, call RotateLeft32(x, -k).
	//
	// This function's execution time does not depend on the inputs.
**/
function rotateLeft32(_x:GoUInt32, _k:GoInt):GoUInt32 {
	final _n:GoUnTypedInt = ((32 : GoUnTypedInt));
	var _s:GoUInt = ((_k : GoUInt)) & (_n - ((1 : GoUnTypedInt)));
	return (_x << _s) | (_x >> (_n - _s));
}

/**
	// RotateLeft64 returns the value of x rotated left by (k mod 64) bits.
	// To rotate x right by k bits, call RotateLeft64(x, -k).
	//
	// This function's execution time does not depend on the inputs.
**/
function rotateLeft64(_x:GoUInt64, _k:GoInt):GoUInt64 {
	final _n:GoUnTypedInt = ((64 : GoUnTypedInt));
	var _s:GoUInt = ((_k : GoUInt)) & (_n - ((1 : GoUnTypedInt)));
	return (_x << _s) | (_x >> (_n - _s));
}

/**
	// Reverse returns the value of x with its bits in reversed order.
**/
function reverse(_x:GoUInt):GoUInt {
	if (uintSize == ((32 : GoUnTypedInt))) {
		return ((reverse32(((_x : GoUInt32))) : GoUInt));
	};
	return ((reverse64(((_x : GoUInt64))) : GoUInt));
}

/**
	// Reverse8 returns the value of x with its bits in reversed order.
**/
function reverse8(_x:GoUInt8):GoUInt8 {
	return _rev8tab[_x];
}

/**
	// Reverse16 returns the value of x with its bits in reversed order.
**/
function reverse16(_x:GoUInt16):GoUInt16 {
	return ((_rev8tab[(_x >> ((8 : GoUnTypedInt)))] : GoUInt16)) | (((_rev8tab[_x & ((255 : GoUInt16))] : GoUInt16)) << ((8 : GoUnTypedInt)));
}

/**
	// Reverse32 returns the value of x with its bits in reversed order.
**/
function reverse32(_x:GoUInt32):GoUInt32 {
	final _m:GoUnTypedInt = (((1 : GoUnTypedInt)) << ((32 : GoUnTypedInt))) - ((1 : GoUnTypedInt));
	_x = (_x >> ((1 : GoUnTypedInt))) & (_m0 & _m) | (_x & (_m0 & _m) << ((1 : GoUnTypedInt)));
	_x = (_x >> ((2 : GoUnTypedInt))) & (_m1 & _m) | (_x & (_m1 & _m) << ((2 : GoUnTypedInt)));
	_x = (_x >> ((4 : GoUnTypedInt))) & (_m2 & _m) | (_x & (_m2 & _m) << ((4 : GoUnTypedInt)));
	return reverseBytes32(_x);
}

/**
	// Reverse64 returns the value of x with its bits in reversed order.
**/
function reverse64(_x:GoUInt64):GoUInt64 {
	final _m:GoUnTypedInt = (((1 : GoUnTypedInt)) << ((64 : GoUnTypedInt))) - ((1 : GoUnTypedInt));
	_x = (_x >> ((1 : GoUnTypedInt))) & (_m0 & _m) | (_x & (_m0 & _m) << ((1 : GoUnTypedInt)));
	_x = (_x >> ((2 : GoUnTypedInt))) & (_m1 & _m) | (_x & (_m1 & _m) << ((2 : GoUnTypedInt)));
	_x = (_x >> ((4 : GoUnTypedInt))) & (_m2 & _m) | (_x & (_m2 & _m) << ((4 : GoUnTypedInt)));
	return reverseBytes64(_x);
}

/**
	// ReverseBytes returns the value of x with its bytes in reversed order.
	//
	// This function's execution time does not depend on the inputs.
**/
function reverseBytes(_x:GoUInt):GoUInt {
	if (uintSize == ((32 : GoUnTypedInt))) {
		return ((reverseBytes32(((_x : GoUInt32))) : GoUInt));
	};
	return ((reverseBytes64(((_x : GoUInt64))) : GoUInt));
}

/**
	// ReverseBytes16 returns the value of x with its bytes in reversed order.
	//
	// This function's execution time does not depend on the inputs.
**/
function reverseBytes16(_x:GoUInt16):GoUInt16 {
	return (_x >> ((8 : GoUnTypedInt))) | (_x << ((8 : GoUnTypedInt)));
}

/**
	// ReverseBytes32 returns the value of x with its bytes in reversed order.
	//
	// This function's execution time does not depend on the inputs.
**/
function reverseBytes32(_x:GoUInt32):GoUInt32 {
	final _m:GoUnTypedInt = (((1 : GoUnTypedInt)) << ((32 : GoUnTypedInt))) - ((1 : GoUnTypedInt));
	_x = (_x >> ((8 : GoUnTypedInt))) & (_m3 & _m) | (_x & (_m3 & _m) << ((8 : GoUnTypedInt)));
	return (_x >> ((16 : GoUnTypedInt))) | (_x << ((16 : GoUnTypedInt)));
}

/**
	// ReverseBytes64 returns the value of x with its bytes in reversed order.
	//
	// This function's execution time does not depend on the inputs.
**/
function reverseBytes64(_x:GoUInt64):GoUInt64 {
	final _m:GoUnTypedInt = (((1 : GoUnTypedInt)) << ((64 : GoUnTypedInt))) - ((1 : GoUnTypedInt));
	_x = (_x >> ((8 : GoUnTypedInt))) & (_m3 & _m) | (_x & (_m3 & _m) << ((8 : GoUnTypedInt)));
	_x = (_x >> ((16 : GoUnTypedInt))) & (_m4 & _m) | (_x & (_m4 & _m) << ((16 : GoUnTypedInt)));
	return (_x >> ((32 : GoUnTypedInt))) | (_x << ((32 : GoUnTypedInt)));
}

/**
	// Len returns the minimum number of bits required to represent x; the result is 0 for x == 0.
**/
function len(_x:GoUInt):GoInt {
	if (uintSize == ((32 : GoUnTypedInt))) {
		return len32(((_x : GoUInt32)));
	};
	return len64(((_x : GoUInt64)));
}

/**
	// Len8 returns the minimum number of bits required to represent x; the result is 0 for x == 0.
**/
function len8(_x:GoUInt8):GoInt {
	return ((_len8tab[_x] : GoInt));
}

/**
	// Len16 returns the minimum number of bits required to represent x; the result is 0 for x == 0.
**/
function len16(_x:GoUInt16):GoInt {
	var _n:GoInt = ((0 : GoInt));
	if (_x >= (((1 : GoUnTypedInt)) << ((8 : GoUnTypedInt)))) {
		_x = (_x >> (((8 : GoUnTypedInt))));
		_n = ((8 : GoInt));
	};
	return _n + ((_len8tab[_x] : GoInt));
}

/**
	// Len32 returns the minimum number of bits required to represent x; the result is 0 for x == 0.
**/
function len32(_x:GoUInt32):GoInt {
	var _n:GoInt = ((0 : GoInt));
	if (_x >= (((1 : GoUnTypedInt)) << ((16 : GoUnTypedInt)))) {
		_x = (_x >> (((16 : GoUnTypedInt))));
		_n = ((16 : GoInt));
	};
	if (_x >= (((1 : GoUnTypedInt)) << ((8 : GoUnTypedInt)))) {
		_x = (_x >> (((8 : GoUnTypedInt))));
		_n = _n + (((8 : GoInt)));
	};
	return _n + ((_len8tab[_x] : GoInt));
}

/**
	// Len64 returns the minimum number of bits required to represent x; the result is 0 for x == 0.
**/
function len64(_x:GoUInt64):GoInt {
	var _n:GoInt = ((0 : GoInt));
	if (_x >= (((1 : GoUnTypedInt)) << ((32 : GoUnTypedInt)))) {
		_x = (_x >> (((32 : GoUnTypedInt))));
		_n = ((32 : GoInt));
	};
	if (_x >= (((1 : GoUnTypedInt)) << ((16 : GoUnTypedInt)))) {
		_x = (_x >> (((16 : GoUnTypedInt))));
		_n = _n + (((16 : GoInt)));
	};
	if (_x >= (((1 : GoUnTypedInt)) << ((8 : GoUnTypedInt)))) {
		_x = (_x >> (((8 : GoUnTypedInt))));
		_n = _n + (((8 : GoInt)));
	};
	return _n + ((_len8tab[_x] : GoInt));
}

/**
	// Add returns the sum with carry of x, y and carry: sum = x + y + carry.
	// The carry input must be 0 or 1; otherwise the behavior is undefined.
	// The carryOut output is guaranteed to be 0 or 1.
	//
	// This function's execution time does not depend on the inputs.
**/
function add(_x:GoUInt, _y:GoUInt, _carry:GoUInt):{var _0:GoUInt; var _1:GoUInt;} {
	var _sum:GoUInt = ((0 : GoUInt)), _carryOut:GoUInt = ((0 : GoUInt));
	if (uintSize == ((32 : GoUnTypedInt))) {
		var __tmp__ = add32(((_x : GoUInt32)), ((_y : GoUInt32)), ((_carry : GoUInt32))),
			_s32:GoUInt32 = __tmp__._0,
			_c32:GoUInt32 = __tmp__._1;
		return {_0: ((_s32 : GoUInt)), _1: ((_c32 : GoUInt))};
	};
	var __tmp__ = add64(((_x : GoUInt64)), ((_y : GoUInt64)), ((_carry : GoUInt64))),
		_s64:GoUInt64 = __tmp__._0,
		_c64:GoUInt64 = __tmp__._1;
	return {_0: ((_s64 : GoUInt)), _1: ((_c64 : GoUInt))};
}

/**
	// Add32 returns the sum with carry of x, y and carry: sum = x + y + carry.
	// The carry input must be 0 or 1; otherwise the behavior is undefined.
	// The carryOut output is guaranteed to be 0 or 1.
	//
	// This function's execution time does not depend on the inputs.
**/
function add32(_x:GoUInt32, _y:GoUInt32, _carry:GoUInt32):{var _0:GoUInt32; var _1:GoUInt32;} {
	var _sum:GoUInt32 = ((0 : GoUInt32)),
		_carryOut:GoUInt32 = ((0 : GoUInt32));
	var _sum64:GoUInt64 = ((_x : GoUInt64)) + ((_y : GoUInt64)) + ((_carry : GoUInt64));
	_sum = ((_sum64 : GoUInt32));
	_carryOut = (((_sum64 >> ((32 : GoUnTypedInt))) : GoUInt32));
	return {_0: _sum, _1: _carryOut};
}

/**
	// Add64 returns the sum with carry of x, y and carry: sum = x + y + carry.
	// The carry input must be 0 or 1; otherwise the behavior is undefined.
	// The carryOut output is guaranteed to be 0 or 1.
	//
	// This function's execution time does not depend on the inputs.
**/
function add64(_x:GoUInt64, _y:GoUInt64, _carry:GoUInt64):{var _0:GoUInt64; var _1:GoUInt64;} {
	var _sum:GoUInt64 = ((0 : GoUInt64)),
		_carryOut:GoUInt64 = ((0 : GoUInt64));
	_sum = _x + _y + _carry;
	_carryOut = (((_x & _y) | (((_x | _y) & _sum) ^ ((-1 : GoUnTypedInt)))) >> ((63 : GoUnTypedInt)));
	return {_0: _sum, _1: _carryOut};
}

/**
	// Sub returns the difference of x, y and borrow: diff = x - y - borrow.
	// The borrow input must be 0 or 1; otherwise the behavior is undefined.
	// The borrowOut output is guaranteed to be 0 or 1.
	//
	// This function's execution time does not depend on the inputs.
**/
function sub(_x:GoUInt, _y:GoUInt, _borrow:GoUInt):{var _0:GoUInt; var _1:GoUInt;} {
	var _diff:GoUInt = ((0 : GoUInt)), _borrowOut:GoUInt = ((0 : GoUInt));
	if (uintSize == ((32 : GoUnTypedInt))) {
		var __tmp__ = sub32(((_x : GoUInt32)), ((_y : GoUInt32)), ((_borrow : GoUInt32))),
			_d32:GoUInt32 = __tmp__._0,
			_b32:GoUInt32 = __tmp__._1;
		return {_0: ((_d32 : GoUInt)), _1: ((_b32 : GoUInt))};
	};
	var __tmp__ = sub64(((_x : GoUInt64)), ((_y : GoUInt64)), ((_borrow : GoUInt64))),
		_d64:GoUInt64 = __tmp__._0,
		_b64:GoUInt64 = __tmp__._1;
	return {_0: ((_d64 : GoUInt)), _1: ((_b64 : GoUInt))};
}

/**
	// Sub32 returns the difference of x, y and borrow, diff = x - y - borrow.
	// The borrow input must be 0 or 1; otherwise the behavior is undefined.
	// The borrowOut output is guaranteed to be 0 or 1.
	//
	// This function's execution time does not depend on the inputs.
**/
function sub32(_x:GoUInt32, _y:GoUInt32, _borrow:GoUInt32):{var _0:GoUInt32; var _1:GoUInt32;} {
	var _diff:GoUInt32 = ((0 : GoUInt32)),
		_borrowOut:GoUInt32 = ((0 : GoUInt32));
	_diff = _x - _y - _borrow;
	_borrowOut = (((-1 ^ _x & _y) | (-1 ^ (_x ^ _y) & _diff)) >> ((31 : GoUnTypedInt)));
	return {_0: _diff, _1: _borrowOut};
}

/**
	// Sub64 returns the difference of x, y and borrow: diff = x - y - borrow.
	// The borrow input must be 0 or 1; otherwise the behavior is undefined.
	// The borrowOut output is guaranteed to be 0 or 1.
	//
	// This function's execution time does not depend on the inputs.
**/
function sub64(_x:GoUInt64, _y:GoUInt64, _borrow:GoUInt64):{var _0:GoUInt64; var _1:GoUInt64;} {
	var _diff:GoUInt64 = ((0 : GoUInt64)),
		_borrowOut:GoUInt64 = ((0 : GoUInt64));
	_diff = _x - _y - _borrow;
	_borrowOut = (((-1 ^ _x & _y) | (-1 ^ (_x ^ _y) & _diff)) >> ((63 : GoUnTypedInt)));
	return {_0: _diff, _1: _borrowOut};
}

/**
	// Mul returns the full-width product of x and y: (hi, lo) = x * y
	// with the product bits' upper half returned in hi and the lower
	// half returned in lo.
	//
	// This function's execution time does not depend on the inputs.
**/
function mul(_x:GoUInt, _y:GoUInt):{var _0:GoUInt; var _1:GoUInt;} {
	var _hi:GoUInt = ((0 : GoUInt)), _lo:GoUInt = ((0 : GoUInt));
	if (uintSize == ((32 : GoUnTypedInt))) {
		var __tmp__ = mul32(((_x : GoUInt32)), ((_y : GoUInt32))),
			_h:GoUInt32 = __tmp__._0,
			_l:GoUInt32 = __tmp__._1;
		return {_0: ((_h : GoUInt)), _1: ((_l : GoUInt))};
	};
	var __tmp__ = mul64(((_x : GoUInt64)), ((_y : GoUInt64))),
		_h:GoUInt64 = __tmp__._0,
		_l:GoUInt64 = __tmp__._1;
	return {_0: ((_h : GoUInt)), _1: ((_l : GoUInt))};
}

/**
	// Mul32 returns the 64-bit product of x and y: (hi, lo) = x * y
	// with the product bits' upper half returned in hi and the lower
	// half returned in lo.
	//
	// This function's execution time does not depend on the inputs.
**/
function mul32(_x:GoUInt32, _y:GoUInt32):{var _0:GoUInt32; var _1:GoUInt32;} {
	var _hi:GoUInt32 = ((0 : GoUInt32)), _lo:GoUInt32 = ((0 : GoUInt32));
	var _tmp:GoUInt64 = ((_x : GoUInt64)) * ((_y : GoUInt64));
	{
		final __tmp__0 = (((_tmp >> ((32 : GoUnTypedInt))) : GoUInt32));
		final __tmp__1 = ((_tmp : GoUInt32));
		_hi = __tmp__0;
		_lo = __tmp__1;
	};
	return {_0: _hi, _1: _lo};
}

/**
	// Mul64 returns the 128-bit product of x and y: (hi, lo) = x * y
	// with the product bits' upper half returned in hi and the lower
	// half returned in lo.
	//
	// This function's execution time does not depend on the inputs.
**/
function mul64(_x:GoUInt64, _y:GoUInt64):{var _0:GoUInt64; var _1:GoUInt64;} {
	var _hi:GoUInt64 = ((0 : GoUInt64)), _lo:GoUInt64 = ((0 : GoUInt64));
	final _mask32:GoUnTypedInt = (((1 : GoUnTypedInt)) << ((32 : GoUnTypedInt))) - ((1 : GoUnTypedInt));
	var _x0:GoUInt64 = _x & _mask32;
	var _x1:GoUInt64 = (_x >> ((32 : GoUnTypedInt)));
	var _y0:GoUInt64 = _y & _mask32;
	var _y1:GoUInt64 = (_y >> ((32 : GoUnTypedInt)));
	var _w0:GoUInt64 = _x0 * _y0;
	var _t:GoUInt64 = _x1 * _y0 + (_w0 >> ((32 : GoUnTypedInt)));
	var _w1:GoUInt64 = _t & _mask32;
	var _w2:GoUInt64 = (_t >> ((32 : GoUnTypedInt)));
	_w1 = _w1 + (_x0 * _y1);
	_hi = _x1 * _y1 + _w2 + (_w1 >> ((32 : GoUnTypedInt)));
	_lo = _x * _y;
	return {_0: _hi, _1: _lo};
}

/**
	// Div returns the quotient and remainder of (hi, lo) divided by y:
	// quo = (hi, lo)/y, rem = (hi, lo)%y with the dividend bits' upper
	// half in parameter hi and the lower half in parameter lo.
	// Div panics for y == 0 (division by zero) or y <= hi (quotient overflow).
**/
function div(_hi:GoUInt, _lo:GoUInt, _y:GoUInt):{var _0:GoUInt; var _1:GoUInt;} {
	var _quo:GoUInt = ((0 : GoUInt)), _rem:GoUInt = ((0 : GoUInt));
	if (uintSize == ((32 : GoUnTypedInt))) {
		var __tmp__ = div32(((_hi : GoUInt32)), ((_lo : GoUInt32)), ((_y : GoUInt32))),
			_q:GoUInt32 = __tmp__._0,
			_r:GoUInt32 = __tmp__._1;
		return {_0: ((_q : GoUInt)), _1: ((_r : GoUInt))};
	};
	var __tmp__ = div64(((_hi : GoUInt64)), ((_lo : GoUInt64)), ((_y : GoUInt64))),
		_q:GoUInt64 = __tmp__._0,
		_r:GoUInt64 = __tmp__._1;
	return {_0: ((_q : GoUInt)), _1: ((_r : GoUInt))};
}

/**
	// Div32 returns the quotient and remainder of (hi, lo) divided by y:
	// quo = (hi, lo)/y, rem = (hi, lo)%y with the dividend bits' upper
	// half in parameter hi and the lower half in parameter lo.
	// Div32 panics for y == 0 (division by zero) or y <= hi (quotient overflow).
**/
function div32(_hi:GoUInt32, _lo:GoUInt32, _y:GoUInt32):{var _0:GoUInt32; var _1:GoUInt32;} {
	var _quo:GoUInt32 = ((0 : GoUInt32)), _rem:GoUInt32 = ((0 : GoUInt32));
	if (_y != ((0 : GoUInt32)) && _y <= _hi) {
		throw _overflowError;
	};
	var _z:GoUInt64 = (((_hi : GoUInt64)) << ((32 : GoUnTypedInt))) | ((_lo : GoUInt64));
	{
		final __tmp__0 = (((_z / ((_y : GoUInt64))) : GoUInt32));
		final __tmp__1 = (((_z % ((_y : GoUInt64))) : GoUInt32));
		_quo = __tmp__0;
		_rem = __tmp__1;
	};
	return {_0: _quo, _1: _rem};
}

/**
	// Div64 returns the quotient and remainder of (hi, lo) divided by y:
	// quo = (hi, lo)/y, rem = (hi, lo)%y with the dividend bits' upper
	// half in parameter hi and the lower half in parameter lo.
	// Div64 panics for y == 0 (division by zero) or y <= hi (quotient overflow).
**/
function div64(_hi:GoUInt64, _lo:GoUInt64, _y:GoUInt64):{var _0:GoUInt64; var _1:GoUInt64;} {
	var _quo:GoUInt64 = ((0 : GoUInt64)), _rem:GoUInt64 = ((0 : GoUInt64));
	final _two32:GoUnTypedInt = (((1 : GoUnTypedInt)) << ((32 : GoUnTypedInt))), _mask32:GoUnTypedInt = _two32 - ((1 : GoUnTypedInt));
	if (_y == ((0 : GoUInt64))) {
		throw _divideError;
	};
	if (_y <= _hi) {
		throw _overflowError;
	};
	var _s:GoUInt = ((leadingZeros64(_y) : GoUInt));
	_y = (_y << (_s));
	var _yn1:GoUInt64 = (_y >> ((32 : GoUnTypedInt)));
	var _yn0:GoUInt64 = _y & _mask32;
	var _un32:GoUInt64 = (_hi << _s) | (_lo >> (((64 : GoUInt)) - _s));
	var _un10:GoUInt64 = (_lo << _s);
	var _un1:GoUInt64 = (_un10 >> ((32 : GoUnTypedInt)));
	var _un0:GoUInt64 = _un10 & _mask32;
	var _q1:GoUInt64 = _un32 / _yn1;
	var _rhat:GoUInt64 = _un32 - _q1 * _yn1;
	while (_q1 >= _two32 || _q1 * _yn0 > _two32 * _rhat + _un1) {
		_q1--;
		_rhat = _rhat + (_yn1);
		if (_rhat >= _two32) {
			break;
		};
	};
	var _un21:GoUInt64 = _un32 * _two32 + _un1 - _q1 * _y;
	var _q0:GoUInt64 = _un21 / _yn1;
	_rhat = _un21 - _q0 * _yn1;
	while (_q0 >= _two32 || _q0 * _yn0 > _two32 * _rhat + _un0) {
		_q0--;
		_rhat = _rhat + (_yn1);
		if (_rhat >= _two32) {
			break;
		};
	};
	return {_0: _q1 * _two32 + _q0, _1: ((_un21 * _two32 + _un0 - _q0 * _y) >> _s)};
}

/**
	// Rem returns the remainder of (hi, lo) divided by y. Rem panics for
	// y == 0 (division by zero) but, unlike Div, it doesn't panic on a
	// quotient overflow.
**/
function rem(_hi:GoUInt, _lo:GoUInt, _y:GoUInt):GoUInt {
	if (uintSize == ((32 : GoUnTypedInt))) {
		return ((rem32(((_hi : GoUInt32)), ((_lo : GoUInt32)), ((_y : GoUInt32))) : GoUInt));
	};
	return ((rem64(((_hi : GoUInt64)), ((_lo : GoUInt64)), ((_y : GoUInt64))) : GoUInt));
}

/**
	// Rem32 returns the remainder of (hi, lo) divided by y. Rem32 panics
	// for y == 0 (division by zero) but, unlike Div32, it doesn't panic
	// on a quotient overflow.
**/
function rem32(_hi:GoUInt32, _lo:GoUInt32, _y:GoUInt32):GoUInt32 {
	return (((((((_hi : GoUInt64)) << ((32 : GoUnTypedInt))) | ((_lo : GoUInt64))) % ((_y : GoUInt64))) : GoUInt32));
}

/**
	// Rem64 returns the remainder of (hi, lo) divided by y. Rem64 panics
	// for y == 0 (division by zero) but, unlike Div64, it doesn't panic
	// on a quotient overflow.
**/
function rem64(_hi:GoUInt64, _lo:GoUInt64, _y:GoUInt64):GoUInt64 {
	var __tmp__ = div64(_hi % _y, _lo, _y),
		_:GoUInt64 = __tmp__._0,
		_rem:GoUInt64 = __tmp__._1;
	return _rem;
}
