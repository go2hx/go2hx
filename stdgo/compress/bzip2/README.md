# Module: `stdgo.compress.bzip2`

[(view library index)](../../stdgo.md)


# Overview



Package bzip2 implements bzip2 decompression.  

# Index


- [`function benchmarkDecodeDigits(b:stdgo._internal.testing.B):Void`](<#function-benchmarkdecodedigits>)

- [`function benchmarkDecodeNewton(b:stdgo._internal.testing.B):Void`](<#function-benchmarkdecodenewton>)

- [`function benchmarkDecodeRand(b:stdgo._internal.testing.B):Void`](<#function-benchmarkdecoderand>)

- [`function newReader(r:stdgo._internal.io.Reader):stdgo._internal.io.Reader`](<#function-newreader>)

- [`function testBitReader(t:stdgo._internal.testing.T_):Void`](<#function-testbitreader>)

- [`function testMTF(t:stdgo._internal.testing.T_):Void`](<#function-testmtf>)

- [`function testReader(t:stdgo._internal.testing.T_):Void`](<#function-testreader>)

- [`function testZeroRead(t:stdgo._internal.testing.T_):Void`](<#function-testzeroread>)

- [typedef StructuralError](<#typedef-structuralerror>)

- [typedef StructuralError\_asInterface](<#typedef-structuralerror_asinterface>)

- [typedef StructuralError\_static\_extension](<#typedef-structuralerror_static_extension>)

- [typedef T\_\_struct\_0](<#typedef-t__struct_0>)

- [typedef T\_\_struct\_0\_asInterface](<#typedef-t__struct_0_asinterface>)

- [typedef T\_\_struct\_0\_static\_extension](<#typedef-t__struct_0_static_extension>)

- [typedef T\_\_struct\_1](<#typedef-t__struct_1>)

- [typedef T\_\_struct\_1\_asInterface](<#typedef-t__struct_1_asinterface>)

- [typedef T\_\_struct\_1\_static\_extension](<#typedef-t__struct_1_static_extension>)

- [typedef T\_\_struct\_2](<#typedef-t__struct_2>)

- [typedef T\_\_struct\_2\_asInterface](<#typedef-t__struct_2_asinterface>)

- [typedef T\_\_struct\_2\_static\_extension](<#typedef-t__struct_2_static_extension>)

- [typedef T\_bitReader](<#typedef-t_bitreader>)

- [typedef T\_bitReader\_asInterface](<#typedef-t_bitreader_asinterface>)

- [typedef T\_bitReader\_static\_extension](<#typedef-t_bitreader_static_extension>)

- [typedef T\_huffmanCode](<#typedef-t_huffmancode>)

- [typedef T\_huffmanNode](<#typedef-t_huffmannode>)

- [typedef T\_huffmanSymbolLengthPair](<#typedef-t_huffmansymbollengthpair>)

- [typedef T\_huffmanTree](<#typedef-t_huffmantree>)

- [typedef T\_huffmanTree\_asInterface](<#typedef-t_huffmantree_asinterface>)

- [typedef T\_huffmanTree\_static\_extension](<#typedef-t_huffmantree_static_extension>)

- [typedef T\_moveToFrontDecoder](<#typedef-t_movetofrontdecoder>)

- [typedef T\_moveToFrontDecoder\_asInterface](<#typedef-t_movetofrontdecoder_asinterface>)

- [typedef T\_moveToFrontDecoder\_static\_extension](<#typedef-t_movetofrontdecoder_static_extension>)

- [typedef T\_reader](<#typedef-t_reader>)

- [typedef T\_reader\_asInterface](<#typedef-t_reader_asinterface>)

- [typedef T\_reader\_static\_extension](<#typedef-t_reader_static_extension>)

# Functions


```haxe
import stdgo.compress.bzip2.Bzip2
```


## function benchmarkDecodeDigits


```haxe
function benchmarkDecodeDigits(b:stdgo._internal.testing.B):Void
```


[\(view code\)](<./Bzip2.hx#L33>)


## function benchmarkDecodeNewton


```haxe
function benchmarkDecodeNewton(b:stdgo._internal.testing.B):Void
```


[\(view code\)](<./Bzip2.hx#L34>)


## function benchmarkDecodeRand


```haxe
function benchmarkDecodeRand(b:stdgo._internal.testing.B):Void
```


[\(view code\)](<./Bzip2.hx#L35>)


## function newReader


```haxe
function newReader(r:stdgo._internal.io.Reader):stdgo._internal.io.Reader
```



NewReader returns an io.Reader which decompresses bzip2 data from r.
If r does not also implement io.ByteReader,
the decompressor may read more data than necessary from r.  

[\(view code\)](<./Bzip2.hx#L28>)


## function testBitReader


```haxe
function testBitReader(t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Bzip2.hx#L30>)


## function testMTF


```haxe
function testMTF(t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Bzip2.hx#L31>)


## function testReader


```haxe
function testReader(t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Bzip2.hx#L29>)


## function testZeroRead


```haxe
function testZeroRead(t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Bzip2.hx#L32>)


# Typedefs


```haxe
import stdgo.compress.bzip2.*
```


## typedef StructuralError


```haxe
typedef StructuralError = stdgo._internal.compress.bzip2.StructuralError;
```


## typedef StructuralError\_asInterface


```haxe
typedef StructuralError_asInterface = Dynamic;
```


## typedef StructuralError\_static\_extension


```haxe
typedef StructuralError_static_extension = Dynamic;
```


## typedef T\_\_struct\_0


```haxe
typedef T__struct_0 = stdgo._internal.compress.bzip2.T__struct_0;
```


## typedef T\_\_struct\_0\_asInterface


```haxe
typedef T__struct_0_asInterface = Dynamic;
```


## typedef T\_\_struct\_0\_static\_extension


```haxe
typedef T__struct_0_static_extension = Dynamic;
```


## typedef T\_\_struct\_1


```haxe
typedef T__struct_1 = stdgo._internal.compress.bzip2.T__struct_1;
```


## typedef T\_\_struct\_1\_asInterface


```haxe
typedef T__struct_1_asInterface = Dynamic;
```


## typedef T\_\_struct\_1\_static\_extension


```haxe
typedef T__struct_1_static_extension = Dynamic;
```


## typedef T\_\_struct\_2


```haxe
typedef T__struct_2 = stdgo._internal.compress.bzip2.T__struct_2;
```


## typedef T\_\_struct\_2\_asInterface


```haxe
typedef T__struct_2_asInterface = Dynamic;
```


## typedef T\_\_struct\_2\_static\_extension


```haxe
typedef T__struct_2_static_extension = Dynamic;
```


## typedef T\_bitReader


```haxe
typedef T_bitReader = Dynamic;
```


## typedef T\_bitReader\_asInterface


```haxe
typedef T_bitReader_asInterface = Dynamic;
```


## typedef T\_bitReader\_static\_extension


```haxe
typedef T_bitReader_static_extension = Dynamic;
```


## typedef T\_huffmanCode


```haxe
typedef T_huffmanCode = Dynamic;
```


## typedef T\_huffmanNode


```haxe
typedef T_huffmanNode = Dynamic;
```


## typedef T\_huffmanSymbolLengthPair


```haxe
typedef T_huffmanSymbolLengthPair = Dynamic;
```


## typedef T\_huffmanTree


```haxe
typedef T_huffmanTree = Dynamic;
```


## typedef T\_huffmanTree\_asInterface


```haxe
typedef T_huffmanTree_asInterface = Dynamic;
```


## typedef T\_huffmanTree\_static\_extension


```haxe
typedef T_huffmanTree_static_extension = Dynamic;
```


## typedef T\_moveToFrontDecoder


```haxe
typedef T_moveToFrontDecoder = stdgo._internal.compress.bzip2.T_moveToFrontDecoder;
```


## typedef T\_moveToFrontDecoder\_asInterface


```haxe
typedef T_moveToFrontDecoder_asInterface = Dynamic;
```


## typedef T\_moveToFrontDecoder\_static\_extension


```haxe
typedef T_moveToFrontDecoder_static_extension = Dynamic;
```


## typedef T\_reader


```haxe
typedef T_reader = Dynamic;
```


## typedef T\_reader\_asInterface


```haxe
typedef T_reader_asInterface = Dynamic;
```


## typedef T\_reader\_static\_extension


```haxe
typedef T_reader_static_extension = Dynamic;
```


