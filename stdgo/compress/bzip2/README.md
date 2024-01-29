# Module: `stdgo.compress.bzip2`

[(view library index)](../../stdgo.md)


# Overview


# Index


- [Variables](<#variables>)

- [`function _benchmarkDecode(_b:stdgo.Ref<stdgo._internal.testing.B>, _compressed:stdgo.Slice<stdgo.GoByte>):Void`](<#function-_benchmarkdecode>)

- [`function _buildHuffmanNode(_t:stdgo.Ref<stdgo.compress.bzip2.T_huffmanTree>, _codes:stdgo.Slice<stdgo.compress.bzip2.T_huffmanCode>, _level:stdgo.GoUInt32):Void`](<#function-_buildhuffmannode>)

- [`function _inverseBWT(_tt:stdgo.Slice<stdgo.GoUInt32>, _origPtr:stdgo.GoUInt, _c:stdgo.Slice<stdgo.GoUInt>):Void`](<#function-_inversebwt>)

- [`function _mustDecodeHex(_s:stdgo.GoString):Void`](<#function-_mustdecodehex>)

- [`function _mustLoadFile(_f:stdgo.GoString):Void`](<#function-_mustloadfile>)

- [`function _newBitReader(_r:stdgo._internal.io.Reader):Void`](<#function-_newbitreader>)

- [`function _newHuffmanTree(_lengths:stdgo.Slice<stdgo.GoUInt8>):Void`](<#function-_newhuffmantree>)

- [`function _newMTFDecoder(_symbols:stdgo.Slice<stdgo.GoByte>):Void`](<#function-_newmtfdecoder>)

- [`function _newMTFDecoderWithRange(_n:stdgo.GoInt):Void`](<#function-_newmtfdecoderwithrange>)

- [`function _trim(_b:stdgo.Slice<stdgo.GoByte>):Void`](<#function-_trim>)

- [`function _updateCRC(_val:stdgo.GoUInt32, _b:stdgo.Slice<stdgo.GoByte>):Void`](<#function-_updatecrc>)

- [`function benchmarkDecodeDigits(_b:stdgo.Ref<stdgo._internal.testing.B>):Void`](<#function-benchmarkdecodedigits>)

- [`function benchmarkDecodeNewton(_b:stdgo.Ref<stdgo._internal.testing.B>):Void`](<#function-benchmarkdecodenewton>)

- [`function benchmarkDecodeRand(_b:stdgo.Ref<stdgo._internal.testing.B>):Void`](<#function-benchmarkdecoderand>)

- [`function newReader(_r:stdgo._internal.io.Reader):Void`](<#function-newreader>)

- [`function testBitReader(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testbitreader>)

- [`function testMTF(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testmtf>)

- [`function testReader(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testreader>)

- [`function testZeroRead(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testzeroread>)

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

# Variables


```haxe
import stdgo.compress.bzip2.Bzip2
```


```haxe
var _:Dynamic
```


```haxe
var __go2hxdoc__package:Dynamic
```


```haxe
var _bzip2BlockMagic:Dynamic
```


```haxe
var _bzip2FileMagic:Dynamic
```


```haxe
var _bzip2FinalMagic:Dynamic
```


```haxe
var _crctab:Dynamic
```


```haxe
var _digits:Dynamic
```


```haxe
var _invalidNodeValue:Dynamic
```


```haxe
var _newton:Dynamic
```


```haxe
var _random:Dynamic
```


# Functions


```haxe
import stdgo.compress.bzip2.Bzip2
```


## function \_benchmarkDecode


```haxe
function _benchmarkDecode(_b:stdgo.Ref<stdgo._internal.testing.B>, _compressed:stdgo.Slice<stdgo.GoByte>):Void
```


[\(view code\)](<./Bzip2.hx#L39>)


## function \_buildHuffmanNode


```haxe
function _buildHuffmanNode(_t:stdgo.Ref<stdgo.compress.bzip2.T_huffmanTree>, _codes:stdgo.Slice<stdgo.compress.bzip2.T_huffmanCode>, _level:stdgo.GoUInt32):Void
```


[\(view code\)](<./Bzip2.hx#L44>)


## function \_inverseBWT


```haxe
function _inverseBWT(_tt:stdgo.Slice<stdgo.GoUInt32>, _origPtr:stdgo.GoUInt, _c:stdgo.Slice<stdgo.GoUInt>):Void
```


[\(view code\)](<./Bzip2.hx#L30>)


## function \_mustDecodeHex


```haxe
function _mustDecodeHex(_s:stdgo.GoString):Void
```


[\(view code\)](<./Bzip2.hx#L32>)


## function \_mustLoadFile


```haxe
function _mustLoadFile(_f:stdgo.GoString):Void
```


[\(view code\)](<./Bzip2.hx#L33>)


## function \_newBitReader


```haxe
function _newBitReader(_r:stdgo._internal.io.Reader):Void
```


[\(view code\)](<./Bzip2.hx#L28>)


## function \_newHuffmanTree


```haxe
function _newHuffmanTree(_lengths:stdgo.Slice<stdgo.GoUInt8>):Void
```


[\(view code\)](<./Bzip2.hx#L43>)


## function \_newMTFDecoder


```haxe
function _newMTFDecoder(_symbols:stdgo.Slice<stdgo.GoByte>):Void
```


[\(view code\)](<./Bzip2.hx#L45>)


## function \_newMTFDecoderWithRange


```haxe
function _newMTFDecoderWithRange(_n:stdgo.GoInt):Void
```


[\(view code\)](<./Bzip2.hx#L46>)


## function \_trim


```haxe
function _trim(_b:stdgo.Slice<stdgo.GoByte>):Void
```


[\(view code\)](<./Bzip2.hx#L34>)


## function \_updateCRC


```haxe
function _updateCRC(_val:stdgo.GoUInt32, _b:stdgo.Slice<stdgo.GoByte>):Void
```


[\(view code\)](<./Bzip2.hx#L31>)


## function benchmarkDecodeDigits


```haxe
function benchmarkDecodeDigits(_b:stdgo.Ref<stdgo._internal.testing.B>):Void
```


[\(view code\)](<./Bzip2.hx#L40>)


## function benchmarkDecodeNewton


```haxe
function benchmarkDecodeNewton(_b:stdgo.Ref<stdgo._internal.testing.B>):Void
```


[\(view code\)](<./Bzip2.hx#L41>)


## function benchmarkDecodeRand


```haxe
function benchmarkDecodeRand(_b:stdgo.Ref<stdgo._internal.testing.B>):Void
```


[\(view code\)](<./Bzip2.hx#L42>)


## function newReader


```haxe
function newReader(_r:stdgo._internal.io.Reader):Void
```


[\(view code\)](<./Bzip2.hx#L29>)


## function testBitReader


```haxe
function testBitReader(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Bzip2.hx#L36>)


## function testMTF


```haxe
function testMTF(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Bzip2.hx#L37>)


## function testReader


```haxe
function testReader(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Bzip2.hx#L35>)


## function testZeroRead


```haxe
function testZeroRead(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Bzip2.hx#L38>)


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


