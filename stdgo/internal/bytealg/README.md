# Module: `stdgo.internal.bytealg`

[(view library index)](../../stdgo.md)


# Overview


# Index


- [Constants](<#constants>)

- [Variables](<#variables>)

- [`function _abigen_runtime_cmpstring(_a:stdgo.GoString, _b:stdgo.GoString):stdgo.GoInt`](<#function-_abigen_runtime_cmpstring>)

- [`function _abigen_runtime_memequal(_a:stdgo.unsafe.UnsafePointer, _b:stdgo.unsafe.UnsafePointer, _size:stdgo.GoUIntptr):Bool`](<#function-_abigen_runtime_memequal>)

- [`function _abigen_runtime_memequal_varlen(_a:stdgo.unsafe.UnsafePointer, _b:stdgo.unsafe.UnsafePointer):Bool`](<#function-_abigen_runtime_memequal_varlen>)

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

- [`function makeNoZero(_n:stdgo.GoInt):stdgo.Slice<stdgo.GoByte>`](<#function-makenozero>)

# Constants


```haxe
import stdgo.internal.bytealg.Bytealg
```


```haxe
final _offsetPPC64HasPOWER9:stdgo.GoUIntptr = stdgo.unsafe.Unsafe.offsetof_(stdgo.Go.toInterface(stdgo.internal.cpu.Cpu.ppc64.isPOWER9))
```



Offsets into internal/cpu records for use in assembly.  

```haxe
final _offsetS390xHasVX:stdgo.GoUIntptr = stdgo.unsafe.Unsafe.offsetof_(stdgo.Go.toInterface(stdgo.internal.cpu.Cpu.s390x.hasVX))
```



Offsets into internal/cpu records for use in assembly.  

```haxe
final _offsetX86HasAVX2:stdgo.GoUIntptr = stdgo.unsafe.Unsafe.offsetof_(stdgo.Go.toInterface(stdgo.internal.cpu.Cpu.x86.hasAVX2))
```



Offsets into internal/cpu records for use in assembly.  

```haxe
final _offsetX86HasPOPCNT:stdgo.GoUIntptr = stdgo.unsafe.Unsafe.offsetof_(stdgo.Go.toInterface(stdgo.internal.cpu.Cpu.x86.hasPOPCNT))
```



Offsets into internal/cpu records for use in assembly.  

```haxe
final _offsetX86HasSSE42:stdgo.GoUIntptr = stdgo.unsafe.Unsafe.offsetof_(stdgo.Go.toInterface(stdgo.internal.cpu.Cpu.x86.hasSSE42))
```



Offsets into internal/cpu records for use in assembly.  

```haxe
final maxBruteForce:stdgo.GoUInt64 = ((0i64 : stdgo.GoUInt64))
```


```haxe
final primeRK:stdgo.GoUInt64 = ((16777619i64 : stdgo.GoUInt64))
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


## function \_abigen\_runtime\_cmpstring


```haxe
function _abigen_runtime_cmpstring(_a:stdgo.GoString, _b:stdgo.GoString):stdgo.GoInt
```



go:linkname abigen\_runtime\_cmpstring runtime.cmpstring  

[\(view code\)](<./Bytealg.hx#L242>)


## function \_abigen\_runtime\_memequal


```haxe
function _abigen_runtime_memequal(_a:stdgo.unsafe.UnsafePointer, _b:stdgo.unsafe.UnsafePointer, _size:stdgo.GoUIntptr):Bool
```



go:linkname abigen\_runtime\_memequal runtime.memequal  

[\(view code\)](<./Bytealg.hx#L275>)


## function \_abigen\_runtime\_memequal\_varlen


```haxe
function _abigen_runtime_memequal_varlen(_a:stdgo.unsafe.UnsafePointer, _b:stdgo.unsafe.UnsafePointer):Bool
```



go:linkname abigen\_runtime\_memequal\_varlen runtime.memequal\_varlen  

[\(view code\)](<./Bytealg.hx#L282>)


## function compare


```haxe
function compare(_a:stdgo.Slice<stdgo.GoByte>, _b:stdgo.Slice<stdgo.GoByte>):stdgo.GoInt
```



go:noescape  

[\(view code\)](<./Bytealg.hx#L222>)


## function count


```haxe
function count(_b:stdgo.Slice<stdgo.GoByte>, _c:stdgo.GoByte):stdgo.GoInt
```


[\(view code\)](<./Bytealg.hx#L246>)


## function countString


```haxe
function countString(_s:stdgo.GoString, _c:stdgo.GoByte):stdgo.GoInt
```


[\(view code\)](<./Bytealg.hx#L253>)


## function cutover


```haxe
function cutover(_n:stdgo.GoInt):stdgo.GoInt
```



Cutover reports the number of failures of IndexByte we should tolerate
before switching over to Index.
n is the number of bytes processed so far.
See the bytes.Index implementation for details.  

[\(view code\)](<./Bytealg.hx#L339>)


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

[\(view code\)](<./Bytealg.hx#L269>)


## function hashStr


```haxe
function hashStr(_sep:stdgo.GoString):{
	_1:stdgo.GoUInt32;
	_0:stdgo.GoUInt32;
}
```



HashStr returns the hash and the appropriate multiplicative
factor for use in Rabin\-Karp algorithm.  

[\(view code\)](<./Bytealg.hx#L80>)


## function hashStrBytes


```haxe
function hashStrBytes(_sep:stdgo.Slice<stdgo.GoByte>):{
	_1:stdgo.GoUInt32;
	_0:stdgo.GoUInt32;
}
```



HashStrBytes returns the hash and the appropriate multiplicative
factor for use in Rabin\-Karp algorithm.  

[\(view code\)](<./Bytealg.hx#L56>)


## function hashStrRev


```haxe
function hashStrRev(_sep:stdgo.GoString):{
	_1:stdgo.GoUInt32;
	_0:stdgo.GoUInt32;
}
```



HashStrRev returns the hash of the reverse of sep and the
appropriate multiplicative factor for use in Rabin\-Karp algorithm.  

[\(view code\)](<./Bytealg.hx#L128>)


## function hashStrRevBytes


```haxe
function hashStrRevBytes(_sep:stdgo.Slice<stdgo.GoByte>):{
	_1:stdgo.GoUInt32;
	_0:stdgo.GoUInt32;
}
```



HashStrRevBytes returns the hash of the reverse of sep and the
appropriate multiplicative factor for use in Rabin\-Karp algorithm.  

[\(view code\)](<./Bytealg.hx#L104>)


## function index


```haxe
function index(_a:stdgo.Slice<stdgo.GoByte>, _b:stdgo.Slice<stdgo.GoByte>):stdgo.GoInt
```



Index returns the index of the first instance of b in a, or \-1 if b is not present in a.
Requires 2 \<= len\(b\) \<= MaxLen.  

[\(view code\)](<./Bytealg.hx#L290>)


## function indexByte


```haxe
function indexByte(_b:stdgo.Slice<stdgo.GoByte>, _c:stdgo.GoByte):stdgo.GoInt
```



go:noescape  

[\(view code\)](<./Bytealg.hx#L345>)


## function indexByteString


```haxe
function indexByteString(_s:stdgo.GoString, _c:stdgo.GoByte):stdgo.GoInt
```



go:noescape  

[\(view code\)](<./Bytealg.hx#L354>)


## function indexRabinKarp


```haxe
function indexRabinKarp(_s:stdgo.GoString, _substr:stdgo.GoString):stdgo.GoInt
```



IndexRabinKarp uses the Rabin\-Karp search algorithm to return the index of the
first occurrence of substr in s, or \-1 if not present.  

[\(view code\)](<./Bytealg.hx#L183>)


## function indexRabinKarpBytes


```haxe
function indexRabinKarpBytes(_s:stdgo.Slice<stdgo.GoByte>, _sep:stdgo.Slice<stdgo.GoByte>):stdgo.GoInt
```



IndexRabinKarpBytes uses the Rabin\-Karp search algorithm to return the index of the
first occurrence of substr in s, or \-1 if not present.  

[\(view code\)](<./Bytealg.hx#L152>)


## function indexString


```haxe
function indexString(_a:stdgo.GoString, _b:stdgo.GoString):stdgo.GoInt
```



IndexString returns the index of the first instance of b in a, or \-1 if b is not present in a.
Requires 2 \<= len\(b\) \<= MaxLen.  

[\(view code\)](<./Bytealg.hx#L310>)


## function makeNoZero


```haxe
function makeNoZero(_n:stdgo.GoInt):stdgo.Slice<stdgo.GoByte>
```



MakeNoZero makes a slice of length and capacity n without zeroing the bytes.
It is the caller's responsibility to ensure uninitialized bytes
do not leak to the end user.  

[\(view code\)](<./Bytealg.hx#L215>)


