# Module: `stdgo.internal.bytealg`

[(view library index)](../../stdgo.md)


# Overview


# Index


- [Constants](<#constants>)

- [Variables](<#variables>)

- [`function compare(a:Array<Int>, b:Array<Int>):Int`](<#function-compare>)

- [`function count(b:Array<Int>, c:Int):Int`](<#function-count>)

- [`function countString(s:String, c:Int):Int`](<#function-countstring>)

- [`function cutover(n:Int):Int`](<#function-cutover>)

- [`function equal(a:Array<Int>, b:Array<Int>):Bool`](<#function-equal>)

- [`function get_maxLen():Int`](<#function-get_maxlen>)

- [`function hashStr(sep:String):stdgo.Tuple<UInt, UInt>`](<#function-hashstr>)

- [`function hashStrBytes(sep:Array<Int>):stdgo.Tuple<UInt, UInt>`](<#function-hashstrbytes>)

- [`function hashStrRev(sep:String):stdgo.Tuple<UInt, UInt>`](<#function-hashstrrev>)

- [`function hashStrRevBytes(sep:Array<Int>):stdgo.Tuple<UInt, UInt>`](<#function-hashstrrevbytes>)

- [`function index(a:Array<Int>, b:Array<Int>):Int`](<#function-index>)

- [`function indexByte(b:Array<Int>, c:Int):Int`](<#function-indexbyte>)

- [`function indexByteString(s:String, c:Int):Int`](<#function-indexbytestring>)

- [`function indexRabinKarp(s:String, substr:String):Int`](<#function-indexrabinkarp>)

- [`function indexRabinKarpBytes(s:Array<Int>, sep:Array<Int>):Int`](<#function-indexrabinkarpbytes>)

- [`function indexString(a:String, b:String):Int`](<#function-indexstring>)

- [`function makeNoZero(n:Int):Array<Int>`](<#function-makenozero>)

- [`function set_maxLen(v:Int):Int`](<#function-set_maxlen>)

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


# Functions


```haxe
import stdgo.internal.bytealg.Bytealg
```


## function compare


```haxe
function compare(a:Array<Int>, b:Array<Int>):Int
```



go:noescape  

[\(view code\)](<./Bytealg.hx#L46>)


## function count


```haxe
function count(b:Array<Int>, c:Int):Int
```


[\(view code\)](<./Bytealg.hx#L47>)


## function countString


```haxe
function countString(s:String, c:Int):Int
```


[\(view code\)](<./Bytealg.hx#L48>)


## function cutover


```haxe
function cutover(n:Int):Int
```


```
Cutover reports the number of failures of IndexByte we should tolerate
    before switching over to Index.
    n is the number of bytes processed so far.
    See the bytes.Index implementation for details.
```
[\(view code\)](<./Bytealg.hx#L75>)


## function equal


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

[\(view code\)](<./Bytealg.hx#L58>)


## function get\_maxLen


```haxe
function get_maxLen():Int
```


[\(view code\)](<./Bytealg.hx#L3>)


## function hashStr


```haxe
function hashStr(sep:String):stdgo.Tuple<UInt, UInt>
```


```
HashStr returns the hash and the appropriate multiplicative
    factor for use in Rabin-Karp algorithm.
```
[\(view code\)](<./Bytealg.hx#L16>)


## function hashStrBytes


```haxe
function hashStrBytes(sep:Array<Int>):stdgo.Tuple<UInt, UInt>
```


```
HashStrBytes returns the hash and the appropriate multiplicative
    factor for use in Rabin-Karp algorithm.
```
[\(view code\)](<./Bytealg.hx#L11>)


## function hashStrRev


```haxe
function hashStrRev(sep:String):stdgo.Tuple<UInt, UInt>
```


```
HashStrRev returns the hash of the reverse of sep and the
    appropriate multiplicative factor for use in Rabin-Karp algorithm.
```
[\(view code\)](<./Bytealg.hx#L26>)


## function hashStrRevBytes


```haxe
function hashStrRevBytes(sep:Array<Int>):stdgo.Tuple<UInt, UInt>
```


```
HashStrRevBytes returns the hash of the reverse of sep and the
    appropriate multiplicative factor for use in Rabin-Karp algorithm.
```
[\(view code\)](<./Bytealg.hx#L21>)


## function index


```haxe
function index(a:Array<Int>, b:Array<Int>):Int
```


```
Index returns the index of the first instance of b in a, or -1 if b is not present in a.
    Requires 2 <= len(b) <= MaxLen.
```
[\(view code\)](<./Bytealg.hx#L63>)


## function indexByte


```haxe
function indexByte(b:Array<Int>, c:Int):Int
```



go:noescape  

[\(view code\)](<./Bytealg.hx#L79>)


## function indexByteString


```haxe
function indexByteString(s:String, c:Int):Int
```



go:noescape  

[\(view code\)](<./Bytealg.hx#L83>)


## function indexRabinKarp


```haxe
function indexRabinKarp(s:String, substr:String):Int
```


```
IndexRabinKarp uses the Rabin-Karp search algorithm to return the index of the
    first occurrence of substr in s, or -1 if not present.
```
[\(view code\)](<./Bytealg.hx#L36>)


## function indexRabinKarpBytes


```haxe
function indexRabinKarpBytes(s:Array<Int>, sep:Array<Int>):Int
```


```
IndexRabinKarpBytes uses the Rabin-Karp search algorithm to return the index of the
    first occurrence of substr in s, or -1 if not present.
```
[\(view code\)](<./Bytealg.hx#L31>)


## function indexString


```haxe
function indexString(a:String, b:String):Int
```


```
IndexString returns the index of the first instance of b in a, or -1 if b is not present in a.
    Requires 2 <= len(b) <= MaxLen.
```
[\(view code\)](<./Bytealg.hx#L68>)


## function makeNoZero


```haxe
function makeNoZero(n:Int):Array<Int>
```


```
MakeNoZero makes a slice of length and capacity n without zeroing the bytes.
    It is the caller's responsibility to ensure uninitialized bytes
    do not leak to the end user.
```
[\(view code\)](<./Bytealg.hx#L42>)


## function set\_maxLen


```haxe
function set_maxLen(v:Int):Int
```


[\(view code\)](<./Bytealg.hx#L4>)


