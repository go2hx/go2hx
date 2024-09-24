package stdgo.math.bits;
final uintSize : haxe.UInt64 = stdgo._internal.math.bits.Bits_uintSize.uintSize;
final deBruijn64 : haxe.UInt64 = stdgo._internal.math.bits.Bits_deBruijn64.deBruijn64;
typedef T_errorString = stdgo._internal.math.bits.Bits_T_errorString.T_errorString;
class T_errorString_static_extension {
    static public function error(_e:T_errorString):String {
        return stdgo._internal.math.bits.Bits_T_errorString_static_extension.T_errorString_static_extension.error(_e);
    }
    static public function runtimeError(_e:T_errorString):Void {
        stdgo._internal.math.bits.Bits_T_errorString_static_extension.T_errorString_static_extension.runtimeError(_e);
    }
}
/**
    Package bits implements bit counting and manipulation
    functions for the predeclared unsigned integer types.
    
    Functions in this package may be implemented directly by
    the compiler, for better performance. For those functions
    the code in this package will not be used. Which
    functions are implemented by the compiler depends on the
    architecture and the Go release.
**/
class Bits {
    /**
        LeadingZeros returns the number of leading zero bits in x; the result is UintSize for x == 0.
    **/
    static public function leadingZeros(_x:std.UInt):StdTypes.Int {
        return stdgo._internal.math.bits.Bits_leadingZeros.leadingZeros(_x);
    }
    /**
        LeadingZeros8 returns the number of leading zero bits in x; the result is 8 for x == 0.
    **/
    static public function leadingZeros8(_x:std.UInt):StdTypes.Int {
        return stdgo._internal.math.bits.Bits_leadingZeros8.leadingZeros8(_x);
    }
    /**
        LeadingZeros16 returns the number of leading zero bits in x; the result is 16 for x == 0.
    **/
    static public function leadingZeros16(_x:std.UInt):StdTypes.Int {
        return stdgo._internal.math.bits.Bits_leadingZeros16.leadingZeros16(_x);
    }
    /**
        LeadingZeros32 returns the number of leading zero bits in x; the result is 32 for x == 0.
    **/
    static public function leadingZeros32(_x:std.UInt):StdTypes.Int {
        return stdgo._internal.math.bits.Bits_leadingZeros32.leadingZeros32(_x);
    }
    /**
        LeadingZeros64 returns the number of leading zero bits in x; the result is 64 for x == 0.
    **/
    static public function leadingZeros64(_x:haxe.UInt64):StdTypes.Int {
        return stdgo._internal.math.bits.Bits_leadingZeros64.leadingZeros64(_x);
    }
    /**
        TrailingZeros returns the number of trailing zero bits in x; the result is UintSize for x == 0.
    **/
    static public function trailingZeros(_x:std.UInt):StdTypes.Int {
        return stdgo._internal.math.bits.Bits_trailingZeros.trailingZeros(_x);
    }
    /**
        TrailingZeros8 returns the number of trailing zero bits in x; the result is 8 for x == 0.
    **/
    static public function trailingZeros8(_x:std.UInt):StdTypes.Int {
        return stdgo._internal.math.bits.Bits_trailingZeros8.trailingZeros8(_x);
    }
    /**
        TrailingZeros16 returns the number of trailing zero bits in x; the result is 16 for x == 0.
    **/
    static public function trailingZeros16(_x:std.UInt):StdTypes.Int {
        return stdgo._internal.math.bits.Bits_trailingZeros16.trailingZeros16(_x);
    }
    /**
        TrailingZeros32 returns the number of trailing zero bits in x; the result is 32 for x == 0.
    **/
    static public function trailingZeros32(_x:std.UInt):StdTypes.Int {
        return stdgo._internal.math.bits.Bits_trailingZeros32.trailingZeros32(_x);
    }
    /**
        TrailingZeros64 returns the number of trailing zero bits in x; the result is 64 for x == 0.
    **/
    static public function trailingZeros64(_x:haxe.UInt64):StdTypes.Int {
        return stdgo._internal.math.bits.Bits_trailingZeros64.trailingZeros64(_x);
    }
    /**
        OnesCount returns the number of one bits ("population count") in x.
    **/
    static public function onesCount(_x:std.UInt):StdTypes.Int {
        return stdgo._internal.math.bits.Bits_onesCount.onesCount(_x);
    }
    /**
        OnesCount8 returns the number of one bits ("population count") in x.
    **/
    static public function onesCount8(_x:std.UInt):StdTypes.Int {
        return stdgo._internal.math.bits.Bits_onesCount8.onesCount8(_x);
    }
    /**
        OnesCount16 returns the number of one bits ("population count") in x.
    **/
    static public function onesCount16(_x:std.UInt):StdTypes.Int {
        return stdgo._internal.math.bits.Bits_onesCount16.onesCount16(_x);
    }
    /**
        OnesCount32 returns the number of one bits ("population count") in x.
    **/
    static public function onesCount32(_x:std.UInt):StdTypes.Int {
        return stdgo._internal.math.bits.Bits_onesCount32.onesCount32(_x);
    }
    /**
        OnesCount64 returns the number of one bits ("population count") in x.
    **/
    static public function onesCount64(_x:haxe.UInt64):StdTypes.Int {
        return stdgo._internal.math.bits.Bits_onesCount64.onesCount64(_x);
    }
    /**
        RotateLeft returns the value of x rotated left by (k mod UintSize) bits.
        To rotate x right by k bits, call RotateLeft(x, -k).
        
        This function's execution time does not depend on the inputs.
    **/
    static public function rotateLeft(_x:std.UInt, _k:StdTypes.Int):std.UInt {
        return stdgo._internal.math.bits.Bits_rotateLeft.rotateLeft(_x, _k);
    }
    /**
        RotateLeft8 returns the value of x rotated left by (k mod 8) bits.
        To rotate x right by k bits, call RotateLeft8(x, -k).
        
        This function's execution time does not depend on the inputs.
    **/
    static public function rotateLeft8(_x:std.UInt, _k:StdTypes.Int):std.UInt {
        return stdgo._internal.math.bits.Bits_rotateLeft8.rotateLeft8(_x, _k);
    }
    /**
        RotateLeft16 returns the value of x rotated left by (k mod 16) bits.
        To rotate x right by k bits, call RotateLeft16(x, -k).
        
        This function's execution time does not depend on the inputs.
    **/
    static public function rotateLeft16(_x:std.UInt, _k:StdTypes.Int):std.UInt {
        return stdgo._internal.math.bits.Bits_rotateLeft16.rotateLeft16(_x, _k);
    }
    /**
        RotateLeft32 returns the value of x rotated left by (k mod 32) bits.
        To rotate x right by k bits, call RotateLeft32(x, -k).
        
        This function's execution time does not depend on the inputs.
    **/
    static public function rotateLeft32(_x:std.UInt, _k:StdTypes.Int):std.UInt {
        return stdgo._internal.math.bits.Bits_rotateLeft32.rotateLeft32(_x, _k);
    }
    /**
        RotateLeft64 returns the value of x rotated left by (k mod 64) bits.
        To rotate x right by k bits, call RotateLeft64(x, -k).
        
        This function's execution time does not depend on the inputs.
    **/
    static public function rotateLeft64(_x:haxe.UInt64, _k:StdTypes.Int):haxe.UInt64 {
        return stdgo._internal.math.bits.Bits_rotateLeft64.rotateLeft64(_x, _k);
    }
    /**
        Reverse returns the value of x with its bits in reversed order.
    **/
    static public function reverse(_x:std.UInt):std.UInt {
        return stdgo._internal.math.bits.Bits_reverse.reverse(_x);
    }
    /**
        Reverse8 returns the value of x with its bits in reversed order.
    **/
    static public function reverse8(_x:std.UInt):std.UInt {
        return stdgo._internal.math.bits.Bits_reverse8.reverse8(_x);
    }
    /**
        Reverse16 returns the value of x with its bits in reversed order.
    **/
    static public function reverse16(_x:std.UInt):std.UInt {
        return stdgo._internal.math.bits.Bits_reverse16.reverse16(_x);
    }
    /**
        Reverse32 returns the value of x with its bits in reversed order.
    **/
    static public function reverse32(_x:std.UInt):std.UInt {
        return stdgo._internal.math.bits.Bits_reverse32.reverse32(_x);
    }
    /**
        Reverse64 returns the value of x with its bits in reversed order.
    **/
    static public function reverse64(_x:haxe.UInt64):haxe.UInt64 {
        return stdgo._internal.math.bits.Bits_reverse64.reverse64(_x);
    }
    /**
        ReverseBytes returns the value of x with its bytes in reversed order.
        
        This function's execution time does not depend on the inputs.
    **/
    static public function reverseBytes(_x:std.UInt):std.UInt {
        return stdgo._internal.math.bits.Bits_reverseBytes.reverseBytes(_x);
    }
    /**
        ReverseBytes16 returns the value of x with its bytes in reversed order.
        
        This function's execution time does not depend on the inputs.
    **/
    static public function reverseBytes16(_x:std.UInt):std.UInt {
        return stdgo._internal.math.bits.Bits_reverseBytes16.reverseBytes16(_x);
    }
    /**
        ReverseBytes32 returns the value of x with its bytes in reversed order.
        
        This function's execution time does not depend on the inputs.
    **/
    static public function reverseBytes32(_x:std.UInt):std.UInt {
        return stdgo._internal.math.bits.Bits_reverseBytes32.reverseBytes32(_x);
    }
    /**
        ReverseBytes64 returns the value of x with its bytes in reversed order.
        
        This function's execution time does not depend on the inputs.
    **/
    static public function reverseBytes64(_x:haxe.UInt64):haxe.UInt64 {
        return stdgo._internal.math.bits.Bits_reverseBytes64.reverseBytes64(_x);
    }
    /**
        Len returns the minimum number of bits required to represent x; the result is 0 for x == 0.
    **/
    static public function len(_x:std.UInt):StdTypes.Int {
        return stdgo._internal.math.bits.Bits_len.len(_x);
    }
    /**
        Len8 returns the minimum number of bits required to represent x; the result is 0 for x == 0.
    **/
    static public function len8(_x:std.UInt):StdTypes.Int {
        return stdgo._internal.math.bits.Bits_len8.len8(_x);
    }
    /**
        Len16 returns the minimum number of bits required to represent x; the result is 0 for x == 0.
    **/
    static public function len16(_x:std.UInt):StdTypes.Int {
        return stdgo._internal.math.bits.Bits_len16.len16(_x);
    }
    /**
        Len32 returns the minimum number of bits required to represent x; the result is 0 for x == 0.
    **/
    static public function len32(_x:std.UInt):StdTypes.Int {
        return stdgo._internal.math.bits.Bits_len32.len32(_x);
    }
    /**
        Len64 returns the minimum number of bits required to represent x; the result is 0 for x == 0.
    **/
    static public function len64(_x:haxe.UInt64):StdTypes.Int {
        return stdgo._internal.math.bits.Bits_len64.len64(_x);
    }
    /**
        Add returns the sum with carry of x, y and carry: sum = x + y + carry.
        The carry input must be 0 or 1; otherwise the behavior is undefined.
        The carryOut output is guaranteed to be 0 or 1.
        
        This function's execution time does not depend on the inputs.
    **/
    static public function add(_x:std.UInt, _y:std.UInt, _carry:std.UInt):stdgo.Tuple<std.UInt, std.UInt> {
        return {
            final obj = stdgo._internal.math.bits.Bits_add.add(_x, _y, _carry);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        Add32 returns the sum with carry of x, y and carry: sum = x + y + carry.
        The carry input must be 0 or 1; otherwise the behavior is undefined.
        The carryOut output is guaranteed to be 0 or 1.
        
        This function's execution time does not depend on the inputs.
    **/
    static public function add32(_x:std.UInt, _y:std.UInt, _carry:std.UInt):stdgo.Tuple<std.UInt, std.UInt> {
        return {
            final obj = stdgo._internal.math.bits.Bits_add32.add32(_x, _y, _carry);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        Add64 returns the sum with carry of x, y and carry: sum = x + y + carry.
        The carry input must be 0 or 1; otherwise the behavior is undefined.
        The carryOut output is guaranteed to be 0 or 1.
        
        This function's execution time does not depend on the inputs.
    **/
    static public function add64(_x:haxe.UInt64, _y:haxe.UInt64, _carry:haxe.UInt64):stdgo.Tuple<haxe.UInt64, haxe.UInt64> {
        return {
            final obj = stdgo._internal.math.bits.Bits_add64.add64(_x, _y, _carry);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        Sub returns the difference of x, y and borrow: diff = x - y - borrow.
        The borrow input must be 0 or 1; otherwise the behavior is undefined.
        The borrowOut output is guaranteed to be 0 or 1.
        
        This function's execution time does not depend on the inputs.
    **/
    static public function sub(_x:std.UInt, _y:std.UInt, _borrow:std.UInt):stdgo.Tuple<std.UInt, std.UInt> {
        return {
            final obj = stdgo._internal.math.bits.Bits_sub.sub(_x, _y, _borrow);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        Sub32 returns the difference of x, y and borrow, diff = x - y - borrow.
        The borrow input must be 0 or 1; otherwise the behavior is undefined.
        The borrowOut output is guaranteed to be 0 or 1.
        
        This function's execution time does not depend on the inputs.
    **/
    static public function sub32(_x:std.UInt, _y:std.UInt, _borrow:std.UInt):stdgo.Tuple<std.UInt, std.UInt> {
        return {
            final obj = stdgo._internal.math.bits.Bits_sub32.sub32(_x, _y, _borrow);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        Sub64 returns the difference of x, y and borrow: diff = x - y - borrow.
        The borrow input must be 0 or 1; otherwise the behavior is undefined.
        The borrowOut output is guaranteed to be 0 or 1.
        
        This function's execution time does not depend on the inputs.
    **/
    static public function sub64(_x:haxe.UInt64, _y:haxe.UInt64, _borrow:haxe.UInt64):stdgo.Tuple<haxe.UInt64, haxe.UInt64> {
        return {
            final obj = stdgo._internal.math.bits.Bits_sub64.sub64(_x, _y, _borrow);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        Mul returns the full-width product of x and y: (hi, lo) = x * y
        with the product bits' upper half returned in hi and the lower
        half returned in lo.
        
        This function's execution time does not depend on the inputs.
    **/
    static public function mul(_x:std.UInt, _y:std.UInt):stdgo.Tuple<std.UInt, std.UInt> {
        return {
            final obj = stdgo._internal.math.bits.Bits_mul.mul(_x, _y);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        Mul32 returns the 64-bit product of x and y: (hi, lo) = x * y
        with the product bits' upper half returned in hi and the lower
        half returned in lo.
        
        This function's execution time does not depend on the inputs.
    **/
    static public function mul32(_x:std.UInt, _y:std.UInt):stdgo.Tuple<std.UInt, std.UInt> {
        return {
            final obj = stdgo._internal.math.bits.Bits_mul32.mul32(_x, _y);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        Mul64 returns the 128-bit product of x and y: (hi, lo) = x * y
        with the product bits' upper half returned in hi and the lower
        half returned in lo.
        
        This function's execution time does not depend on the inputs.
    **/
    static public function mul64(_x:haxe.UInt64, _y:haxe.UInt64):stdgo.Tuple<haxe.UInt64, haxe.UInt64> {
        return {
            final obj = stdgo._internal.math.bits.Bits_mul64.mul64(_x, _y);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        Div returns the quotient and remainder of (hi, lo) divided by y:
        quo = (hi, lo)/y, rem = (hi, lo)%y with the dividend bits' upper
        half in parameter hi and the lower half in parameter lo.
        Div panics for y == 0 (division by zero) or y <= hi (quotient overflow).
    **/
    static public function div(_hi:std.UInt, _lo:std.UInt, _y:std.UInt):stdgo.Tuple<std.UInt, std.UInt> {
        return {
            final obj = stdgo._internal.math.bits.Bits_div.div(_hi, _lo, _y);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        Div32 returns the quotient and remainder of (hi, lo) divided by y:
        quo = (hi, lo)/y, rem = (hi, lo)%y with the dividend bits' upper
        half in parameter hi and the lower half in parameter lo.
        Div32 panics for y == 0 (division by zero) or y <= hi (quotient overflow).
    **/
    static public function div32(_hi:std.UInt, _lo:std.UInt, _y:std.UInt):stdgo.Tuple<std.UInt, std.UInt> {
        return {
            final obj = stdgo._internal.math.bits.Bits_div32.div32(_hi, _lo, _y);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        Div64 returns the quotient and remainder of (hi, lo) divided by y:
        quo = (hi, lo)/y, rem = (hi, lo)%y with the dividend bits' upper
        half in parameter hi and the lower half in parameter lo.
        Div64 panics for y == 0 (division by zero) or y <= hi (quotient overflow).
    **/
    static public function div64(_hi:haxe.UInt64, _lo:haxe.UInt64, _y:haxe.UInt64):stdgo.Tuple<haxe.UInt64, haxe.UInt64> {
        return {
            final obj = stdgo._internal.math.bits.Bits_div64.div64(_hi, _lo, _y);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        Rem returns the remainder of (hi, lo) divided by y. Rem panics for
        y == 0 (division by zero) but, unlike Div, it doesn't panic on a
        quotient overflow.
    **/
    static public function rem(_hi:std.UInt, _lo:std.UInt, _y:std.UInt):std.UInt {
        return stdgo._internal.math.bits.Bits_rem.rem(_hi, _lo, _y);
    }
    /**
        Rem32 returns the remainder of (hi, lo) divided by y. Rem32 panics
        for y == 0 (division by zero) but, unlike Div32, it doesn't panic
        on a quotient overflow.
    **/
    static public function rem32(_hi:std.UInt, _lo:std.UInt, _y:std.UInt):std.UInt {
        return stdgo._internal.math.bits.Bits_rem32.rem32(_hi, _lo, _y);
    }
    /**
        Rem64 returns the remainder of (hi, lo) divided by y. Rem64 panics
        for y == 0 (division by zero) but, unlike Div64, it doesn't panic
        on a quotient overflow.
    **/
    static public function rem64(_hi:haxe.UInt64, _lo:haxe.UInt64, _y:haxe.UInt64):haxe.UInt64 {
        return stdgo._internal.math.bits.Bits_rem64.rem64(_hi, _lo, _y);
    }
}
