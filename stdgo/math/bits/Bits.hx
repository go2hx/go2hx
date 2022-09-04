package stdgo.math.bits;

import stdgo.StdGoTypes;
import stdgo.Error;
import stdgo.Go;
import stdgo.GoString;
import stdgo.Pointer;
import stdgo.Slice;
import stdgo.GoArray;
import stdgo.GoMap;
import stdgo.Chan;

var _deBruijn32tab:GoArray<GoUInt8> = (new GoArray<GoUInt8>((0 : GoUInt8), (1 : GoUInt8), (28 : GoUInt8), (2 : GoUInt8), (29 : GoUInt8), (14 : GoUInt8),
	(24 : GoUInt8), (3 : GoUInt8), (30 : GoUInt8), (22 : GoUInt8), (20 : GoUInt8), (15 : GoUInt8), (25 : GoUInt8), (17 : GoUInt8), (4 : GoUInt8),
	(8 : GoUInt8), (31 : GoUInt8), (27 : GoUInt8), (13 : GoUInt8), (23 : GoUInt8), (21 : GoUInt8), (19 : GoUInt8), (16 : GoUInt8), (7 : GoUInt8),
	(26 : GoUInt8), (12 : GoUInt8), (18 : GoUInt8), (6 : GoUInt8), (11 : GoUInt8), (5 : GoUInt8), (10 : GoUInt8), (9 : GoUInt8)) : GoArray<GoUInt8>);

var _deBruijn64tab:GoArray<GoUInt8> = (new GoArray<GoUInt8>((0 : GoUInt8), (1 : GoUInt8), (56 : GoUInt8), (2 : GoUInt8), (57 : GoUInt8), (49 : GoUInt8),
	(28 : GoUInt8), (3 : GoUInt8), (61 : GoUInt8), (58 : GoUInt8), (42 : GoUInt8), (50 : GoUInt8), (38 : GoUInt8), (29 : GoUInt8), (17 : GoUInt8),
	(4 : GoUInt8), (62 : GoUInt8), (47 : GoUInt8), (59 : GoUInt8), (36 : GoUInt8), (45 : GoUInt8), (43 : GoUInt8), (51 : GoUInt8), (22 : GoUInt8),
	(53 : GoUInt8), (39 : GoUInt8), (33 : GoUInt8), (30 : GoUInt8), (24 : GoUInt8), (18 : GoUInt8), (12 : GoUInt8), (5 : GoUInt8), (63 : GoUInt8),
	(55 : GoUInt8), (48 : GoUInt8), (27 : GoUInt8), (60 : GoUInt8), (41 : GoUInt8), (37 : GoUInt8), (16 : GoUInt8), (46 : GoUInt8), (35 : GoUInt8),
	(44 : GoUInt8), (21 : GoUInt8), (52 : GoUInt8), (32 : GoUInt8), (23 : GoUInt8), (11 : GoUInt8), (54 : GoUInt8), (26 : GoUInt8), (40 : GoUInt8),
	(15 : GoUInt8), (34 : GoUInt8), (20 : GoUInt8), (31 : GoUInt8), (10 : GoUInt8), (25 : GoUInt8), (14 : GoUInt8), (19 : GoUInt8), (9 : GoUInt8),
	(13 : GoUInt8), (8 : GoUInt8), (7 : GoUInt8), (6 : GoUInt8)) : GoArray<GoUInt8>);

var _overflowError:stdgo.Error = {
	final __self__ = new T_errorString_asInterface((Go.str("integer overflow") : T_errorString));
	__self__.error = #if !macro function():GoString return (Go.str("integer overflow") : T_errorString).error() #else null #end;
	__self__.runtimeError = #if !macro function():Void(Go.str("integer overflow"):T_errorString).runtimeError() #else null #end;
	__self__;
};

var _divideError:stdgo.Error = {
	final __self__ = new T_errorString_asInterface((Go.str("integer divide by zero") : T_errorString));
	__self__.error = #if !macro function():GoString return (Go.str("integer divide by zero") : T_errorString).error() #else null #end;
	__self__.runtimeError = #if !macro function():Void(Go.str("integer divide by zero"):T_errorString).runtimeError() #else null #end;
	__self__;
};

final _uintSize:GoUnTypedInt = (32 : GoUnTypedInt);
final uintSize:GoUnTypedInt = (32 : GoUnTypedInt);
final _deBruijn32:GoUnTypedInt = (125613361 : GoUnTypedInt);
final _deBruijn64:GoUnTypedInt = ("285870213051353865" : GoUnTypedInt);
final _m0:GoUnTypedInt = ("6148914691236517205" : GoUnTypedInt);
final _m1:GoUnTypedInt = ("3689348814741910323" : GoUnTypedInt);
final _m2:GoUnTypedInt = ("1085102592571150095" : GoUnTypedInt);
final _m3:GoUnTypedInt = ("71777214294589695" : GoUnTypedInt);
final _m4:GoUnTypedInt = ("281470681808895" : GoUnTypedInt);

final _ntz8tab:GoString = (Go.str("\x08", 0, 1, 0, 2, 0, 1, 0, 3, 0, 1, 0, 2, 0, 1, 0, 4, 0, 1, 0, 2, 0, 1, 0, 3, 0, 1, 0, 2, 0, 1, 0, 5, 0, 1, 0, 2, 0, 1, 0,
	3, 0, 1, 0, 2, 0, 1, 0, 4, 0, 1, 0, 2, 0, 1, 0, 3, 0, 1, 0, 2, 0, 1, 0, 6, 0, 1, 0, 2, 0, 1, 0, 3, 0, 1, 0, 2, 0, 1, 0, 4, 0, 1, 0, 2, 0, 1, 0, 3, 0, 1,
	0, 2, 0, 1, 0, 5, 0, 1, 0, 2, 0, 1, 0, 3, 0, 1, 0, 2, 0, 1, 0, 4, 0, 1, 0, 2, 0, 1, 0, 3, 0, 1, 0, 2, 0, 1, 0, "\x07", 0, 1, 0, 2, 0, 1, 0, 3, 0, 1, 0, 2,
	0, 1, 0, 4, 0, 1, 0, 2, 0, 1, 0, 3, 0, 1, 0, 2, 0, 1, 0, 5, 0, 1, 0, 2, 0, 1, 0, 3, 0, 1, 0, 2, 0, 1, 0, 4, 0, 1, 0, 2, 0, 1, 0, 3, 0, 1, 0, 2, 0, 1, 0,
	6, 0, 1, 0, 2, 0, 1, 0, 3, 0, 1, 0, 2, 0, 1, 0, 4, 0, 1, 0, 2, 0, 1, 0, 3, 0, 1, 0, 2, 0, 1, 0, 5, 0, 1, 0, 2, 0, 1, 0, 3, 0, 1, 0, 2, 0, 1, 0, 4, 0, 1,
	0, 2, 0, 1, 0, 3, 0, 1, 0, 2, 0, 1, 0) : GoString);

