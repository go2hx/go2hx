# Module: `stdgo.internal.bytealg`

[(view library index)](../../stdgo.md)


# Overview





# Index


- [Constants](<#constants>)

- [Variables](<#variables>)

- [`function compare(_a:stdgo.Slice<stdgo.GoByte>, _b:stdgo.Slice<stdgo.GoByte>):stdgo.GoInt`](<#function-compare>)

- [`function count(_b:stdgo.Slice<stdgo.GoByte>, _c:stdgo.GoByte):stdgo.GoInt`](<#function-count>)

- [`function countString(_s:stdgo.GoString, _c:stdgo.GoByte):stdgo.GoInt`](<#function-countstring>)

- [`function cutover(_n:stdgo.GoInt):stdgo.GoInt`](<#function-cutover>)

- [`function equal(_a:stdgo.Slice<stdgo.GoByte>, _b:stdgo.Slice<stdgo.GoByte>):Bool`](<#function-equal>)

- [`function hashStr(_sep:stdgo.GoString):{
	_1:stdgo.GoUInt32;
	_0:stdgo.GoUInt32;
}`](<#function-hashstr>)

- [`function hashStrBytes(_sep:stdgo.Slice<stdgo.GoByte>):{
	_1:stdgo.GoUInt32;
	_0:stdgo.GoUInt32;
}`](<#function-hashstrbytes>)

- [`function hashStrRev(_sep:stdgo.GoString):{
	_1:stdgo.GoUInt32;
	_0:stdgo.GoUInt32;
}`](<#function-hashstrrev>)

- [`function hashStrRevBytes(_sep:stdgo.Slice<stdgo.GoByte>):{
	_1:stdgo.GoUInt32;
	_0:stdgo.GoUInt32;
}`](<#function-hashstrrevbytes>)

- [`function index(_a:stdgo.Slice<stdgo.GoByte>, _b:stdgo.Slice<stdgo.GoByte>):stdgo.GoInt`](<#function-index>)

- [`function indexByte(_b:stdgo.Slice<stdgo.GoByte>, _c:stdgo.GoByte):stdgo.GoInt`](<#function-indexbyte>)

- [`function indexByteString(_s:stdgo.GoString, _c:stdgo.GoByte):stdgo.GoInt`](<#function-indexbytestring>)

- [`function indexRabinKarp(_s:stdgo.GoString, _substr:stdgo.GoString):stdgo.GoInt`](<#function-indexrabinkarp>)

- [`function indexRabinKarpBytes(_s:stdgo.Slice<stdgo.GoByte>, _sep:stdgo.Slice<stdgo.GoByte>):stdgo.GoInt`](<#function-indexrabinkarpbytes>)

- [`function indexString(_a:stdgo.GoString, _b:stdgo.GoString):stdgo.GoInt`](<#function-indexstring>)

# Constants


```haxe
import stdgo.internal.bytealg.Bytealg
```


```haxe
final maxBruteForce:stdgo.GoUInt64 = (("0" : GoUInt64))
```


```haxe
final primeRK:stdgo.GoUInt64 = (("16777619" : GoUInt64))
```


PrimeRK is the prime base used in Rabin\-Karp algorithm.  



# Variables


```haxe
import stdgo.internal.bytealg.Bytealg
```


```haxe
var maxLen:stdgo.GoInt
```


MaxLen is the maximum length of the string to be searched for \(argument b\) in Index.  
If MaxLen is not 0, make sure MaxLen \>= 4.  



# Functions


```haxe
import stdgo.internal.bytealg.Bytealg
```


## function compare


```haxe
function compare(_a:stdgo.Slice<stdgo.GoByte>, _b:stdgo.Slice<stdgo.GoByte>):stdgo.GoInt
```


go:noescape  



[\(view code\)](<./Bytealg.hx#L221>)


## function count


```haxe
function count(_b:stdgo.Slice<stdgo.GoByte>, _c:stdgo.GoByte):stdgo.GoInt
```





[\(view code\)](<./Bytealg.hx#L254>)


## function countString


```haxe
function countString(_s:stdgo.GoString, _c:stdgo.GoByte):stdgo.GoInt
```





[\(view code\)](<./Bytealg.hx#L263>)


## function cutover


```haxe
function cutover(_n:stdgo.GoInt):stdgo.GoInt
```


Cutover reports the number of failures of IndexByte we should tolerate  
before switching over to Index.  
n is the number of bytes processed so far.  
See the bytes.Index implementation for details.  



[\(view code\)](<./Bytealg.hx#L315>)


## function equal


```haxe
function equal(_a:stdgo.Slice<stdgo.GoByte>, _b:stdgo.Slice<stdgo.GoByte>):Bool
```


Equal reports whether a and b  
are the same length and contain the same bytes.  
A nil argument is equivalent to an empty slice.  



Equal is equivalent to bytes.Equal.  
It is provided here for convenience,  
because some packages cannot depend on bytes.  



[\(view code\)](<./Bytealg.hx#L284>)


## function hashStr


```haxe
function hashStr(_sep:stdgo.GoString):{
	_1:stdgo.GoUInt32;
	_0:stdgo.GoUInt32;
}
```


HashStr returns the hash and the appropriate multiplicative  
factor for use in Rabin\-Karp algorithm.  



[\(view code\)](<./Bytealg.hx#L88>)


## function hashStrBytes


```haxe
function hashStrBytes(_sep:stdgo.Slice<stdgo.GoByte>):{
	_1:stdgo.GoUInt32;
	_0:stdgo.GoUInt32;
}
```


HashStrBytes returns the hash and the appropriate multiplicative  
factor for use in Rabin\-Karp algorithm.  



[\(view code\)](<./Bytealg.hx#L64>)


## function hashStrRev


```haxe
function hashStrRev(_sep:stdgo.GoString):{
	_1:stdgo.GoUInt32;
	_0:stdgo.GoUInt32;
}
```


HashStrRev returns the hash of the reverse of sep and the  
appropriate multiplicative factor for use in Rabin\-Karp algorithm.  



[\(view code\)](<./Bytealg.hx#L136>)


## function hashStrRevBytes


```haxe
function hashStrRevBytes(_sep:stdgo.Slice<stdgo.GoByte>):{
	_1:stdgo.GoUInt32;
	_0:stdgo.GoUInt32;
}
```


HashStrRevBytes returns the hash of the reverse of sep and the  
appropriate multiplicative factor for use in Rabin\-Karp algorithm.  



[\(view code\)](<./Bytealg.hx#L112>)


## function index


```haxe
function index(_a:stdgo.Slice<stdgo.GoByte>, _b:stdgo.Slice<stdgo.GoByte>):stdgo.GoInt
```


Index returns the index of the first instance of b in a, or \-1 if b is not present in a.  
Requires 2 \<= len\(b\) \<= MaxLen.  



[\(view code\)](<./Bytealg.hx#L299>)


## function indexByte


```haxe
function indexByte(_b:stdgo.Slice<stdgo.GoByte>, _c:stdgo.GoByte):stdgo.GoInt
```


go:noescape  



[\(view code\)](<./Bytealg.hx#L321>)


## function indexByteString


```haxe
function indexByteString(_s:stdgo.GoString, _c:stdgo.GoByte):stdgo.GoInt
```


go:noescape  



[\(view code\)](<./Bytealg.hx#L330>)


## function indexRabinKarp


```haxe
function indexRabinKarp(_s:stdgo.GoString, _substr:stdgo.GoString):stdgo.GoInt
```


IndexRabinKarp uses the Rabin\-Karp search algorithm to return the index of the  
first occurrence of substr in s, or \-1 if not present.  



[\(view code\)](<./Bytealg.hx#L191>)


## function indexRabinKarpBytes


```haxe
function indexRabinKarpBytes(_s:stdgo.Slice<stdgo.GoByte>, _sep:stdgo.Slice<stdgo.GoByte>):stdgo.GoInt
```


IndexRabinKarpBytes uses the Rabin\-Karp search algorithm to return the index of the  
first occurrence of substr in s, or \-1 if not present.  



[\(view code\)](<./Bytealg.hx#L160>)


## function indexString


```haxe
function indexString(_a:stdgo.GoString, _b:stdgo.GoString):stdgo.GoInt
```


IndexString returns the index of the first instance of b in a, or \-1 if b is not present in a.  
Requires 2 \<= len\(b\) \<= MaxLen.  



[\(view code\)](<./Bytealg.hx#L306>)


