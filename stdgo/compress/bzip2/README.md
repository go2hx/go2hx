# Module: `stdgo.compress.bzip2`

[(view library index)](../../stdgo.md)


# Overview


# Index


- [class Bzip2](<#class-bzip2>)

  - [`function benchmarkDecodeDigits(b:stdgo._internal.testing.B):Void`](<#bzip2-function-benchmarkdecodedigits>)

  - [`function benchmarkDecodeNewton(b:stdgo._internal.testing.B):Void`](<#bzip2-function-benchmarkdecodenewton>)

  - [`function benchmarkDecodeRand(b:stdgo._internal.testing.B):Void`](<#bzip2-function-benchmarkdecoderand>)

  - [`function newReader(r:stdgo._internal.io.Reader):stdgo._internal.io.Reader`](<#bzip2-function-newreader>)

  - [`function testBitReader(t:stdgo._internal.testing.T_):Void`](<#bzip2-function-testbitreader>)

  - [`function testMTF(t:stdgo._internal.testing.T_):Void`](<#bzip2-function-testmtf>)

  - [`function testReader(t:stdgo._internal.testing.T_):Void`](<#bzip2-function-testreader>)

  - [`function testZeroRead(t:stdgo._internal.testing.T_):Void`](<#bzip2-function-testzeroread>)

- [typedef StructuralError](<#typedef-structuralerror>)

- [typedef T\_\_struct\_0](<#typedef-t__struct_0>)

- [typedef T\_\_struct\_1](<#typedef-t__struct_1>)

- [typedef T\_\_struct\_2](<#typedef-t__struct_2>)

- [typedef T\_moveToFrontDecoder](<#typedef-t_movetofrontdecoder>)

- [abstract T\_bitReader](<#abstract-t_bitreader>)

- [abstract T\_reader](<#abstract-t_reader>)

- [abstract T\_huffmanTree](<#abstract-t_huffmantree>)

- [abstract T\_huffmanNode](<#abstract-t_huffmannode>)

- [abstract T\_huffmanSymbolLengthPair](<#abstract-t_huffmansymbollengthpair>)

- [abstract T\_huffmanCode](<#abstract-t_huffmancode>)

# Classes


```haxe
import
```


## class Bzip2



Package bzip2 implements bzip2 decompression.  

### Bzip2 function benchmarkDecodeDigits


```haxe
function benchmarkDecodeDigits(b:stdgo._internal.testing.B):Void
```


[\(view code\)](<./Bzip2.hx#L323>)


### Bzip2 function benchmarkDecodeNewton


```haxe
function benchmarkDecodeNewton(b:stdgo._internal.testing.B):Void
```


[\(view code\)](<./Bzip2.hx#L326>)


### Bzip2 function benchmarkDecodeRand


```haxe
function benchmarkDecodeRand(b:stdgo._internal.testing.B):Void
```


[\(view code\)](<./Bzip2.hx#L329>)


### Bzip2 function newReader


```haxe
function newReader(r:stdgo._internal.io.Reader):stdgo._internal.io.Reader
```


```
NewReader returns an io.Reader which decompresses bzip2 data from r.
        If r does not also implement io.ByteReader,
        the decompressor may read more data than necessary from r.
```
[\(view code\)](<./Bzip2.hx#L308>)


### Bzip2 function testBitReader


```haxe
function testBitReader(t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Bzip2.hx#L314>)


### Bzip2 function testMTF


```haxe
function testMTF(t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Bzip2.hx#L317>)


### Bzip2 function testReader


```haxe
function testReader(t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Bzip2.hx#L311>)


### Bzip2 function testZeroRead


```haxe
function testZeroRead(t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Bzip2.hx#L320>)


# Typedefs


```haxe
import
```


## typedef StructuralError


```haxe
typedef StructuralError = stdgo._internal.compress.bzip2.StructuralError;
```


## typedef T\_\_struct\_0


```haxe
typedef T__struct_0 = stdgo._internal.compress.bzip2.T__struct_0;
```


## typedef T\_\_struct\_1


```haxe
typedef T__struct_1 = stdgo._internal.compress.bzip2.T__struct_1;
```


## typedef T\_\_struct\_2


```haxe
typedef T__struct_2 = stdgo._internal.compress.bzip2.T__struct_2;
```


## typedef T\_moveToFrontDecoder


```haxe
typedef T_moveToFrontDecoder = stdgo._internal.compress.bzip2.T_moveToFrontDecoder;
```


# Abstracts


## abstract T\_bitReader


[\(view file containing code\)](<./Bzip2.hx>)


## abstract T\_reader


[\(view file containing code\)](<./Bzip2.hx>)


## abstract T\_huffmanTree


[\(view file containing code\)](<./Bzip2.hx>)


## abstract T\_huffmanNode


[\(view file containing code\)](<./Bzip2.hx>)


## abstract T\_huffmanSymbolLengthPair


[\(view file containing code\)](<./Bzip2.hx>)


## abstract T\_huffmanCode


[\(view file containing code\)](<./Bzip2.hx>)