final _pop8tab:GoString = (Go.str(0, 1, 1, 2, 1, 2, 2, 3, 1, 2, 2, 3, 2, 3, 3, 4, 1, 2, 2, 3, 2, 3, 3, 4, 2, 3, 3, 4, 3, 4, 4, 5, 1, 2, 2, 3, 2, 3, 3, 4, 2,
	3, 3, 4, 3, 4, 4, 5, 2, 3, 3, 4, 3, 4, 4, 5, 3, 4, 4, 5, 4, 5, 5, 6, 1, 2, 2, 3, 2, 3, 3, 4, 2, 3, 3, 4, 3, 4, 4, 5, 2, 3, 3, 4, 3, 4, 4, 5, 3, 4, 4, 5,
	4, 5, 5, 6, 2, 3, 3, 4, 3, 4, 4, 5, 3, 4, 4, 5, 4, 5, 5, 6, 3, 4, 4, 5, 4, 5, 5, 6, 4, 5, 5, 6, 5, 6, 6, "\x07", 1, 2, 2, 3, 2, 3, 3, 4, 2, 3, 3, 4, 3, 4,
	4, 5, 2, 3, 3, 4, 3, 4, 4, 5, 3, 4, 4, 5, 4, 5, 5, 6, 2, 3, 3, 4, 3, 4, 4, 5, 3, 4, 4, 5, 4, 5, 5, 6, 3, 4, 4, 5, 4, 5, 5, 6, 4, 5, 5, 6, 5, 6, 6, "\x07",
	2, 3, 3, 4, 3, 4, 4, 5, 3, 4, 4, 5, 4, 5, 5, 6, 3, 4, 4, 5, 4, 5, 5, 6, 4, 5, 5, 6, 5, 6, 6, "\x07", 3, 4, 4, 5, 4, 5, 5, 6, 4, 5, 5, 6, 5, 6, 6, "\x07",
	4, 5, 5, 6, 5, 6, 6, "\x07", 5, 6, 6, "\x07", 6, "\x07\x07\x08") : GoString);

final _rev8tab:GoString = (Go.str(0, 128, "@", 192, " ", 160, "`", 224, 16, 144, "P", 208, "0", 176, "p", 240, "\x08", 136, "H", 200, "(", 168, "h", 232, 24,
	152, "X", 216, "8", 184, "x", 248, 4, 132, "D", 196, "$$", 164, "d", 228, 20, 148, "T", 212, "4", 180, "t", 244, "\x0C", 140, "L", 204, ",", 172, "l",
	236, 28, 156, "\\", 220, "<", 188, "|", 252, 2, 130, "B", 194, "\"", 162, "b", 226, 18, 146, "R", 210, "2", 178, "r", 242, "\n", 138, "J", 202, "*", 170,
	"j", 234, 26, 154, "Z", 218, ":", 186, "z", 250, 6, 134, "F", 198, "&", 166, "f", 230, 22, 150, "V", 214, "6", 182, "v", 246, 14, 142, "N", 206, ".", 174,
	"n", 238, 30, 158, "^", 222, ">", 190, "~", 254, 1, 129, "A", 193, "!", 161, "a", 225, 17, 145, "Q", 209, "1", 177, "q", 241, "\t", 137, "I", 201, ")",
	169, "i", 233, 25, 153, "Y", 217, "9", 185, "y", 249, 5, 133, "E", 197, "%", 165, "e", 229, 21, 149, "U", 213, "5", 181, "u", 245, "\r", 141, "M", 205,
	"-", 173, "m", 237, 29, 157, "]", 221, "=", 189, "}", 253, 3, 131, "C", 195, "#", 163, "c", 227, 19, 147, "S", 211, "3", 179, "s", 243, "\x0B", 139, "K",
	203, "+", 171, "k", 235, 27, 155, "[", 219, ";", 187, "{", 251, "\x07", 135, "G", 199, "\'", 167, "g", 231, 23, 151, "W", 215, "7", 183, "w", 247, 15,
	143, "O", 207, "/", 175, "o", 239, 31, 159, "_", 223, "?", 191, 127, 255) : GoString);

final _len8tab:GoString = (Go.str(0, 1, 2, 2, 3, 3, 3, 3, 4, 4, 4, 4, 4, 4, 4, 4, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 6, 6, 6, 6, 6, 6, 6, 6, 6,
	6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6,
	"\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08") : GoString);

final deBruijn64:GoUnTypedInt = ("285870213051353865" : GoUnTypedInt);

/**
	// Package bits implements bit counting and manipulation
	// functions for the predeclared unsigned integer types.
**/
private var __go2hxdoc__package:Bool;

@:named @:using(stdgo.math.bits.Bits.T_errorString_static_extension) typedef T_errorString = GoString;

/**
	// LeadingZeros returns the number of leading zero bits in x; the result is UintSize for x == 0.
**/
function leadingZeros(_x:GoUInt):GoInt {
	return (32 : GoInt) - len(_x);
}

/**
	// LeadingZeros8 returns the number of leading zero bits in x; the result is 8 for x == 0.
**/
function leadingZeros8(_x:GoUInt8):GoInt {
	return (8 : GoInt) - len8(_x);
}

/**
	// LeadingZeros16 returns the number of leading zero bits in x; the result is 16 for x == 0.
**/
function leadingZeros16(_x:GoUInt16):GoInt {
	return (16 : GoInt) - len16(_x);
}

/**
	// LeadingZeros32 returns the number of leading zero bits in x; the result is 32 for x == 0.
**/
function leadingZeros32(_x:GoUInt32):GoInt {
	return (32 : GoInt) - len32(_x);
}

/**
	// LeadingZeros64 returns the number of leading zero bits in x; the result is 64 for x == 0.
**/
function leadingZeros64(_x:GoUInt64):GoInt {
	return (64 : GoInt) - len64(_x);
}

/**
	// TrailingZeros returns the number of trailing zero bits in x; the result is UintSize for x == 0.
**/
function trailingZeros(_x:GoUInt):GoInt {
	if (true) {
		return trailingZeros32((_x : GoUInt32));
	};
	return trailingZeros64((_x : GoUInt64));
}

/**
	// TrailingZeros8 returns the number of trailing zero bits in x; the result is 8 for x == 0.
**/
function trailingZeros8(_x:GoUInt8):GoInt {
	return ((Go.str("\x08", 0, 1, 0, 2, 0, 1, 0, 3, 0, 1, 0, 2, 0, 1, 0, 4, 0, 1, 0, 2, 0, 1, 0, 3, 0, 1, 0, 2, 0, 1, 0, 5, 0, 1, 0, 2, 0, 1, 0, 3, 0, 1, 0,
		2, 0, 1, 0, 4, 0, 1, 0, 2, 0, 1, 0, 3, 0, 1, 0, 2, 0, 1, 0, 6, 0, 1, 0, 2, 0, 1, 0, 3, 0, 1, 0, 2, 0, 1, 0, 4, 0, 1, 0, 2, 0, 1, 0, 3, 0, 1, 0, 2, 0,
		1, 0, 5, 0, 1, 0, 2, 0, 1, 0, 3, 0, 1, 0, 2, 0, 1, 0, 4, 0, 1, 0, 2, 0, 1, 0, 3, 0, 1, 0, 2, 0, 1, 0, "\x07", 0, 1, 0, 2, 0, 1, 0, 3, 0, 1, 0, 2, 0,
		1, 0, 4, 0, 1, 0, 2, 0, 1, 0, 3, 0, 1, 0, 2, 0, 1, 0, 5, 0, 1, 0, 2, 0, 1, 0, 3, 0, 1, 0, 2, 0, 1, 0, 4, 0, 1, 0, 2, 0, 1, 0, 3, 0, 1, 0, 2, 0, 1, 0,
		6, 0, 1, 0, 2, 0, 1, 0, 3, 0, 1, 0, 2, 0, 1, 0, 4, 0, 1, 0, 2, 0, 1, 0, 3, 0, 1, 0, 2, 0, 1, 0, 5, 0, 1, 0, 2, 0, 1, 0, 3, 0, 1, 0, 2, 0, 1, 0, 4, 0,
		1, 0, 2, 0, 1, 0, 3, 0, 1, 0, 2, 0, 1, 0) : GoString)[_x] : GoInt);
}

/**
	// TrailingZeros16 returns the number of trailing zero bits in x; the result is 16 for x == 0.
**/
function trailingZeros16(_x:GoUInt16):GoInt {
	if (_x == (0 : GoUInt16)) {
		return (16 : GoInt);
	};
	return (_deBruijn32tab[((_x & -_x : GoUInt32) * (125613361 : GoUInt32)) >> (27 : GoUnTypedInt)] : GoInt);
}

