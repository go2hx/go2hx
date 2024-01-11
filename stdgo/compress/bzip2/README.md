# Module: `stdgo.compress.bzip2`

[(view library index)](../../stdgo.md)


# Overview



Package bzip2 implements bzip2 decompression.  


# Index


- [Constants](<#constants>)

- [Variables](<#variables>)

- [`function _benchmarkDecode(_b:stdgo.Ref<stdgo.testing.B>, _compressed:stdgo.Slice<stdgo.GoByte>):Void`](<#function-_benchmarkdecode>)

- [`function _buildHuffmanNode(_t:stdgo.Ref<stdgo.compress.bzip2.T_huffmanTree>, _codes:stdgo.Slice<stdgo.compress.bzip2.T_huffmanCode>, _level:stdgo.GoUInt32):{
	_1:stdgo.Error;
	_0:stdgo.GoUInt16;
}`](<#function-_buildhuffmannode>)

- [`function _inverseBWT(_tt:stdgo.Slice<stdgo.GoUInt32>, _origPtr:stdgo.GoUInt, _c:stdgo.Slice<stdgo.GoUInt>):stdgo.GoUInt32`](<#function-_inversebwt>)

- [`function _mustDecodeHex(_s:stdgo.GoString):stdgo.Slice<stdgo.GoByte>`](<#function-_mustdecodehex>)

- [`function _mustLoadFile(_f:stdgo.GoString):stdgo.Slice<stdgo.GoByte>`](<#function-_mustloadfile>)

- [`function _newBitReader(_r:stdgo.io.Reader):stdgo.compress.bzip2.T_bitReader`](<#function-_newbitreader>)

- [`function _newHuffmanTree(_lengths:stdgo.Slice<stdgo.GoUInt8>):{
	_1:stdgo.Error;
	_0:stdgo.compress.bzip2.T_huffmanTree;
}`](<#function-_newhuffmantree>)

- [`function _newMTFDecoder(_symbols:stdgo.Slice<stdgo.GoByte>):stdgo.compress.bzip2.T_moveToFrontDecoder`](<#function-_newmtfdecoder>)

- [`function _newMTFDecoderWithRange(_n:stdgo.GoInt):stdgo.compress.bzip2.T_moveToFrontDecoder`](<#function-_newmtfdecoderwithrange>)

- [`function _trim(_b:stdgo.Slice<stdgo.GoByte>):stdgo.GoString`](<#function-_trim>)

- [`function _updateCRC(_val:stdgo.GoUInt32, _b:stdgo.Slice<stdgo.GoByte>):stdgo.GoUInt32`](<#function-_updatecrc>)

- [`function benchmarkDecodeDigits(_b:stdgo.Ref<stdgo.testing.B>):Void`](<#function-benchmarkdecodedigits>)

- [`function benchmarkDecodeNewton(_b:stdgo.Ref<stdgo.testing.B>):Void`](<#function-benchmarkdecodenewton>)

- [`function benchmarkDecodeRand(_b:stdgo.Ref<stdgo.testing.B>):Void`](<#function-benchmarkdecoderand>)

- [`function newReader(_r:stdgo.io.Reader):stdgo.io.Reader`](<#function-newreader>)

- [`function testBitReader(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testbitreader>)

- [`function testMTF(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testmtf>)

- [`function testReader(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testreader>)

- [`function testZeroRead(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testzeroread>)

- [typedef StructuralError](<#typedef-structuralerror>)

- [typedef T\_\_struct\_0](<#typedef-t__struct_0>)

- [typedef T\_\_struct\_1](<#typedef-t__struct_1>)

- [typedef T\_\_struct\_2](<#typedef-t__struct_2>)

- [typedef T\_moveToFrontDecoder](<#typedef-t_movetofrontdecoder>)

# Constants


```haxe
import stdgo.compress.bzip2.Bzip2
```


```haxe
final _bzip2BlockMagic:stdgo.GoUInt64 = ((54156738319193i64 : stdgo.GoUInt64))
```


```haxe
final _bzip2FileMagic:stdgo.GoUInt64 = ((16986i64 : stdgo.GoUInt64))
```



"BZ"  

```haxe
final _bzip2FinalMagic:stdgo.GoUInt64 = ((25779555029136i64 : stdgo.GoUInt64))
```


```haxe
final _invalidNodeValue:stdgo.GoUInt64 = ((65535i64 : stdgo.GoUInt64))
```



invalidNodeValue is an invalid index which marks a leaf node in the tree.  

# Variables


```haxe
import stdgo.compress.bzip2.Bzip2
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
import stdgo.compress.bzip2.Bzip2
```


## function \_benchmarkDecode


```haxe
function _benchmarkDecode(_b:stdgo.Ref<stdgo.testing.B>, _compressed:stdgo.Slice<stdgo.GoByte>):Void
```


[\(view code\)](<./Bzip2.hx#L465>)


## function \_buildHuffmanNode


```haxe
function _buildHuffmanNode(_t:stdgo.Ref<stdgo.compress.bzip2.T_huffmanTree>, _codes:stdgo.Slice<stdgo.compress.bzip2.T_huffmanCode>, _level:stdgo.GoUInt32):{
	_1:stdgo.Error;
	_0:stdgo.GoUInt16;
}
```



buildHuffmanNode takes a slice of sorted huffmanCodes and builds a node in
the Huffman tree at the given level. It returns the index of the newly
constructed node.  

[\(view code\)](<./Bzip2.hx#L543>)


## function \_inverseBWT


```haxe
function _inverseBWT(_tt:stdgo.Slice<stdgo.GoUInt32>, _origPtr:stdgo.GoUInt, _c:stdgo.Slice<stdgo.GoUInt>):stdgo.GoUInt32
```



inverseBWT implements the inverse Burrows\-Wheeler transform as described in
http://www.hpl.hp.com/techreports/Compaq-DEC/SRC-RR-124.pdf, section 4.2.
In that document, origPtr is called “I” and c is the “C” array after the
first pass over the data. It's an argument here because we merge the first
pass with the Huffman decoding.  


This also implements the “single array” method from the bzip2 source code
which leaves the output, still shuffled, in the bottom 8 bits of tt with the
index of the next byte in the top 24\-bits. The index of the first byte is
returned.  

[\(view code\)](<./Bzip2.hx#L325>)


## function \_mustDecodeHex


```haxe
function _mustDecodeHex(_s:stdgo.GoString):stdgo.Slice<stdgo.GoByte>
```


[\(view code\)](<./Bzip2.hx#L352>)


## function \_mustLoadFile


```haxe
function _mustLoadFile(_f:stdgo.GoString):stdgo.Slice<stdgo.GoByte>
```


[\(view code\)](<./Bzip2.hx#L359>)


## function \_newBitReader


```haxe
function _newBitReader(_r:stdgo.io.Reader):stdgo.compress.bzip2.T_bitReader
```



newBitReader returns a new bitReader reading from r. If r is not
already an io.ByteReader, it will be converted via a bufio.Reader.  

[\(view code\)](<./Bzip2.hx#L292>)


## function \_newHuffmanTree


```haxe
function _newHuffmanTree(_lengths:stdgo.Slice<stdgo.GoUInt8>):{
	_1:stdgo.Error;
	_0:stdgo.compress.bzip2.T_huffmanTree;
}
```



newHuffmanTree builds a Huffman tree from a slice containing the code
lengths of each symbol. The maximum code length is 32 bits.  

[\(view code\)](<./Bzip2.hx#L494>)


## function \_newMTFDecoder


```haxe
function _newMTFDecoder(_symbols:stdgo.Slice<stdgo.GoByte>):stdgo.compress.bzip2.T_moveToFrontDecoder
```



newMTFDecoder creates a move\-to\-front decoder with an explicit initial list
of symbols.  

[\(view code\)](<./Bzip2.hx#L599>)


## function \_newMTFDecoderWithRange


```haxe
function _newMTFDecoderWithRange(_n:stdgo.GoInt):stdgo.compress.bzip2.T_moveToFrontDecoder
```



newMTFDecoderWithRange creates a move\-to\-front decoder with an initial
symbol list of 0...n\-1.  

[\(view code\)](<./Bzip2.hx#L609>)


## function \_trim


```haxe
function _trim(_b:stdgo.Slice<stdgo.GoByte>):stdgo.GoString
```


[\(view code\)](<./Bzip2.hx#L362>)


## function \_updateCRC


```haxe
function _updateCRC(_val:stdgo.GoUInt32, _b:stdgo.Slice<stdgo.GoByte>):stdgo.GoUInt32
```



updateCRC updates the crc value to incorporate the data in b.
The initial value is 0.  

[\(view code\)](<./Bzip2.hx#L345>)


## function benchmarkDecodeDigits


```haxe
function benchmarkDecodeDigits(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Bzip2.hx#L481>)


## function benchmarkDecodeNewton


```haxe
function benchmarkDecodeNewton(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Bzip2.hx#L484>)


## function benchmarkDecodeRand


```haxe
function benchmarkDecodeRand(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Bzip2.hx#L487>)


## function newReader


```haxe
function newReader(_r:stdgo.io.Reader):stdgo.io.Reader
```



NewReader returns an io.Reader which decompresses bzip2 data from r.
If r does not also implement io.ByteReader,
the decompressor may read more data than necessary from r.  

[\(view code\)](<./Bzip2.hx#L308>)


## function testBitReader


```haxe
function testBitReader(_t:stdgo.Ref<stdgo.testing.T_>):Void
```


[\(view code\)](<./Bzip2.hx#L412>)


## function testMTF


```haxe
function testMTF(_t:stdgo.Ref<stdgo.testing.T_>):Void
```


[\(view code\)](<./Bzip2.hx#L444>)


## function testReader


```haxe
function testReader(_t:stdgo.Ref<stdgo.testing.T_>):Void
```


[\(view code\)](<./Bzip2.hx#L369>)


## function testZeroRead


```haxe
function testZeroRead(_t:stdgo.Ref<stdgo.testing.T_>):Void
```


[\(view code\)](<./Bzip2.hx#L455>)


# Typedefs


```haxe
import stdgo.compress.bzip2.*
```


## typedef StructuralError


```haxe
typedef StructuralError = stdgo.GoString;
```



A StructuralError is returned when the bzip2 data is found to be
syntactically invalid.  

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



moveToFrontDecoder implements a move\-to\-front list. Such a list is an
efficient way to transform a string with repeating elements into one with
many small valued numbers, which is suitable for entropy encoding. It works
by starting with an initial list of symbols and references symbols by their
index into that list. When a symbol is referenced, it's moved to the front
of the list. Thus, a repeated symbol ends up being encoded with many zeros,
as the symbol will be at the front of the list after the first access.  

