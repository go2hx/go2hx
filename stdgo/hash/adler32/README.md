# Module: `stdgo.hash.adler32`

[(view library index)](../../stdgo.md)


# Overview



Package adler32 implements the Adler\-32 checksum.  


It is defined in RFC 1950:  

```
	Adler-32 is composed of two sums accumulated per byte: s1 is
	the sum of all bytes, s2 is the sum of all s1 values. Both sums
	are done modulo 65521. s1 is initialized to 1, s2 to zero.  The
	Adler-32 checksum is stored as s2*65536 + s1 in most-
	significant-byte first (network) order.
```
stdgo/internal/Macro.macro.hx:38: TypeInfoData_go2hx_null

# Index


- [Constants](<#constants>)

- [Variables](<#variables>)

- [`function _appendUint32(_b:stdgo.Slice<stdgo.GoByte>, _x:stdgo.GoUInt32):stdgo.Slice<stdgo.GoByte>`](<#function-_appenduint32>)

- [`function _checksum(_p:stdgo.Slice<stdgo.GoByte>):stdgo.GoUInt32`](<#function-_checksum>)

- [`function _readUint32(_b:stdgo.Slice<stdgo.GoByte>):stdgo.GoUInt32`](<#function-_readuint32>)

- [`function _update(_d:stdgo.hash.adler32.T_digest, _p:stdgo.Slice<stdgo.GoByte>):stdgo.hash.adler32.T_digest`](<#function-_update>)

- [`function benchmarkAdler32KB(_b:stdgo.Ref<stdgo.testing.B>):Void`](<#function-benchmarkadler32kb>)

- [`function checksum(_data:stdgo.Slice<stdgo.GoByte>):stdgo.GoUInt32`](<#function-checksum>)

- [`function new_():stdgo.hash.Hash32`](<#function-new_>)

- [`function testGolden(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testgolden>)

- [`function testGoldenMarshal(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testgoldenmarshal>)

- [typedef T\_\_struct\_0](<#typedef-t__struct_0>)

- [typedef T\_digest](<#typedef-t_digest>)

# Constants


```haxe
import stdgo.hash.adler32.Adler32
```


```haxe
final _magic:stdgo.GoString = stdgo.Go.str("adl", 1)
```


```haxe
final _marshaledSize:stdgo.GoInt = ((8 : stdgo.GoInt))
```


```haxe
final _mod:stdgo.GoUInt64 = ((65521i64 : stdgo.GoUInt64))
```



mod is the largest prime that is less than 65536.  

```haxe
final _nmax:stdgo.GoUInt64 = ((5552i64 : stdgo.GoUInt64))
```



nmax is the largest n such that
255 \* n \* \(n\+1\) / 2 \+ \(n\+1\) \* \(mod\-1\) \<= 2^32\-1.
It is mentioned in RFC 1950 \(search for "5552"\).  

```haxe
final size:stdgo.GoUInt64 = ((4i64 : stdgo.GoUInt64))
```



The size of an Adler\-32 checksum in bytes.  

# Variables


```haxe
import stdgo.hash.adler32.Adler32
```


```haxe
var _golden:stdgo.Slice<stdgo.hash.adler32.T__struct_0>
```


# Functions


```haxe
import stdgo.hash.adler32.Adler32
```


## function \_appendUint32


```haxe
function _appendUint32(_b:stdgo.Slice<stdgo.GoByte>, _x:stdgo.GoUInt32):stdgo.Slice<stdgo.GoByte>
```


[\(view code\)](<./Adler32.hx#L131>)


## function \_checksum


```haxe
function _checksum(_p:stdgo.Slice<stdgo.GoByte>):stdgo.GoUInt32
```



checksum is a slow but simple implementation of the Adler\-32 checksum.
It is a straight port of the sample code in RFC 1950 section 9.  

[\(view code\)](<./Adler32.hx#L185>)


## function \_readUint32


```haxe
function _readUint32(_b:stdgo.Slice<stdgo.GoByte>):stdgo.GoUInt32
```


[\(view code\)](<./Adler32.hx#L135>)


## function \_update


```haxe
function _update(_d:stdgo.hash.adler32.T_digest, _p:stdgo.Slice<stdgo.GoByte>):stdgo.hash.adler32.T_digest
```



Add p to the running checksum d.  

[\(view code\)](<./Adler32.hx#L142>)


## function benchmarkAdler32KB


```haxe
function benchmarkAdler32KB(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Adler32.hx#L244>)


## function checksum


```haxe
function checksum(_data:stdgo.Slice<stdgo.GoByte>):stdgo.GoUInt32
```



Checksum returns the Adler\-32 checksum of data.  

[\(view code\)](<./Adler32.hx#L178>)


## function new\_


```haxe
function new_():stdgo.hash.Hash32
```



New returns a new hash.Hash32 computing the Adler\-32 checksum. Its
Sum method will lay the value out in big\-endian byte order. The
returned Hash32 also implements encoding.BinaryMarshaler and
encoding.BinaryUnmarshaler to marshal and unmarshal the internal
state of the hash.  

[\(view code\)](<./Adler32.hx#L126>)


## function testGolden


```haxe
function testGolden(_t:stdgo.Ref<stdgo.testing.T_>):Void
```


[\(view code\)](<./Adler32.hx#L193>)


## function testGoldenMarshal


```haxe
function testGoldenMarshal(_t:stdgo.Ref<stdgo.testing.T_>):Void
```


[\(view code\)](<./Adler32.hx#L216>)


# Typedefs


```haxe
import stdgo.hash.adler32.*
```


## typedef T\_\_struct\_0


```haxe
typedef T__struct_0 = {
	_out:stdgo.GoUInt32;
	_in:stdgo.GoString;
	_halfState:stdgo.GoString;
};
```


## typedef T\_digest


```haxe
typedef T_digest = stdgo.GoUInt32;
```



digest represents the partial evaluation of a checksum.
The low 16 bits are s1, the high 16 bits are s2.  