/**
	// TrailingZeros32 returns the number of trailing zero bits in x; the result is 32 for x == 0.
**/
function trailingZeros32(_x:GoUInt32):GoInt {
	if (_x == (0 : GoUInt32)) {
		return (32 : GoInt);
	};
	return (_deBruijn32tab[((_x & -_x) * (125613361 : GoUInt32)) >> (27 : GoUnTypedInt)] : GoInt);
}

/**
	// TrailingZeros64 returns the number of trailing zero bits in x; the result is 64 for x == 0.
**/
function trailingZeros64(_x:GoUInt64):GoInt {
	if (_x == (0 : GoUInt64)) {
		return (64 : GoInt);
	};
	return (_deBruijn64tab[((_x & -_x) * ("285870213051353865" : GoUInt64)) >> (58 : GoUnTypedInt)] : GoInt);
}

/**
	// OnesCount returns the number of one bits ("population count") in x.
**/
function onesCount(_x:GoUInt):GoInt {
	if (true) {
		return onesCount32((_x : GoUInt32));
	};
	return onesCount64((_x : GoUInt64));
}

/**
	// OnesCount8 returns the number of one bits ("population count") in x.
**/
function onesCount8(_x:GoUInt8):GoInt {
	return ((Go.str(0, 1, 1, 2, 1, 2, 2, 3, 1, 2, 2, 3, 2, 3, 3, 4, 1, 2, 2, 3, 2, 3, 3, 4, 2, 3, 3, 4, 3, 4, 4, 5, 1, 2, 2, 3, 2, 3, 3, 4, 2, 3, 3, 4, 3, 4,
		4, 5, 2, 3, 3, 4, 3, 4, 4, 5, 3, 4, 4, 5, 4, 5, 5, 6, 1, 2, 2, 3, 2, 3, 3, 4, 2, 3, 3, 4, 3, 4, 4, 5, 2, 3, 3, 4, 3, 4, 4, 5, 3, 4, 4, 5, 4, 5, 5, 6,
		2, 3, 3, 4, 3, 4, 4, 5, 3, 4, 4, 5, 4, 5, 5, 6, 3, 4, 4, 5, 4, 5, 5, 6, 4, 5, 5, 6, 5, 6, 6, "\x07", 1, 2, 2, 3, 2, 3, 3, 4, 2, 3, 3, 4, 3, 4, 4, 5,
		2, 3, 3, 4, 3, 4, 4, 5, 3, 4, 4, 5, 4, 5, 5, 6, 2, 3, 3, 4, 3, 4, 4, 5, 3, 4, 4, 5, 4, 5, 5, 6, 3, 4, 4, 5, 4, 5, 5, 6, 4, 5, 5, 6, 5, 6, 6, "\x07",
		2, 3, 3, 4, 3, 4, 4, 5, 3, 4, 4, 5, 4, 5, 5, 6, 3, 4, 4, 5, 4, 5, 5, 6, 4, 5, 5, 6, 5, 6, 6, "\x07", 3, 4, 4, 5, 4, 5, 5, 6, 4, 5, 5, 6, 5, 6, 6,
		"\x07", 4, 5, 5, 6, 5, 6, 6, "\x07", 5, 6, 6, "\x07", 6, "\x07\x07\x08") : GoString)[_x] : GoInt);
}

/**
	// OnesCount16 returns the number of one bits ("population count") in x.
**/
function onesCount16(_x:GoUInt16):GoInt {
	return ((Go.str(0, 1, 1, 2, 1, 2, 2, 3, 1, 2, 2, 3, 2, 3, 3, 4, 1, 2, 2, 3, 2, 3, 3, 4, 2, 3, 3, 4, 3, 4, 4, 5, 1, 2, 2, 3, 2, 3, 3, 4, 2, 3, 3, 4, 3, 4,
		4, 5, 2, 3, 3, 4, 3, 4, 4, 5, 3, 4, 4, 5, 4, 5, 5, 6, 1, 2, 2, 3, 2, 3, 3, 4, 2, 3, 3, 4, 3, 4, 4, 5, 2, 3, 3, 4, 3, 4, 4, 5, 3, 4, 4, 5, 4, 5, 5, 6,
		2, 3, 3, 4, 3, 4, 4, 5, 3, 4, 4, 5, 4, 5, 5, 6, 3, 4, 4, 5, 4, 5, 5, 6, 4, 5, 5, 6, 5, 6, 6, "\x07", 1, 2, 2, 3, 2, 3, 3, 4, 2, 3, 3, 4, 3, 4, 4, 5,
		2, 3, 3, 4, 3, 4, 4, 5, 3, 4, 4, 5, 4, 5, 5, 6, 2, 3, 3, 4, 3, 4, 4, 5, 3, 4, 4, 5, 4, 5, 5, 6, 3, 4, 4, 5, 4, 5, 5, 6, 4, 5, 5, 6, 5, 6, 6, "\x07",
		2, 3, 3, 4, 3, 4, 4, 5, 3, 4, 4, 5, 4, 5, 5, 6, 3, 4, 4, 5, 4, 5, 5, 6, 4, 5, 5, 6, 5, 6, 6, "\x07", 3, 4, 4, 5, 4, 5, 5, 6, 4, 5, 5, 6, 5, 6, 6,
		"\x07", 4, 5, 5, 6, 5, 6, 6, "\x07", 5, 6, 6, "\x07", 6, "\x07\x07\x08") : GoString)[_x >> (8 : GoUnTypedInt)]
		+ (Go.str(0, 1, 1, 2, 1, 2, 2, 3, 1, 2, 2, 3, 2, 3, 3, 4, 1, 2, 2, 3, 2, 3, 3, 4, 2, 3, 3, 4, 3, 4, 4, 5, 1, 2, 2, 3, 2, 3, 3, 4, 2, 3, 3, 4, 3, 4, 4,
			5, 2, 3, 3, 4, 3, 4, 4, 5, 3, 4, 4, 5, 4, 5, 5, 6, 1, 2, 2, 3, 2, 3, 3, 4, 2, 3, 3, 4, 3, 4, 4, 5, 2, 3, 3, 4, 3, 4, 4, 5, 3, 4, 4, 5, 4, 5, 5, 6,
			2, 3, 3, 4, 3, 4, 4, 5, 3, 4, 4, 5, 4, 5, 5, 6, 3, 4, 4, 5, 4, 5, 5, 6, 4, 5, 5, 6, 5, 6, 6, "\x07", 1, 2, 2, 3, 2, 3, 3, 4, 2, 3, 3, 4, 3, 4, 4,
			5, 2, 3, 3, 4, 3, 4, 4, 5, 3, 4, 4, 5, 4, 5, 5, 6, 2, 3, 3, 4, 3, 4, 4, 5, 3, 4, 4, 5, 4, 5, 5, 6, 3, 4, 4, 5, 4, 5, 5, 6, 4, 5, 5, 6, 5, 6, 6,
			"\x07", 2, 3, 3, 4, 3, 4, 4, 5, 3, 4, 4, 5, 4, 5, 5, 6, 3, 4, 4, 5, 4, 5, 5, 6, 4, 5, 5, 6, 5, 6, 6, "\x07", 3, 4, 4, 5, 4, 5, 5, 6, 4, 5, 5, 6,
			5, 6, 6, "\x07", 4, 5, 5, 6, 5, 6, 6, "\x07", 5, 6, 6, "\x07", 6, "\x07\x07\x08") : GoString)[_x & (255 : GoUInt16)]: GoInt);
}

