# Module: `stdgo.hash.crc64`

[(view library index)](../../stdgo.md)


# Overview


# Index


- [Constants](<#constants>)

- [class Crc64](<#class-crc64>)

  - [`function checksum(_data:Array<UInt>, _tab:stdgo.hash.crc64.Table):haxe.UInt64`](<#crc64-function-checksum>)

  - [`function makeTable(_poly:haxe.UInt64):stdgo.hash.crc64.Table`](<#crc64-function-maketable>)

  - [`function new_(_tab:stdgo.hash.crc64.Table):stdgo._internal.hash.Hash64`](<#crc64-function-new_>)

  - [`function update(_crc:haxe.UInt64, _tab:stdgo.hash.crc64.Table, _p:Array<UInt>):haxe.UInt64`](<#crc64-function-update>)

- [typedef Table](<#typedef-table>)

- [abstract T\_digest](<#abstract-t_digest>)

# Constants


```haxe
import stdgo.hash.crc64.Crc64
```


```haxe
final ecma:haxe.UInt64 = stdgo._internal.hash.crc64.Crc64_ecma.ecma
```


```haxe
final iso:haxe.UInt64 = stdgo._internal.hash.crc64.Crc64_iso.iso
```


```haxe
final size:haxe.UInt64 = stdgo._internal.hash.crc64.Crc64_size.size
```


# Classes


```haxe
import stdgo.hash.crc64.*
```


## class Crc64


```
Package crc64 implements the 64-bit cyclic redundancy check, or CRC-64,
    checksum. See https://en.wikipedia.org/wiki/Cyclic_redundancy_check for
    information.
```
### Crc64 function checksum


```haxe
function checksum(_data:Array<UInt>, _tab:stdgo.hash.crc64.Table):haxe.UInt64
```


```
Checksum returns the CRC-64 checksum of data
        using the polynomial represented by the Table.
```
[\(view code\)](<./Crc64.hx#L92>)


### Crc64 function makeTable


```haxe
function makeTable(_poly:haxe.UInt64):stdgo.hash.crc64.Table
```


```
MakeTable returns a Table constructed from the specified polynomial.
        The contents of this Table must not be modified.
```
[\(view code\)](<./Crc64.hx#L68>)


### Crc64 function new\_


```haxe
function new_(_tab:stdgo.hash.crc64.Table):stdgo._internal.hash.Hash64
```


```
New creates a new hash.Hash64 computing the CRC-64 checksum using the
        polynomial represented by the Table. Its Sum method will lay the
        value out in big-endian byte order. The returned Hash64 also
        implements encoding.BinaryMarshaler and encoding.BinaryUnmarshaler to
        marshal and unmarshal the internal state of the hash.
```
[\(view code\)](<./Crc64.hx#L78>)


### Crc64 function update


```haxe
function update(_crc:haxe.UInt64, _tab:stdgo.hash.crc64.Table, _p:Array<UInt>):haxe.UInt64
```



Update returns the result of adding the bytes in p to the crc.  

[\(view code\)](<./Crc64.hx#L84>)


# Typedefs


```haxe
import stdgo.hash.crc64.*
```


## typedef Table


```haxe
typedef Table = stdgo._internal.hash.crc64.Table;
```


# Abstracts


## abstract T\_digest


[\(view file containing code\)](<./Crc64.hx>)


