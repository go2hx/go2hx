# Module: `stdgo.hash.adler32`

[(view library index)](../../stdgo.md)


# Overview


# Index


- [Constants](<#constants>)

- [class Adler32](<#class-adler32>)

  - [`function benchmarkAdler32KB(_b:stdgo._internal.testing.B):Void`](<#adler32-function-benchmarkadler32kb>)

  - [`function checksum(_data:Array<UInt>):UInt`](<#adler32-function-checksum>)

  - [`function new_():stdgo._internal.hash.Hash32`](<#adler32-function-new_>)

  - [`function testGolden(_t:stdgo._internal.testing.T_):Void`](<#adler32-function-testgolden>)

  - [`function testGoldenMarshal(_t:stdgo._internal.testing.T_):Void`](<#adler32-function-testgoldenmarshal>)

- [typedef T\_\_struct\_0](<#typedef-t__struct_0>)

- [typedef T\_digest](<#typedef-t_digest>)

# Constants


```haxe
import stdgo.hash.adler32.Adler32
```


```haxe
final size:haxe.UInt64 = stdgo._internal.hash.adler32.Adler32_size.size
```


# Classes


```haxe
import stdgo.hash.adler32.*
```


## class Adler32



Package adler32 implements the Adler\-32 checksum.  


It is defined in RFC 1950:  

```
    	Adler-32 is composed of two sums accumulated per byte: s1 is
    	the sum of all bytes, s2 is the sum of all s1 values. Both sums
    	are done modulo 65521. s1 is initialized to 1, s2 to zero.  The
    	Adler-32 checksum is stored as s2*65536 + s1 in most-
    	significant-byte first (network) order.
```
### Adler32 function benchmarkAdler32KB


```haxe
function benchmarkAdler32KB(_b:stdgo._internal.testing.B):Void
```


[\(view code\)](<./Adler32.hx#L78>)


### Adler32 function checksum


```haxe
function checksum(_data:Array<UInt>):UInt
```



Checksum returns the Adler\-32 checksum of data.  

[\(view code\)](<./Adler32.hx#L68>)


### Adler32 function new\_


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
[\(view code\)](<./Adler32.hx#L62>)


### Adler32 function testGolden


```haxe
function testGolden(_t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Adler32.hx#L72>)


### Adler32 function testGoldenMarshal


```haxe
function testGoldenMarshal(_t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Adler32.hx#L75>)


# Typedefs


```haxe
import stdgo.hash.adler32.*
```


## typedef T\_\_struct\_0


```haxe
typedef T__struct_0 = stdgo._internal.hash.adler32.T__struct_0;
```


## typedef T\_digest


```haxe
typedef T_digest = stdgo._internal.hash.adler32.T_digest;
```