/**
	// OnesCount32 returns the number of one bits ("population count") in x.
**/
function onesCount32(_x:GoUInt32):GoInt {
	return ((((Go.str(0, 1, 1, 2, 1, 2, 2, 3, 1, 2, 2, 3, 2, 3, 3, 4, 1, 2, 2, 3, 2, 3, 3, 4, 2, 3, 3, 4, 3, 4, 4, 5, 1, 2, 2, 3, 2, 3, 3, 4, 2, 3, 3, 4, 3,
		4, 4, 5, 2, 3, 3, 4, 3, 4, 4, 5, 3, 4, 4, 5, 4, 5, 5, 6, 1, 2, 2, 3, 2, 3, 3, 4, 2, 3, 3, 4, 3, 4, 4, 5, 2, 3, 3, 4, 3, 4, 4, 5, 3, 4, 4, 5, 4, 5, 5,
		6, 2, 3, 3, 4, 3, 4, 4, 5, 3, 4, 4, 5, 4, 5, 5, 6, 3, 4, 4, 5, 4, 5, 5, 6, 4, 5, 5, 6, 5, 6, 6, "\x07", 1, 2, 2, 3, 2, 3, 3, 4, 2, 3, 3, 4, 3, 4, 4,
		5, 2, 3, 3, 4, 3, 4, 4, 5, 3, 4, 4, 5, 4, 5, 5, 6, 2, 3, 3, 4, 3, 4, 4, 5, 3, 4, 4, 5, 4, 5, 5, 6, 3, 4, 4, 5, 4, 5, 5, 6, 4, 5, 5, 6, 5, 6, 6,
		"\x07", 2, 3, 3, 4, 3, 4, 4, 5, 3, 4, 4, 5, 4, 5, 5, 6, 3, 4, 4, 5, 4, 5, 5, 6, 4, 5, 5, 6, 5, 6, 6, "\x07", 3, 4, 4, 5, 4, 5, 5, 6, 4, 5, 5, 6, 5, 6,
		6, "\x07", 4, 5, 5, 6, 5, 6, 6, "\x07", 5, 6, 6, "\x07", 6, "\x07\x07\x08") : GoString)[_x >> (24 : GoUnTypedInt)]
		+ (Go.str(0, 1, 1, 2, 1, 2, 2, 3, 1, 2, 2, 3, 2, 3, 3, 4, 1, 2, 2, 3, 2, 3, 3, 4, 2, 3, 3, 4, 3, 4, 4, 5, 1, 2, 2, 3, 2, 3, 3, 4, 2, 3, 3, 4, 3, 4, 4,
			5, 2, 3, 3, 4, 3, 4, 4, 5, 3, 4, 4, 5, 4, 5, 5, 6, 1, 2, 2, 3, 2, 3, 3, 4, 2, 3, 3, 4, 3, 4, 4, 5, 2, 3, 3, 4, 3, 4, 4, 5, 3, 4, 4, 5, 4, 5, 5, 6,
			2, 3, 3, 4, 3, 4, 4, 5, 3, 4, 4, 5, 4, 5, 5, 6, 3, 4, 4, 5, 4, 5, 5, 6, 4, 5, 5, 6, 5, 6, 6, "\x07", 1, 2, 2, 3, 2, 3, 3, 4, 2, 3, 3, 4, 3, 4, 4,
			5, 2, 3, 3, 4, 3, 4, 4, 5, 3, 4, 4, 5, 4, 5, 5, 6, 2, 3, 3, 4, 3, 4, 4, 5, 3, 4, 4, 5, 4, 5, 5, 6, 3, 4, 4, 5, 4, 5, 5, 6, 4, 5, 5, 6, 5, 6, 6,
			"\x07", 2, 3, 3, 4, 3, 4, 4, 5, 3, 4, 4, 5, 4, 5, 5, 6, 3, 4, 4, 5, 4, 5, 5, 6, 4, 5, 5, 6, 5, 6, 6, "\x07", 3, 4, 4, 5, 4, 5, 5, 6, 4, 5, 5, 6,
			5, 6, 6, "\x07", 4, 5, 5, 6, 5, 6, 6, "\x07", 5, 6, 6, "\x07", 6, "\x07\x07\x08") : GoString)[(_x >> (16 : GoUnTypedInt)) & (255 : GoUInt32)])
		+ (Go.str(0, 1, 1, 2, 1, 2, 2, 3, 1, 2, 2, 3, 2, 3, 3, 4, 1, 2, 2, 3, 2, 3, 3, 4, 2, 3, 3, 4, 3, 4, 4, 5, 1, 2, 2, 3, 2, 3, 3, 4, 2, 3, 3, 4, 3, 4, 4,
			5, 2, 3, 3, 4, 3, 4, 4, 5, 3, 4, 4, 5, 4, 5, 5, 6, 1, 2, 2, 3, 2, 3, 3, 4, 2, 3, 3, 4, 3, 4, 4, 5, 2, 3, 3, 4, 3, 4, 4, 5, 3, 4, 4, 5, 4, 5, 5, 6,
			2, 3, 3, 4, 3, 4, 4, 5, 3, 4, 4, 5, 4, 5, 5, 6, 3, 4, 4, 5, 4, 5, 5, 6, 4, 5, 5, 6, 5, 6, 6, "\x07", 1, 2, 2, 3, 2, 3, 3, 4, 2, 3, 3, 4, 3, 4, 4,
			5, 2, 3, 3, 4, 3, 4, 4, 5, 3, 4, 4, 5, 4, 5, 5, 6, 2, 3, 3, 4, 3, 4, 4, 5, 3, 4, 4, 5, 4, 5, 5, 6, 3, 4, 4, 5, 4, 5, 5, 6, 4, 5, 5, 6, 5, 6, 6,
			"\x07", 2, 3, 3, 4, 3, 4, 4, 5, 3, 4, 4, 5, 4, 5, 5, 6, 3, 4, 4, 5, 4, 5, 5, 6, 4, 5, 5, 6, 5, 6, 6, "\x07", 3, 4, 4, 5, 4, 5, 5, 6, 4, 5, 5, 6,
			5, 6, 6, "\x07", 4, 5, 5, 6, 5, 6, 6, "\x07", 5, 6, 6, "\x07", 6, "\x07\x07\x08") : GoString)[(_x >> (8 : GoUnTypedInt)) & (255 : GoUInt32)])
		+ (Go.str(0, 1, 1, 2, 1, 2, 2, 3, 1, 2, 2, 3, 2, 3, 3, 4, 1, 2, 2, 3, 2, 3, 3, 4, 2, 3, 3, 4, 3, 4, 4, 5, 1, 2, 2, 3, 2, 3, 3, 4, 2, 3, 3, 4, 3, 4, 4,
			5, 2, 3, 3, 4, 3, 4, 4, 5, 3, 4, 4, 5, 4, 5, 5, 6, 1, 2, 2, 3, 2, 3, 3, 4, 2, 3, 3, 4, 3, 4, 4, 5, 2, 3, 3, 4, 3, 4, 4, 5, 3, 4, 4, 5, 4, 5, 5, 6,
			2, 3, 3, 4, 3, 4, 4, 5, 3, 4, 4, 5, 4, 5, 5, 6, 3, 4, 4, 5, 4, 5, 5, 6, 4, 5, 5, 6, 5, 6, 6, "\x07", 1, 2, 2, 3, 2, 3, 3, 4, 2, 3, 3, 4, 3, 4, 4,
			5, 2, 3, 3, 4, 3, 4, 4, 5, 3, 4, 4, 5, 4, 5, 5, 6, 2, 3, 3, 4, 3, 4, 4, 5, 3, 4, 4, 5, 4, 5, 5, 6, 3, 4, 4, 5, 4, 5, 5, 6, 4, 5, 5, 6, 5, 6, 6,
			"\x07", 2, 3, 3, 4, 3, 4, 4, 5, 3, 4, 4, 5, 4, 5, 5, 6, 3, 4, 4, 5, 4, 5, 5, 6, 4, 5, 5, 6, 5, 6, 6, "\x07", 3, 4, 4, 5, 4, 5, 5, 6, 4, 5, 5, 6,
			5, 6, 6, "\x07", 4, 5, 5, 6, 5, 6, 6, "\x07", 5, 6, 6, "\x07", 6, "\x07\x07\x08") : GoString)[_x & (255 : GoUInt32)] : GoInt);
}

