# Module: `stdgo.math.bits`

[(view library index)](../../stdgo.md)


# Overview


# Index


- [Constants](<#constants>)

- [class Bits](<#class-bits>)

  - [`function add(_x:UInt, _y:UInt, _carry:UInt):stdgo.Tuple<UInt, UInt>`](<#bits-function-add>)

  - [`function add32(_x:UInt, _y:UInt, _carry:UInt):stdgo.Tuple<UInt, UInt>`](<#bits-function-add32>)

  - [`function add64(_x:haxe.UInt64, _y:haxe.UInt64, _carry:haxe.UInt64):stdgo.Tuple<haxe.UInt64, haxe.UInt64>`](<#bits-function-add64>)

  - [`function div(_hi:UInt, _lo:UInt, _y:UInt):stdgo.Tuple<UInt, UInt>`](<#bits-function-div>)

  - [`function div32(_hi:UInt, _lo:UInt, _y:UInt):stdgo.Tuple<UInt, UInt>`](<#bits-function-div32>)

  - [`function div64(_hi:haxe.UInt64, _lo:haxe.UInt64, _y:haxe.UInt64):stdgo.Tuple<haxe.UInt64, haxe.UInt64>`](<#bits-function-div64>)

  - [`function leadingZeros(_x:UInt):Int`](<#bits-function-leadingzeros>)

  - [`function leadingZeros16(_x:UInt):Int`](<#bits-function-leadingzeros16>)

  - [`function leadingZeros32(_x:UInt):Int`](<#bits-function-leadingzeros32>)

  - [`function leadingZeros64(_x:haxe.UInt64):Int`](<#bits-function-leadingzeros64>)

  - [`function leadingZeros8(_x:UInt):Int`](<#bits-function-leadingzeros8>)

  - [`function len(_x:UInt):Int`](<#bits-function-len>)

  - [`function len16(_x:UInt):Int`](<#bits-function-len16>)

  - [`function len32(_x:UInt):Int`](<#bits-function-len32>)

  - [`function len64(_x:haxe.UInt64):Int`](<#bits-function-len64>)

  - [`function len8(_x:UInt):Int`](<#bits-function-len8>)

  - [`function mul(_x:UInt, _y:UInt):stdgo.Tuple<UInt, UInt>`](<#bits-function-mul>)

  - [`function mul32(_x:UInt, _y:UInt):stdgo.Tuple<UInt, UInt>`](<#bits-function-mul32>)

  - [`function mul64(_x:haxe.UInt64, _y:haxe.UInt64):stdgo.Tuple<haxe.UInt64, haxe.UInt64>`](<#bits-function-mul64>)

  - [`function onesCount(_x:UInt):Int`](<#bits-function-onescount>)

  - [`function onesCount16(_x:UInt):Int`](<#bits-function-onescount16>)

  - [`function onesCount32(_x:UInt):Int`](<#bits-function-onescount32>)

  - [`function onesCount64(_x:haxe.UInt64):Int`](<#bits-function-onescount64>)

  - [`function onesCount8(_x:UInt):Int`](<#bits-function-onescount8>)

  - [`function rem(_hi:UInt, _lo:UInt, _y:UInt):UInt`](<#bits-function-rem>)

  - [`function rem32(_hi:UInt, _lo:UInt, _y:UInt):UInt`](<#bits-function-rem32>)

  - [`function rem64(_hi:haxe.UInt64, _lo:haxe.UInt64, _y:haxe.UInt64):haxe.UInt64`](<#bits-function-rem64>)

  - [`function reverse(_x:UInt):UInt`](<#bits-function-reverse>)

  - [`function reverse16(_x:UInt):UInt`](<#bits-function-reverse16>)

  - [`function reverse32(_x:UInt):UInt`](<#bits-function-reverse32>)

  - [`function reverse64(_x:haxe.UInt64):haxe.UInt64`](<#bits-function-reverse64>)

  - [`function reverse8(_x:UInt):UInt`](<#bits-function-reverse8>)

  - [`function reverseBytes(_x:UInt):UInt`](<#bits-function-reversebytes>)

  - [`function reverseBytes16(_x:UInt):UInt`](<#bits-function-reversebytes16>)

  - [`function reverseBytes32(_x:UInt):UInt`](<#bits-function-reversebytes32>)

  - [`function reverseBytes64(_x:haxe.UInt64):haxe.UInt64`](<#bits-function-reversebytes64>)

  - [`function rotateLeft(_x:UInt, _k:Int):UInt`](<#bits-function-rotateleft>)

  - [`function rotateLeft16(_x:UInt, _k:Int):UInt`](<#bits-function-rotateleft16>)

  - [`function rotateLeft32(_x:UInt, _k:Int):UInt`](<#bits-function-rotateleft32>)

  - [`function rotateLeft64(_x:haxe.UInt64, _k:Int):haxe.UInt64`](<#bits-function-rotateleft64>)

  - [`function rotateLeft8(_x:UInt, _k:Int):UInt`](<#bits-function-rotateleft8>)

  - [`function sub(_x:UInt, _y:UInt, _borrow:UInt):stdgo.Tuple<UInt, UInt>`](<#bits-function-sub>)

  - [`function sub32(_x:UInt, _y:UInt, _borrow:UInt):stdgo.Tuple<UInt, UInt>`](<#bits-function-sub32>)

  - [`function sub64(_x:haxe.UInt64, _y:haxe.UInt64, _borrow:haxe.UInt64):stdgo.Tuple<haxe.UInt64, haxe.UInt64>`](<#bits-function-sub64>)

  - [`function trailingZeros(_x:UInt):Int`](<#bits-function-trailingzeros>)

  - [`function trailingZeros16(_x:UInt):Int`](<#bits-function-trailingzeros16>)

  - [`function trailingZeros32(_x:UInt):Int`](<#bits-function-trailingzeros32>)

  - [`function trailingZeros64(_x:haxe.UInt64):Int`](<#bits-function-trailingzeros64>)

  - [`function trailingZeros8(_x:UInt):Int`](<#bits-function-trailingzeros8>)

# Constants


```haxe
import stdgo.math.bits.Bits
```


```haxe
final deBruijn64:haxe.UInt64 = stdgo._internal.math.bits.Bits.deBruijn64
```


```haxe
final uintSize:haxe.UInt64 = stdgo._internal.math.bits.Bits.uintSize
```


# Classes


```haxe
import stdgo.math.bits.*
```


## class Bits


```
Package bits implements bit counting and manipulation
    functions for the predeclared unsigned integer types.
```

Functions in this package may be implemented directly by
the compiler, for better performance. For those functions
the code in this package will not be used. Which
functions are implemented by the compiler depends on the
architecture and the Go release.  

### Bits function add


```haxe
function add(_x:UInt, _y:UInt, _carry:UInt):stdgo.Tuple<UInt, UInt>
```


```
Add returns the sum with carry of x, y and carry: sum = x + y + carry.
        The carry input must be 0 or 1; otherwise the behavior is undefined.
        The carryOut output is guaranteed to be 0 or 1.
```

This function's execution time does not depend on the inputs.  

[\(view code\)](<./Bits.hx#L249>)


### Bits function add32


```haxe
function add32(_x:UInt, _y:UInt, _carry:UInt):stdgo.Tuple<UInt, UInt>
```


```
Add32 returns the sum with carry of x, y and carry: sum = x + y + carry.
        The carry input must be 0 or 1; otherwise the behavior is undefined.
        The carryOut output is guaranteed to be 0 or 1.
```

This function's execution time does not depend on the inputs.  

[\(view code\)](<./Bits.hx#L262>)


### Bits function add64


```haxe
function add64(_x:haxe.UInt64, _y:haxe.UInt64, _carry:haxe.UInt64):stdgo.Tuple<haxe.UInt64, haxe.UInt64>
```


```
Add64 returns the sum with carry of x, y and carry: sum = x + y + carry.
        The carry input must be 0 or 1; otherwise the behavior is undefined.
        The carryOut output is guaranteed to be 0 or 1.
```

This function's execution time does not depend on the inputs.  

[\(view code\)](<./Bits.hx#L275>)


### Bits function div


```haxe
function div(_hi:UInt, _lo:UInt, _y:UInt):stdgo.Tuple<UInt, UInt>
```


```
Div returns the quotient and remainder of (hi, lo) divided by y:
        quo = (hi, lo)/y, rem = (hi, lo)%y with the dividend bits' upper
        half in parameter hi and the lower half in parameter lo.
        Div panics for y == 0 (division by zero) or y <= hi (quotient overflow).
```
[\(view code\)](<./Bits.hx#L365>)


### Bits function div32


```haxe
function div32(_hi:UInt, _lo:UInt, _y:UInt):stdgo.Tuple<UInt, UInt>
```


```
Div32 returns the quotient and remainder of (hi, lo) divided by y:
        quo = (hi, lo)/y, rem = (hi, lo)%y with the dividend bits' upper
        half in parameter hi and the lower half in parameter lo.
        Div32 panics for y == 0 (division by zero) or y <= hi (quotient overflow).
```
[\(view code\)](<./Bits.hx#L377>)


### Bits function div64


```haxe
function div64(_hi:haxe.UInt64, _lo:haxe.UInt64, _y:haxe.UInt64):stdgo.Tuple<haxe.UInt64, haxe.UInt64>
```


```
Div64 returns the quotient and remainder of (hi, lo) divided by y:
        quo = (hi, lo)/y, rem = (hi, lo)%y with the dividend bits' upper
        half in parameter hi and the lower half in parameter lo.
        Div64 panics for y == 0 (division by zero) or y <= hi (quotient overflow).
```
[\(view code\)](<./Bits.hx#L389>)


### Bits function leadingZeros


```haxe
function leadingZeros(_x:UInt):Int
```



LeadingZeros returns the number of leading zero bits in x; the result is UintSize for x == 0.  

[\(view code\)](<./Bits.hx#L18>)


### Bits function leadingZeros16


```haxe
function leadingZeros16(_x:UInt):Int
```



LeadingZeros16 returns the number of leading zero bits in x; the result is 16 for x == 0.  

[\(view code\)](<./Bits.hx#L30>)


### Bits function leadingZeros32


```haxe
function leadingZeros32(_x:UInt):Int
```



LeadingZeros32 returns the number of leading zero bits in x; the result is 32 for x == 0.  

[\(view code\)](<./Bits.hx#L36>)


### Bits function leadingZeros64


```haxe
function leadingZeros64(_x:haxe.UInt64):Int
```



LeadingZeros64 returns the number of leading zero bits in x; the result is 64 for x == 0.  

[\(view code\)](<./Bits.hx#L42>)


### Bits function leadingZeros8


```haxe
function leadingZeros8(_x:UInt):Int
```



LeadingZeros8 returns the number of leading zero bits in x; the result is 8 for x == 0.  

[\(view code\)](<./Bits.hx#L24>)


### Bits function len


```haxe
function len(_x:UInt):Int
```



Len returns the minimum number of bits required to represent x; the result is 0 for x == 0.  

[\(view code\)](<./Bits.hx#L215>)


### Bits function len16


```haxe
function len16(_x:UInt):Int
```



Len16 returns the minimum number of bits required to represent x; the result is 0 for x == 0.  

[\(view code\)](<./Bits.hx#L227>)


### Bits function len32


```haxe
function len32(_x:UInt):Int
```



Len32 returns the minimum number of bits required to represent x; the result is 0 for x == 0.  

[\(view code\)](<./Bits.hx#L233>)


### Bits function len64


```haxe
function len64(_x:haxe.UInt64):Int
```



Len64 returns the minimum number of bits required to represent x; the result is 0 for x == 0.  

[\(view code\)](<./Bits.hx#L239>)


### Bits function len8


```haxe
function len8(_x:UInt):Int
```



Len8 returns the minimum number of bits required to represent x; the result is 0 for x == 0.  

[\(view code\)](<./Bits.hx#L221>)


### Bits function mul


```haxe
function mul(_x:UInt, _y:UInt):stdgo.Tuple<UInt, UInt>
```


```
Mul returns the full-width product of x and y: (hi, lo) = x * y
        with the product bits' upper half returned in hi and the lower
        half returned in lo.
```

This function's execution time does not depend on the inputs.  

[\(view code\)](<./Bits.hx#L327>)


### Bits function mul32


```haxe
function mul32(_x:UInt, _y:UInt):stdgo.Tuple<UInt, UInt>
```


```
Mul32 returns the 64-bit product of x and y: (hi, lo) = x * y
        with the product bits' upper half returned in hi and the lower
        half returned in lo.
```

This function's execution time does not depend on the inputs.  

[\(view code\)](<./Bits.hx#L340>)


### Bits function mul64


```haxe
function mul64(_x:haxe.UInt64, _y:haxe.UInt64):stdgo.Tuple<haxe.UInt64, haxe.UInt64>
```


```
Mul64 returns the 128-bit product of x and y: (hi, lo) = x * y
        with the product bits' upper half returned in hi and the lower
        half returned in lo.
```

This function's execution time does not depend on the inputs.  

[\(view code\)](<./Bits.hx#L353>)


### Bits function onesCount


```haxe
function onesCount(_x:UInt):Int
```



OnesCount returns the number of one bits \("population count"\) in x.  

[\(view code\)](<./Bits.hx#L78>)


### Bits function onesCount16


```haxe
function onesCount16(_x:UInt):Int
```



OnesCount16 returns the number of one bits \("population count"\) in x.  

[\(view code\)](<./Bits.hx#L90>)


### Bits function onesCount32


```haxe
function onesCount32(_x:UInt):Int
```



OnesCount32 returns the number of one bits \("population count"\) in x.  

[\(view code\)](<./Bits.hx#L96>)


### Bits function onesCount64


```haxe
function onesCount64(_x:haxe.UInt64):Int
```



OnesCount64 returns the number of one bits \("population count"\) in x.  

[\(view code\)](<./Bits.hx#L102>)


### Bits function onesCount8


```haxe
function onesCount8(_x:UInt):Int
```



OnesCount8 returns the number of one bits \("population count"\) in x.  

[\(view code\)](<./Bits.hx#L84>)


### Bits function rem


```haxe
function rem(_hi:UInt, _lo:UInt, _y:UInt):UInt
```


```
Rem returns the remainder of (hi, lo) divided by y. Rem panics for
        y == 0 (division by zero) but, unlike Div, it doesn't panic on a
        quotient overflow.
```
[\(view code\)](<./Bits.hx#L400>)


### Bits function rem32


```haxe
function rem32(_hi:UInt, _lo:UInt, _y:UInt):UInt
```


```
Rem32 returns the remainder of (hi, lo) divided by y. Rem32 panics
        for y == 0 (division by zero) but, unlike Div32, it doesn't panic
        on a quotient overflow.
```
[\(view code\)](<./Bits.hx#L408>)


### Bits function rem64


```haxe
function rem64(_hi:haxe.UInt64, _lo:haxe.UInt64, _y:haxe.UInt64):haxe.UInt64
```


```
Rem64 returns the remainder of (hi, lo) divided by y. Rem64 panics
        for y == 0 (division by zero) but, unlike Div64, it doesn't panic
        on a quotient overflow.
```
[\(view code\)](<./Bits.hx#L416>)


### Bits function reverse


```haxe
function reverse(_x:UInt):UInt
```



Reverse returns the value of x with its bits in reversed order.  

[\(view code\)](<./Bits.hx#L153>)


### Bits function reverse16


```haxe
function reverse16(_x:UInt):UInt
```



Reverse16 returns the value of x with its bits in reversed order.  

[\(view code\)](<./Bits.hx#L165>)


### Bits function reverse32


```haxe
function reverse32(_x:UInt):UInt
```



Reverse32 returns the value of x with its bits in reversed order.  

[\(view code\)](<./Bits.hx#L171>)


### Bits function reverse64


```haxe
function reverse64(_x:haxe.UInt64):haxe.UInt64
```



Reverse64 returns the value of x with its bits in reversed order.  

[\(view code\)](<./Bits.hx#L177>)


### Bits function reverse8


```haxe
function reverse8(_x:UInt):UInt
```



Reverse8 returns the value of x with its bits in reversed order.  

[\(view code\)](<./Bits.hx#L159>)


### Bits function reverseBytes


```haxe
function reverseBytes(_x:UInt):UInt
```



ReverseBytes returns the value of x with its bytes in reversed order.  


This function's execution time does not depend on the inputs.  

[\(view code\)](<./Bits.hx#L185>)


### Bits function reverseBytes16


```haxe
function reverseBytes16(_x:UInt):UInt
```



ReverseBytes16 returns the value of x with its bytes in reversed order.  


This function's execution time does not depend on the inputs.  

[\(view code\)](<./Bits.hx#L193>)


### Bits function reverseBytes32


```haxe
function reverseBytes32(_x:UInt):UInt
```



ReverseBytes32 returns the value of x with its bytes in reversed order.  


This function's execution time does not depend on the inputs.  

[\(view code\)](<./Bits.hx#L201>)


### Bits function reverseBytes64


```haxe
function reverseBytes64(_x:haxe.UInt64):haxe.UInt64
```



ReverseBytes64 returns the value of x with its bytes in reversed order.  


This function's execution time does not depend on the inputs.  

[\(view code\)](<./Bits.hx#L209>)


### Bits function rotateLeft


```haxe
function rotateLeft(_x:UInt, _k:Int):UInt
```


```
RotateLeft returns the value of x rotated left by (k mod UintSize) bits.
        To rotate x right by k bits, call RotateLeft(x, -k).
```

This function's execution time does not depend on the inputs.  

[\(view code\)](<./Bits.hx#L111>)


### Bits function rotateLeft16


```haxe
function rotateLeft16(_x:UInt, _k:Int):UInt
```


```
RotateLeft16 returns the value of x rotated left by (k mod 16) bits.
        To rotate x right by k bits, call RotateLeft16(x, -k).
```

This function's execution time does not depend on the inputs.  

[\(view code\)](<./Bits.hx#L129>)


### Bits function rotateLeft32


```haxe
function rotateLeft32(_x:UInt, _k:Int):UInt
```


```
RotateLeft32 returns the value of x rotated left by (k mod 32) bits.
        To rotate x right by k bits, call RotateLeft32(x, -k).
```

This function's execution time does not depend on the inputs.  

[\(view code\)](<./Bits.hx#L138>)


### Bits function rotateLeft64


```haxe
function rotateLeft64(_x:haxe.UInt64, _k:Int):haxe.UInt64
```


```
RotateLeft64 returns the value of x rotated left by (k mod 64) bits.
        To rotate x right by k bits, call RotateLeft64(x, -k).
```

This function's execution time does not depend on the inputs.  

[\(view code\)](<./Bits.hx#L147>)


### Bits function rotateLeft8


```haxe
function rotateLeft8(_x:UInt, _k:Int):UInt
```


```
RotateLeft8 returns the value of x rotated left by (k mod 8) bits.
        To rotate x right by k bits, call RotateLeft8(x, -k).
```

This function's execution time does not depend on the inputs.  

[\(view code\)](<./Bits.hx#L120>)


### Bits function sub


```haxe
function sub(_x:UInt, _y:UInt, _borrow:UInt):stdgo.Tuple<UInt, UInt>
```


```
Sub returns the difference of x, y and borrow: diff = x - y - borrow.
        The borrow input must be 0 or 1; otherwise the behavior is undefined.
        The borrowOut output is guaranteed to be 0 or 1.
```

This function's execution time does not depend on the inputs.  

[\(view code\)](<./Bits.hx#L288>)


### Bits function sub32


```haxe
function sub32(_x:UInt, _y:UInt, _borrow:UInt):stdgo.Tuple<UInt, UInt>
```


```
Sub32 returns the difference of x, y and borrow, diff = x - y - borrow.
        The borrow input must be 0 or 1; otherwise the behavior is undefined.
        The borrowOut output is guaranteed to be 0 or 1.
```

This function's execution time does not depend on the inputs.  

[\(view code\)](<./Bits.hx#L301>)


### Bits function sub64


```haxe
function sub64(_x:haxe.UInt64, _y:haxe.UInt64, _borrow:haxe.UInt64):stdgo.Tuple<haxe.UInt64, haxe.UInt64>
```


```
Sub64 returns the difference of x, y and borrow: diff = x - y - borrow.
        The borrow input must be 0 or 1; otherwise the behavior is undefined.
        The borrowOut output is guaranteed to be 0 or 1.
```

This function's execution time does not depend on the inputs.  

[\(view code\)](<./Bits.hx#L314>)


### Bits function trailingZeros


```haxe
function trailingZeros(_x:UInt):Int
```



TrailingZeros returns the number of trailing zero bits in x; the result is UintSize for x == 0.  

[\(view code\)](<./Bits.hx#L48>)


### Bits function trailingZeros16


```haxe
function trailingZeros16(_x:UInt):Int
```



TrailingZeros16 returns the number of trailing zero bits in x; the result is 16 for x == 0.  

[\(view code\)](<./Bits.hx#L60>)


### Bits function trailingZeros32


```haxe
function trailingZeros32(_x:UInt):Int
```



TrailingZeros32 returns the number of trailing zero bits in x; the result is 32 for x == 0.  

[\(view code\)](<./Bits.hx#L66>)


### Bits function trailingZeros64


```haxe
function trailingZeros64(_x:haxe.UInt64):Int
```



TrailingZeros64 returns the number of trailing zero bits in x; the result is 64 for x == 0.  

[\(view code\)](<./Bits.hx#L72>)


### Bits function trailingZeros8


```haxe
function trailingZeros8(_x:UInt):Int
```



TrailingZeros8 returns the number of trailing zero bits in x; the result is 8 for x == 0.  

[\(view code\)](<./Bits.hx#L54>)


