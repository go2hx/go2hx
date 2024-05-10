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
    static public function leadingZeros(x:std.UInt):StdTypes.Int {
        return stdgo._internal.math.bits.Bits.leadingZeros(x);
    }
    /**
        LeadingZeros8 returns the number of leading zero bits in x; the result is 8 for x == 0.
    **/
    static public function leadingZeros8(x:std.UInt):StdTypes.Int {
        return stdgo._internal.math.bits.Bits.leadingZeros8(x);
    }
    /**
        LeadingZeros16 returns the number of leading zero bits in x; the result is 16 for x == 0.
    **/
    static public function leadingZeros16(x:std.UInt):StdTypes.Int {
        return stdgo._internal.math.bits.Bits.leadingZeros16(x);
    }
    /**
        LeadingZeros32 returns the number of leading zero bits in x; the result is 32 for x == 0.
    **/
    static public function leadingZeros32(x:std.UInt):StdTypes.Int {
        return stdgo._internal.math.bits.Bits.leadingZeros32(x);
    }
    /**
        LeadingZeros64 returns the number of leading zero bits in x; the result is 64 for x == 0.
    **/
    static public function leadingZeros64(x:haxe.UInt64):StdTypes.Int {
        return stdgo._internal.math.bits.Bits.leadingZeros64(x);
    }
    /**
        TrailingZeros returns the number of trailing zero bits in x; the result is UintSize for x == 0.
    **/
    static public function trailingZeros(x:std.UInt):StdTypes.Int {
        return stdgo._internal.math.bits.Bits.trailingZeros(x);
    }
    /**
        TrailingZeros8 returns the number of trailing zero bits in x; the result is 8 for x == 0.
    **/
    static public function trailingZeros8(x:std.UInt):StdTypes.Int {
        return stdgo._internal.math.bits.Bits.trailingZeros8(x);
    }
    /**
        TrailingZeros16 returns the number of trailing zero bits in x; the result is 16 for x == 0.
    **/
    static public function trailingZeros16(x:std.UInt):StdTypes.Int {
        return stdgo._internal.math.bits.Bits.trailingZeros16(x);
    }
    /**
        TrailingZeros32 returns the number of trailing zero bits in x; the result is 32 for x == 0.
    **/
    static public function trailingZeros32(x:std.UInt):StdTypes.Int {
        return stdgo._internal.math.bits.Bits.trailingZeros32(x);
    }
    /**
        TrailingZeros64 returns the number of trailing zero bits in x; the result is 64 for x == 0.
    **/
    static public function trailingZeros64(x:haxe.UInt64):StdTypes.Int {
        return stdgo._internal.math.bits.Bits.trailingZeros64(x);
    }
    /**
        OnesCount returns the number of one bits ("population count") in x.
    **/
    static public function onesCount(x:std.UInt):StdTypes.Int {
        return stdgo._internal.math.bits.Bits.onesCount(x);
    }
    /**
        OnesCount8 returns the number of one bits ("population count") in x.
    **/
    static public function onesCount8(x:std.UInt):StdTypes.Int {
        return stdgo._internal.math.bits.Bits.onesCount8(x);
    }
    /**
        OnesCount16 returns the number of one bits ("population count") in x.
    **/
    static public function onesCount16(x:std.UInt):StdTypes.Int {
        return stdgo._internal.math.bits.Bits.onesCount16(x);
    }
    /**
        OnesCount32 returns the number of one bits ("population count") in x.
    **/
    static public function onesCount32(x:std.UInt):StdTypes.Int {
        return stdgo._internal.math.bits.Bits.onesCount32(x);
    }
    /**
        OnesCount64 returns the number of one bits ("population count") in x.
    **/
    static public function onesCount64(x:haxe.UInt64):StdTypes.Int {
        return stdgo._internal.math.bits.Bits.onesCount64(x);
    }
    /**
        RotateLeft returns the value of x rotated left by (k mod UintSize) bits.
        To rotate x right by k bits, call RotateLeft(x, -k).
        
        This function's execution time does not depend on the inputs.
    **/
    static public function rotateLeft(x:std.UInt, k:StdTypes.Int):std.UInt {
        return stdgo._internal.math.bits.Bits.rotateLeft(x, k);
    }
    /**
        RotateLeft8 returns the value of x rotated left by (k mod 8) bits.
        To rotate x right by k bits, call RotateLeft8(x, -k).
        
        This function's execution time does not depend on the inputs.
    **/
    static public function rotateLeft8(x:std.UInt, k:StdTypes.Int):std.UInt {
        return stdgo._internal.math.bits.Bits.rotateLeft8(x, k);
    }
    /**
        RotateLeft16 returns the value of x rotated left by (k mod 16) bits.
        To rotate x right by k bits, call RotateLeft16(x, -k).
        
        This function's execution time does not depend on the inputs.
    **/
    static public function rotateLeft16(x:std.UInt, k:StdTypes.Int):std.UInt {
        return stdgo._internal.math.bits.Bits.rotateLeft16(x, k);
    }
    /**
        RotateLeft32 returns the value of x rotated left by (k mod 32) bits.
        To rotate x right by k bits, call RotateLeft32(x, -k).
        
        This function's execution time does not depend on the inputs.
    **/
    static public function rotateLeft32(x:std.UInt, k:StdTypes.Int):std.UInt {
        return stdgo._internal.math.bits.Bits.rotateLeft32(x, k);
    }
    /**
        RotateLeft64 returns the value of x rotated left by (k mod 64) bits.
        To rotate x right by k bits, call RotateLeft64(x, -k).
        
        This function's execution time does not depend on the inputs.
    **/
    static public function rotateLeft64(x:haxe.UInt64, k:StdTypes.Int):haxe.UInt64 {
        return stdgo._internal.math.bits.Bits.rotateLeft64(x, k);
    }
    /**
        Reverse returns the value of x with its bits in reversed order.
    **/
    static public function reverse(x:std.UInt):std.UInt {
        return stdgo._internal.math.bits.Bits.reverse(x);
    }
    /**
        Reverse8 returns the value of x with its bits in reversed order.
    **/
    static public function reverse8(x:std.UInt):std.UInt {
        return stdgo._internal.math.bits.Bits.reverse8(x);
    }
    /**
        Reverse16 returns the value of x with its bits in reversed order.
    **/
    static public function reverse16(x:std.UInt):std.UInt {
        return stdgo._internal.math.bits.Bits.reverse16(x);
    }
    /**
        Reverse32 returns the value of x with its bits in reversed order.
    **/
    static public function reverse32(x:std.UInt):std.UInt {
        return stdgo._internal.math.bits.Bits.reverse32(x);
    }
    /**
        Reverse64 returns the value of x with its bits in reversed order.
    **/
    static public function reverse64(x:haxe.UInt64):haxe.UInt64 {
        return stdgo._internal.math.bits.Bits.reverse64(x);
    }
    /**
        ReverseBytes returns the value of x with its bytes in reversed order.
        
        This function's execution time does not depend on the inputs.
    **/
    static public function reverseBytes(x:std.UInt):std.UInt {
        return stdgo._internal.math.bits.Bits.reverseBytes(x);
    }
    /**
        ReverseBytes16 returns the value of x with its bytes in reversed order.
        
        This function's execution time does not depend on the inputs.
    **/
    static public function reverseBytes16(x:std.UInt):std.UInt {
        return stdgo._internal.math.bits.Bits.reverseBytes16(x);
    }
    /**
        ReverseBytes32 returns the value of x with its bytes in reversed order.
        
        This function's execution time does not depend on the inputs.
    **/
    static public function reverseBytes32(x:std.UInt):std.UInt {
        return stdgo._internal.math.bits.Bits.reverseBytes32(x);
    }
    /**
        ReverseBytes64 returns the value of x with its bytes in reversed order.
        
        This function's execution time does not depend on the inputs.
    **/
    static public function reverseBytes64(x:haxe.UInt64):haxe.UInt64 {
        return stdgo._internal.math.bits.Bits.reverseBytes64(x);
    }
    /**
        Len returns the minimum number of bits required to represent x; the result is 0 for x == 0.
    **/
    static public function len(x:std.UInt):StdTypes.Int {
        return stdgo._internal.math.bits.Bits.len(x);
    }
    /**
        Len8 returns the minimum number of bits required to represent x; the result is 0 for x == 0.
    **/
    static public function len8(x:std.UInt):StdTypes.Int {
        return stdgo._internal.math.bits.Bits.len8(x);
    }
    /**
        Len16 returns the minimum number of bits required to represent x; the result is 0 for x == 0.
    **/
    static public function len16(x:std.UInt):StdTypes.Int {
        return stdgo._internal.math.bits.Bits.len16(x);
    }
    /**
        Len32 returns the minimum number of bits required to represent x; the result is 0 for x == 0.
    **/
    static public function len32(x:std.UInt):StdTypes.Int {
        return stdgo._internal.math.bits.Bits.len32(x);
    }
    /**
        Len64 returns the minimum number of bits required to represent x; the result is 0 for x == 0.
    **/
    static public function len64(x:haxe.UInt64):StdTypes.Int {
        return stdgo._internal.math.bits.Bits.len64(x);
    }
    /**
        Add returns the sum with carry of x, y and carry: sum = x + y + carry.
        The carry input must be 0 or 1; otherwise the behavior is undefined.
        The carryOut output is guaranteed to be 0 or 1.
        
        This function's execution time does not depend on the inputs.
    **/
    static public function add(x:std.UInt, y:std.UInt, carry:std.UInt):stdgo.Tuple<std.UInt, std.UInt> {
        return {
            final obj = stdgo._internal.math.bits.Bits.add(x, y, carry);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        Add32 returns the sum with carry of x, y and carry: sum = x + y + carry.
        The carry input must be 0 or 1; otherwise the behavior is undefined.
        The carryOut output is guaranteed to be 0 or 1.
        
        This function's execution time does not depend on the inputs.
    **/
    static public function add32(x:std.UInt, y:std.UInt, carry:std.UInt):stdgo.Tuple<std.UInt, std.UInt> {
        return {
            final obj = stdgo._internal.math.bits.Bits.add32(x, y, carry);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        Add64 returns the sum with carry of x, y and carry: sum = x + y + carry.
        The carry input must be 0 or 1; otherwise the behavior is undefined.
        The carryOut output is guaranteed to be 0 or 1.
        
        This function's execution time does not depend on the inputs.
    **/
    static public function add64(x:haxe.UInt64, y:haxe.UInt64, carry:haxe.UInt64):stdgo.Tuple<haxe.UInt64, haxe.UInt64> {
        return {
            final obj = stdgo._internal.math.bits.Bits.add64(x, y, carry);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        Sub returns the difference of x, y and borrow: diff = x - y - borrow.
        The borrow input must be 0 or 1; otherwise the behavior is undefined.
        The borrowOut output is guaranteed to be 0 or 1.
        
        This function's execution time does not depend on the inputs.
    **/
    static public function sub(x:std.UInt, y:std.UInt, borrow:std.UInt):stdgo.Tuple<std.UInt, std.UInt> {
        return {
            final obj = stdgo._internal.math.bits.Bits.sub(x, y, borrow);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        Sub32 returns the difference of x, y and borrow, diff = x - y - borrow.
        The borrow input must be 0 or 1; otherwise the behavior is undefined.
        The borrowOut output is guaranteed to be 0 or 1.
        
        This function's execution time does not depend on the inputs.
    **/
    static public function sub32(x:std.UInt, y:std.UInt, borrow:std.UInt):stdgo.Tuple<std.UInt, std.UInt> {
        return {
            final obj = stdgo._internal.math.bits.Bits.sub32(x, y, borrow);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        Sub64 returns the difference of x, y and borrow: diff = x - y - borrow.
        The borrow input must be 0 or 1; otherwise the behavior is undefined.
        The borrowOut output is guaranteed to be 0 or 1.
        
        This function's execution time does not depend on the inputs.
    **/
    static public function sub64(x:haxe.UInt64, y:haxe.UInt64, borrow:haxe.UInt64):stdgo.Tuple<haxe.UInt64, haxe.UInt64> {
        return {
            final obj = stdgo._internal.math.bits.Bits.sub64(x, y, borrow);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        Mul returns the full-width product of x and y: (hi, lo) = x * y
        with the product bits' upper half returned in hi and the lower
        half returned in lo.
        
        This function's execution time does not depend on the inputs.
    **/
    static public function mul(x:std.UInt, y:std.UInt):stdgo.Tuple<std.UInt, std.UInt> {
        return {
            final obj = stdgo._internal.math.bits.Bits.mul(x, y);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        Mul32 returns the 64-bit product of x and y: (hi, lo) = x * y
        with the product bits' upper half returned in hi and the lower
        half returned in lo.
        
        This function's execution time does not depend on the inputs.
    **/
    static public function mul32(x:std.UInt, y:std.UInt):stdgo.Tuple<std.UInt, std.UInt> {
        return {
            final obj = stdgo._internal.math.bits.Bits.mul32(x, y);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        Mul64 returns the 128-bit product of x and y: (hi, lo) = x * y
        with the product bits' upper half returned in hi and the lower
        half returned in lo.
        
        This function's execution time does not depend on the inputs.
    **/
    static public function mul64(x:haxe.UInt64, y:haxe.UInt64):stdgo.Tuple<haxe.UInt64, haxe.UInt64> {
        return {
            final obj = stdgo._internal.math.bits.Bits.mul64(x, y);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        Div returns the quotient and remainder of (hi, lo) divided by y:
        quo = (hi, lo)/y, rem = (hi, lo)%y with the dividend bits' upper
        half in parameter hi and the lower half in parameter lo.
        Div panics for y == 0 (division by zero) or y <= hi (quotient overflow).
    **/
    static public function div(hi:std.UInt, lo:std.UInt, y:std.UInt):stdgo.Tuple<std.UInt, std.UInt> {
        return {
            final obj = stdgo._internal.math.bits.Bits.div(hi, lo, y);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        Div32 returns the quotient and remainder of (hi, lo) divided by y:
        quo = (hi, lo)/y, rem = (hi, lo)%y with the dividend bits' upper
        half in parameter hi and the lower half in parameter lo.
        Div32 panics for y == 0 (division by zero) or y <= hi (quotient overflow).
    **/
    static public function div32(hi:std.UInt, lo:std.UInt, y:std.UInt):stdgo.Tuple<std.UInt, std.UInt> {
        return {
            final obj = stdgo._internal.math.bits.Bits.div32(hi, lo, y);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        Div64 returns the quotient and remainder of (hi, lo) divided by y:
        quo = (hi, lo)/y, rem = (hi, lo)%y with the dividend bits' upper
        half in parameter hi and the lower half in parameter lo.
        Div64 panics for y == 0 (division by zero) or y <= hi (quotient overflow).
    **/
    static public function div64(hi:haxe.UInt64, lo:haxe.UInt64, y:haxe.UInt64):stdgo.Tuple<haxe.UInt64, haxe.UInt64> {
        return {
            final obj = stdgo._internal.math.bits.Bits.div64(hi, lo, y);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        Rem returns the remainder of (hi, lo) divided by y. Rem panics for
        y == 0 (division by zero) but, unlike Div, it doesn't panic on a
        quotient overflow.
    **/
    static public function rem(hi:std.UInt, lo:std.UInt, y:std.UInt):std.UInt {
        return stdgo._internal.math.bits.Bits.rem(hi, lo, y);
    }
    /**
        Rem32 returns the remainder of (hi, lo) divided by y. Rem32 panics
        for y == 0 (division by zero) but, unlike Div32, it doesn't panic
        on a quotient overflow.
    **/
    static public function rem32(hi:std.UInt, lo:std.UInt, y:std.UInt):std.UInt {
        return stdgo._internal.math.bits.Bits.rem32(hi, lo, y);
    }
    /**
        Rem64 returns the remainder of (hi, lo) divided by y. Rem64 panics
        for y == 0 (division by zero) but, unlike Div64, it doesn't panic
        on a quotient overflow.
    **/
    static public function rem64(hi:haxe.UInt64, lo:haxe.UInt64, y:haxe.UInt64):haxe.UInt64 {
        return stdgo._internal.math.bits.Bits.rem64(hi, lo, y);
    }
}