/**
	// OnesCount64 returns the number of one bits ("population count") in x.
**/
function onesCount64(_x:GoUInt64):GoInt {
	var _m:GoUnTypedInt = (0 : GoUnTypedInt);
	_x = ((_x >> (1 : GoUnTypedInt)) & ("6148914691236517205" : GoUInt64)) + (_x & ("6148914691236517205" : GoUInt64));
	_x = ((_x >> (2 : GoUnTypedInt)) & ("3689348814741910323" : GoUInt64)) + (_x & ("3689348814741910323" : GoUInt64));
	_x = ((_x >> (4 : GoUnTypedInt)) + _x) & ("1085102592571150095" : GoUInt64);
	_x = _x + (_x >> (8 : GoUnTypedInt));
	_x = _x + (_x >> (16 : GoUnTypedInt));
	_x = _x + (_x >> (32 : GoUnTypedInt));
	return (_x : GoInt) & (127 : GoInt);
}

/**
	// RotateLeft returns the value of x rotated left by (k mod UintSize) bits.
	// To rotate x right by k bits, call RotateLeft(x, -k).
	//
	// This function's execution time does not depend on the inputs.
**/
function rotateLeft(_x:GoUInt, _k:GoInt):GoUInt {
	if (true) {
		return (rotateLeft32((_x : GoUInt32), _k) : GoUInt);
	};
	return (rotateLeft64((_x : GoUInt64), _k) : GoUInt);
}

/**
	// RotateLeft8 returns the value of x rotated left by (k mod 8) bits.
	// To rotate x right by k bits, call RotateLeft8(x, -k).
	//
	// This function's execution time does not depend on the inputs.
**/
function rotateLeft8(_x:GoUInt8, _k:GoInt):GoUInt8 {
	var _n:GoUnTypedInt = (8 : GoUnTypedInt);
	var _s:GoUInt = (_k : GoUInt) & (7 : GoUInt);
	return (_x << _s) | (_x >> ((8 : GoUInt) - _s));
}

/**
	// RotateLeft16 returns the value of x rotated left by (k mod 16) bits.
	// To rotate x right by k bits, call RotateLeft16(x, -k).
	//
	// This function's execution time does not depend on the inputs.
**/
function rotateLeft16(_x:GoUInt16, _k:GoInt):GoUInt16 {
	var _n:GoUnTypedInt = (16 : GoUnTypedInt);
	var _s:GoUInt = (_k : GoUInt) & (15 : GoUInt);
	return (_x << _s) | (_x >> ((16 : GoUInt) - _s));
}

/**
	// RotateLeft32 returns the value of x rotated left by (k mod 32) bits.
	// To rotate x right by k bits, call RotateLeft32(x, -k).
	//
	// This function's execution time does not depend on the inputs.
**/
function rotateLeft32(_x:GoUInt32, _k:GoInt):GoUInt32 {
	var _n:GoUnTypedInt = (32 : GoUnTypedInt);
	var _s:GoUInt = (_k : GoUInt) & (31 : GoUInt);
	return (_x << _s) | (_x >> ((32 : GoUInt) - _s));
}

/**
	// RotateLeft64 returns the value of x rotated left by (k mod 64) bits.
	// To rotate x right by k bits, call RotateLeft64(x, -k).
	//
	// This function's execution time does not depend on the inputs.
**/
function rotateLeft64(_x:GoUInt64, _k:GoInt):GoUInt64 {
	var _n:GoUnTypedInt = (64 : GoUnTypedInt);
	var _s:GoUInt = (_k : GoUInt) & (63 : GoUInt);
	return (_x << _s) | (_x >> ((64 : GoUInt) - _s));
}

/**
	// Reverse returns the value of x with its bits in reversed order.
**/
function reverse(_x:GoUInt):GoUInt {
	if (true) {
		return (reverse32((_x : GoUInt32)) : GoUInt);
	};
	return (reverse64((_x : GoUInt64)) : GoUInt);
}

/**
	// Reverse8 returns the value of x with its bits in reversed order.
**/
function reverse8(_x:GoUInt8):GoUInt8 {
	return (Go.str(0, 128, "@", 192, " ", 160, "`", 224, 16, 144, "P", 208, "0", 176, "p", 240, "\x08", 136, "H", 200, "(", 168, "h", 232, 24, 152, "X", 216,
		"8", 184, "x", 248, 4, 132, "D", 196, "$$", 164, "d", 228, 20, 148, "T", 212, "4", 180, "t", 244, "\x0C", 140, "L", 204, ",", 172, "l", 236, 28, 156,
		"\\", 220, "<", 188, "|", 252, 2, 130, "B", 194, "\"", 162, "b", 226, 18, 146, "R", 210, "2", 178, "r", 242, "\n", 138, "J", 202, "*", 170, "j", 234,
		26, 154, "Z", 218, ":", 186, "z", 250, 6, 134, "F", 198, "&", 166, "f", 230, 22, 150, "V", 214, "6", 182, "v", 246, 14, 142, "N", 206, ".", 174, "n",
		238, 30, 158, "^", 222, ">", 190, "~", 254, 1, 129, "A", 193, "!", 161, "a", 225, 17, 145, "Q", 209, "1", 177, "q", 241, "\t", 137, "I", 201, ")",
		169, "i", 233, 25, 153, "Y", 217, "9", 185, "y", 249, 5, 133, "E", 197, "%", 165, "e", 229, 21, 149, "U", 213, "5", 181, "u", 245, "\r", 141, "M",
		205, "-", 173, "m", 237, 29, 157, "]", 221, "=", 189, "}", 253, 3, 131, "C", 195, "#", 163, "c", 227, 19, 147, "S", 211, "3", 179, "s", 243, "\x0B",
		139, "K", 203, "+", 171, "k", 235, 27, 155, "[", 219, ";", 187, "{", 251, "\x07", 135, "G", 199, "\'", 167, "g", 231, 23, 151, "W", 215, "7", 183,
		"w", 247, 15, 143, "O", 207, "/", 175, "o", 239, 31, 159, "_", 223, "?", 191, 127, 255) : GoString)[_x];
}

