# Module: `stdgo.math.bits`

[(view library index)](../../stdgo.md)


# Overview



Package bits implements bit counting and manipulation
functions for the predeclared unsigned integer types.  


Functions in this package may be implemented directly by
the compiler, for better performance. For those functions
the code in this package will not be used. Which
functions are implemented by the compiler depends on the
architecture and the Go release.  

# Index


- [Constants](<#constants>)

- [`function add(x:UInt, y:UInt, carry:UInt):stdgo.Tuple<UInt, UInt>`](<#function-add>)

- [`function add32(x:UInt, y:UInt, carry:UInt):stdgo.Tuple<UInt, UInt>`](<#function-add32>)

- [`function add64(x:haxe.UInt64, y:haxe.UInt64, carry:haxe.UInt64):stdgo.Tuple<haxe.UInt64, haxe.UInt64>`](<#function-add64>)

- [`function div(hi:UInt, lo:UInt, y:UInt):stdgo.Tuple<UInt, UInt>`](<#function-div>)

- [`function div32(hi:UInt, lo:UInt, y:UInt):stdgo.Tuple<UInt, UInt>`](<#function-div32>)

- [`function div64(hi:haxe.UInt64, lo:haxe.UInt64, y:haxe.UInt64):stdgo.Tuple<haxe.UInt64, haxe.UInt64>`](<#function-div64>)

- [`function leadingZeros(x:UInt):Int`](<#function-leadingzeros>)

- [`function leadingZeros16(x:UInt):Int`](<#function-leadingzeros16>)

- [`function leadingZeros32(x:UInt):Int`](<#function-leadingzeros32>)

- [`function leadingZeros64(x:haxe.UInt64):Int`](<#function-leadingzeros64>)

- [`function leadingZeros8(x:UInt):Int`](<#function-leadingzeros8>)

- [`function len(x:UInt):Int`](<#function-len>)

- [`function len16(x:UInt):Int`](<#function-len16>)

- [`function len32(x:UInt):Int`](<#function-len32>)

- [`function len64(x:haxe.UInt64):Int`](<#function-len64>)

- [`function len8(x:UInt):Int`](<#function-len8>)

- [`function mul(x:UInt, y:UInt):stdgo.Tuple<UInt, UInt>`](<#function-mul>)

- [`function mul32(x:UInt, y:UInt):stdgo.Tuple<UInt, UInt>`](<#function-mul32>)

- [`function mul64(x:haxe.UInt64, y:haxe.UInt64):stdgo.Tuple<haxe.UInt64, haxe.UInt64>`](<#function-mul64>)

- [`function onesCount(x:UInt):Int`](<#function-onescount>)

- [`function onesCount16(x:UInt):Int`](<#function-onescount16>)

- [`function onesCount32(x:UInt):Int`](<#function-onescount32>)

- [`function onesCount64(x:haxe.UInt64):Int`](<#function-onescount64>)

- [`function onesCount8(x:UInt):Int`](<#function-onescount8>)

- [`function rem(hi:UInt, lo:UInt, y:UInt):UInt`](<#function-rem>)

- [`function rem32(hi:UInt, lo:UInt, y:UInt):UInt`](<#function-rem32>)

- [`function rem64(hi:haxe.UInt64, lo:haxe.UInt64, y:haxe.UInt64):haxe.UInt64`](<#function-rem64>)

- [`function reverse(x:UInt):UInt`](<#function-reverse>)

- [`function reverse16(x:UInt):UInt`](<#function-reverse16>)

- [`function reverse32(x:UInt):UInt`](<#function-reverse32>)

- [`function reverse64(x:haxe.UInt64):haxe.UInt64`](<#function-reverse64>)

- [`function reverse8(x:UInt):UInt`](<#function-reverse8>)

- [`function reverseBytes(x:UInt):UInt`](<#function-reversebytes>)

- [`function reverseBytes16(x:UInt):UInt`](<#function-reversebytes16>)

- [`function reverseBytes32(x:UInt):UInt`](<#function-reversebytes32>)

- [`function reverseBytes64(x:haxe.UInt64):haxe.UInt64`](<#function-reversebytes64>)

- [`function rotateLeft(x:UInt, k:Int):UInt`](<#function-rotateleft>)

- [`function rotateLeft16(x:UInt, k:Int):UInt`](<#function-rotateleft16>)

- [`function rotateLeft32(x:UInt, k:Int):UInt`](<#function-rotateleft32>)

- [`function rotateLeft64(x:haxe.UInt64, k:Int):haxe.UInt64`](<#function-rotateleft64>)

- [`function rotateLeft8(x:UInt, k:Int):UInt`](<#function-rotateleft8>)

- [`function sub(x:UInt, y:UInt, borrow:UInt):stdgo.Tuple<UInt, UInt>`](<#function-sub>)

- [`function sub32(x:UInt, y:UInt, borrow:UInt):stdgo.Tuple<UInt, UInt>`](<#function-sub32>)

- [`function sub64(x:haxe.UInt64, y:haxe.UInt64, borrow:haxe.UInt64):stdgo.Tuple<haxe.UInt64, haxe.UInt64>`](<#function-sub64>)

- [`function trailingZeros(x:UInt):Int`](<#function-trailingzeros>)

- [`function trailingZeros16(x:UInt):Int`](<#function-trailingzeros16>)

- [`function trailingZeros32(x:UInt):Int`](<#function-trailingzeros32>)

- [`function trailingZeros64(x:haxe.UInt64):Int`](<#function-trailingzeros64>)

- [`function trailingZeros8(x:UInt):Int`](<#function-trailingzeros8>)

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


# Functions


```haxe
import stdgo.math.bits.Bits
```


## function add


```haxe
function add(x:UInt, y:UInt, carry:UInt):stdgo.Tuple<UInt, UInt>
```



Add returns the sum with carry of x, y and carry: sum = x \+ y \+ carry.
The carry input must be 0 or 1; otherwise the behavior is undefined.
The carryOut output is guaranteed to be 0 or 1.  


This function's execution time does not depend on the inputs.  

[\(view code\)](<./Bits.hx#L181>)


## function add32


```haxe
function add32(x:UInt, y:UInt, carry:UInt):stdgo.Tuple<UInt, UInt>
```



Add32 returns the sum with carry of x, y and carry: sum = x \+ y \+ carry.
The carry input must be 0 or 1; otherwise the behavior is undefined.
The carryOut output is guaranteed to be 0 or 1.  


This function's execution time does not depend on the inputs.  

[\(view code\)](<./Bits.hx#L189>)


## function add64


```haxe
function add64(x:haxe.UInt64, y:haxe.UInt64, carry:haxe.UInt64):stdgo.Tuple<haxe.UInt64, haxe.UInt64>
```



Add64 returns the sum with carry of x, y and carry: sum = x \+ y \+ carry.
The carry input must be 0 or 1; otherwise the behavior is undefined.
The carryOut output is guaranteed to be 0 or 1.  


This function's execution time does not depend on the inputs.  

[\(view code\)](<./Bits.hx#L197>)


## function div


```haxe
function div(hi:UInt, lo:UInt, y:UInt):stdgo.Tuple<UInt, UInt>
```



Div returns the quotient and remainder of \(hi, lo\) divided by y:
quo = \(hi, lo\)/y, rem = \(hi, lo\)%y with the dividend bits' upper
half in parameter hi and the lower half in parameter lo.
Div panics for y == 0 \(division by zero\) or y \<= hi \(quotient overflow\).  

[\(view code\)](<./Bits.hx#L252>)


## function div32


```haxe
function div32(hi:UInt, lo:UInt, y:UInt):stdgo.Tuple<UInt, UInt>
```



Div32 returns the quotient and remainder of \(hi, lo\) divided by y:
quo = \(hi, lo\)/y, rem = \(hi, lo\)%y with the dividend bits' upper
half in parameter hi and the lower half in parameter lo.
Div32 panics for y == 0 \(division by zero\) or y \<= hi \(quotient overflow\).  

[\(view code\)](<./Bits.hx#L259>)


## function div64


```haxe
function div64(hi:haxe.UInt64, lo:haxe.UInt64, y:haxe.UInt64):stdgo.Tuple<haxe.UInt64, haxe.UInt64>
```



Div64 returns the quotient and remainder of \(hi, lo\) divided by y:
quo = \(hi, lo\)/y, rem = \(hi, lo\)%y with the dividend bits' upper
half in parameter hi and the lower half in parameter lo.
Div64 panics for y == 0 \(division by zero\) or y \<= hi \(quotient overflow\).  

[\(view code\)](<./Bits.hx#L266>)


## function leadingZeros


```haxe
function leadingZeros(x:UInt):Int
```



LeadingZeros returns the number of leading zero bits in x; the result is UintSize for x == 0.  

[\(view code\)](<./Bits.hx#L18>)


## function leadingZeros16


```haxe
function leadingZeros16(x:UInt):Int
```



LeadingZeros16 returns the number of leading zero bits in x; the result is 16 for x == 0.  

[\(view code\)](<./Bits.hx#L26>)


## function leadingZeros32


```haxe
function leadingZeros32(x:UInt):Int
```



LeadingZeros32 returns the number of leading zero bits in x; the result is 32 for x == 0.  

[\(view code\)](<./Bits.hx#L30>)


## function leadingZeros64


```haxe
function leadingZeros64(x:haxe.UInt64):Int
```



LeadingZeros64 returns the number of leading zero bits in x; the result is 64 for x == 0.  

[\(view code\)](<./Bits.hx#L34>)


## function leadingZeros8


```haxe
function leadingZeros8(x:UInt):Int
```



LeadingZeros8 returns the number of leading zero bits in x; the result is 8 for x == 0.  

[\(view code\)](<./Bits.hx#L22>)


## function len


```haxe
function len(x:UInt):Int
```



Len returns the minimum number of bits required to represent x; the result is 0 for x == 0.  

[\(view code\)](<./Bits.hx#L157>)


## function len16


```haxe
function len16(x:UInt):Int
```



Len16 returns the minimum number of bits required to represent x; the result is 0 for x == 0.  

[\(view code\)](<./Bits.hx#L165>)


## function len32


```haxe
function len32(x:UInt):Int
```



Len32 returns the minimum number of bits required to represent x; the result is 0 for x == 0.  

[\(view code\)](<./Bits.hx#L169>)


## function len64


```haxe
function len64(x:haxe.UInt64):Int
```



Len64 returns the minimum number of bits required to represent x; the result is 0 for x == 0.  

[\(view code\)](<./Bits.hx#L173>)


## function len8


```haxe
function len8(x:UInt):Int
```



Len8 returns the minimum number of bits required to represent x; the result is 0 for x == 0.  

[\(view code\)](<./Bits.hx#L161>)


## function mul


```haxe
function mul(x:UInt, y:UInt):stdgo.Tuple<UInt, UInt>
```



Mul returns the full\-width product of x and y: \(hi, lo\) = x \* y
with the product bits' upper half returned in hi and the lower
half returned in lo.  


This function's execution time does not depend on the inputs.  

[\(view code\)](<./Bits.hx#L229>)


## function mul32


```haxe
function mul32(x:UInt, y:UInt):stdgo.Tuple<UInt, UInt>
```



Mul32 returns the 64\-bit product of x and y: \(hi, lo\) = x \* y
with the product bits' upper half returned in hi and the lower
half returned in lo.  


This function's execution time does not depend on the inputs.  

[\(view code\)](<./Bits.hx#L237>)


## function mul64


```haxe
function mul64(x:haxe.UInt64, y:haxe.UInt64):stdgo.Tuple<haxe.UInt64, haxe.UInt64>
```



Mul64 returns the 128\-bit product of x and y: \(hi, lo\) = x \* y
with the product bits' upper half returned in hi and the lower
half returned in lo.  


This function's execution time does not depend on the inputs.  

[\(view code\)](<./Bits.hx#L245>)


## function onesCount


```haxe
function onesCount(x:UInt):Int
```



OnesCount returns the number of one bits \("population count"\) in x.  

[\(view code\)](<./Bits.hx#L58>)


## function onesCount16


```haxe
function onesCount16(x:UInt):Int
```



OnesCount16 returns the number of one bits \("population count"\) in x.  

[\(view code\)](<./Bits.hx#L66>)


## function onesCount32


```haxe
function onesCount32(x:UInt):Int
```



OnesCount32 returns the number of one bits \("population count"\) in x.  

[\(view code\)](<./Bits.hx#L70>)


## function onesCount64


```haxe
function onesCount64(x:haxe.UInt64):Int
```



OnesCount64 returns the number of one bits \("population count"\) in x.  

[\(view code\)](<./Bits.hx#L74>)


## function onesCount8


```haxe
function onesCount8(x:UInt):Int
```



OnesCount8 returns the number of one bits \("population count"\) in x.  

[\(view code\)](<./Bits.hx#L62>)


## function rem


```haxe
function rem(hi:UInt, lo:UInt, y:UInt):UInt
```



Rem returns the remainder of \(hi, lo\) divided by y. Rem panics for
y == 0 \(division by zero\) but, unlike Div, it doesn't panic on a
quotient overflow.  

[\(view code\)](<./Bits.hx#L272>)


## function rem32


```haxe
function rem32(hi:UInt, lo:UInt, y:UInt):UInt
```



Rem32 returns the remainder of \(hi, lo\) divided by y. Rem32 panics
for y == 0 \(division by zero\) but, unlike Div32, it doesn't panic
on a quotient overflow.  

[\(view code\)](<./Bits.hx#L278>)


## function rem64


```haxe
function rem64(hi:haxe.UInt64, lo:haxe.UInt64, y:haxe.UInt64):haxe.UInt64
```



Rem64 returns the remainder of \(hi, lo\) divided by y. Rem64 panics
for y == 0 \(division by zero\) but, unlike Div64, it doesn't panic
on a quotient overflow.  

[\(view code\)](<./Bits.hx#L284>)


## function reverse


```haxe
function reverse(x:UInt):UInt
```



Reverse returns the value of x with its bits in reversed order.  

[\(view code\)](<./Bits.hx#L113>)


## function reverse16


```haxe
function reverse16(x:UInt):UInt
```



Reverse16 returns the value of x with its bits in reversed order.  

[\(view code\)](<./Bits.hx#L121>)


## function reverse32


```haxe
function reverse32(x:UInt):UInt
```



Reverse32 returns the value of x with its bits in reversed order.  

[\(view code\)](<./Bits.hx#L125>)


## function reverse64


```haxe
function reverse64(x:haxe.UInt64):haxe.UInt64
```



Reverse64 returns the value of x with its bits in reversed order.  

[\(view code\)](<./Bits.hx#L129>)


## function reverse8


```haxe
function reverse8(x:UInt):UInt
```



Reverse8 returns the value of x with its bits in reversed order.  

[\(view code\)](<./Bits.hx#L117>)


## function reverseBytes


```haxe
function reverseBytes(x:UInt):UInt
```



ReverseBytes returns the value of x with its bytes in reversed order.  


This function's execution time does not depend on the inputs.  

[\(view code\)](<./Bits.hx#L135>)


## function reverseBytes16


```haxe
function reverseBytes16(x:UInt):UInt
```



ReverseBytes16 returns the value of x with its bytes in reversed order.  


This function's execution time does not depend on the inputs.  

[\(view code\)](<./Bits.hx#L141>)


## function reverseBytes32


```haxe
function reverseBytes32(x:UInt):UInt
```



ReverseBytes32 returns the value of x with its bytes in reversed order.  


This function's execution time does not depend on the inputs.  

[\(view code\)](<./Bits.hx#L147>)


## function reverseBytes64


```haxe
function reverseBytes64(x:haxe.UInt64):haxe.UInt64
```



ReverseBytes64 returns the value of x with its bytes in reversed order.  


This function's execution time does not depend on the inputs.  

[\(view code\)](<./Bits.hx#L153>)


## function rotateLeft


```haxe
function rotateLeft(x:UInt, k:Int):UInt
```



RotateLeft returns the value of x rotated left by \(k mod UintSize\) bits.
To rotate x right by k bits, call RotateLeft\(x, \-k\).  


This function's execution time does not depend on the inputs.  

[\(view code\)](<./Bits.hx#L81>)


## function rotateLeft16


```haxe
function rotateLeft16(x:UInt, k:Int):UInt
```



RotateLeft16 returns the value of x rotated left by \(k mod 16\) bits.
To rotate x right by k bits, call RotateLeft16\(x, \-k\).  


This function's execution time does not depend on the inputs.  

[\(view code\)](<./Bits.hx#L95>)


## function rotateLeft32


```haxe
function rotateLeft32(x:UInt, k:Int):UInt
```



RotateLeft32 returns the value of x rotated left by \(k mod 32\) bits.
To rotate x right by k bits, call RotateLeft32\(x, \-k\).  


This function's execution time does not depend on the inputs.  

[\(view code\)](<./Bits.hx#L102>)


## function rotateLeft64


```haxe
function rotateLeft64(x:haxe.UInt64, k:Int):haxe.UInt64
```



RotateLeft64 returns the value of x rotated left by \(k mod 64\) bits.
To rotate x right by k bits, call RotateLeft64\(x, \-k\).  


This function's execution time does not depend on the inputs.  

[\(view code\)](<./Bits.hx#L109>)


## function rotateLeft8


```haxe
function rotateLeft8(x:UInt, k:Int):UInt
```



RotateLeft8 returns the value of x rotated left by \(k mod 8\) bits.
To rotate x right by k bits, call RotateLeft8\(x, \-k\).  


This function's execution time does not depend on the inputs.  

[\(view code\)](<./Bits.hx#L88>)


## function sub


```haxe
function sub(x:UInt, y:UInt, borrow:UInt):stdgo.Tuple<UInt, UInt>
```



Sub returns the difference of x, y and borrow: diff = x \- y \- borrow.
The borrow input must be 0 or 1; otherwise the behavior is undefined.
The borrowOut output is guaranteed to be 0 or 1.  


This function's execution time does not depend on the inputs.  

[\(view code\)](<./Bits.hx#L205>)


## function sub32


```haxe
function sub32(x:UInt, y:UInt, borrow:UInt):stdgo.Tuple<UInt, UInt>
```



Sub32 returns the difference of x, y and borrow, diff = x \- y \- borrow.
The borrow input must be 0 or 1; otherwise the behavior is undefined.
The borrowOut output is guaranteed to be 0 or 1.  


This function's execution time does not depend on the inputs.  

[\(view code\)](<./Bits.hx#L213>)


## function sub64


```haxe
function sub64(x:haxe.UInt64, y:haxe.UInt64, borrow:haxe.UInt64):stdgo.Tuple<haxe.UInt64, haxe.UInt64>
```



Sub64 returns the difference of x, y and borrow: diff = x \- y \- borrow.
The borrow input must be 0 or 1; otherwise the behavior is undefined.
The borrowOut output is guaranteed to be 0 or 1.  


This function's execution time does not depend on the inputs.  

[\(view code\)](<./Bits.hx#L221>)


## function trailingZeros


```haxe
function trailingZeros(x:UInt):Int
```



TrailingZeros returns the number of trailing zero bits in x; the result is UintSize for x == 0.  

[\(view code\)](<./Bits.hx#L38>)


## function trailingZeros16


```haxe
function trailingZeros16(x:UInt):Int
```



TrailingZeros16 returns the number of trailing zero bits in x; the result is 16 for x == 0.  

[\(view code\)](<./Bits.hx#L46>)


## function trailingZeros32


```haxe
function trailingZeros32(x:UInt):Int
```



TrailingZeros32 returns the number of trailing zero bits in x; the result is 32 for x == 0.  

[\(view code\)](<./Bits.hx#L50>)


## function trailingZeros64


```haxe
function trailingZeros64(x:haxe.UInt64):Int
```



TrailingZeros64 returns the number of trailing zero bits in x; the result is 64 for x == 0.  

[\(view code\)](<./Bits.hx#L54>)


## function trailingZeros8


```haxe
function trailingZeros8(x:UInt):Int
```



TrailingZeros8 returns the number of trailing zero bits in x; the result is 8 for x == 0.  

[\(view code\)](<./Bits.hx#L42>)


