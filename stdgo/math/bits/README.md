# Module: `stdgo.math.bits`

[(view library index)](../../stdgo.md)


# Overview


stdgo/_internal/internal/Macro.macro.hx:43: non hxb types:,363

# Index


- [Variables](<#variables>)

- [`function add(_x:stdgo.GoUInt, _y:stdgo.GoUInt, _carry:stdgo.GoUInt):Void`](<#function-add>)

- [`function add32(_x:stdgo.GoUInt32, _y:stdgo.GoUInt32, _carry:stdgo.GoUInt32):Void`](<#function-add32>)

- [`function add64(_x:stdgo.GoUInt64, _y:stdgo.GoUInt64, _carry:stdgo.GoUInt64):Void`](<#function-add64>)

- [`function div(_hi:stdgo.GoUInt, _lo:stdgo.GoUInt, _y:stdgo.GoUInt):Void`](<#function-div>)

- [`function div32(_hi:stdgo.GoUInt32, _lo:stdgo.GoUInt32, _y:stdgo.GoUInt32):Void`](<#function-div32>)

- [`function div64(_hi:stdgo.GoUInt64, _lo:stdgo.GoUInt64, _y:stdgo.GoUInt64):Void`](<#function-div64>)

- [`function leadingZeros(_x:stdgo.GoUInt):Void`](<#function-leadingzeros>)

- [`function leadingZeros16(_x:stdgo.GoUInt16):Void`](<#function-leadingzeros16>)

- [`function leadingZeros32(_x:stdgo.GoUInt32):Void`](<#function-leadingzeros32>)

- [`function leadingZeros64(_x:stdgo.GoUInt64):Void`](<#function-leadingzeros64>)

- [`function leadingZeros8(_x:stdgo.GoUInt8):Void`](<#function-leadingzeros8>)

- [`function len(_x:stdgo.GoUInt):Void`](<#function-len>)

- [`function len16(_x:stdgo.GoUInt16):Void`](<#function-len16>)

- [`function len32(_x:stdgo.GoUInt32):Void`](<#function-len32>)

- [`function len64(_x:stdgo.GoUInt64):Void`](<#function-len64>)

- [`function len8(_x:stdgo.GoUInt8):Void`](<#function-len8>)

- [`function mul(_x:stdgo.GoUInt, _y:stdgo.GoUInt):Void`](<#function-mul>)

- [`function mul32(_x:stdgo.GoUInt32, _y:stdgo.GoUInt32):Void`](<#function-mul32>)

- [`function mul64(_x:stdgo.GoUInt64, _y:stdgo.GoUInt64):Void`](<#function-mul64>)

- [`function onesCount(_x:stdgo.GoUInt):Void`](<#function-onescount>)

- [`function onesCount16(_x:stdgo.GoUInt16):Void`](<#function-onescount16>)

- [`function onesCount32(_x:stdgo.GoUInt32):Void`](<#function-onescount32>)

- [`function onesCount64(_x:stdgo.GoUInt64):Void`](<#function-onescount64>)

- [`function onesCount8(_x:stdgo.GoUInt8):Void`](<#function-onescount8>)

- [`function rem(_hi:stdgo.GoUInt, _lo:stdgo.GoUInt, _y:stdgo.GoUInt):Void`](<#function-rem>)

- [`function rem32(_hi:stdgo.GoUInt32, _lo:stdgo.GoUInt32, _y:stdgo.GoUInt32):Void`](<#function-rem32>)

- [`function rem64(_hi:stdgo.GoUInt64, _lo:stdgo.GoUInt64, _y:stdgo.GoUInt64):Void`](<#function-rem64>)

- [`function reverse(_x:stdgo.GoUInt):Void`](<#function-reverse>)

- [`function reverse16(_x:stdgo.GoUInt16):Void`](<#function-reverse16>)

- [`function reverse32(_x:stdgo.GoUInt32):Void`](<#function-reverse32>)

- [`function reverse64(_x:stdgo.GoUInt64):Void`](<#function-reverse64>)

- [`function reverse8(_x:stdgo.GoUInt8):Void`](<#function-reverse8>)

- [`function reverseBytes(_x:stdgo.GoUInt):Void`](<#function-reversebytes>)

- [`function reverseBytes16(_x:stdgo.GoUInt16):Void`](<#function-reversebytes16>)

- [`function reverseBytes32(_x:stdgo.GoUInt32):Void`](<#function-reversebytes32>)

- [`function reverseBytes64(_x:stdgo.GoUInt64):Void`](<#function-reversebytes64>)

- [`function rotateLeft(_x:stdgo.GoUInt, _k:stdgo.GoInt):Void`](<#function-rotateleft>)

- [`function rotateLeft16(_x:stdgo.GoUInt16, _k:stdgo.GoInt):Void`](<#function-rotateleft16>)

- [`function rotateLeft32(_x:stdgo.GoUInt32, _k:stdgo.GoInt):Void`](<#function-rotateleft32>)

- [`function rotateLeft64(_x:stdgo.GoUInt64, _k:stdgo.GoInt):Void`](<#function-rotateleft64>)

- [`function rotateLeft8(_x:stdgo.GoUInt8, _k:stdgo.GoInt):Void`](<#function-rotateleft8>)

- [`function sub(_x:stdgo.GoUInt, _y:stdgo.GoUInt, _borrow:stdgo.GoUInt):Void`](<#function-sub>)

- [`function sub32(_x:stdgo.GoUInt32, _y:stdgo.GoUInt32, _borrow:stdgo.GoUInt32):Void`](<#function-sub32>)

- [`function sub64(_x:stdgo.GoUInt64, _y:stdgo.GoUInt64, _borrow:stdgo.GoUInt64):Void`](<#function-sub64>)

- [`function trailingZeros(_x:stdgo.GoUInt):Void`](<#function-trailingzeros>)

- [`function trailingZeros16(_x:stdgo.GoUInt16):Void`](<#function-trailingzeros16>)

- [`function trailingZeros32(_x:stdgo.GoUInt32):Void`](<#function-trailingzeros32>)

- [`function trailingZeros64(_x:stdgo.GoUInt64):Void`](<#function-trailingzeros64>)

- [`function trailingZeros8(_x:stdgo.GoUInt8):Void`](<#function-trailingzeros8>)

# Variables


```haxe
import stdgo.math.bits.Bits
```


```haxe
var __go2hxdoc__package:Dynamic
```


```haxe
var _deBruijn32:Dynamic
```


```haxe
var _deBruijn32tab:Dynamic
```


```haxe
var _deBruijn64:Dynamic
```


```haxe
var _deBruijn64tab:Dynamic
```


```haxe
var _divideError:Dynamic
```


```haxe
var _len8tab:Dynamic
```


```haxe
var _m0:Dynamic
```


```haxe
var _m1:Dynamic
```


```haxe
var _m2:Dynamic
```


```haxe
var _m3:Dynamic
```


```haxe
var _m4:Dynamic
```


```haxe
var _ntz8tab:Dynamic
```


```haxe
var _overflowError:Dynamic
```


```haxe
var _pop8tab:Dynamic
```


```haxe
var _rev8tab:Dynamic
```


```haxe
var _uintSize:Dynamic
```


```haxe
var deBruijn64:Dynamic
```


```haxe
var uintSize:Dynamic
```


# Functions


```haxe
import stdgo.math.bits.Bits
```


## function add


```haxe
function add(_x:stdgo.GoUInt, _y:stdgo.GoUInt, _carry:stdgo.GoUInt):Void
```


[\(view code\)](<./Bits.hx#L55>)


## function add32


```haxe
function add32(_x:stdgo.GoUInt32, _y:stdgo.GoUInt32, _carry:stdgo.GoUInt32):Void
```


[\(view code\)](<./Bits.hx#L56>)


## function add64


```haxe
function add64(_x:stdgo.GoUInt64, _y:stdgo.GoUInt64, _carry:stdgo.GoUInt64):Void
```


[\(view code\)](<./Bits.hx#L57>)


## function div


```haxe
function div(_hi:stdgo.GoUInt, _lo:stdgo.GoUInt, _y:stdgo.GoUInt):Void
```


[\(view code\)](<./Bits.hx#L64>)


## function div32


```haxe
function div32(_hi:stdgo.GoUInt32, _lo:stdgo.GoUInt32, _y:stdgo.GoUInt32):Void
```


[\(view code\)](<./Bits.hx#L65>)


## function div64


```haxe
function div64(_hi:stdgo.GoUInt64, _lo:stdgo.GoUInt64, _y:stdgo.GoUInt64):Void
```


[\(view code\)](<./Bits.hx#L66>)


## function leadingZeros


```haxe
function leadingZeros(_x:stdgo.GoUInt):Void
```


[\(view code\)](<./Bits.hx#L21>)


## function leadingZeros16


```haxe
function leadingZeros16(_x:stdgo.GoUInt16):Void
```


[\(view code\)](<./Bits.hx#L23>)


## function leadingZeros32


```haxe
function leadingZeros32(_x:stdgo.GoUInt32):Void
```


[\(view code\)](<./Bits.hx#L24>)


## function leadingZeros64


```haxe
function leadingZeros64(_x:stdgo.GoUInt64):Void
```


[\(view code\)](<./Bits.hx#L25>)


## function leadingZeros8


```haxe
function leadingZeros8(_x:stdgo.GoUInt8):Void
```


[\(view code\)](<./Bits.hx#L22>)


## function len


```haxe
function len(_x:stdgo.GoUInt):Void
```


[\(view code\)](<./Bits.hx#L50>)


## function len16


```haxe
function len16(_x:stdgo.GoUInt16):Void
```


[\(view code\)](<./Bits.hx#L52>)


## function len32


```haxe
function len32(_x:stdgo.GoUInt32):Void
```


[\(view code\)](<./Bits.hx#L53>)


## function len64


```haxe
function len64(_x:stdgo.GoUInt64):Void
```


[\(view code\)](<./Bits.hx#L54>)


## function len8


```haxe
function len8(_x:stdgo.GoUInt8):Void
```


[\(view code\)](<./Bits.hx#L51>)


## function mul


```haxe
function mul(_x:stdgo.GoUInt, _y:stdgo.GoUInt):Void
```


[\(view code\)](<./Bits.hx#L61>)


## function mul32


```haxe
function mul32(_x:stdgo.GoUInt32, _y:stdgo.GoUInt32):Void
```


[\(view code\)](<./Bits.hx#L62>)


## function mul64


```haxe
function mul64(_x:stdgo.GoUInt64, _y:stdgo.GoUInt64):Void
```


[\(view code\)](<./Bits.hx#L63>)


## function onesCount


```haxe
function onesCount(_x:stdgo.GoUInt):Void
```


[\(view code\)](<./Bits.hx#L31>)


## function onesCount16


```haxe
function onesCount16(_x:stdgo.GoUInt16):Void
```


[\(view code\)](<./Bits.hx#L33>)


## function onesCount32


```haxe
function onesCount32(_x:stdgo.GoUInt32):Void
```


[\(view code\)](<./Bits.hx#L34>)


## function onesCount64


```haxe
function onesCount64(_x:stdgo.GoUInt64):Void
```


[\(view code\)](<./Bits.hx#L35>)


## function onesCount8


```haxe
function onesCount8(_x:stdgo.GoUInt8):Void
```


[\(view code\)](<./Bits.hx#L32>)


## function rem


```haxe
function rem(_hi:stdgo.GoUInt, _lo:stdgo.GoUInt, _y:stdgo.GoUInt):Void
```


[\(view code\)](<./Bits.hx#L67>)


## function rem32


```haxe
function rem32(_hi:stdgo.GoUInt32, _lo:stdgo.GoUInt32, _y:stdgo.GoUInt32):Void
```


[\(view code\)](<./Bits.hx#L68>)


## function rem64


```haxe
function rem64(_hi:stdgo.GoUInt64, _lo:stdgo.GoUInt64, _y:stdgo.GoUInt64):Void
```


[\(view code\)](<./Bits.hx#L69>)


## function reverse


```haxe
function reverse(_x:stdgo.GoUInt):Void
```


[\(view code\)](<./Bits.hx#L41>)


## function reverse16


```haxe
function reverse16(_x:stdgo.GoUInt16):Void
```


[\(view code\)](<./Bits.hx#L43>)


## function reverse32


```haxe
function reverse32(_x:stdgo.GoUInt32):Void
```


[\(view code\)](<./Bits.hx#L44>)


## function reverse64


```haxe
function reverse64(_x:stdgo.GoUInt64):Void
```


[\(view code\)](<./Bits.hx#L45>)


## function reverse8


```haxe
function reverse8(_x:stdgo.GoUInt8):Void
```


[\(view code\)](<./Bits.hx#L42>)


## function reverseBytes


```haxe
function reverseBytes(_x:stdgo.GoUInt):Void
```


[\(view code\)](<./Bits.hx#L46>)


## function reverseBytes16


```haxe
function reverseBytes16(_x:stdgo.GoUInt16):Void
```


[\(view code\)](<./Bits.hx#L47>)


## function reverseBytes32


```haxe
function reverseBytes32(_x:stdgo.GoUInt32):Void
```


[\(view code\)](<./Bits.hx#L48>)


## function reverseBytes64


```haxe
function reverseBytes64(_x:stdgo.GoUInt64):Void
```


[\(view code\)](<./Bits.hx#L49>)


## function rotateLeft


```haxe
function rotateLeft(_x:stdgo.GoUInt, _k:stdgo.GoInt):Void
```


[\(view code\)](<./Bits.hx#L36>)


## function rotateLeft16


```haxe
function rotateLeft16(_x:stdgo.GoUInt16, _k:stdgo.GoInt):Void
```


[\(view code\)](<./Bits.hx#L38>)


## function rotateLeft32


```haxe
function rotateLeft32(_x:stdgo.GoUInt32, _k:stdgo.GoInt):Void
```


[\(view code\)](<./Bits.hx#L39>)


## function rotateLeft64


```haxe
function rotateLeft64(_x:stdgo.GoUInt64, _k:stdgo.GoInt):Void
```


[\(view code\)](<./Bits.hx#L40>)


## function rotateLeft8


```haxe
function rotateLeft8(_x:stdgo.GoUInt8, _k:stdgo.GoInt):Void
```


[\(view code\)](<./Bits.hx#L37>)


## function sub


```haxe
function sub(_x:stdgo.GoUInt, _y:stdgo.GoUInt, _borrow:stdgo.GoUInt):Void
```


[\(view code\)](<./Bits.hx#L58>)


## function sub32


```haxe
function sub32(_x:stdgo.GoUInt32, _y:stdgo.GoUInt32, _borrow:stdgo.GoUInt32):Void
```


[\(view code\)](<./Bits.hx#L59>)


## function sub64


```haxe
function sub64(_x:stdgo.GoUInt64, _y:stdgo.GoUInt64, _borrow:stdgo.GoUInt64):Void
```


[\(view code\)](<./Bits.hx#L60>)


## function trailingZeros


```haxe
function trailingZeros(_x:stdgo.GoUInt):Void
```


[\(view code\)](<./Bits.hx#L26>)


## function trailingZeros16


```haxe
function trailingZeros16(_x:stdgo.GoUInt16):Void
```


[\(view code\)](<./Bits.hx#L28>)


## function trailingZeros32


```haxe
function trailingZeros32(_x:stdgo.GoUInt32):Void
```


[\(view code\)](<./Bits.hx#L29>)


## function trailingZeros64


```haxe
function trailingZeros64(_x:stdgo.GoUInt64):Void
```


[\(view code\)](<./Bits.hx#L30>)


## function trailingZeros8


```haxe
function trailingZeros8(_x:stdgo.GoUInt8):Void
```


[\(view code\)](<./Bits.hx#L27>)


