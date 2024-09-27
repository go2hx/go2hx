# Module: `stdgo.hash.crc32`

[(view library index)](../../stdgo.md)


# Overview


# Index


- [Constants](<#constants>)

- [Variables](<#variables>)

- [class Crc32](<#class-crc32>)

  - [`function checksum(_data:Array<UInt>, _tab:stdgo.hash.crc32.Table):UInt`](<#crc32-function-checksum>)

  - [`function checksumIEEE(_data:Array<UInt>):UInt`](<#crc32-function-checksumieee>)

  - [`function makeTable(_poly:UInt):stdgo.hash.crc32.Table`](<#crc32-function-maketable>)

  - [`function newIEEE():stdgo._internal.hash.Hash32`](<#crc32-function-newieee>)

  - [`function new_(_tab:stdgo.hash.crc32.Table):stdgo._internal.hash.Hash32`](<#crc32-function-new_>)

  - [`function update(_crc:UInt, _tab:stdgo.hash.crc32.Table, _p:Array<UInt>):UInt`](<#crc32-function-update>)

- [typedef T\_slicing8Table](<#typedef-t_slicing8table>)

- [typedef Table](<#typedef-table>)

- [abstract T\_digest](<#abstract-t_digest>)

# Constants


```haxe
import stdgo.hash.crc32.Crc32
```


```haxe
final castagnoli:haxe.UInt64 = stdgo._internal.hash.crc32.Crc32_castagnoli.castagnoli
```


```haxe
final ieee:haxe.UInt64 = stdgo._internal.hash.crc32.Crc32_ieee.ieee
```


```haxe
final koopman:haxe.UInt64 = stdgo._internal.hash.crc32.Crc32_koopman.koopman
```


```haxe
final size:haxe.UInt64 = stdgo._internal.hash.crc32.Crc32_size.size
```


# Variables


```haxe
import stdgo.hash.crc32.Crc32
```


```haxe
var ieeetable:stdgo.hash.crc32.Table
```


# Classes


```haxe
import stdgo.hash.crc32.*
```


## class Crc32


```
Package crc32 implements the 32-bit cyclic redundancy check, or CRC-32,
    checksum. See https://en.wikipedia.org/wiki/Cyclic_redundancy_check for
    information.
```

Polynomials are represented in LSB\-first form also known as reversed representation.  


See https://en.wikipedia.org/wiki/Mathematics_of_cyclic_redundancy_checks#Reversed_representations_and_reciprocal_polynomials
for information.  

### Crc32 function checksum


```haxe
function checksum(_data:Array<UInt>, _tab:stdgo.hash.crc32.Table):UInt
```


```
Checksum returns the CRC-32 checksum of data
        using the polynomial represented by the Table.
```
[\(view code\)](<./Crc32.hx#L115>)


### Crc32 function checksumIEEE


```haxe
function checksumIEEE(_data:Array<UInt>):UInt
```


```
ChecksumIEEE returns the CRC-32 checksum of data
        using the IEEE polynomial.
```
[\(view code\)](<./Crc32.hx#L123>)


### Crc32 function makeTable


```haxe
function makeTable(_poly:UInt):stdgo.hash.crc32.Table
```


```
MakeTable returns a Table constructed from the specified polynomial.
        The contents of this Table must not be modified.
```
[\(view code\)](<./Crc32.hx#L81>)


### Crc32 function newIEEE


```haxe
function newIEEE():stdgo._internal.hash.Hash32
```


```
NewIEEE creates a new hash.Hash32 computing the CRC-32 checksum using
        the IEEE polynomial. Its Sum method will lay the value out in
        big-endian byte order. The returned Hash32 also implements
        encoding.BinaryMarshaler and encoding.BinaryUnmarshaler to marshal
        and unmarshal the internal state of the hash.
```
[\(view code\)](<./Crc32.hx#L101>)


### Crc32 function new\_


```haxe
function new_(_tab:stdgo.hash.crc32.Table):stdgo._internal.hash.Hash32
```


```
New creates a new hash.Hash32 computing the CRC-32 checksum using the
        polynomial represented by the Table. Its Sum method will lay the
        value out in big-endian byte order. The returned Hash32 also
        implements encoding.BinaryMarshaler and encoding.BinaryUnmarshaler to
        marshal and unmarshal the internal state of the hash.
```
[\(view code\)](<./Crc32.hx#L91>)


### Crc32 function update


```haxe
function update(_crc:UInt, _tab:stdgo.hash.crc32.Table, _p:Array<UInt>):UInt
```



Update returns the result of adding the bytes in p to the crc.  

[\(view code\)](<./Crc32.hx#L107>)


# Typedefs


```haxe
import stdgo.hash.crc32.*
```


## typedef T\_slicing8Table


```haxe
typedef T_slicing8Table = stdgo._internal.hash.crc32.T_slicing8Table;
```


## typedef Table


```haxe
typedef Table = stdgo._internal.hash.crc32.Table;
```


# Abstracts


## abstract T\_digest


[\(view file containing code\)](<./Crc32.hx>)