/**
	// Reverse16 returns the value of x with its bits in reversed order.
**/
function reverse16(_x:GoUInt16):GoUInt16 {
	return ((Go.str(0, 128, "@", 192, " ", 160, "`", 224, 16, 144, "P", 208, "0", 176, "p", 240, "\x08", 136, "H", 200, "(", 168, "h", 232, 24, 152, "X", 216,
		"8", 184, "x", 248, 4, 132, "D", 196, "$$", 164, "d", 228, 20, 148, "T", 212, "4", 180, "t", 244, "\x0C", 140, "L", 204, ",", 172, "l", 236, 28, 156,
		"\\", 220, "<", 188, "|", 252, 2, 130, "B", 194, "\"", 162, "b", 226, 18, 146, "R", 210, "2", 178, "r", 242, "\n", 138, "J", 202, "*", 170, "j", 234,
		26, 154, "Z", 218, ":", 186, "z", 250, 6, 134, "F", 198, "&", 166, "f", 230, 22, 150, "V", 214, "6", 182, "v", 246, 14, 142, "N", 206, ".", 174, "n",
		238, 30, 158, "^", 222, ">", 190, "~", 254, 1, 129, "A", 193, "!", 161, "a", 225, 17, 145, "Q", 209, "1", 177, "q", 241, "\t", 137, "I", 201, ")",
		169, "i", 233, 25, 153, "Y", 217, "9", 185, "y", 249, 5, 133, "E", 197, "%", 165, "e", 229, 21, 149, "U", 213, "5", 181, "u", 245, "\r", 141, "M",
		205, "-", 173, "m", 237, 29, 157, "]", 221, "=", 189, "}", 253, 3, 131, "C", 195, "#", 163, "c", 227, 19, 147, "S", 211, "3", 179, "s", 243, "\x0B",
		139, "K", 203, "+", 171, "k", 235, 27, 155, "[", 219, ";", 187, "{", 251, "\x07", 135, "G", 199, "\'", 167, "g", 231, 23, 151, "W", 215, "7", 183,
		"w", 247, 15, 143, "O", 207, "/", 175, "o", 239, 31, 159, "_", 223, "?", 191, 127,
		255) : GoString)[_x >> (8 : GoUnTypedInt)] : GoUInt16) | (((Go.str(0, 128, "@", 192, " ", 160, "`", 224, 16, 144, "P", 208, "0", 176, "p", 240,
			"\x08", 136, "H", 200, "(", 168, "h", 232, 24, 152, "X", 216, "8", 184, "x", 248, 4, 132, "D", 196, "$$", 164, "d", 228, 20, 148, "T", 212, "4",
			180, "t", 244, "\x0C", 140, "L", 204, ",", 172, "l", 236, 28, 156, "\\", 220, "<", 188, "|", 252, 2, 130, "B", 194, "\"", 162, "b", 226, 18, 146,
			"R", 210, "2", 178, "r", 242, "\n", 138, "J", 202, "*", 170, "j", 234, 26, 154, "Z", 218, ":", 186, "z", 250, 6, 134, "F", 198, "&", 166, "f",
			230, 22, 150, "V", 214, "6", 182, "v", 246, 14, 142, "N", 206, ".", 174, "n", 238, 30, 158, "^", 222, ">", 190, "~", 254, 1, 129, "A", 193, "!",
			161, "a", 225, 17, 145, "Q", 209, "1", 177, "q", 241, "\t", 137, "I", 201, ")", 169, "i", 233, 25, 153, "Y", 217, "9", 185, "y", 249, 5, 133, "E",
			197, "%", 165, "e", 229, 21, 149, "U", 213, "5", 181, "u", 245, "\r", 141, "M", 205, "-", 173, "m", 237, 29, 157, "]", 221, "=", 189, "}", 253, 3,
			131, "C", 195, "#", 163, "c", 227, 19, 147, "S", 211, "3", 179, "s", 243, "\x0B", 139, "K", 203, "+", 171, "k", 235, 27, 155, "[", 219, ";", 187,
			"{", 251, "\x07", 135, "G", 199, "\'", 167, "g", 231, 23, 151, "W", 215, "7", 183, "w", 247, 15, 143, "O", 207, "/", 175, "o", 239, 31, 159, "_",
			223, "?", 191, 127, 255) : GoString)[_x & (255 : GoUInt16)] : GoUInt16) << (8 : GoUnTypedInt));
}

/**
	// Reverse32 returns the value of x with its bits in reversed order.
**/
function reverse32(_x:GoUInt32):GoUInt32 {
	var _m:GoUnTypedInt = ("4294967295" : GoUnTypedInt);
	_x = ((_x >> (1 : GoUnTypedInt)) & (1431655765 : GoUInt32)) | ((_x & (1431655765 : GoUInt32)) << (1 : GoUnTypedInt));
	_x = ((_x >> (2 : GoUnTypedInt)) & (858993459 : GoUInt32)) | ((_x & (858993459 : GoUInt32)) << (2 : GoUnTypedInt));
	_x = ((_x >> (4 : GoUnTypedInt)) & (252645135 : GoUInt32)) | ((_x & (252645135 : GoUInt32)) << (4 : GoUnTypedInt));
	return reverseBytes32(_x);
}

/**
	// Reverse64 returns the value of x with its bits in reversed order.
**/
function reverse64(_x:GoUInt64):GoUInt64 {
	var _m:GoUnTypedInt = (0 : GoUnTypedInt);
	_x = ((_x >> (1 : GoUnTypedInt)) & ("6148914691236517205" : GoUInt64)) | ((_x & ("6148914691236517205" : GoUInt64)) << (1 : GoUnTypedInt));
	_x = ((_x >> (2 : GoUnTypedInt)) & ("3689348814741910323" : GoUInt64)) | ((_x & ("3689348814741910323" : GoUInt64)) << (2 : GoUnTypedInt));
	_x = ((_x >> (4 : GoUnTypedInt)) & ("1085102592571150095" : GoUInt64)) | ((_x & ("1085102592571150095" : GoUInt64)) << (4 : GoUnTypedInt));
	return reverseBytes64(_x);
}

/**
	// ReverseBytes returns the value of x with its bytes in reversed order.
	//
	// This function's execution time does not depend on the inputs.
**/
function reverseBytes(_x:GoUInt):GoUInt {
	if (true) {
		return (reverseBytes32((_x : GoUInt32)) : GoUInt);
	};
	return (reverseBytes64((_x : GoUInt64)) : GoUInt);
}

/**
	// ReverseBytes16 returns the value of x with its bytes in reversed order.
	//
	// This function's execution time does not depend on the inputs.
**/
function reverseBytes16(_x:GoUInt16):GoUInt16 {
	return (_x >> (8 : GoUnTypedInt)) | (_x << (8 : GoUnTypedInt));
}

/**
	// ReverseBytes32 returns the value of x with its bytes in reversed order.
	//
	// This function's execution time does not depend on the inputs.
**/
function reverseBytes32(_x:GoUInt32):GoUInt32 {
	var _m:GoUnTypedInt = ("4294967295" : GoUnTypedInt);
	_x = ((_x >> (8 : GoUnTypedInt)) & (16711935 : GoUInt32)) | ((_x & (16711935 : GoUInt32)) << (8 : GoUnTypedInt));
	return (_x >> (16 : GoUnTypedInt)) | (_x << (16 : GoUnTypedInt));
}

/**
	// ReverseBytes64 returns the value of x with its bytes in reversed order.
	//
	// This function's execution time does not depend on the inputs.
**/
function reverseBytes64(_x:GoUInt64):GoUInt64 {
	var _m:GoUnTypedInt = (0 : GoUnTypedInt);
	_x = ((_x >> (8 : GoUnTypedInt)) & ("71777214294589695" : GoUInt64)) | ((_x & ("71777214294589695" : GoUInt64)) << (8 : GoUnTypedInt));
	_x = ((_x >> (16 : GoUnTypedInt)) & ("281470681808895" : GoUInt64)) | ((_x & ("281470681808895" : GoUInt64)) << (16 : GoUnTypedInt));
	return (_x >> (32 : GoUnTypedInt)) | (_x << (32 : GoUnTypedInt));
}

/**
	// Len returns the minimum number of bits required to represent x; the result is 0 for x == 0.
**/
function len(_x:GoUInt):GoInt {
	if (true) {
		return len32((_x : GoUInt32));
	};
	return len64((_x : GoUInt64));
}

/**
	// Len8 returns the minimum number of bits required to represent x; the result is 0 for x == 0.
**/
function len8(_x:GoUInt8):GoInt {
	return ((Go.str(0, 1, 2, 2, 3, 3, 3, 3, 4, 4, 4, 4, 4, 4, 4, 4, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6,
		6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6,
		"\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08") : GoString)[_x] : GoInt);
}

