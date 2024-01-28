package stdgo.math.bits;
@:invalid var __go2hxdoc__package : Dynamic;
@:invalid var _deBruijn32tab : Dynamic;
@:invalid var _deBruijn64tab : Dynamic;
@:invalid var _uintSize : Dynamic;
@:invalid var uintSize : Dynamic;
@:invalid var _deBruijn32 : Dynamic;
@:invalid var _deBruijn64 : Dynamic;
@:invalid var _m0 : Dynamic;
@:invalid var _m1 : Dynamic;
@:invalid var _m2 : Dynamic;
@:invalid var _m3 : Dynamic;
@:invalid var _m4 : Dynamic;
@:invalid var _overflowError : Dynamic;
@:invalid var _divideError : Dynamic;
@:invalid var _ntz8tab : Dynamic;
@:invalid var _pop8tab : Dynamic;
@:invalid var _rev8tab : Dynamic;
@:invalid var _len8tab : Dynamic;
@:invalid var deBruijn64 : Dynamic;
function leadingZeros(_x:stdgo.GoUInt):Void {}
function leadingZeros8(_x:stdgo.GoUInt8):Void {}
function leadingZeros16(_x:stdgo.GoUInt16):Void {}
function leadingZeros32(_x:stdgo.GoUInt32):Void {}
function leadingZeros64(_x:stdgo.GoUInt64):Void {}
function trailingZeros(_x:stdgo.GoUInt):Void {}
function trailingZeros8(_x:stdgo.GoUInt8):Void {}
function trailingZeros16(_x:stdgo.GoUInt16):Void {}
function trailingZeros32(_x:stdgo.GoUInt32):Void {}
function trailingZeros64(_x:stdgo.GoUInt64):Void {}
function onesCount(_x:stdgo.GoUInt):Void {}
function onesCount8(_x:stdgo.GoUInt8):Void {}
function onesCount16(_x:stdgo.GoUInt16):Void {}
function onesCount32(_x:stdgo.GoUInt32):Void {}
function onesCount64(_x:stdgo.GoUInt64):Void {}
function rotateLeft(_x:stdgo.GoUInt, _k:stdgo.GoInt):Void {}
function rotateLeft8(_x:stdgo.GoUInt8, _k:stdgo.GoInt):Void {}
function rotateLeft16(_x:stdgo.GoUInt16, _k:stdgo.GoInt):Void {}
function rotateLeft32(_x:stdgo.GoUInt32, _k:stdgo.GoInt):Void {}
function rotateLeft64(_x:stdgo.GoUInt64, _k:stdgo.GoInt):Void {}
function reverse(_x:stdgo.GoUInt):Void {}
function reverse8(_x:stdgo.GoUInt8):Void {}
function reverse16(_x:stdgo.GoUInt16):Void {}
function reverse32(_x:stdgo.GoUInt32):Void {}
function reverse64(_x:stdgo.GoUInt64):Void {}
function reverseBytes(_x:stdgo.GoUInt):Void {}
function reverseBytes16(_x:stdgo.GoUInt16):Void {}
function reverseBytes32(_x:stdgo.GoUInt32):Void {}
function reverseBytes64(_x:stdgo.GoUInt64):Void {}
function len(_x:stdgo.GoUInt):Void {}
function len8(_x:stdgo.GoUInt8):Void {}
function len16(_x:stdgo.GoUInt16):Void {}
function len32(_x:stdgo.GoUInt32):Void {}
function len64(_x:stdgo.GoUInt64):Void {}
function add(_x:stdgo.GoUInt, _y:stdgo.GoUInt, _carry:stdgo.GoUInt):Void {}
function add32(_x:stdgo.GoUInt32, _y:stdgo.GoUInt32, _carry:stdgo.GoUInt32):Void {}
function add64(_x:stdgo.GoUInt64, _y:stdgo.GoUInt64, _carry:stdgo.GoUInt64):Void {}
function sub(_x:stdgo.GoUInt, _y:stdgo.GoUInt, _borrow:stdgo.GoUInt):Void {}
function sub32(_x:stdgo.GoUInt32, _y:stdgo.GoUInt32, _borrow:stdgo.GoUInt32):Void {}
function sub64(_x:stdgo.GoUInt64, _y:stdgo.GoUInt64, _borrow:stdgo.GoUInt64):Void {}
function mul(_x:stdgo.GoUInt, _y:stdgo.GoUInt):Void {}
function mul32(_x:stdgo.GoUInt32, _y:stdgo.GoUInt32):Void {}
function mul64(_x:stdgo.GoUInt64, _y:stdgo.GoUInt64):Void {}
function div(_hi:stdgo.GoUInt, _lo:stdgo.GoUInt, _y:stdgo.GoUInt):Void {}
function div32(_hi:stdgo.GoUInt32, _lo:stdgo.GoUInt32, _y:stdgo.GoUInt32):Void {}
function div64(_hi:stdgo.GoUInt64, _lo:stdgo.GoUInt64, _y:stdgo.GoUInt64):Void {}
function rem(_hi:stdgo.GoUInt, _lo:stdgo.GoUInt, _y:stdgo.GoUInt):Void {}
function rem32(_hi:stdgo.GoUInt32, _lo:stdgo.GoUInt32, _y:stdgo.GoUInt32):Void {}
function rem64(_hi:stdgo.GoUInt64, _lo:stdgo.GoUInt64, _y:stdgo.GoUInt64):Void {}
