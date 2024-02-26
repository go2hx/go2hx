package stdgo.math.bits;
/**
    // Package bits implements bit counting and manipulation
    // functions for the predeclared unsigned integer types.
    //
    // Functions in this package may be implemented directly by
    // the compiler, for better performance. For those functions
    // the code in this package will not be used. Which
    // functions are implemented by the compiler depends on the
    // architecture and the Go release.
**/
private var __go2hxdoc__package : Bool;
final uintSize : haxe.UInt64 = stdgo._internal.math.bits.Bits.uintSize;
final deBruijn64 : haxe.UInt64 = stdgo._internal.math.bits.Bits.deBruijn64;
/**
    // LeadingZeros returns the number of leading zero bits in x; the result is UintSize for x == 0.
**/
inline function leadingZeros(x:UInt):Int throw "not implemented";
/**
    // LeadingZeros8 returns the number of leading zero bits in x; the result is 8 for x == 0.
**/
inline function leadingZeros8(x:UInt):Int throw "not implemented";
/**
    // LeadingZeros16 returns the number of leading zero bits in x; the result is 16 for x == 0.
**/
inline function leadingZeros16(x:UInt):Int throw "not implemented";
/**
    // LeadingZeros32 returns the number of leading zero bits in x; the result is 32 for x == 0.
**/
inline function leadingZeros32(x:UInt):Int throw "not implemented";
/**
    // LeadingZeros64 returns the number of leading zero bits in x; the result is 64 for x == 0.
**/
inline function leadingZeros64(x:haxe.UInt64):Int throw "not implemented";
/**
    // TrailingZeros returns the number of trailing zero bits in x; the result is UintSize for x == 0.
**/
inline function trailingZeros(x:UInt):Int throw "not implemented";
/**
    // TrailingZeros8 returns the number of trailing zero bits in x; the result is 8 for x == 0.
**/
inline function trailingZeros8(x:UInt):Int throw "not implemented";
/**
    // TrailingZeros16 returns the number of trailing zero bits in x; the result is 16 for x == 0.
**/
inline function trailingZeros16(x:UInt):Int throw "not implemented";
/**
    // TrailingZeros32 returns the number of trailing zero bits in x; the result is 32 for x == 0.
**/
inline function trailingZeros32(x:UInt):Int throw "not implemented";
/**
    // TrailingZeros64 returns the number of trailing zero bits in x; the result is 64 for x == 0.
**/
inline function trailingZeros64(x:haxe.UInt64):Int throw "not implemented";
/**
    // OnesCount returns the number of one bits ("population count") in x.
**/
inline function onesCount(x:UInt):Int throw "not implemented";
/**
    // OnesCount8 returns the number of one bits ("population count") in x.
**/
inline function onesCount8(x:UInt):Int throw "not implemented";
/**
    // OnesCount16 returns the number of one bits ("population count") in x.
**/
inline function onesCount16(x:UInt):Int throw "not implemented";
/**
    // OnesCount32 returns the number of one bits ("population count") in x.
**/
inline function onesCount32(x:UInt):Int throw "not implemented";
/**
    // OnesCount64 returns the number of one bits ("population count") in x.
**/
inline function onesCount64(x:haxe.UInt64):Int throw "not implemented";
/**
    // RotateLeft returns the value of x rotated left by (k mod UintSize) bits.
    // To rotate x right by k bits, call RotateLeft(x, -k).
    //
    // This function's execution time does not depend on the inputs.
**/
inline function rotateLeft(x:UInt, k:Int):UInt throw "not implemented";
/**
    // RotateLeft8 returns the value of x rotated left by (k mod 8) bits.
    // To rotate x right by k bits, call RotateLeft8(x, -k).
    //
    // This function's execution time does not depend on the inputs.
**/
inline function rotateLeft8(x:UInt, k:Int):UInt throw "not implemented";
/**
    // RotateLeft16 returns the value of x rotated left by (k mod 16) bits.
    // To rotate x right by k bits, call RotateLeft16(x, -k).
    //
    // This function's execution time does not depend on the inputs.
**/
inline function rotateLeft16(x:UInt, k:Int):UInt throw "not implemented";
/**
    // RotateLeft32 returns the value of x rotated left by (k mod 32) bits.
    // To rotate x right by k bits, call RotateLeft32(x, -k).
    //
    // This function's execution time does not depend on the inputs.
**/
inline function rotateLeft32(x:UInt, k:Int):UInt throw "not implemented";
/**
    // RotateLeft64 returns the value of x rotated left by (k mod 64) bits.
    // To rotate x right by k bits, call RotateLeft64(x, -k).
    //
    // This function's execution time does not depend on the inputs.
**/
inline function rotateLeft64(x:haxe.UInt64, k:Int):haxe.UInt64 throw "not implemented";
/**
    // Reverse returns the value of x with its bits in reversed order.
**/
inline function reverse(x:UInt):UInt throw "not implemented";
/**
    // Reverse8 returns the value of x with its bits in reversed order.
**/
inline function reverse8(x:UInt):UInt throw "not implemented";
/**
    // Reverse16 returns the value of x with its bits in reversed order.
**/
inline function reverse16(x:UInt):UInt throw "not implemented";
/**
    // Reverse32 returns the value of x with its bits in reversed order.
**/
inline function reverse32(x:UInt):UInt throw "not implemented";
/**
    // Reverse64 returns the value of x with its bits in reversed order.
**/
inline function reverse64(x:haxe.UInt64):haxe.UInt64 throw "not implemented";
/**
    // ReverseBytes returns the value of x with its bytes in reversed order.
    //
    // This function's execution time does not depend on the inputs.
**/
inline function reverseBytes(x:UInt):UInt throw "not implemented";
/**
    // ReverseBytes16 returns the value of x with its bytes in reversed order.
    //
    // This function's execution time does not depend on the inputs.
**/
inline function reverseBytes16(x:UInt):UInt throw "not implemented";
/**
    // ReverseBytes32 returns the value of x with its bytes in reversed order.
    //
    // This function's execution time does not depend on the inputs.
**/
inline function reverseBytes32(x:UInt):UInt throw "not implemented";
/**
    // ReverseBytes64 returns the value of x with its bytes in reversed order.
    //
    // This function's execution time does not depend on the inputs.
**/
inline function reverseBytes64(x:haxe.UInt64):haxe.UInt64 throw "not implemented";
/**
    // Len returns the minimum number of bits required to represent x; the result is 0 for x == 0.
**/
inline function len(x:UInt):Int throw "not implemented";
/**
    // Len8 returns the minimum number of bits required to represent x; the result is 0 for x == 0.
**/
inline function len8(x:UInt):Int throw "not implemented";
/**
    // Len16 returns the minimum number of bits required to represent x; the result is 0 for x == 0.
**/
inline function len16(x:UInt):Int throw "not implemented";
/**
    // Len32 returns the minimum number of bits required to represent x; the result is 0 for x == 0.
**/
inline function len32(x:UInt):Int throw "not implemented";
/**
    // Len64 returns the minimum number of bits required to represent x; the result is 0 for x == 0.
**/
inline function len64(x:haxe.UInt64):Int throw "not implemented";
/**
    // Add returns the sum with carry of x, y and carry: sum = x + y + carry.
    // The carry input must be 0 or 1; otherwise the behavior is undefined.
    // The carryOut output is guaranteed to be 0 or 1.
    //
    // This function's execution time does not depend on the inputs.
**/
inline function add(x:UInt, y:UInt, carry:UInt):stdgo.Tuple<UInt, UInt> throw "not implemented";
/**
    // Add32 returns the sum with carry of x, y and carry: sum = x + y + carry.
    // The carry input must be 0 or 1; otherwise the behavior is undefined.
    // The carryOut output is guaranteed to be 0 or 1.
    //
    // This function's execution time does not depend on the inputs.
**/
inline function add32(x:UInt, y:UInt, carry:UInt):stdgo.Tuple<UInt, UInt> throw "not implemented";
/**
    // Add64 returns the sum with carry of x, y and carry: sum = x + y + carry.
    // The carry input must be 0 or 1; otherwise the behavior is undefined.
    // The carryOut output is guaranteed to be 0 or 1.
    //
    // This function's execution time does not depend on the inputs.
**/
inline function add64(x:haxe.UInt64, y:haxe.UInt64, carry:haxe.UInt64):stdgo.Tuple<haxe.UInt64, haxe.UInt64> throw "not implemented";
/**
    // Sub returns the difference of x, y and borrow: diff = x - y - borrow.
    // The borrow input must be 0 or 1; otherwise the behavior is undefined.
    // The borrowOut output is guaranteed to be 0 or 1.
    //
    // This function's execution time does not depend on the inputs.
**/
inline function sub(x:UInt, y:UInt, borrow:UInt):stdgo.Tuple<UInt, UInt> throw "not implemented";
/**
    // Sub32 returns the difference of x, y and borrow, diff = x - y - borrow.
    // The borrow input must be 0 or 1; otherwise the behavior is undefined.
    // The borrowOut output is guaranteed to be 0 or 1.
    //
    // This function's execution time does not depend on the inputs.
**/
inline function sub32(x:UInt, y:UInt, borrow:UInt):stdgo.Tuple<UInt, UInt> throw "not implemented";
/**
    // Sub64 returns the difference of x, y and borrow: diff = x - y - borrow.
    // The borrow input must be 0 or 1; otherwise the behavior is undefined.
    // The borrowOut output is guaranteed to be 0 or 1.
    //
    // This function's execution time does not depend on the inputs.
**/
inline function sub64(x:haxe.UInt64, y:haxe.UInt64, borrow:haxe.UInt64):stdgo.Tuple<haxe.UInt64, haxe.UInt64> throw "not implemented";
/**
    // Mul returns the full-width product of x and y: (hi, lo) = x * y
    // with the product bits' upper half returned in hi and the lower
    // half returned in lo.
    //
    // This function's execution time does not depend on the inputs.
**/
inline function mul(x:UInt, y:UInt):stdgo.Tuple<UInt, UInt> throw "not implemented";
/**
    // Mul32 returns the 64-bit product of x and y: (hi, lo) = x * y
    // with the product bits' upper half returned in hi and the lower
    // half returned in lo.
    //
    // This function's execution time does not depend on the inputs.
**/
inline function mul32(x:UInt, y:UInt):stdgo.Tuple<UInt, UInt> throw "not implemented";
/**
    // Mul64 returns the 128-bit product of x and y: (hi, lo) = x * y
    // with the product bits' upper half returned in hi and the lower
    // half returned in lo.
    //
    // This function's execution time does not depend on the inputs.
**/
inline function mul64(x:haxe.UInt64, y:haxe.UInt64):stdgo.Tuple<haxe.UInt64, haxe.UInt64> throw "not implemented";
/**
    // Div returns the quotient and remainder of (hi, lo) divided by y:
    // quo = (hi, lo)/y, rem = (hi, lo)%y with the dividend bits' upper
    // half in parameter hi and the lower half in parameter lo.
    // Div panics for y == 0 (division by zero) or y <= hi (quotient overflow).
**/
inline function div(hi:UInt, lo:UInt, y:UInt):stdgo.Tuple<UInt, UInt> throw "not implemented";
/**
    // Div32 returns the quotient and remainder of (hi, lo) divided by y:
    // quo = (hi, lo)/y, rem = (hi, lo)%y with the dividend bits' upper
    // half in parameter hi and the lower half in parameter lo.
    // Div32 panics for y == 0 (division by zero) or y <= hi (quotient overflow).
**/
inline function div32(hi:UInt, lo:UInt, y:UInt):stdgo.Tuple<UInt, UInt> throw "not implemented";
/**
    // Div64 returns the quotient and remainder of (hi, lo) divided by y:
    // quo = (hi, lo)/y, rem = (hi, lo)%y with the dividend bits' upper
    // half in parameter hi and the lower half in parameter lo.
    // Div64 panics for y == 0 (division by zero) or y <= hi (quotient overflow).
**/
inline function div64(hi:haxe.UInt64, lo:haxe.UInt64, y:haxe.UInt64):stdgo.Tuple<haxe.UInt64, haxe.UInt64> throw "not implemented";
/**
    // Rem returns the remainder of (hi, lo) divided by y. Rem panics for
    // y == 0 (division by zero) but, unlike Div, it doesn't panic on a
    // quotient overflow.
**/
inline function rem(hi:UInt, lo:UInt, y:UInt):UInt throw "not implemented";
/**
    // Rem32 returns the remainder of (hi, lo) divided by y. Rem32 panics
    // for y == 0 (division by zero) but, unlike Div32, it doesn't panic
    // on a quotient overflow.
**/
inline function rem32(hi:UInt, lo:UInt, y:UInt):UInt throw "not implemented";
/**
    // Rem64 returns the remainder of (hi, lo) divided by y. Rem64 panics
    // for y == 0 (division by zero) but, unlike Div64, it doesn't panic
    // on a quotient overflow.
**/
inline function rem64(hi:haxe.UInt64, lo:haxe.UInt64, y:haxe.UInt64):haxe.UInt64 throw "not implemented";
