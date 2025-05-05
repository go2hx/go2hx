package stdgo.math.bits;
var uintSize : stdgo.GoUInt64 = 32i64;
var deBruijn64 : stdgo.GoUInt64 = 285870213051353865i64;
/**
    * Package bits implements bit counting and manipulation
    * functions for the predeclared unsigned integer types.
    * 
    * Functions in this package may be implemented directly by
    * the compiler, for better performance. For those functions
    * the code in this package will not be used. Which
    * functions are implemented by the compiler depends on the
    * architecture and the Go release.
**/
class Bits {
    /**
        * LeadingZeros returns the number of leading zero bits in x; the result is UintSize for x == 0.
    **/
    static public inline function leadingZeros(_x:stdgo.GoUInt):stdgo.GoInt return stdgo._internal.math.bits.Bits_leadingzeros.leadingZeros(_x);
    /**
        * LeadingZeros8 returns the number of leading zero bits in x; the result is 8 for x == 0.
    **/
    static public inline function leadingZeros8(_x:stdgo.GoUInt8):stdgo.GoInt return stdgo._internal.math.bits.Bits_leadingzeros8.leadingZeros8(_x);
    /**
        * LeadingZeros16 returns the number of leading zero bits in x; the result is 16 for x == 0.
    **/
    static public inline function leadingZeros16(_x:stdgo.GoUInt16):stdgo.GoInt return stdgo._internal.math.bits.Bits_leadingzeros16.leadingZeros16(_x);
    /**
        * LeadingZeros32 returns the number of leading zero bits in x; the result is 32 for x == 0.
    **/
    static public inline function leadingZeros32(_x:stdgo.GoUInt32):stdgo.GoInt return stdgo._internal.math.bits.Bits_leadingzeros32.leadingZeros32(_x);
    /**
        * LeadingZeros64 returns the number of leading zero bits in x; the result is 64 for x == 0.
    **/
    static public inline function leadingZeros64(_x:stdgo.GoUInt64):stdgo.GoInt return stdgo._internal.math.bits.Bits_leadingzeros64.leadingZeros64(_x);
    /**
        * TrailingZeros returns the number of trailing zero bits in x; the result is UintSize for x == 0.
    **/
    static public inline function trailingZeros(_x:stdgo.GoUInt):stdgo.GoInt return stdgo._internal.math.bits.Bits_trailingzeros.trailingZeros(_x);
    /**
        * TrailingZeros8 returns the number of trailing zero bits in x; the result is 8 for x == 0.
    **/
    static public inline function trailingZeros8(_x:stdgo.GoUInt8):stdgo.GoInt return stdgo._internal.math.bits.Bits_trailingzeros8.trailingZeros8(_x);
    /**
        * TrailingZeros16 returns the number of trailing zero bits in x; the result is 16 for x == 0.
    **/
    static public inline function trailingZeros16(_x:stdgo.GoUInt16):stdgo.GoInt return stdgo._internal.math.bits.Bits_trailingzeros16.trailingZeros16(_x);
    /**
        * TrailingZeros32 returns the number of trailing zero bits in x; the result is 32 for x == 0.
    **/
    static public inline function trailingZeros32(_x:stdgo.GoUInt32):stdgo.GoInt return stdgo._internal.math.bits.Bits_trailingzeros32.trailingZeros32(_x);
    /**
        * TrailingZeros64 returns the number of trailing zero bits in x; the result is 64 for x == 0.
    **/
    static public inline function trailingZeros64(_x:stdgo.GoUInt64):stdgo.GoInt return stdgo._internal.math.bits.Bits_trailingzeros64.trailingZeros64(_x);
    /**
        * OnesCount returns the number of one bits ("population count") in x.
    **/
    static public inline function onesCount(_x:stdgo.GoUInt):stdgo.GoInt return stdgo._internal.math.bits.Bits_onescount.onesCount(_x);
    /**
        * OnesCount8 returns the number of one bits ("population count") in x.
    **/
    static public inline function onesCount8(_x:stdgo.GoUInt8):stdgo.GoInt return stdgo._internal.math.bits.Bits_onescount8.onesCount8(_x);
    /**
        * OnesCount16 returns the number of one bits ("population count") in x.
    **/
    static public inline function onesCount16(_x:stdgo.GoUInt16):stdgo.GoInt return stdgo._internal.math.bits.Bits_onescount16.onesCount16(_x);
    /**
        * OnesCount32 returns the number of one bits ("population count") in x.
    **/
    static public inline function onesCount32(_x:stdgo.GoUInt32):stdgo.GoInt return stdgo._internal.math.bits.Bits_onescount32.onesCount32(_x);
    /**
        * OnesCount64 returns the number of one bits ("population count") in x.
    **/
    static public inline function onesCount64(_x:stdgo.GoUInt64):stdgo.GoInt return stdgo._internal.math.bits.Bits_onescount64.onesCount64(_x);
    /**
        * RotateLeft returns the value of x rotated left by (k mod UintSize) bits.
        * To rotate x right by k bits, call RotateLeft(x, -k).
        * 
        * This function's execution time does not depend on the inputs.
    **/
    static public inline function rotateLeft(_x:stdgo.GoUInt, _k:stdgo.GoInt):stdgo.GoUInt return stdgo._internal.math.bits.Bits_rotateleft.rotateLeft(_x, _k);
    /**
        * RotateLeft8 returns the value of x rotated left by (k mod 8) bits.
        * To rotate x right by k bits, call RotateLeft8(x, -k).
        * 
        * This function's execution time does not depend on the inputs.
    **/
    static public inline function rotateLeft8(_x:stdgo.GoUInt8, _k:stdgo.GoInt):stdgo.GoUInt8 return stdgo._internal.math.bits.Bits_rotateleft8.rotateLeft8(_x, _k);
    /**
        * RotateLeft16 returns the value of x rotated left by (k mod 16) bits.
        * To rotate x right by k bits, call RotateLeft16(x, -k).
        * 
        * This function's execution time does not depend on the inputs.
    **/
    static public inline function rotateLeft16(_x:stdgo.GoUInt16, _k:stdgo.GoInt):stdgo.GoUInt16 return stdgo._internal.math.bits.Bits_rotateleft16.rotateLeft16(_x, _k);
    /**
        * RotateLeft32 returns the value of x rotated left by (k mod 32) bits.
        * To rotate x right by k bits, call RotateLeft32(x, -k).
        * 
        * This function's execution time does not depend on the inputs.
    **/
    static public inline function rotateLeft32(_x:stdgo.GoUInt32, _k:stdgo.GoInt):stdgo.GoUInt32 return stdgo._internal.math.bits.Bits_rotateleft32.rotateLeft32(_x, _k);
    /**
        * RotateLeft64 returns the value of x rotated left by (k mod 64) bits.
        * To rotate x right by k bits, call RotateLeft64(x, -k).
        * 
        * This function's execution time does not depend on the inputs.
    **/
    static public inline function rotateLeft64(_x:stdgo.GoUInt64, _k:stdgo.GoInt):stdgo.GoUInt64 return stdgo._internal.math.bits.Bits_rotateleft64.rotateLeft64(_x, _k);
    /**
        * Reverse returns the value of x with its bits in reversed order.
    **/
    static public inline function reverse(_x:stdgo.GoUInt):stdgo.GoUInt return stdgo._internal.math.bits.Bits_reverse.reverse(_x);
    /**
        * Reverse8 returns the value of x with its bits in reversed order.
    **/
    static public inline function reverse8(_x:stdgo.GoUInt8):stdgo.GoUInt8 return stdgo._internal.math.bits.Bits_reverse8.reverse8(_x);
    /**
        * Reverse16 returns the value of x with its bits in reversed order.
    **/
    static public inline function reverse16(_x:stdgo.GoUInt16):stdgo.GoUInt16 return stdgo._internal.math.bits.Bits_reverse16.reverse16(_x);
    /**
        * Reverse32 returns the value of x with its bits in reversed order.
    **/
    static public inline function reverse32(_x:stdgo.GoUInt32):stdgo.GoUInt32 return stdgo._internal.math.bits.Bits_reverse32.reverse32(_x);
    /**
        * Reverse64 returns the value of x with its bits in reversed order.
    **/
    static public inline function reverse64(_x:stdgo.GoUInt64):stdgo.GoUInt64 return stdgo._internal.math.bits.Bits_reverse64.reverse64(_x);
    /**
        * ReverseBytes returns the value of x with its bytes in reversed order.
        * 
        * This function's execution time does not depend on the inputs.
    **/
    static public inline function reverseBytes(_x:stdgo.GoUInt):stdgo.GoUInt return stdgo._internal.math.bits.Bits_reversebytes.reverseBytes(_x);
    /**
        * ReverseBytes16 returns the value of x with its bytes in reversed order.
        * 
        * This function's execution time does not depend on the inputs.
    **/
    static public inline function reverseBytes16(_x:stdgo.GoUInt16):stdgo.GoUInt16 return stdgo._internal.math.bits.Bits_reversebytes16.reverseBytes16(_x);
    /**
        * ReverseBytes32 returns the value of x with its bytes in reversed order.
        * 
        * This function's execution time does not depend on the inputs.
    **/
    static public inline function reverseBytes32(_x:stdgo.GoUInt32):stdgo.GoUInt32 return stdgo._internal.math.bits.Bits_reversebytes32.reverseBytes32(_x);
    /**
        * ReverseBytes64 returns the value of x with its bytes in reversed order.
        * 
        * This function's execution time does not depend on the inputs.
    **/
    static public inline function reverseBytes64(_x:stdgo.GoUInt64):stdgo.GoUInt64 return stdgo._internal.math.bits.Bits_reversebytes64.reverseBytes64(_x);
    /**
        * Len returns the minimum number of bits required to represent x; the result is 0 for x == 0.
    **/
    static public inline function len(_x:stdgo.GoUInt):stdgo.GoInt return stdgo._internal.math.bits.Bits_len.len(_x);
    /**
        * Len8 returns the minimum number of bits required to represent x; the result is 0 for x == 0.
    **/
    static public inline function len8(_x:stdgo.GoUInt8):stdgo.GoInt return stdgo._internal.math.bits.Bits_len8.len8(_x);
    /**
        * Len16 returns the minimum number of bits required to represent x; the result is 0 for x == 0.
    **/
    static public inline function len16(_x:stdgo.GoUInt16):stdgo.GoInt return stdgo._internal.math.bits.Bits_len16.len16(_x);
    /**
        * Len32 returns the minimum number of bits required to represent x; the result is 0 for x == 0.
    **/
    static public inline function len32(_x:stdgo.GoUInt32):stdgo.GoInt return stdgo._internal.math.bits.Bits_len32.len32(_x);
    /**
        * Len64 returns the minimum number of bits required to represent x; the result is 0 for x == 0.
    **/
    static public inline function len64(_x:stdgo.GoUInt64):stdgo.GoInt return stdgo._internal.math.bits.Bits_len64.len64(_x);
    /**
        * Add returns the sum with carry of x, y and carry: sum = x + y + carry.
        * The carry input must be 0 or 1; otherwise the behavior is undefined.
        * The carryOut output is guaranteed to be 0 or 1.
        * 
        * This function's execution time does not depend on the inputs.
    **/
    static public inline function add(_x:stdgo.GoUInt, _y:stdgo.GoUInt, _carry:stdgo.GoUInt):{ var _0 : stdgo.GoUInt; var _1 : stdgo.GoUInt; } return stdgo._internal.math.bits.Bits_add.add(_x, _y, _carry);
    /**
        * Add32 returns the sum with carry of x, y and carry: sum = x + y + carry.
        * The carry input must be 0 or 1; otherwise the behavior is undefined.
        * The carryOut output is guaranteed to be 0 or 1.
        * 
        * This function's execution time does not depend on the inputs.
    **/
    static public inline function add32(_x:stdgo.GoUInt32, _y:stdgo.GoUInt32, _carry:stdgo.GoUInt32):{ var _0 : stdgo.GoUInt32; var _1 : stdgo.GoUInt32; } return stdgo._internal.math.bits.Bits_add32.add32(_x, _y, _carry);
    /**
        * Add64 returns the sum with carry of x, y and carry: sum = x + y + carry.
        * The carry input must be 0 or 1; otherwise the behavior is undefined.
        * The carryOut output is guaranteed to be 0 or 1.
        * 
        * This function's execution time does not depend on the inputs.
    **/
    static public inline function add64(_x:stdgo.GoUInt64, _y:stdgo.GoUInt64, _carry:stdgo.GoUInt64):{ var _0 : stdgo.GoUInt64; var _1 : stdgo.GoUInt64; } return stdgo._internal.math.bits.Bits_add64.add64(_x, _y, _carry);
    /**
        * Sub returns the difference of x, y and borrow: diff = x - y - borrow.
        * The borrow input must be 0 or 1; otherwise the behavior is undefined.
        * The borrowOut output is guaranteed to be 0 or 1.
        * 
        * This function's execution time does not depend on the inputs.
    **/
    static public inline function sub(_x:stdgo.GoUInt, _y:stdgo.GoUInt, _borrow:stdgo.GoUInt):{ var _0 : stdgo.GoUInt; var _1 : stdgo.GoUInt; } return stdgo._internal.math.bits.Bits_sub.sub(_x, _y, _borrow);
    /**
        * Sub32 returns the difference of x, y and borrow, diff = x - y - borrow.
        * The borrow input must be 0 or 1; otherwise the behavior is undefined.
        * The borrowOut output is guaranteed to be 0 or 1.
        * 
        * This function's execution time does not depend on the inputs.
    **/
    static public inline function sub32(_x:stdgo.GoUInt32, _y:stdgo.GoUInt32, _borrow:stdgo.GoUInt32):{ var _0 : stdgo.GoUInt32; var _1 : stdgo.GoUInt32; } return stdgo._internal.math.bits.Bits_sub32.sub32(_x, _y, _borrow);
    /**
        * Sub64 returns the difference of x, y and borrow: diff = x - y - borrow.
        * The borrow input must be 0 or 1; otherwise the behavior is undefined.
        * The borrowOut output is guaranteed to be 0 or 1.
        * 
        * This function's execution time does not depend on the inputs.
    **/
    static public inline function sub64(_x:stdgo.GoUInt64, _y:stdgo.GoUInt64, _borrow:stdgo.GoUInt64):{ var _0 : stdgo.GoUInt64; var _1 : stdgo.GoUInt64; } return stdgo._internal.math.bits.Bits_sub64.sub64(_x, _y, _borrow);
    /**
        * Mul returns the full-width product of x and y: (hi, lo) = x * y
        * with the product bits' upper half returned in hi and the lower
        * half returned in lo.
        * 
        * This function's execution time does not depend on the inputs.
    **/
    static public inline function mul(_x:stdgo.GoUInt, _y:stdgo.GoUInt):{ var _0 : stdgo.GoUInt; var _1 : stdgo.GoUInt; } return stdgo._internal.math.bits.Bits_mul.mul(_x, _y);
    /**
        * Mul32 returns the 64-bit product of x and y: (hi, lo) = x * y
        * with the product bits' upper half returned in hi and the lower
        * half returned in lo.
        * 
        * This function's execution time does not depend on the inputs.
    **/
    static public inline function mul32(_x:stdgo.GoUInt32, _y:stdgo.GoUInt32):{ var _0 : stdgo.GoUInt32; var _1 : stdgo.GoUInt32; } return stdgo._internal.math.bits.Bits_mul32.mul32(_x, _y);
    /**
        * Mul64 returns the 128-bit product of x and y: (hi, lo) = x * y
        * with the product bits' upper half returned in hi and the lower
        * half returned in lo.
        * 
        * This function's execution time does not depend on the inputs.
    **/
    static public inline function mul64(_x:stdgo.GoUInt64, _y:stdgo.GoUInt64):{ var _0 : stdgo.GoUInt64; var _1 : stdgo.GoUInt64; } return stdgo._internal.math.bits.Bits_mul64.mul64(_x, _y);
    /**
        * Div returns the quotient and remainder of (hi, lo) divided by y:
        * quo = (hi, lo)/y, rem = (hi, lo)%y with the dividend bits' upper
        * half in parameter hi and the lower half in parameter lo.
        * Div panics for y == 0 (division by zero) or y <= hi (quotient overflow).
    **/
    static public inline function div(_hi:stdgo.GoUInt, _lo:stdgo.GoUInt, _y:stdgo.GoUInt):{ var _0 : stdgo.GoUInt; var _1 : stdgo.GoUInt; } return stdgo._internal.math.bits.Bits_div.div(_hi, _lo, _y);
    /**
        * Div32 returns the quotient and remainder of (hi, lo) divided by y:
        * quo = (hi, lo)/y, rem = (hi, lo)%y with the dividend bits' upper
        * half in parameter hi and the lower half in parameter lo.
        * Div32 panics for y == 0 (division by zero) or y <= hi (quotient overflow).
    **/
    static public inline function div32(_hi:stdgo.GoUInt32, _lo:stdgo.GoUInt32, _y:stdgo.GoUInt32):{ var _0 : stdgo.GoUInt32; var _1 : stdgo.GoUInt32; } return stdgo._internal.math.bits.Bits_div32.div32(_hi, _lo, _y);
    /**
        * Div64 returns the quotient and remainder of (hi, lo) divided by y:
        * quo = (hi, lo)/y, rem = (hi, lo)%y with the dividend bits' upper
        * half in parameter hi and the lower half in parameter lo.
        * Div64 panics for y == 0 (division by zero) or y <= hi (quotient overflow).
    **/
    static public inline function div64(_hi:stdgo.GoUInt64, _lo:stdgo.GoUInt64, _y:stdgo.GoUInt64):{ var _0 : stdgo.GoUInt64; var _1 : stdgo.GoUInt64; } return stdgo._internal.math.bits.Bits_div64.div64(_hi, _lo, _y);
    /**
        * Rem returns the remainder of (hi, lo) divided by y. Rem panics for
        * y == 0 (division by zero) but, unlike Div, it doesn't panic on a
        * quotient overflow.
    **/
    static public inline function rem(_hi:stdgo.GoUInt, _lo:stdgo.GoUInt, _y:stdgo.GoUInt):stdgo.GoUInt return stdgo._internal.math.bits.Bits_rem.rem(_hi, _lo, _y);
    /**
        * Rem32 returns the remainder of (hi, lo) divided by y. Rem32 panics
        * for y == 0 (division by zero) but, unlike Div32, it doesn't panic
        * on a quotient overflow.
    **/
    static public inline function rem32(_hi:stdgo.GoUInt32, _lo:stdgo.GoUInt32, _y:stdgo.GoUInt32):stdgo.GoUInt32 return stdgo._internal.math.bits.Bits_rem32.rem32(_hi, _lo, _y);
    /**
        * Rem64 returns the remainder of (hi, lo) divided by y. Rem64 panics
        * for y == 0 (division by zero) but, unlike Div64, it doesn't panic
        * on a quotient overflow.
    **/
    static public inline function rem64(_hi:stdgo.GoUInt64, _lo:stdgo.GoUInt64, _y:stdgo.GoUInt64):stdgo.GoUInt64 return stdgo._internal.math.bits.Bits_rem64.rem64(_hi, _lo, _y);
}