/**
	// Len16 returns the minimum number of bits required to represent x; the result is 0 for x == 0.
**/
function len16(_x:GoUInt16):GoInt {
	var _n:GoInt = (0 : GoInt);
	if (_x >= (256 : GoUInt16)) {
		_x = _x >> ((8 : GoUnTypedInt));
		_n = (8 : GoInt);
	};
	return _n
		+ ((Go.str(0, 1, 2, 2, 3, 3, 3, 3, 4, 4, 4, 4, 4, 4, 4, 4, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6,
			6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6,
			"\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08") : GoString)[_x] : GoInt);
}

/**
	// Len32 returns the minimum number of bits required to represent x; the result is 0 for x == 0.
**/
function len32(_x:GoUInt32):GoInt {
	var _n:GoInt = (0 : GoInt);
	if (_x >= (65536 : GoUInt32)) {
		_x = _x >> ((16 : GoUnTypedInt));
		_n = (16 : GoInt);
	};
	if (_x >= (256 : GoUInt32)) {
		_x = _x >> ((8 : GoUnTypedInt));
		_n = _n + ((8 : GoInt));
	};
	return _n
		+ ((Go.str(0, 1, 2, 2, 3, 3, 3, 3, 4, 4, 4, 4, 4, 4, 4, 4, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6,
			6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6,
			"\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08") : GoString)[_x] : GoInt);
}

/**
	// Len64 returns the minimum number of bits required to represent x; the result is 0 for x == 0.
**/
function len64(_x:GoUInt64):GoInt {
	var _n:GoInt = (0 : GoInt);
	if (_x >= ("4294967296" : GoUInt64)) {
		_x = _x >> ((32 : GoUnTypedInt));
		_n = (32 : GoInt);
	};
	if (_x >= (65536 : GoUInt64)) {
		_x = _x >> ((16 : GoUnTypedInt));
		_n = _n + ((16 : GoInt));
	};
	if (_x >= (256 : GoUInt64)) {
		_x = _x >> ((8 : GoUnTypedInt));
		_n = _n + ((8 : GoInt));
	};
	return _n
		+ ((Go.str(0, 1, 2, 2, 3, 3, 3, 3, 4, 4, 4, 4, 4, 4, 4, 4, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6,
			6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6,
			"\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x07\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08\x08") : GoString)[_x] : GoInt);
}

/**
	// Add returns the sum with carry of x, y and carry: sum = x + y + carry.
	// The carry input must be 0 or 1; otherwise the behavior is undefined.
	// The carryOut output is guaranteed to be 0 or 1.
	//
	// This function's execution time does not depend on the inputs.
**/
function add(_x:GoUInt, _y:GoUInt, _carry:GoUInt):{var _0:GoUInt; var _1:GoUInt;} {
	var _sum:GoUInt = (0 : GoUInt), _carryOut:GoUInt = (0 : GoUInt);
	if (true) {
		var __tmp__ = add32((_x : GoUInt32), (_y : GoUInt32), (_carry : GoUInt32)),
			_s32:GoUInt32 = __tmp__._0,
			_c32:GoUInt32 = __tmp__._1;
		return {_0: (_s32 : GoUInt), _1: (_c32 : GoUInt)};
	};
	var __tmp__ = add64((_x : GoUInt64), (_y : GoUInt64), (_carry : GoUInt64)),
		_s64:GoUInt64 = __tmp__._0,
		_c64:GoUInt64 = __tmp__._1;
	return {_0: (_s64 : GoUInt), _1: (_c64 : GoUInt)};
}

/**
	// Add32 returns the sum with carry of x, y and carry: sum = x + y + carry.
	// The carry input must be 0 or 1; otherwise the behavior is undefined.
	// The carryOut output is guaranteed to be 0 or 1.
	//
	// This function's execution time does not depend on the inputs.
**/
function add32(_x:GoUInt32, _y:GoUInt32, _carry:GoUInt32):{var _0:GoUInt32; var _1:GoUInt32;} {
	var _sum:GoUInt32 = (0 : GoUInt32), _carryOut:GoUInt32 = (0 : GoUInt32);
	var _sum64:GoUInt64 = ((_x : GoUInt64) + (_y : GoUInt64)) + (_carry : GoUInt64);
	_sum = (_sum64 : GoUInt32);
	_carryOut = (_sum64 >> (32 : GoUnTypedInt) : GoUInt32);
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
	var _sum:GoUInt64 = (0 : GoUInt64), _carryOut:GoUInt64 = (0 : GoUInt64);
	_sum = (_x + _y) + _carry;
	_carryOut = ((_x & _y) | ((_x | _y) & (_sum ^ (-1 : GoUnTypedInt)))) >> (63 : GoUnTypedInt);
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
	var _diff:GoUInt = (0 : GoUInt), _borrowOut:GoUInt = (0 : GoUInt);
	if (true) {
		var __tmp__ = sub32((_x : GoUInt32), (_y : GoUInt32), (_borrow : GoUInt32)),
			_d32:GoUInt32 = __tmp__._0,
			_b32:GoUInt32 = __tmp__._1;
		return {_0: (_d32 : GoUInt), _1: (_b32 : GoUInt)};
	};
	var __tmp__ = sub64((_x : GoUInt64), (_y : GoUInt64), (_borrow : GoUInt64)),
		_d64:GoUInt64 = __tmp__._0,
		_b64:GoUInt64 = __tmp__._1;
	return {_0: (_d64 : GoUInt), _1: (_b64 : GoUInt)};
}

/**
	// Sub32 returns the difference of x, y and borrow, diff = x - y - borrow.
	// The borrow input must be 0 or 1; otherwise the behavior is undefined.
	// The borrowOut output is guaranteed to be 0 or 1.
	//
	// This function's execution time does not depend on the inputs.
**/
function sub32(_x:GoUInt32, _y:GoUInt32, _borrow:GoUInt32):{var _0:GoUInt32; var _1:GoUInt32;} {
	var _diff:GoUInt32 = (0 : GoUInt32), _borrowOut:GoUInt32 = (0 : GoUInt32);
	_diff = (_x - _y) - _borrow;
	_borrowOut = (((-1 ^ _x) & _y) | ((-1 ^ (_x ^ _y)) & _diff)) >> (31 : GoUnTypedInt);
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
	var _diff:GoUInt64 = (0 : GoUInt64), _borrowOut:GoUInt64 = (0 : GoUInt64);
	_diff = (_x - _y) - _borrow;
	_borrowOut = (((-1 ^ _x) & _y) | ((-1 ^ (_x ^ _y)) & _diff)) >> (63 : GoUnTypedInt);
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
	var _hi:GoUInt = (0 : GoUInt), _lo:GoUInt = (0 : GoUInt);
	if (true) {
		var __tmp__ = mul32((_x : GoUInt32), (_y : GoUInt32)),
			_h:GoUInt32 = __tmp__._0,
			_l:GoUInt32 = __tmp__._1;
		return {_0: (_h : GoUInt), _1: (_l : GoUInt)};
	};
	var __tmp__ = mul64((_x : GoUInt64), (_y : GoUInt64)),
		_h:GoUInt64 = __tmp__._0,
		_l:GoUInt64 = __tmp__._1;
	return {_0: (_h : GoUInt), _1: (_l : GoUInt)};
}

