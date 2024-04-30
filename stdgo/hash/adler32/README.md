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
# Index


- [Constants](<#constants>)

- [`function benchmarkAdler32KB(b:stdgo._internal.testing.B):Void`](<#function-benchmarkadler32kb>)

- [`function checksum(data:Array<Int>):UInt`](<#function-checksum>)

- [`function new_():stdgo._internal.hash.Hash32`](<#function-new_>)

- [`function testGolden(t:stdgo._internal.testing.T_):Void`](<#function-testgolden>)

- [`function testGoldenMarshal(t:stdgo._internal.testing.T_):Void`](<#function-testgoldenmarshal>)

- [typedef T\_\_struct\_0](<#typedef-t__struct_0>)

- [typedef T\_\_struct\_0\_asInterface](<#typedef-t__struct_0_asinterface>)

- [typedef T\_\_struct\_0\_static\_extension](<#typedef-t__struct_0_static_extension>)

- [typedef T\_digest](<#typedef-t_digest>)

- [typedef T\_digest\_asInterface](<#typedef-t_digest_asinterface>)

- [typedef T\_digest\_static\_extension](<#typedef-t_digest_static_extension>)

# Constants


```haxe
import stdgo.hash.adler32.Adler32
```


```haxe
final size:haxe.UInt64 = stdgo._internal.hash.adler32.Adler32.size
```


# Functions


```haxe
import stdgo.hash.adler32.Adler32
```


## function benchmarkAdler32KB


```haxe
function benchmarkAdler32KB(b:stdgo._internal.testing.B):Void
```


[\(view code\)](<./Adler32.hx#L33>)


## function checksum


```haxe
function checksum(data:Array<Int>):UInt
```



Checksum returns the Adler\-32 checksum of data.  

[\(view code\)](<./Adler32.hx#L30>)


## function new\_


```haxe
function new_():stdgo._internal.hash.Hash32
```


```
New returns a new hash.Hash32 computing the Adler-32 checksum. Its
    Sum method will lay the value out in big-endian byte order. The
    returned Hash32 also implements encoding.BinaryMarshaler and
    encoding.BinaryUnmarshaler to marshal and unmarshal the internal
    state of the hash.
```
[\(view code\)](<./Adler32.hx#L26>)


## function testGolden


```haxe
function testGolden(t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Adler32.hx#L31>)


## function testGoldenMarshal


```haxe
function testGoldenMarshal(t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Adler32.hx#L32>)


# Typedefs


```haxe
import stdgo.hash.adler32.*
```


## typedef T\_\_struct\_0


```haxe
typedef T__struct_0 = stdgo._internal.hash.adler32.T__struct_0;
```


## typedef T\_\_struct\_0\_asInterface


```haxe
typedef T__struct_0_asInterface = Dynamic;
```


## typedef T\_\_struct\_0\_static\_extension


```haxe
typedef T__struct_0_static_extension = Dynamic;
```


## typedef T\_digest


```haxe
typedef T_digest = stdgo._internal.hash.adler32.T_digest;
```


## typedef T\_digest\_asInterface


```haxe
typedef T_digest_asInterface = Dynamic;
```


## typedef T\_digest\_static\_extension


```haxe
typedef T_digest_static_extension = Dynamic;
```


