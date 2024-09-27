# Module: `stdgo.internal.bytealg`

[(view library index)](../../stdgo.md)


# Overview


# Index


- [Constants](<#constants>)

- [Variables](<#variables>)

- [class Bytealg](<#class-bytealg>)

  - [`function compare(_a:Array<UInt>, _b:Array<UInt>):Int`](<#bytealg-function-compare>)

  - [`function count(_b:Array<UInt>, _c:UInt):Int`](<#bytealg-function-count>)

  - [`function countString(_s:String, _c:UInt):Int`](<#bytealg-function-countstring>)

  - [`function cutover(_n:Int):Int`](<#bytealg-function-cutover>)

  - [`function equal(_a:Array<UInt>, _b:Array<UInt>):Bool`](<#bytealg-function-equal>)

  - [`function hashStr(_sep:String):stdgo.Tuple<UInt, UInt>`](<#bytealg-function-hashstr>)

  - [`function hashStrBytes(_sep:Array<UInt>):stdgo.Tuple<UInt, UInt>`](<#bytealg-function-hashstrbytes>)

  - [`function hashStrRev(_sep:String):stdgo.Tuple<UInt, UInt>`](<#bytealg-function-hashstrrev>)

  - [`function hashStrRevBytes(_sep:Array<UInt>):stdgo.Tuple<UInt, UInt>`](<#bytealg-function-hashstrrevbytes>)

  - [`function index(_a:Array<UInt>, _b:Array<UInt>):Int`](<#bytealg-function-index>)

  - [`function indexByte(_b:Array<UInt>, _c:UInt):Int`](<#bytealg-function-indexbyte>)

  - [`function indexByteString(_s:String, _c:UInt):Int`](<#bytealg-function-indexbytestring>)

  - [`function indexRabinKarp(_s:String, _substr:String):Int`](<#bytealg-function-indexrabinkarp>)

  - [`function indexRabinKarpBytes(_s:Array<UInt>, _sep:Array<UInt>):Int`](<#bytealg-function-indexrabinkarpbytes>)

  - [`function indexString(_a:String, _b:String):Int`](<#bytealg-function-indexstring>)

  - [`function makeNoZero(_n:Int):Array<UInt>`](<#bytealg-function-makenozero>)

# Constants


```haxe
import stdgo.internal.bytealg.Bytealg
```


```haxe
final maxBruteForce:haxe.UInt64 = stdgo._internal.internal.bytealg.Bytealg_maxBruteForce.maxBruteForce
```


```haxe
final primeRK:haxe.UInt64 = stdgo._internal.internal.bytealg.Bytealg_primeRK.primeRK
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
function compare(_a:Array<UInt>, _b:Array<UInt>):Int
```



go:noescape  

[\(view code\)](<./Bytealg.hx#L80>)


### Bytealg function count


```haxe
function count(_b:Array<UInt>, _c:UInt):Int
```


[\(view code\)](<./Bytealg.hx#L85>)


### Bytealg function countString


```haxe
function countString(_s:String, _c:UInt):Int
```


[\(view code\)](<./Bytealg.hx#L89>)


### Bytealg function cutover


```haxe
function cutover(_n:Int):Int
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
function equal(_a:Array<UInt>, _b:Array<UInt>):Bool
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
function hashStr(_sep:String):stdgo.Tuple<UInt, UInt>
```


```
HashStr returns the hash and the appropriate multiplicative
        factor for use in Rabin-Karp algorithm.
```
[\(view code\)](<./Bytealg.hx#L26>)


### Bytealg function hashStrBytes


```haxe
function hashStrBytes(_sep:Array<UInt>):stdgo.Tuple<UInt, UInt>
```


```
HashStrBytes returns the hash and the appropriate multiplicative
        factor for use in Rabin-Karp algorithm.
```
[\(view code\)](<./Bytealg.hx#L15>)


### Bytealg function hashStrRev


```haxe
function hashStrRev(_sep:String):stdgo.Tuple<UInt, UInt>
```


```
HashStrRev returns the hash of the reverse of sep and the
        appropriate multiplicative factor for use in Rabin-Karp algorithm.
```
[\(view code\)](<./Bytealg.hx#L47>)


### Bytealg function hashStrRevBytes


```haxe
function hashStrRevBytes(_sep:Array<UInt>):stdgo.Tuple<UInt, UInt>
```


```
HashStrRevBytes returns the hash of the reverse of sep and the
        appropriate multiplicative factor for use in Rabin-Karp algorithm.
```
[\(view code\)](<./Bytealg.hx#L36>)


### Bytealg function index


```haxe
function index(_a:Array<UInt>, _b:Array<UInt>):Int
```


```
Index returns the index of the first instance of b in a, or -1 if b is not present in a.
        Requires 2 <= len(b) <= MaxLen.
```
[\(view code\)](<./Bytealg.hx#L110>)


### Bytealg function indexByte


```haxe
function indexByte(_b:Array<UInt>, _c:UInt):Int
```



go:noescape  

[\(view code\)](<./Bytealg.hx#L134>)


### Bytealg function indexByteString


```haxe
function indexByteString(_s:String, _c:UInt):Int
```



go:noescape  

[\(view code\)](<./Bytealg.hx#L141>)


### Bytealg function indexRabinKarp


```haxe
function indexRabinKarp(_s:String, _substr:String):Int
```


```
IndexRabinKarp uses the Rabin-Karp search algorithm to return the index of the
        first occurrence of substr in s, or -1 if not present.
```
[\(view code\)](<./Bytealg.hx#L66>)


### Bytealg function indexRabinKarpBytes


```haxe
function indexRabinKarpBytes(_s:Array<UInt>, _sep:Array<UInt>):Int
```


```
IndexRabinKarpBytes uses the Rabin-Karp search algorithm to return the index of the
        first occurrence of substr in s, or -1 if not present.
```
[\(view code\)](<./Bytealg.hx#L57>)


### Bytealg function indexString


```haxe
function indexString(_a:String, _b:String):Int
```


```
IndexString returns the index of the first instance of b in a, or -1 if b is not present in a.
        Requires 2 <= len(b) <= MaxLen.
```
[\(view code\)](<./Bytealg.hx#L119>)


### Bytealg function makeNoZero


```haxe
function makeNoZero(_n:Int):Array<UInt>
```


```
MakeNoZero makes a slice of length and capacity n without zeroing the bytes.
        It is the caller's responsibility to ensure uninitialized bytes
        do not leak to the end user.
```
[\(view code\)](<./Bytealg.hx#L74>)


