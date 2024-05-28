# Module: `stdgo._internal.compress.bzip2`

[(view library index)](../../../stdgo.md)


# Overview



# Index


- [Constants](<#constants>)

- [Variables](<#variables>)

- [`function _benchmarkDecode(_b:stdgo.Ref<stdgo._internal.testing.B>, _compressed:stdgo.Slice<stdgo.GoByte>):Void`](<#function-_benchmarkdecode>)

- [`function _buildHuffmanNode(_t:stdgo.Ref<stdgo._internal.compress.bzip2.T_huffmanTree>, _codes:stdgo.Slice<stdgo._internal.compress.bzip2.T_huffmanCode>, _level:stdgo.GoUInt32):{
	_1:stdgo.Error;
	_0:stdgo.GoUInt16;
}`](<#function-_buildhuffmannode>)

- [`function _inverseBWT(_tt:stdgo.Slice<stdgo.GoUInt32>, _origPtr:stdgo.GoUInt, _c:stdgo.Slice<stdgo.GoUInt>):stdgo.GoUInt32`](<#function-_inversebwt>)

- [`function _mustDecodeHex(_s:stdgo.GoString):stdgo.Slice<stdgo.GoByte>`](<#function-_mustdecodehex>)

- [`function _mustLoadFile(_f:stdgo.GoString):stdgo.Slice<stdgo.GoByte>`](<#function-_mustloadfile>)

- [`function _newBitReader(_r:stdgo._internal.io.Reader):stdgo._internal.compress.bzip2.T_bitReader`](<#function-_newbitreader>)

- [`function _newHuffmanTree(_lengths:stdgo.Slice<stdgo.GoUInt8>):{
	_1:stdgo.Error;
	_0:stdgo._internal.compress.bzip2.T_huffmanTree;
}`](<#function-_newhuffmantree>)

- [`function _newMTFDecoder(_symbols:stdgo.Slice<stdgo.GoByte>):stdgo._internal.compress.bzip2.T_moveToFrontDecoder`](<#function-_newmtfdecoder>)

- [`function _newMTFDecoderWithRange(_n:stdgo.GoInt):stdgo._internal.compress.bzip2.T_moveToFrontDecoder`](<#function-_newmtfdecoderwithrange>)

- [`function _trim(_b:stdgo.Slice<stdgo.GoByte>):stdgo.GoString`](<#function-_trim>)

- [`function _updateCRC(_val:stdgo.GoUInt32, _b:stdgo.Slice<stdgo.GoByte>):stdgo.GoUInt32`](<#function-_updatecrc>)

- [`function benchmarkDecodeDigits(_b:stdgo.Ref<stdgo._internal.testing.B>):Void`](<#function-benchmarkdecodedigits>)

- [`function benchmarkDecodeNewton(_b:stdgo.Ref<stdgo._internal.testing.B>):Void`](<#function-benchmarkdecodenewton>)

- [`function benchmarkDecodeRand(_b:stdgo.Ref<stdgo._internal.testing.B>):Void`](<#function-benchmarkdecoderand>)

- [`function newReader(_r:stdgo._internal.io.Reader):stdgo._internal.io.Reader`](<#function-newreader>)

- [`function testBitReader(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testbitreader>)

- [`function testMTF(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testmtf>)

- [`function testReader(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testreader>)

- [`function testZeroRead(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testzeroread>)

- [typedef StructuralError](<#typedef-structuralerror>)

- [typedef T\_\_struct\_0](<#typedef-t__struct_0>)

- [typedef T\_\_struct\_1](<#typedef-t__struct_1>)

- [typedef T\_\_struct\_2](<#typedef-t__struct_2>)

- [typedef T\_moveToFrontDecoder](<#typedef-t_movetofrontdecoder>)

# Constants


```haxe
import stdgo._internal.compress.bzip2.Bzip2
```


```haxe
final _bzip2BlockMagic:stdgo.GoUInt64 = ((54156738319193i64 : stdgo.GoUInt64))
```


```haxe
final _bzip2FileMagic:stdgo.GoUInt64 = ((16986i64 : stdgo.GoUInt64))
```


```haxe
final _bzip2FinalMagic:stdgo.GoUInt64 = ((25779555029136i64 : stdgo.GoUInt64))
```


```haxe
final _invalidNodeValue:stdgo.GoUInt64 = ((65535i64 : stdgo.GoUInt64))
```


# Variables


```haxe
import stdgo._internal.compress.bzip2.Bzip2
```


```haxe
var _:Bool
```


```haxe
var _crctab:stdgo.GoArray<stdgo.GoUInt32>
```


```haxe
var _digits:stdgo.Slice<stdgo.GoUInt8>
```


```haxe
var _newton:stdgo.Slice<stdgo.GoUInt8>
```


```haxe
var _random:stdgo.Slice<stdgo.GoUInt8>
```


# Functions


```haxe
import stdgo._internal.compress.bzip2.Bzip2
```


## function \_benchmarkDecode


```haxe
function _benchmarkDecode(_b:stdgo.Ref<stdgo._internal.testing.B>, _compressed:stdgo.Slice<stdgo.GoByte>):Void
```


[\(view code\)](<./Bzip2.hx#L326>)


## function \_buildHuffmanNode


```haxe
function _buildHuffmanNode(_t:stdgo.Ref<stdgo._internal.compress.bzip2.T_huffmanTree>, _codes:stdgo.Slice<stdgo._internal.compress.bzip2.T_huffmanCode>, _level:stdgo.GoUInt32):{
	_1:stdgo.Error;
	_0:stdgo.GoUInt16;
}
```


[\(view code\)](<./Bzip2.hx#L395>)


## function \_inverseBWT


```haxe
function _inverseBWT(_tt:stdgo.Slice<stdgo.GoUInt32>, _origPtr:stdgo.GoUInt, _c:stdgo.Slice<stdgo.GoUInt>):stdgo.GoUInt32
```


[\(view code\)](<./Bzip2.hx#L203>)


## function \_mustDecodeHex


```haxe
function _mustDecodeHex(_s:stdgo.GoString):stdgo.Slice<stdgo.GoByte>
```


[\(view code\)](<./Bzip2.hx#L226>)


## function \_mustLoadFile


```haxe
function _mustLoadFile(_f:stdgo.GoString):stdgo.Slice<stdgo.GoByte>
```


[\(view code\)](<./Bzip2.hx#L233>)


## function \_newBitReader


```haxe
function _newBitReader(_r:stdgo._internal.io.Reader):stdgo._internal.compress.bzip2.T_bitReader
```


[\(view code\)](<./Bzip2.hx#L187>)


## function \_newHuffmanTree


```haxe
function _newHuffmanTree(_lengths:stdgo.Slice<stdgo.GoUInt8>):{
	_1:stdgo.Error;
	_0:stdgo._internal.compress.bzip2.T_huffmanTree;
}
```


[\(view code\)](<./Bzip2.hx#L351>)


## function \_newMTFDecoder


```haxe
function _newMTFDecoder(_symbols:stdgo.Slice<stdgo.GoByte>):stdgo._internal.compress.bzip2.T_moveToFrontDecoder
```


[\(view code\)](<./Bzip2.hx#L447>)


## function \_newMTFDecoderWithRange


```haxe
function _newMTFDecoderWithRange(_n:stdgo.GoInt):stdgo._internal.compress.bzip2.T_moveToFrontDecoder
```


[\(view code\)](<./Bzip2.hx#L453>)


## function \_trim


```haxe
function _trim(_b:stdgo.Slice<stdgo.GoByte>):stdgo.GoString
```


[\(view code\)](<./Bzip2.hx#L236>)


## function \_updateCRC


```haxe
function _updateCRC(_val:stdgo.GoUInt32, _b:stdgo.Slice<stdgo.GoByte>):stdgo.GoUInt32
```


[\(view code\)](<./Bzip2.hx#L219>)


## function benchmarkDecodeDigits


```haxe
function benchmarkDecodeDigits(_b:stdgo.Ref<stdgo._internal.testing.B>):Void
```


[\(view code\)](<./Bzip2.hx#L342>)


## function benchmarkDecodeNewton


```haxe
function benchmarkDecodeNewton(_b:stdgo.Ref<stdgo._internal.testing.B>):Void
```


[\(view code\)](<./Bzip2.hx#L345>)


## function benchmarkDecodeRand


```haxe
function benchmarkDecodeRand(_b:stdgo.Ref<stdgo._internal.testing.B>):Void
```


[\(view code\)](<./Bzip2.hx#L348>)


## function newReader


```haxe
function newReader(_r:stdgo._internal.io.Reader):stdgo._internal.io.Reader
```


[\(view code\)](<./Bzip2.hx#L198>)


## function testBitReader


```haxe
function testBitReader(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Bzip2.hx#L284>)


## function testMTF


```haxe
function testMTF(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Bzip2.hx#L305>)


## function testReader


```haxe
function testReader(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Bzip2.hx#L243>)


## function testZeroRead


```haxe
function testZeroRead(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Bzip2.hx#L316>)


# Typedefs


```haxe
import stdgo._internal.compress.bzip2.*
```


## typedef StructuralError


```haxe
typedef StructuralError = stdgo.GoString;
```


## typedef T\_\_struct\_0


```haxe
typedef T__struct_0 = {
	_output:stdgo.Slice<stdgo.GoUInt8>;
	_input:stdgo.Slice<stdgo.GoUInt8>;
	_fail:Bool;
	_desc:stdgo.GoString;
};
```


## typedef T\_\_struct\_1


```haxe
typedef T__struct_1 = {
	_value:stdgo.GoInt;
	_nbits:stdgo.GoUInt;
	_fail:Bool;
};
```


## typedef T\_\_struct\_2


```haxe
typedef T__struct_2 = {
	_sym:stdgo.GoUInt8;
	_idx:stdgo.GoInt;
};
```


## typedef T\_moveToFrontDecoder


```haxe
typedef T_moveToFrontDecoder = stdgo.Slice<stdgo.GoUInt8>;
```