/**
	// Mul32 returns the 64-bit product of x and y: (hi, lo) = x * y
	// with the product bits' upper half returned in hi and the lower
	// half returned in lo.
	//
	// This function's execution time does not depend on the inputs.
**/
function mul32(_x:GoUInt32, _y:GoUInt32):{var _0:GoUInt32; var _1:GoUInt32;} {
	var _hi:GoUInt32 = (0 : GoUInt32), _lo:GoUInt32 = (0 : GoUInt32);
	var _tmp:GoUInt64 = (_x : GoUInt64) * (_y : GoUInt64);
	{
		final __tmp__0 = (_tmp >> (32 : GoUnTypedInt) : GoUInt32);
		final __tmp__1 = (_tmp : GoUInt32);
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
	var _hi:GoUInt64 = (0 : GoUInt64), _lo:GoUInt64 = (0 : GoUInt64);
	var _mask32:GoUnTypedInt = ("4294967295" : GoUnTypedInt);
	var _x0:GoUInt64 = _x & ("4294967295" : GoUInt64);
	var _x1:GoUInt64 = _x >> (32 : GoUnTypedInt);
	var _y0:GoUInt64 = _y & ("4294967295" : GoUInt64);
	var _y1:GoUInt64 = _y >> (32 : GoUnTypedInt);
	var _w0:GoUInt64 = _x0 * _y0;
	var _t:GoUInt64 = (_x1 * _y0) + (_w0 >> (32 : GoUnTypedInt));
	var _w1:GoUInt64 = _t & ("4294967295" : GoUInt64);
	var _w2:GoUInt64 = _t >> (32 : GoUnTypedInt);
	_w1 = _w1 + (_x0 * _y1);
	_hi = ((_x1 * _y1) + _w2) + (_w1 >> (32 : GoUnTypedInt));
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
	var _quo:GoUInt = (0 : GoUInt), _rem:GoUInt = (0 : GoUInt);
	if (true) {
		var __tmp__ = div32((_hi : GoUInt32), (_lo : GoUInt32), (_y : GoUInt32)),
			_q:GoUInt32 = __tmp__._0,
			_r:GoUInt32 = __tmp__._1;
		return {_0: (_q : GoUInt), _1: (_r : GoUInt)};
	};
	var __tmp__ = div64((_hi : GoUInt64), (_lo : GoUInt64), (_y : GoUInt64)),
		_q:GoUInt64 = __tmp__._0,
		_r:GoUInt64 = __tmp__._1;
	return {_0: (_q : GoUInt), _1: (_r : GoUInt)};
}

/**
	// Div32 returns the quotient and remainder of (hi, lo) divided by y:
	// quo = (hi, lo)/y, rem = (hi, lo)%y with the dividend bits' upper
	// half in parameter hi and the lower half in parameter lo.
	// Div32 panics for y == 0 (division by zero) or y <= hi (quotient overflow).
**/
function div32(_hi:GoUInt32, _lo:GoUInt32, _y:GoUInt32):{var _0:GoUInt32; var _1:GoUInt32;} {
	var _quo:GoUInt32 = (0 : GoUInt32), _rem:GoUInt32 = (0 : GoUInt32);
	if ((_y != (0 : GoUInt32)) && (_y <= _hi)) {
		throw Go.toInterface(_overflowError);
	};
	var _z:GoUInt64 = ((_hi : GoUInt64) << (32 : GoUnTypedInt)) | (_lo : GoUInt64);
	{
		final __tmp__0 = (_z / (_y : GoUInt64) : GoUInt32);
		final __tmp__1 = (_z % (_y : GoUInt64) : GoUInt32);
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
	var _quo:GoUInt64 = (0 : GoUInt64), _rem:GoUInt64 = (0 : GoUInt64);
	var _two32:GoUnTypedInt = ("4294967296" : GoUnTypedInt),
		_mask32:GoUnTypedInt = ("4294967295" : GoUnTypedInt);
	if (_y == (0 : GoUInt64)) {
		throw Go.toInterface(_divideError);
	};
	if (_y <= _hi) {
		throw Go.toInterface(_overflowError);
	};
	var _s:GoUInt = (leadingZeros64(_y) : GoUInt);
	_y = _y << (_s);
	var _yn1:GoUInt64 = _y >> (32 : GoUnTypedInt);
	var _yn0:GoUInt64 = _y & ("4294967295" : GoUInt64);
	var _un32:GoUInt64 = (_hi << _s) | (_lo >> ((64 : GoUInt) - _s));
	var _un10:GoUInt64 = _lo << _s;
	var _un1:GoUInt64 = _un10 >> (32 : GoUnTypedInt);
	var _un0:GoUInt64 = _un10 & ("4294967295" : GoUInt64);
	var _q1:GoUInt64 = _un32 / _yn1;
	var _rhat:GoUInt64 = _un32 - (_q1 * _yn1);
	while ((_q1 >= ("4294967296" : GoUInt64)) || ((_q1 * _yn0) > ((("4294967296" : GoUInt64) * _rhat) + _un1))) {
		_q1--;
		_rhat = _rhat + (_yn1);
		if (_rhat >= ("4294967296" : GoUInt64)) {
			break;
		};
	};
	var _un21:GoUInt64 = ((_un32 * ("4294967296" : GoUInt64)) + _un1) - (_q1 * _y);
	var _q0:GoUInt64 = _un21 / _yn1;
	_rhat = _un21 - (_q0 * _yn1);
	while ((_q0 >= ("4294967296" : GoUInt64)) || ((_q0 * _yn0) > ((("4294967296" : GoUInt64) * _rhat) + _un0))) {
		_q0--;
		_rhat = _rhat + (_yn1);
		if (_rhat >= ("4294967296" : GoUInt64)) {
			break;
		};
	};
	return {_0: (_q1 * ("4294967296" : GoUInt64)) + _q0, _1: (((_un21 * ("4294967296" : GoUInt64)) + _un0) - (_q0 * _y)) >> _s};
}

/**
	// Rem returns the remainder of (hi, lo) divided by y. Rem panics for
	// y == 0 (division by zero) but, unlike Div, it doesn't panic on a
	// quotient overflow.
**/
function rem(_hi:GoUInt, _lo:GoUInt, _y:GoUInt):GoUInt {
	if (true) {
		return (rem32((_hi : GoUInt32), (_lo : GoUInt32), (_y : GoUInt32)) : GoUInt);
	};
	return (rem64((_hi : GoUInt64), (_lo : GoUInt64), (_y : GoUInt64)) : GoUInt);
}

/**
	// Rem32 returns the remainder of (hi, lo) divided by y. Rem32 panics
	// for y == 0 (division by zero) but, unlike Div32, it doesn't panic
	// on a quotient overflow.
**/
function rem32(_hi:GoUInt32, _lo:GoUInt32, _y:GoUInt32):GoUInt32 {
	return ((((_hi : GoUInt64) << (32 : GoUnTypedInt)) | (_lo : GoUInt64)) % (_y : GoUInt64) : GoUInt32);
}

/**
	// Rem64 returns the remainder of (hi, lo) divided by y. Rem64 panics
	// for y == 0 (division by zero) but, unlike Div64, it doesn't panic
	// on a quotient overflow.
**/
function rem64(_hi:GoUInt64, _lo:GoUInt64, _y:GoUInt64):GoUInt64 {
	var __tmp__ = div64(_hi % _y, _lo, _y),
		_0:GoUInt64 = __tmp__._0,
		_rem:GoUInt64 = __tmp__._1;
	return _rem;
}

@:keep private class T_errorString_static_extension {
	@:keep
	static public function error(_e:T_errorString):GoString {
		return (Go.str("runtime error: ") : GoString) + (_e : GoString);
	}

	@:keep
	static public function runtimeError(_e:T_errorString):Void {}
}

class T_errorString_asInterface {
	@:keep
	public var error:() -> GoString = null;
	@:keep
	public var runtimeError:() -> Void = null;

	public function new(__self__)
		this.__self__ = __self__;

	public function __underlying__()
		return Go.toInterface(this);

	var __self__:T_errorString;
}
