package stdgo.math.bits;
final uintSize : haxe.UInt64 = stdgo._internal.math.bits.Bits.uintSize;
final deBruijn64 : haxe.UInt64 = stdgo._internal.math.bits.Bits.deBruijn64;
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
        return stdgo._internal.math.bits.Bits.leadingZeros(_x);
    }
    /**
        LeadingZeros8 returns the number of leading zero bits in x; the result is 8 for x == 0.
    **/
    static public function leadingZeros8(_x:std.UInt):StdTypes.Int {
        return stdgo._internal.math.bits.Bits.leadingZeros8(_x);
    }
    /**
        LeadingZeros16 returns the number of leading zero bits in x; the result is 16 for x == 0.
    **/
    static public function leadingZeros16(_x:std.UInt):StdTypes.Int {
        return stdgo._internal.math.bits.Bits.leadingZeros16(_x);
    }
    /**
        LeadingZeros32 returns the number of leading zero bits in x; the result is 32 for x == 0.
    **/
    static public function leadingZeros32(_x:std.UInt):StdTypes.Int {
        return stdgo._internal.math.bits.Bits.leadingZeros32(_x);
    }
    /**
        LeadingZeros64 returns the number of leading zero bits in x; the result is 64 for x == 0.
    **/
    static public function leadingZeros64(_x:haxe.UInt64):StdTypes.Int {
        return stdgo._internal.math.bits.Bits.leadingZeros64(_x);
    }
    /**
        TrailingZeros returns the number of trailing zero bits in x; the result is UintSize for x == 0.
    **/
    static public function trailingZeros(_x:std.UInt):StdTypes.Int {
        return stdgo._internal.math.bits.Bits.trailingZeros(_x);
    }
    /**
        TrailingZeros8 returns the number of trailing zero bits in x; the result is 8 for x == 0.
    **/
    static public function trailingZeros8(_x:std.UInt):StdTypes.Int {
        return stdgo._internal.math.bits.Bits.trailingZeros8(_x);
    }
    /**
        TrailingZeros16 returns the number of trailing zero bits in x; the result is 16 for x == 0.
    **/
    static public function trailingZeros16(_x:std.UInt):StdTypes.Int {
        return stdgo._internal.math.bits.Bits.trailingZeros16(_x);
    }
    /**
        TrailingZeros32 returns the number of trailing zero bits in x; the result is 32 for x == 0.
    **/
    static public function trailingZeros32(_x:std.UInt):StdTypes.Int {
        return stdgo._internal.math.bits.Bits.trailingZeros32(_x);
    }
    /**
        TrailingZeros64 returns the number of trailing zero bits in x; the result is 64 for x == 0.
    **/
    static public function trailingZeros64(_x:haxe.UInt64):StdTypes.Int {
        return stdgo._internal.math.bits.Bits.trailingZeros64(_x);
    }
    /**
        OnesCount returns the number of one bits ("population count") in x.
    **/
    static public function onesCount(_x:std.UInt):StdTypes.Int {
        return stdgo._internal.math.bits.Bits.onesCount(_x);
    }
    /**
        OnesCount8 returns the number of one bits ("population count") in x.
    **/
    static public function onesCount8(_x:std.UInt):StdTypes.Int {
        return stdgo._internal.math.bits.Bits.onesCount8(_x);
    }
    /**
        OnesCount16 returns the number of one bits ("population count") in x.
    **/
    static public function onesCount16(_x:std.UInt):StdTypes.Int {
        return stdgo._internal.math.bits.Bits.onesCount16(_x);
    }
    /**
        OnesCount32 returns the number of one bits ("population count") in x.
    **/
    static public function onesCount32(_x:std.UInt):StdTypes.Int {
        return stdgo._internal.math.bits.Bits.onesCount32(_x);
    }
    /**
        OnesCount64 returns the number of one bits ("population count") in x.
    **/
    static public function onesCount64(_x:haxe.UInt64):StdTypes.Int {
        return stdgo._internal.math.bits.Bits.onesCount64(_x);
    }
    /**
        RotateLeft returns the value of x rotated left by (k mod UintSize) bits.
        To rotate x right by k bits, call RotateLeft(x, -k).
        
        This function's execution time does not depend on the inputs.
    **/
    static public function rotateLeft(_x:std.UInt, _k:StdTypes.Int):std.UInt {
        return stdgo._internal.math.bits.Bits.rotateLeft(_x, _k);
    }
    /**
        RotateLeft8 returns the value of x rotated left by (k mod 8) bits.
        To rotate x right by k bits, call RotateLeft8(x, -k).
        
        This function's execution time does not depend on the inputs.
    **/
    static public function rotateLeft8(_x:std.UInt, _k:StdTypes.Int):std.UInt {
        return stdgo._internal.math.bits.Bits.rotateLeft8(_x, _k);
    }
    /**
        RotateLeft16 returns the value of x rotated left by (k mod 16) bits.
        To rotate x right by k bits, call RotateLeft16(x, -k).
        
        This function's execution time does not depend on the inputs.
    **/
    static public function rotateLeft16(_x:std.UInt, _k:StdTypes.Int):std.UInt {
        return stdgo._internal.math.bits.Bits.rotateLeft16(_x, _k);
    }
    /**
        RotateLeft32 returns the value of x rotated left by (k mod 32) bits.
        To rotate x right by k bits, call RotateLeft32(x, -k).
        
        This function's execution time does not depend on the inputs.
    **/
    static public function rotateLeft32(_x:std.UInt, _k:StdTypes.Int):std.UInt {
        return stdgo._internal.math.bits.Bits.rotateLeft32(_x, _k);
    }
    /**
        RotateLeft64 returns the value of x rotated left by (k mod 64) bits.
        To rotate x right by k bits, call RotateLeft64(x, -k).
        
        This function's execution time does not depend on the inputs.
    **/
    static public function rotateLeft64(_x:haxe.UInt64, _k:StdTypes.Int):haxe.UInt64 {
        return stdgo._internal.math.bits.Bits.rotateLeft64(_x, _k);
    }
    /**
        Reverse returns the value of x with its bits in reversed order.
    **/
    static public function reverse(_x:std.UInt):std.UInt {
        return stdgo._internal.math.bits.Bits.reverse(_x);
    }
    /**
        Reverse8 returns the value of x with its bits in reversed order.
    **/
    static public function reverse8(_x:std.UInt):std.UInt {
        return stdgo._internal.math.bits.Bits.reverse8(_x);
    }
    /**
        Reverse16 returns the value of x with its bits in reversed order.
    **/
    static public function reverse16(_x:std.UInt):std.UInt {
        return stdgo._internal.math.bits.Bits.reverse16(_x);
    }
    /**
        Reverse32 returns the value of x with its bits in reversed order.
    **/
    static public function reverse32(_x:std.UInt):std.UInt {
        return stdgo._internal.math.bits.Bits.reverse32(_x);
    }
    /**
        Reverse64 returns the value of x with its bits in reversed order.
    **/
    static public function reverse64(_x:haxe.UInt64):haxe.UInt64 {
        return stdgo._internal.math.bits.Bits.reverse64(_x);
    }
    /**
        ReverseBytes returns the value of x with its bytes in reversed order.
        
        This function's execution time does not depend on the inputs.
    **/
    static public function reverseBytes(_x:std.UInt):std.UInt {
        return stdgo._internal.math.bits.Bits.reverseBytes(_x);
    }
    /**
        ReverseBytes16 returns the value of x with its bytes in reversed order.
        
        This function's execution time does not depend on the inputs.
    **/
    static public function reverseBytes16(_x:std.UInt):std.UInt {
        return stdgo._internal.math.bits.Bits.reverseBytes16(_x);
    }
    /**
        ReverseBytes32 returns the value of x with its bytes in reversed order.
        
        This function's execution time does not depend on the inputs.
    **/
    static public function reverseBytes32(_x:std.UInt):std.UInt {
        return stdgo._internal.math.bits.Bits.reverseBytes32(_x);
    }
    /**
        ReverseBytes64 returns the value of x with its bytes in reversed order.
        
        This function's execution time does not depend on the inputs.
    **/
    static public function reverseBytes64(_x:haxe.UInt64):haxe.UInt64 {
        return stdgo._internal.math.bits.Bits.reverseBytes64(_x);
    }
    /**
        Len returns the minimum number of bits required to represent x; the result is 0 for x == 0.
    **/
    static public function len(_x:std.UInt):StdTypes.Int {
        return stdgo._internal.math.bits.Bits.len(_x);
    }
    /**
        Len8 returns the minimum number of bits required to represent x; the result is 0 for x == 0.
    **/
    static public function len8(_x:std.UInt):StdTypes.Int {
        return stdgo._internal.math.bits.Bits.len8(_x);
    }
    /**
        Len16 returns the minimum number of bits required to represent x; the result is 0 for x == 0.
    **/
    static public function len16(_x:std.UInt):StdTypes.Int {
        return stdgo._internal.math.bits.Bits.len16(_x);
    }
    /**
        Len32 returns the minimum number of bits required to represent x; the result is 0 for x == 0.
    **/
    static public function len32(_x:std.UInt):StdTypes.Int {
        return stdgo._internal.math.bits.Bits.len32(_x);
    }
    /**
        Len64 returns the minimum number of bits required to represent x; the result is 0 for x == 0.
    **/
    static public function len64(_x:haxe.UInt64):StdTypes.Int {
        return stdgo._internal.math.bits.Bits.len64(_x);
    }
    /**
        Add returns the sum with carry of x, y and carry: sum = x + y + carry.
        The carry input must be 0 or 1; otherwise the behavior is undefined.
        The carryOut output is guaranteed to be 0 or 1.
        
        This function's execution time does not depend on the inputs.
    **/
    static public function add(_x:std.UInt, _y:std.UInt, _carry:std.UInt):stdgo.Tuple<std.UInt, std.UInt> {
        return {
            final obj = stdgo._internal.math.bits.Bits.add(_x, _y, _carry);
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
            final obj = stdgo._internal.math.bits.Bits.add32(_x, _y, _carry);
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
            final obj = stdgo._internal.math.bits.Bits.add64(_x, _y, _carry);
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
            final obj = stdgo._internal.math.bits.Bits.sub(_x, _y, _borrow);
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
            final obj = stdgo._internal.math.bits.Bits.sub32(_x, _y, _borrow);
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
            final obj = stdgo._internal.math.bits.Bits.sub64(_x, _y, _borrow);
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
            final obj = stdgo._internal.math.bits.Bits.mul(_x, _y);
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
            final obj = stdgo._internal.math.bits.Bits.mul32(_x, _y);
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
            final obj = stdgo._internal.math.bits.Bits.mul64(_x, _y);
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
            final obj = stdgo._internal.math.bits.Bits.div(_hi, _lo, _y);
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
            final obj = stdgo._internal.math.bits.Bits.div32(_hi, _lo, _y);
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
            final obj = stdgo._internal.math.bits.Bits.div64(_hi, _lo, _y);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        Rem returns the remainder of (hi, lo) divided by y. Rem panics for
        y == 0 (division by zero) but, unlike Div, it doesn't panic on a
        quotient overflow.
    **/
    static public function rem(_hi:std.UInt, _lo:std.UInt, _y:std.UInt):std.UInt {
        return stdgo._internal.math.bits.Bits.rem(_hi, _lo, _y);
    }
    /**
        Rem32 returns the remainder of (hi, lo) divided by y. Rem32 panics
        for y == 0 (division by zero) but, unlike Div32, it doesn't panic
        on a quotient overflow.
    **/
    static public function rem32(_hi:std.UInt, _lo:std.UInt, _y:std.UInt):std.UInt {
        return stdgo._internal.math.bits.Bits.rem32(_hi, _lo, _y);
    }
    /**
        Rem64 returns the remainder of (hi, lo) divided by y. Rem64 panics
        for y == 0 (division by zero) but, unlike Div64, it doesn't panic
        on a quotient overflow.
    **/
    static public function rem64(_hi:haxe.UInt64, _lo:haxe.UInt64, _y:haxe.UInt64):haxe.UInt64 {
        return stdgo._internal.math.bits.Bits.rem64(_hi, _lo, _y);
    }
}
