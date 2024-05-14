# Module: `stdgo.internal.bytealg`

[(view library index)](../../stdgo.md)


# Overview


# Index


- [Constants](<#constants>)

- [Variables](<#variables>)

- [class Bytealg](<#class-bytealg>)

  - [`function compare(a:Array<Int>, b:Array<Int>):Int`](<#bytealg-function-compare>)

  - [`function count(b:Array<Int>, c:Int):Int`](<#bytealg-function-count>)

  - [`function countString(s:String, c:Int):Int`](<#bytealg-function-countstring>)

  - [`function cutover(n:Int):Int`](<#bytealg-function-cutover>)

  - [`function equal(a:Array<Int>, b:Array<Int>):Bool`](<#bytealg-function-equal>)

  - [`function hashStr(sep:String):stdgo.Tuple<UInt, UInt>`](<#bytealg-function-hashstr>)

  - [`function hashStrBytes(sep:Array<Int>):stdgo.Tuple<UInt, UInt>`](<#bytealg-function-hashstrbytes>)

  - [`function hashStrRev(sep:String):stdgo.Tuple<UInt, UInt>`](<#bytealg-function-hashstrrev>)

  - [`function hashStrRevBytes(sep:Array<Int>):stdgo.Tuple<UInt, UInt>`](<#bytealg-function-hashstrrevbytes>)

  - [`function index(a:Array<Int>, b:Array<Int>):Int`](<#bytealg-function-index>)

  - [`function indexByte(b:Array<Int>, c:Int):Int`](<#bytealg-function-indexbyte>)

  - [`function indexByteString(s:String, c:Int):Int`](<#bytealg-function-indexbytestring>)

  - [`function indexRabinKarp(s:String, substr:String):Int`](<#bytealg-function-indexrabinkarp>)

  - [`function indexRabinKarpBytes(s:Array<Int>, sep:Array<Int>):Int`](<#bytealg-function-indexrabinkarpbytes>)

  - [`function indexString(a:String, b:String):Int`](<#bytealg-function-indexstring>)

  - [`function makeNoZero(n:Int):Array<Int>`](<#bytealg-function-makenozero>)

# Constants


```haxe
import stdgo.internal.bytealg.Bytealg
```


```haxe
final maxBruteForce:haxe.UInt64 = stdgo._internal.internal.bytealg.Bytealg.maxBruteForce
```


```haxe
final primeRK:haxe.UInt64 = stdgo._internal.internal.bytealg.Bytealg.primeRK
```


# Variables


```haxe
import stdgo.internal.bytealg.Bytealg
```


```haxe
var maxLen:Int
```


# Classes


```haxe
import stdgo.internal.bytealg.*
```


## class Bytealg


### Bytealg function compare


```haxe
function compare(a:Array<Int>, b:Array<Int>):Int
```



go:noescape  

[\(view code\)](<./Bytealg.hx#L80>)


### Bytealg function count


```haxe
function count(b:Array<Int>, c:Int):Int
```


[\(view code\)](<./Bytealg.hx#L85>)


### Bytealg function countString


```haxe
function countString(s:String, c:Int):Int
```


[\(view code\)](<./Bytealg.hx#L89>)


### Bytealg function cutover


```haxe
function cutover(n:Int):Int
```


```
Cutover reports the number of failures of IndexByte we should tolerate
        before switching over to Index.
        n is the number of bytes processed so far.
        See the bytes.Index implementation for details.
```
[\(view code\)](<./Bytealg.hx#L128>)


### Bytealg function equal


```haxe
function equal(a:Array<Int>, b:Array<Int>):Bool
```


```
Equal reports whether a and b
        are the same length and contain the same bytes.
        A nil argument is equivalent to an empty slice.
```

Equal is equivalent to bytes.Equal.
It is provided here for convenience,
because some packages cannot depend on bytes.  

[\(view code\)](<./Bytealg.hx#L101>)


### Bytealg function hashStr


```haxe
function hashStr(sep:String):stdgo.Tuple<UInt, UInt>
```


```
HashStr returns the hash and the appropriate multiplicative
        factor for use in Rabin-Karp algorithm.
```
[\(view code\)](<./Bytealg.hx#L26>)


### Bytealg function hashStrBytes


```haxe
function hashStrBytes(sep:Array<Int>):stdgo.Tuple<UInt, UInt>
```


```
HashStrBytes returns the hash and the appropriate multiplicative
        factor for use in Rabin-Karp algorithm.
```
[\(view code\)](<./Bytealg.hx#L15>)


### Bytealg function hashStrRev


```haxe
function hashStrRev(sep:String):stdgo.Tuple<UInt, UInt>
```


```
HashStrRev returns the hash of the reverse of sep and the
        appropriate multiplicative factor for use in Rabin-Karp algorithm.
```
[\(view code\)](<./Bytealg.hx#L47>)


### Bytealg function hashStrRevBytes


```haxe
function hashStrRevBytes(sep:Array<Int>):stdgo.Tuple<UInt, UInt>
```


```
HashStrRevBytes returns the hash of the reverse of sep and the
        appropriate multiplicative factor for use in Rabin-Karp algorithm.
```
[\(view code\)](<./Bytealg.hx#L36>)


### Bytealg function index


```haxe
function index(a:Array<Int>, b:Array<Int>):Int
```


```
Index returns the index of the first instance of b in a, or -1 if b is not present in a.
        Requires 2 <= len(b) <= MaxLen.
```
[\(view code\)](<./Bytealg.hx#L110>)


### Bytealg function indexByte


```haxe
function indexByte(b:Array<Int>, c:Int):Int
```



go:noescape  

[\(view code\)](<./Bytealg.hx#L134>)


### Bytealg function indexByteString


```haxe
function indexByteString(s:String, c:Int):Int
```



go:noescape  

[\(view code\)](<./Bytealg.hx#L141>)


### Bytealg function indexRabinKarp


```haxe
function indexRabinKarp(s:String, substr:String):Int
```


```
IndexRabinKarp uses the Rabin-Karp search algorithm to return the index of the
        first occurrence of substr in s, or -1 if not present.
```
[\(view code\)](<./Bytealg.hx#L66>)


### Bytealg function indexRabinKarpBytes


```haxe
function indexRabinKarpBytes(s:Array<Int>, sep:Array<Int>):Int
```


```
IndexRabinKarpBytes uses the Rabin-Karp search algorithm to return the index of the
        first occurrence of substr in s, or -1 if not present.
```
[\(view code\)](<./Bytealg.hx#L57>)


### Bytealg function indexString


```haxe
function indexString(a:String, b:String):Int
```


```
IndexString returns the index of the first instance of b in a, or -1 if b is not present in a.
        Requires 2 <= len(b) <= MaxLen.
```
[\(view code\)](<./Bytealg.hx#L119>)


### Bytealg function makeNoZero


```haxe
function makeNoZero(n:Int):Array<Int>
```


```
MakeNoZero makes a slice of length and capacity n without zeroing the bytes.
        It is the caller's responsibility to ensure uninitialized bytes
        do not leak to the end user.
```
[\(view code\)](<./Bytealg.hx#L74>)


