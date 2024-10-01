# Module: `stdgo._internal.compress.flate`

[(view library index)](../../../stdgo.md)


# Overview


# Index


- [Constants](<#constants>)

- [Variables](<#variables>)

- [`function _generateFixedOffsetEncoding():stdgo.Ref<stdgo._internal.compress.flate.T_huffmanEncoder>`](<#function-_generatefixedoffsetencoding>)

- [`function _newHuffmanEncoder(_size:stdgo.GoInt):stdgo.Ref<stdgo._internal.compress.flate.T_huffmanEncoder>`](<#function-_newhuffmanencoder>)

- [`function _reverseBits(_number:stdgo.GoUInt16, _bitLength:stdgo.GoUInt8):stdgo.GoUInt16`](<#function-_reversebits>)

- [`function _generateFixedLiteralEncoding():stdgo.Ref<stdgo._internal.compress.flate.T_huffmanEncoder>`](<#function-_generatefixedliteralencoding>)

- [`function _maxNode():stdgo._internal.compress.flate.T_literalNode`](<#function-_maxnode>)

- [`function _bulkHash4(_b:stdgo.Slice<stdgo.GoUInt8>, _dst:stdgo.Slice<stdgo.GoUInt32>):Void`](<#function-_bulkhash4>)

- [`function _emitLiteral(_dst:stdgo.Slice<stdgo._internal.compress.flate.T_token>, _lit:stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo._internal.compress.flate.T_token>`](<#function-_emitliteral>)

- [`function _fixedHuffmanDecoderInit():Void`](<#function-_fixedhuffmandecoderinit>)

- [`function _hash(_u:stdgo.GoUInt32):stdgo.GoUInt32`](<#function-_hash>)

- [`function _hash4(_b:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoUInt32`](<#function-_hash4>)

- [`function _histogram(_b:stdgo.Slice<stdgo.GoUInt8>, _h:stdgo.Slice<stdgo.GoInt32>):Void`](<#function-_histogram>)

- [`function _lengthCode(_len:stdgo.GoUInt32):stdgo.GoUInt32`](<#function-_lengthcode>)

- [`function _literalToken(_literal:stdgo.GoUInt32):stdgo._internal.compress.flate.T_token`](<#function-_literaltoken>)

- [`function _load32(_b:stdgo.Slice<stdgo.GoUInt8>, _i:stdgo.GoInt32):stdgo.GoUInt32`](<#function-_load32>)

- [`function _load64(_b:stdgo.Slice<stdgo.GoUInt8>, _i:stdgo.GoInt32):stdgo.GoUInt64`](<#function-_load64>)

- [`function _matchLen(_a:stdgo.Slice<stdgo.GoUInt8>, _b:stdgo.Slice<stdgo.GoUInt8>, _max:stdgo.GoInt):stdgo.GoInt`](<#function-_matchlen>)

- [`function _matchToken(_xlength:stdgo.GoUInt32, _xoffset:stdgo.GoUInt32):stdgo._internal.compress.flate.T_token`](<#function-_matchtoken>)

- [`function _newDeflateFast():stdgo.Ref<stdgo._internal.compress.flate.T_deflateFast>`](<#function-_newdeflatefast>)

- [`function _newHuffmanBitWriter(_w:stdgo._internal.io.Writer):stdgo.Ref<stdgo._internal.compress.flate.T_huffmanBitWriter>`](<#function-_newhuffmanbitwriter>)

- [`function _noEOF(_e:stdgo.Error):stdgo.Error`](<#function-_noeof>)

- [`function _offsetCode(_off:stdgo.GoUInt32):stdgo.GoUInt32`](<#function-_offsetcode>)

- [`function newReader(_r:stdgo._internal.io.Reader):stdgo._internal.io.ReadCloser`](<#function-newreader>)

- [`function newReaderDict(_r:stdgo._internal.io.Reader, _dict:stdgo.Slice<stdgo.GoUInt8>):stdgo._internal.io.ReadCloser`](<#function-newreaderdict>)

- [`function newWriter(_w:stdgo._internal.io.Writer, _level:stdgo.GoInt):{
	_1:stdgo.Error;
	_0:stdgo.Ref<stdgo._internal.compress.flate.Writer>;
}`](<#function-newwriter>)

- [`function newWriterDict(_w:stdgo._internal.io.Writer, _level:stdgo.GoInt, _dict:stdgo.Slice<stdgo.GoUInt8>):{
	_1:stdgo.Error;
	_0:stdgo.Ref<stdgo._internal.compress.flate.Writer>;
}`](<#function-newwriterdict>)

- [class ReadError](<#class-readerror>)

  - [`function new(?offset:stdgo.GoInt64, ?err:Null<stdgo.Error>):Void`](<#readerror-function-new>)

- [class T\_compressionLevel](<#class-t_compressionlevel>)

  - [`function new(?_level:stdgo.GoInt, ?_good:stdgo.GoInt, ?_lazy:stdgo.GoInt, ?_nice:stdgo.GoInt, ?_chain:stdgo.GoInt, ?_fastSkipHashing:stdgo.GoInt):Void`](<#t_compressionlevel-function-new>)

- [class T\_compressor](<#class-t_compressor>)

  - [`function _bulkHasher(:stdgo.Slice<stdgo.GoUInt8>, :stdgo.Slice<stdgo.GoUInt32>):Void`](<#t_compressor-function-_bulkhasher>)

  - [`function _fill(:stdgo.Ref<stdgo._internal.compress.flate.T_compressor>, :stdgo.Slice<stdgo.GoUInt8>):stdgo.GoInt`](<#t_compressor-function-_fill>)

  - [`function _step()`](<#t_compressor-function-_step>)

  - [`function new(?_compressionLevel:stdgo._internal.compress.flate.T_compressionLevel, ?_w:stdgo.Ref<stdgo._internal.compress.flate.T_huffmanBitWriter>, ?_bulkHasher:(:stdgo.Slice<stdgo.GoUInt8>, :stdgo.Slice<stdgo.GoUInt32>):Void, ?_fill:(:stdgo.Ref<stdgo._internal.compress.flate.T_compressor>, :stdgo.Slice<stdgo.GoUInt8>):stdgo.GoInt, ?_step:(), ?_sync:Bool, ?_bestSpeed:stdgo.Ref<stdgo._internal.compress.flate.T_deflateFast>, ?_chainHead:Null<stdgo.GoInt>, ?_hashHead:stdgo.GoArray<stdgo.GoUInt32>, ?_hashPrev:stdgo.GoArray<stdgo.GoUInt32>, ?_hashOffset:Null<stdgo.GoInt>, ?_index:Null<stdgo.GoInt>, ?_window:stdgo.Slice<stdgo.GoUInt8>, ?_windowEnd:Null<stdgo.GoInt>, ?_blockStart:Null<stdgo.GoInt>, ?_byteAvailable:Bool, ?_tokens:stdgo.Slice<stdgo._internal.compress.flate.T_token>, ?_length:Null<stdgo.GoInt>, ?_offset:Null<stdgo.GoInt>, ?_maxInsertIndex:Null<stdgo.GoInt>, ?_err:Null<stdgo.Error>, ?_hashMatch:stdgo.GoArray<stdgo.GoUInt32>):Void`](<#t_compressor-function-new>)

- [class T\_decompressor](<#class-t_decompressor>)

  - [`function _step()`](<#t_decompressor-function-_step>)

  - [`function new(?_r:Null<stdgo._internal.compress.flate.Reader>, ?_rBuf:stdgo.Ref<stdgo._internal.bufio.Reader>, ?_roffset:stdgo.GoInt64, ?_b:stdgo.GoUInt32, ?_nb:stdgo.GoUInt, ?_h1:stdgo._internal.compress.flate.T_huffmanDecoder, ?_h2:stdgo._internal.compress.flate.T_huffmanDecoder, ?_bits:stdgo.Ref<stdgo.GoArray<stdgo.GoInt>>, ?_codebits:stdgo.Ref<stdgo.GoArray<stdgo.GoInt>>, ?_dict:stdgo._internal.compress.flate.T_dictDecoder, ?_buf:stdgo.GoArray<stdgo.GoUInt8>, ?_step:(), ?_stepState:stdgo.GoInt, ?_final:Bool, ?_err:Null<stdgo.Error>, ?_toRead:stdgo.Slice<stdgo.GoUInt8>, ?_hl:stdgo.Ref<stdgo._internal.compress.flate.T_huffmanDecoder>, ?_hd:stdgo.Ref<stdgo._internal.compress.flate.T_huffmanDecoder>, ?_copyLen:stdgo.GoInt, ?_copyDist:stdgo.GoInt):Void`](<#t_decompressor-function-new>)

- [class T\_deflateFast](<#class-t_deflatefast>)

  - [`function new(?_table:stdgo.GoArray<stdgo._internal.compress.flate.T_tableEntry>, ?_prev:stdgo.Slice<stdgo.GoUInt8>, ?_cur:stdgo.GoInt32):Void`](<#t_deflatefast-function-new>)

- [class T\_dictDecoder](<#class-t_dictdecoder>)

  - [`function new(?_hist:stdgo.Slice<stdgo.GoUInt8>, ?_wrPos:stdgo.GoInt, ?_rdPos:stdgo.GoInt, ?_full:Bool):Void`](<#t_dictdecoder-function-new>)

- [class T\_dictWriter](<#class-t_dictwriter>)

  - [`function new(?_w:Null<stdgo._internal.io.Writer>):Void`](<#t_dictwriter-function-new>)

- [class T\_hcode](<#class-t_hcode>)

  - [`function new(?_code:stdgo.GoUInt16, ?_len:stdgo.GoUInt16):Void`](<#t_hcode-function-new>)

- [class T\_huffmanBitWriter](<#class-t_huffmanbitwriter>)

  - [`function new(?_writer:Null<stdgo._internal.io.Writer>, ?_bits:stdgo.GoUInt64, ?_nbits:stdgo.GoUInt, ?_bytes:stdgo.GoArray<stdgo.GoUInt8>, ?_codegenFreq:stdgo.GoArray<stdgo.GoInt32>, ?_nbytes:stdgo.GoInt, ?_literalFreq:stdgo.Slice<stdgo.GoInt32>, ?_offsetFreq:stdgo.Slice<stdgo.GoInt32>, ?_codegen:stdgo.Slice<stdgo.GoUInt8>, ?_literalEncoding:stdgo.Ref<stdgo._internal.compress.flate.T_huffmanEncoder>, ?_offsetEncoding:stdgo.Ref<stdgo._internal.compress.flate.T_huffmanEncoder>, ?_codegenEncoding:stdgo.Ref<stdgo._internal.compress.flate.T_huffmanEncoder>, ?_err:Null<stdgo.Error>):Void`](<#t_huffmanbitwriter-function-new>)

- [class T\_huffmanDecoder](<#class-t_huffmandecoder>)

  - [`function new(?_min:stdgo.GoInt, ?_chunks:stdgo.GoArray<stdgo.GoUInt32>, ?_links:stdgo.Slice<stdgo.Slice<stdgo.GoUInt32>>, ?_linkMask:stdgo.GoUInt32):Void`](<#t_huffmandecoder-function-new>)

- [class T\_huffmanEncoder](<#class-t_huffmanencoder>)

  - [`function new(?_codes:stdgo.Slice<stdgo._internal.compress.flate.T_hcode>, ?_freqcache:stdgo.Slice<stdgo._internal.compress.flate.T_literalNode>, ?_bitCount:stdgo.GoArray<stdgo.GoInt32>, ?_lns:Null<stdgo._internal.compress.flate.T_byLiteral>, ?_lfs:Null<stdgo._internal.compress.flate.T_byFreq>):Void`](<#t_huffmanencoder-function-new>)

- [class T\_levelInfo](<#class-t_levelinfo>)

  - [`function new(?_level:stdgo.GoInt32, ?_lastFreq:stdgo.GoInt32, ?_nextCharFreq:stdgo.GoInt32, ?_nextPairFreq:stdgo.GoInt32, ?_needed:stdgo.GoInt32):Void`](<#t_levelinfo-function-new>)

- [class T\_literalNode](<#class-t_literalnode>)

  - [`function new(?_literal:stdgo.GoUInt16, ?_freq:stdgo.GoInt32):Void`](<#t_literalnode-function-new>)

- [class T\_tableEntry](<#class-t_tableentry>)

  - [`function new(?_val:stdgo.GoUInt32, ?_offset:stdgo.GoInt32):Void`](<#t_tableentry-function-new>)

- [class WriteError](<#class-writeerror>)

  - [`function new(?offset:stdgo.GoInt64, ?err:Null<stdgo.Error>):Void`](<#writeerror-function-new>)

- [class Writer](<#class-writer>)

  - [`function new(?_d:stdgo._internal.compress.flate.T_compressor, ?_dict:stdgo.Slice<stdgo.GoUInt8>):Void`](<#writer-function-new>)

- [typedef CorruptInputError](<#typedef-corruptinputerror>)

- [typedef InternalError](<#typedef-internalerror>)

- [typedef Reader](<#typedef-reader>)

- [typedef Resetter](<#typedef-resetter>)

- [typedef T\_byFreq](<#typedef-t_byfreq>)

- [typedef T\_byLiteral](<#typedef-t_byliteral>)

- [typedef T\_token](<#typedef-t_token>)

# Constants


```haxe
import stdgo._internal.compress.flate.Flate_noCompression
```


```haxe
final _badCode:stdgo.GoUInt64 = ((255i64 : stdgo.GoUInt64))
```


```haxe
final _baseMatchLength:stdgo.GoUInt64 = ((3i64 : stdgo.GoUInt64))
```


```haxe
final _baseMatchOffset:stdgo.GoUInt64 = ((1i64 : stdgo.GoUInt64))
```


```haxe
final _bufferFlushSize:stdgo.GoUInt64 = ((240i64 : stdgo.GoUInt64))
```


```haxe
final _bufferReset:stdgo.GoUInt64 = ((2147352577i64 : stdgo.GoUInt64))
```


```haxe
final _bufferSize:stdgo.GoUInt64 = ((248i64 : stdgo.GoUInt64))
```


```haxe
final _codegenCodeCount:stdgo.GoUInt64 = ((19i64 : stdgo.GoUInt64))
```


```haxe
final _endBlockMarker:stdgo.GoUInt64 = ((256i64 : stdgo.GoUInt64))
```


```haxe
final _hashBits:stdgo.GoUInt64 = ((17i64 : stdgo.GoUInt64))
```


```haxe
final _hashMask:stdgo.GoUInt64 = ((131071i64 : stdgo.GoUInt64))
```


```haxe
final _hashSize:stdgo.GoUInt64 = ((131072i64 : stdgo.GoUInt64))
```


```haxe
final _hashmul:stdgo.GoUInt64 = ((506832829i64 : stdgo.GoUInt64))
```


```haxe
final _huffmanChunkBits:stdgo.GoUInt64 = ((9i64 : stdgo.GoUInt64))
```


```haxe
final _huffmanCountMask:stdgo.GoUInt64 = ((15i64 : stdgo.GoUInt64))
```


```haxe
final _huffmanNumChunks:stdgo.GoUInt64 = ((512i64 : stdgo.GoUInt64))
```


```haxe
final _huffmanValueShift:stdgo.GoUInt64 = ((4i64 : stdgo.GoUInt64))
```


```haxe
final _inputMargin:stdgo.GoUInt64 = ((15i64 : stdgo.GoUInt64))
```


```haxe
final _lengthCodesStart:stdgo.GoUInt64 = ((257i64 : stdgo.GoUInt64))
```


```haxe
final _lengthShift:stdgo.GoUInt64 = ((22i64 : stdgo.GoUInt64))
```


```haxe
final _literalType:stdgo.GoUInt64 = ((0i64 : stdgo.GoUInt64))
```


```haxe
final _logWindowSize:stdgo.GoUInt64 = ((15i64 : stdgo.GoUInt64))
```


```haxe
final _matchType:stdgo.GoUInt64 = ((1073741824i64 : stdgo.GoUInt64))
```


```haxe
final _maxBitsLimit:stdgo.GoUInt64 = ((16i64 : stdgo.GoUInt64))
```


```haxe
final _maxCodeLen:stdgo.GoUInt64 = ((16i64 : stdgo.GoUInt64))
```


```haxe
final _maxFlateBlockTokens:stdgo.GoUInt64 = ((16384i64 : stdgo.GoUInt64))
```


```haxe
final _maxHashOffset:stdgo.GoUInt64 = ((16777216i64 : stdgo.GoUInt64))
```


```haxe
final _maxMatchLength:stdgo.GoUInt64 = ((258i64 : stdgo.GoUInt64))
```


```haxe
final _maxMatchOffset:stdgo.GoUInt64 = ((32768i64 : stdgo.GoUInt64))
```


```haxe
final _maxNumDist:stdgo.GoUInt64 = ((30i64 : stdgo.GoUInt64))
```


```haxe
final _maxNumLit:stdgo.GoUInt64 = ((286i64 : stdgo.GoUInt64))
```


```haxe
final _maxStoreBlockSize:stdgo.GoUInt64 = ((65535i64 : stdgo.GoUInt64))
```


```haxe
final _minMatchLength:stdgo.GoUInt64 = ((4i64 : stdgo.GoUInt64))
```


```haxe
final _minNonLiteralBlockSize:stdgo.GoUInt64 = ((17i64 : stdgo.GoUInt64))
```


```haxe
final _numCodes:stdgo.GoUInt64 = ((19i64 : stdgo.GoUInt64))
```


```haxe
final _offsetCodeCount:stdgo.GoUInt64 = ((30i64 : stdgo.GoUInt64))
```


```haxe
final _offsetMask:stdgo.GoUInt64 = ((4194303i64 : stdgo.GoUInt64))
```


```haxe
final _skipNever:stdgo.GoUInt64 = ((2147483647i64 : stdgo.GoUInt64))
```


```haxe
final _tableBits:stdgo.GoUInt64 = ((14i64 : stdgo.GoUInt64))
```


```haxe
final _tableMask:stdgo.GoUInt64 = ((16383i64 : stdgo.GoUInt64))
```


```haxe
final _tableShift:stdgo.GoUInt64 = ((18i64 : stdgo.GoUInt64))
```


```haxe
final _tableSize:stdgo.GoUInt64 = ((16384i64 : stdgo.GoUInt64))
```


```haxe
final _typeMask:stdgo.GoUInt64 = ((3221225472i64 : stdgo.GoUInt64))
```


```haxe
final _windowMask:stdgo.GoUInt64 = ((32767i64 : stdgo.GoUInt64))
```


```haxe
final _windowSize:stdgo.GoUInt64 = ((32768i64 : stdgo.GoUInt64))
```


```haxe
final bestCompression:stdgo.GoUInt64 = ((9i64 : stdgo.GoUInt64))
```


```haxe
final bestSpeed:stdgo.GoUInt64 = ((1i64 : stdgo.GoUInt64))
```


```haxe
final defaultCompression:stdgo.GoUInt64 = ((0i64 : stdgo.GoUInt64))
```


```haxe
final huffmanOnly:stdgo.GoUInt64 = ((0i64 : stdgo.GoUInt64))
```


```haxe
final noCompression:stdgo.GoUInt64 = ((0i64 : stdgo.GoUInt64))
```


# Variables


```haxe
import stdgo._internal.compress.flate.Flate_noCompression
```


```haxe
var _levels:stdgo.Slice<stdgo._internal.compress.flate.T_compressionLevel>
```


```haxe
var _errWriterClosed:stdgo.Error
```


```haxe
var _lengthExtraBits:stdgo.Slice<stdgo.GoInt8>
```


```haxe
var _lengthBase:stdgo.Slice<stdgo.GoUInt32>
```


```haxe
var _offsetExtraBits:stdgo.Slice<stdgo.GoInt8>
```


```haxe
var _offsetBase:stdgo.Slice<stdgo.GoUInt32>
```


```haxe
var _codegenOrder:stdgo.Slice<stdgo.GoUInt32>
```


```haxe
var _fixedOffsetEncoding:stdgo.Ref<stdgo._internal.compress.flate.T_huffmanEncoder>
```


```haxe
var _fixedLiteralEncoding:stdgo.Ref<stdgo._internal.compress.flate.T_huffmanEncoder>
```


```haxe
var _codeOrder:stdgo.GoArray<stdgo.GoInt>
```


```haxe
var _lengthCodes:stdgo.GoArray<stdgo.GoUInt32>
```


```haxe
var _offsetCodes:stdgo.GoArray<stdgo.GoUInt32>
```


```haxe
var _huffOffset:stdgo.Ref<stdgo._internal.compress.flate.T_huffmanEncoder>
```


```haxe
var _fixedHuffmanDecoder:stdgo._internal.compress.flate.T_huffmanDecoder
```


```haxe
var _fixedOnce:stdgo._internal.sync.Once
```


# Functions


```haxe
import stdgo._internal.compress.flate.Flate_noCompression
```


## function \_generateFixedOffsetEncoding


```haxe
function _generateFixedOffsetEncoding():stdgo.Ref<stdgo._internal.compress.flate.T_huffmanEncoder>
```


[\(view code\)](<./Flate_noCompression.hx#L2>)


## function \_newHuffmanEncoder


```haxe
function _newHuffmanEncoder(_size:stdgo.GoInt):stdgo.Ref<stdgo._internal.compress.flate.T_huffmanEncoder>
```


[\(view code\)](<./Flate_noCompression.hx#L2>)


## function \_reverseBits


```haxe
function _reverseBits(_number:stdgo.GoUInt16, _bitLength:stdgo.GoUInt8):stdgo.GoUInt16
```


[\(view code\)](<./Flate_noCompression.hx#L2>)


## function \_generateFixedLiteralEncoding


```haxe
function _generateFixedLiteralEncoding():stdgo.Ref<stdgo._internal.compress.flate.T_huffmanEncoder>
```


[\(view code\)](<./Flate_noCompression.hx#L2>)


## function \_maxNode


```haxe
function _maxNode():stdgo._internal.compress.flate.T_literalNode
```


[\(view code\)](<./Flate_noCompression.hx#L2>)


## function \_bulkHash4


```haxe
function _bulkHash4(_b:stdgo.Slice<stdgo.GoUInt8>, _dst:stdgo.Slice<stdgo.GoUInt32>):Void
```


[\(view code\)](<./Flate_noCompression.hx#L2>)


## function \_emitLiteral


```haxe
function _emitLiteral(_dst:stdgo.Slice<stdgo._internal.compress.flate.T_token>, _lit:stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo._internal.compress.flate.T_token>
```


[\(view code\)](<./Flate_noCompression.hx#L2>)


## function \_fixedHuffmanDecoderInit


```haxe
function _fixedHuffmanDecoderInit():Void
```


[\(view code\)](<./Flate_noCompression.hx#L2>)


## function \_hash


```haxe
function _hash(_u:stdgo.GoUInt32):stdgo.GoUInt32
```


[\(view code\)](<./Flate_noCompression.hx#L2>)


## function \_hash4


```haxe
function _hash4(_b:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoUInt32
```


[\(view code\)](<./Flate_noCompression.hx#L2>)


## function \_histogram


```haxe
function _histogram(_b:stdgo.Slice<stdgo.GoUInt8>, _h:stdgo.Slice<stdgo.GoInt32>):Void
```


[\(view code\)](<./Flate_noCompression.hx#L2>)


## function \_lengthCode


```haxe
function _lengthCode(_len:stdgo.GoUInt32):stdgo.GoUInt32
```


[\(view code\)](<./Flate_noCompression.hx#L2>)


## function \_literalToken


```haxe
function _literalToken(_literal:stdgo.GoUInt32):stdgo._internal.compress.flate.T_token
```


[\(view code\)](<./Flate_noCompression.hx#L2>)


## function \_load32


```haxe
function _load32(_b:stdgo.Slice<stdgo.GoUInt8>, _i:stdgo.GoInt32):stdgo.GoUInt32
```


[\(view code\)](<./Flate_noCompression.hx#L2>)


## function \_load64


```haxe
function _load64(_b:stdgo.Slice<stdgo.GoUInt8>, _i:stdgo.GoInt32):stdgo.GoUInt64
```


[\(view code\)](<./Flate_noCompression.hx#L2>)


## function \_matchLen


```haxe
function _matchLen(_a:stdgo.Slice<stdgo.GoUInt8>, _b:stdgo.Slice<stdgo.GoUInt8>, _max:stdgo.GoInt):stdgo.GoInt
```


[\(view code\)](<./Flate_noCompression.hx#L2>)


## function \_matchToken


```haxe
function _matchToken(_xlength:stdgo.GoUInt32, _xoffset:stdgo.GoUInt32):stdgo._internal.compress.flate.T_token
```


[\(view code\)](<./Flate_noCompression.hx#L2>)


## function \_newDeflateFast


```haxe
function _newDeflateFast():stdgo.Ref<stdgo._internal.compress.flate.T_deflateFast>
```


[\(view code\)](<./Flate_noCompression.hx#L2>)


## function \_newHuffmanBitWriter


```haxe
function _newHuffmanBitWriter(_w:stdgo._internal.io.Writer):stdgo.Ref<stdgo._internal.compress.flate.T_huffmanBitWriter>
```


[\(view code\)](<./Flate_noCompression.hx#L2>)


## function \_noEOF


```haxe
function _noEOF(_e:stdgo.Error):stdgo.Error
```


[\(view code\)](<./Flate_noCompression.hx#L2>)


## function \_offsetCode


```haxe
function _offsetCode(_off:stdgo.GoUInt32):stdgo.GoUInt32
```


[\(view code\)](<./Flate_noCompression.hx#L2>)


## function newReader


```haxe
function newReader(_r:stdgo._internal.io.Reader):stdgo._internal.io.ReadCloser
```


[\(view code\)](<./Flate_noCompression.hx#L2>)


## function newReaderDict


```haxe
function newReaderDict(_r:stdgo._internal.io.Reader, _dict:stdgo.Slice<stdgo.GoUInt8>):stdgo._internal.io.ReadCloser
```


[\(view code\)](<./Flate_noCompression.hx#L2>)


## function newWriter


```haxe
function newWriter(_w:stdgo._internal.io.Writer, _level:stdgo.GoInt):{
	_1:stdgo.Error;
	_0:stdgo.Ref<stdgo._internal.compress.flate.Writer>;
}
```


[\(view code\)](<./Flate_noCompression.hx#L2>)


## function newWriterDict


```haxe
function newWriterDict(_w:stdgo._internal.io.Writer, _level:stdgo.GoInt, _dict:stdgo.Slice<stdgo.GoUInt8>):{
	_1:stdgo.Error;
	_0:stdgo.Ref<stdgo._internal.compress.flate.Writer>;
}
```


[\(view code\)](<./Flate_noCompression.hx#L2>)


# Classes


```haxe
import stdgo._internal.compress.flate.*
```


## class ReadError


```haxe
var err:stdgo.Error
```


```haxe
var offset:stdgo.GoInt64
```


### ReadError function new


```haxe
function new(?offset:stdgo.GoInt64, ?err:Null<stdgo.Error>):Void
```


[\(view code\)](<./Flate_ReadError.hx#L5>)


## class T\_compressionLevel


```haxe
var _chain:stdgo.GoInt
```


```haxe
var _fastSkipHashing:stdgo.GoInt
```


```haxe
var _good:stdgo.GoInt
```


```haxe
var _lazy:stdgo.GoInt
```


```haxe
var _level:stdgo.GoInt
```


```haxe
var _nice:stdgo.GoInt
```


### T\_compressionLevel function new


```haxe
function new(?_level:stdgo.GoInt, ?_good:stdgo.GoInt, ?_lazy:stdgo.GoInt, ?_nice:stdgo.GoInt, ?_chain:stdgo.GoInt, ?_fastSkipHashing:stdgo.GoInt):Void
```


[\(view code\)](<./Flate_T_compressionLevel.hx#L9>)


## class T\_compressor


```haxe
var _bestSpeed:stdgo.Ref<stdgo._internal.compress.flate.T_deflateFast>
```


```haxe
var _blockStart:stdgo.GoInt
```


```haxe
var _byteAvailable:Bool
```


```haxe
var _chainHead:stdgo.GoInt
```


```haxe
var _compressionLevel:stdgo._internal.compress.flate.T_compressionLevel
```


```haxe
var _err:stdgo.Error
```


```haxe
var _hashHead:stdgo.GoArray<stdgo.GoUInt32>
```


```haxe
var _hashMatch:stdgo.GoArray<stdgo.GoUInt32>
```


```haxe
var _hashOffset:stdgo.GoInt
```


```haxe
var _hashPrev:stdgo.GoArray<stdgo.GoUInt32>
```


```haxe
var _index:stdgo.GoInt
```


```haxe
var _length:stdgo.GoInt
```


```haxe
var _maxInsertIndex:stdgo.GoInt
```


```haxe
var _offset:stdgo.GoInt
```


```haxe
var _sync:Bool
```


```haxe
var _tokens:stdgo.Slice<stdgo._internal.compress.flate.T_token>
```


```haxe
var _w:stdgo.Ref<stdgo._internal.compress.flate.T_huffmanBitWriter>
```


```haxe
var _window:stdgo.Slice<stdgo.GoUInt8>
```


```haxe
var _windowEnd:stdgo.GoInt
```


### T\_compressor function \_bulkHasher


```haxe
function _bulkHasher(:stdgo.Slice<stdgo.GoUInt8>, :stdgo.Slice<stdgo.GoUInt32>):Void
```


### T\_compressor function \_fill


```haxe
function _fill(:stdgo.Ref<stdgo._internal.compress.flate.T_compressor>, :stdgo.Slice<stdgo.GoUInt8>):stdgo.GoInt
```


### T\_compressor function \_step


```haxe
function _step()
```


### T\_compressor function new


```haxe
function new(?_compressionLevel:stdgo._internal.compress.flate.T_compressionLevel, ?_w:stdgo.Ref<stdgo._internal.compress.flate.T_huffmanBitWriter>, ?_bulkHasher:(:stdgo.Slice<stdgo.GoUInt8>, :stdgo.Slice<stdgo.GoUInt32>):Void, ?_fill:(:stdgo.Ref<stdgo._internal.compress.flate.T_compressor>, :stdgo.Slice<stdgo.GoUInt8>):stdgo.GoInt, ?_step:(), ?_sync:Bool, ?_bestSpeed:stdgo.Ref<stdgo._internal.compress.flate.T_deflateFast>, ?_chainHead:Null<stdgo.GoInt>, ?_hashHead:stdgo.GoArray<stdgo.GoUInt32>, ?_hashPrev:stdgo.GoArray<stdgo.GoUInt32>, ?_hashOffset:Null<stdgo.GoInt>, ?_index:Null<stdgo.GoInt>, ?_window:stdgo.Slice<stdgo.GoUInt8>, ?_windowEnd:Null<stdgo.GoInt>, ?_blockStart:Null<stdgo.GoInt>, ?_byteAvailable:Bool, ?_tokens:stdgo.Slice<stdgo._internal.compress.flate.T_token>, ?_length:Null<stdgo.GoInt>, ?_offset:Null<stdgo.GoInt>, ?_maxInsertIndex:Null<stdgo.GoInt>, ?_err:Null<stdgo.Error>, ?_hashMatch:stdgo.GoArray<stdgo.GoUInt32>):Void
```


[\(view code\)](<./Flate_T_compressor.hx#L26>)


## class T\_decompressor


```haxe
var _b:stdgo.GoUInt32
```


```haxe
var _bits:stdgo.Ref<stdgo.GoArray<stdgo.GoInt>>
```


```haxe
var _buf:stdgo.GoArray<stdgo.GoUInt8>
```


```haxe
var _codebits:stdgo.Ref<stdgo.GoArray<stdgo.GoInt>>
```


```haxe
var _copyDist:stdgo.GoInt
```


```haxe
var _copyLen:stdgo.GoInt
```


```haxe
var _dict:stdgo._internal.compress.flate.T_dictDecoder
```


```haxe
var _err:stdgo.Error
```


```haxe
var _final:Bool
```


```haxe
var _h1:stdgo._internal.compress.flate.T_huffmanDecoder
```


```haxe
var _h2:stdgo._internal.compress.flate.T_huffmanDecoder
```


```haxe
var _hd:stdgo.Ref<stdgo._internal.compress.flate.T_huffmanDecoder>
```


```haxe
var _hl:stdgo.Ref<stdgo._internal.compress.flate.T_huffmanDecoder>
```


```haxe
var _nb:stdgo.GoUInt
```


```haxe
var _r:stdgo._internal.compress.flate.Reader
```


```haxe
var _rBuf:stdgo.Ref<stdgo._internal.bufio.Reader>
```


```haxe
var _roffset:stdgo.GoInt64
```


```haxe
var _stepState:stdgo.GoInt
```


```haxe
var _toRead:stdgo.Slice<stdgo.GoUInt8>
```


### T\_decompressor function \_step


```haxe
function _step()
```


### T\_decompressor function new


```haxe
function new(?_r:Null<stdgo._internal.compress.flate.Reader>, ?_rBuf:stdgo.Ref<stdgo._internal.bufio.Reader>, ?_roffset:stdgo.GoInt64, ?_b:stdgo.GoUInt32, ?_nb:stdgo.GoUInt, ?_h1:stdgo._internal.compress.flate.T_huffmanDecoder, ?_h2:stdgo._internal.compress.flate.T_huffmanDecoder, ?_bits:stdgo.Ref<stdgo.GoArray<stdgo.GoInt>>, ?_codebits:stdgo.Ref<stdgo.GoArray<stdgo.GoInt>>, ?_dict:stdgo._internal.compress.flate.T_dictDecoder, ?_buf:stdgo.GoArray<stdgo.GoUInt8>, ?_step:(), ?_stepState:stdgo.GoInt, ?_final:Bool, ?_err:Null<stdgo.Error>, ?_toRead:stdgo.Slice<stdgo.GoUInt8>, ?_hl:stdgo.Ref<stdgo._internal.compress.flate.T_huffmanDecoder>, ?_hd:stdgo.Ref<stdgo._internal.compress.flate.T_huffmanDecoder>, ?_copyLen:stdgo.GoInt, ?_copyDist:stdgo.GoInt):Void
```


[\(view code\)](<./Flate_T_decompressor.hx#L23>)


## class T\_deflateFast


```haxe
var _cur:stdgo.GoInt32
```


```haxe
var _prev:stdgo.Slice<stdgo.GoUInt8>
```


```haxe
var _table:stdgo.GoArray<stdgo._internal.compress.flate.T_tableEntry>
```


### T\_deflateFast function new


```haxe
function new(?_table:stdgo.GoArray<stdgo._internal.compress.flate.T_tableEntry>, ?_prev:stdgo.Slice<stdgo.GoUInt8>, ?_cur:stdgo.GoInt32):Void
```


[\(view code\)](<./Flate_T_deflateFast.hx#L6>)


## class T\_dictDecoder


```haxe
var _full:Bool
```


```haxe
var _hist:stdgo.Slice<stdgo.GoUInt8>
```


```haxe
var _rdPos:stdgo.GoInt
```


```haxe
var _wrPos:stdgo.GoInt
```


### T\_dictDecoder function new


```haxe
function new(?_hist:stdgo.Slice<stdgo.GoUInt8>, ?_wrPos:stdgo.GoInt, ?_rdPos:stdgo.GoInt, ?_full:Bool):Void
```


[\(view code\)](<./Flate_T_dictDecoder.hx#L7>)


## class T\_dictWriter


```haxe
var _w:stdgo._internal.io.Writer
```


### T\_dictWriter function new


```haxe
function new(?_w:Null<stdgo._internal.io.Writer>):Void
```


[\(view code\)](<./Flate_T_dictWriter.hx#L4>)


## class T\_hcode


```haxe
var _code:stdgo.GoUInt16
```


```haxe
var _len:stdgo.GoUInt16
```


### T\_hcode function new


```haxe
function new(?_code:stdgo.GoUInt16, ?_len:stdgo.GoUInt16):Void
```


[\(view code\)](<./Flate_T_hcode.hx#L5>)


## class T\_huffmanBitWriter


```haxe
var _bits:stdgo.GoUInt64
```


```haxe
var _bytes:stdgo.GoArray<stdgo.GoUInt8>
```


```haxe
var _codegen:stdgo.Slice<stdgo.GoUInt8>
```


```haxe
var _codegenEncoding:stdgo.Ref<stdgo._internal.compress.flate.T_huffmanEncoder>
```


```haxe
var _codegenFreq:stdgo.GoArray<stdgo.GoInt32>
```


```haxe
var _err:stdgo.Error
```


```haxe
var _literalEncoding:stdgo.Ref<stdgo._internal.compress.flate.T_huffmanEncoder>
```


```haxe
var _literalFreq:stdgo.Slice<stdgo.GoInt32>
```


```haxe
var _nbits:stdgo.GoUInt
```


```haxe
var _nbytes:stdgo.GoInt
```


```haxe
var _offsetEncoding:stdgo.Ref<stdgo._internal.compress.flate.T_huffmanEncoder>
```


```haxe
var _offsetFreq:stdgo.Slice<stdgo.GoInt32>
```


```haxe
var _writer:stdgo._internal.io.Writer
```


### T\_huffmanBitWriter function new


```haxe
function new(?_writer:Null<stdgo._internal.io.Writer>, ?_bits:stdgo.GoUInt64, ?_nbits:stdgo.GoUInt, ?_bytes:stdgo.GoArray<stdgo.GoUInt8>, ?_codegenFreq:stdgo.GoArray<stdgo.GoInt32>, ?_nbytes:stdgo.GoInt, ?_literalFreq:stdgo.Slice<stdgo.GoInt32>, ?_offsetFreq:stdgo.Slice<stdgo.GoInt32>, ?_codegen:stdgo.Slice<stdgo.GoUInt8>, ?_literalEncoding:stdgo.Ref<stdgo._internal.compress.flate.T_huffmanEncoder>, ?_offsetEncoding:stdgo.Ref<stdgo._internal.compress.flate.T_huffmanEncoder>, ?_codegenEncoding:stdgo.Ref<stdgo._internal.compress.flate.T_huffmanEncoder>, ?_err:Null<stdgo.Error>):Void
```


[\(view code\)](<./Flate_T_huffmanBitWriter.hx#L16>)


## class T\_huffmanDecoder


```haxe
var _chunks:stdgo.GoArray<stdgo.GoUInt32>
```


```haxe
var _linkMask:stdgo.GoUInt32
```


```haxe
var _links:stdgo.Slice<stdgo.Slice<stdgo.GoUInt32>>
```


```haxe
var _min:stdgo.GoInt
```


### T\_huffmanDecoder function new


```haxe
function new(?_min:stdgo.GoInt, ?_chunks:stdgo.GoArray<stdgo.GoUInt32>, ?_links:stdgo.Slice<stdgo.Slice<stdgo.GoUInt32>>, ?_linkMask:stdgo.GoUInt32):Void
```


[\(view code\)](<./Flate_T_huffmanDecoder.hx#L7>)


## class T\_huffmanEncoder


```haxe
var _bitCount:stdgo.GoArray<stdgo.GoInt32>
```


```haxe
var _codes:stdgo.Slice<stdgo._internal.compress.flate.T_hcode>
```


```haxe
var _freqcache:stdgo.Slice<stdgo._internal.compress.flate.T_literalNode>
```


```haxe
var _lfs:stdgo._internal.compress.flate.T_byFreq
```


```haxe
var _lns:stdgo._internal.compress.flate.T_byLiteral
```


### T\_huffmanEncoder function new


```haxe
function new(?_codes:stdgo.Slice<stdgo._internal.compress.flate.T_hcode>, ?_freqcache:stdgo.Slice<stdgo._internal.compress.flate.T_literalNode>, ?_bitCount:stdgo.GoArray<stdgo.GoInt32>, ?_lns:Null<stdgo._internal.compress.flate.T_byLiteral>, ?_lfs:Null<stdgo._internal.compress.flate.T_byFreq>):Void
```


[\(view code\)](<./Flate_T_huffmanEncoder.hx#L8>)


## class T\_levelInfo


```haxe
var _lastFreq:stdgo.GoInt32
```


```haxe
var _level:stdgo.GoInt32
```


```haxe
var _needed:stdgo.GoInt32
```


```haxe
var _nextCharFreq:stdgo.GoInt32
```


```haxe
var _nextPairFreq:stdgo.GoInt32
```


### T\_levelInfo function new


```haxe
function new(?_level:stdgo.GoInt32, ?_lastFreq:stdgo.GoInt32, ?_nextCharFreq:stdgo.GoInt32, ?_nextPairFreq:stdgo.GoInt32, ?_needed:stdgo.GoInt32):Void
```


[\(view code\)](<./Flate_T_levelInfo.hx#L8>)


## class T\_literalNode


```haxe
var _freq:stdgo.GoInt32
```


```haxe
var _literal:stdgo.GoUInt16
```


### T\_literalNode function new


```haxe
function new(?_literal:stdgo.GoUInt16, ?_freq:stdgo.GoInt32):Void
```


[\(view code\)](<./Flate_T_literalNode.hx#L5>)


## class T\_tableEntry


```haxe
var _offset:stdgo.GoInt32
```


```haxe
var _val:stdgo.GoUInt32
```


### T\_tableEntry function new


```haxe
function new(?_val:stdgo.GoUInt32, ?_offset:stdgo.GoInt32):Void
```


[\(view code\)](<./Flate_T_tableEntry.hx#L5>)


## class WriteError


```haxe
var err:stdgo.Error
```


```haxe
var offset:stdgo.GoInt64
```


### WriteError function new


```haxe
function new(?offset:stdgo.GoInt64, ?err:Null<stdgo.Error>):Void
```


[\(view code\)](<./Flate_WriteError.hx#L5>)


## class Writer


```haxe
var _d:stdgo._internal.compress.flate.T_compressor
```


```haxe
var _dict:stdgo.Slice<stdgo.GoUInt8>
```


### Writer function new


```haxe
function new(?_d:stdgo._internal.compress.flate.T_compressor, ?_dict:stdgo.Slice<stdgo.GoUInt8>):Void
```


[\(view code\)](<./Flate_Writer.hx#L5>)


# Typedefs


```haxe
import stdgo._internal.compress.flate.*
```


## typedef CorruptInputError


```haxe
typedef CorruptInputError = stdgo.GoInt64;
```


## typedef InternalError


```haxe
typedef InternalError = stdgo.GoString;
```


## typedef Reader


```haxe
typedef Reader = {
	public function readByte():{
		_1:stdgo.Error;
		_0:stdgo.GoUInt8;
	};
	public function read(_p:stdgo.Slice<stdgo.GoUInt8>):{
		_1:stdgo.Error;
		_0:stdgo.GoInt;
	};
};
```


## typedef Resetter


```haxe
typedef Resetter = {
	public function reset(_r:stdgo._internal.io.Reader, _dict:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error;	// Reset discards any buffered data and resets the Resetter as if it was newly initialized with the given reader.
};
```


## typedef T\_byFreq


```haxe
typedef T_byFreq = stdgo.Slice<stdgo._internal.compress.flate.T_literalNode>;
```


## typedef T\_byLiteral


```haxe
typedef T_byLiteral = stdgo.Slice<stdgo._internal.compress.flate.T_literalNode>;
```


## typedef T\_token


```haxe
typedef T_token = stdgo.GoUInt32;
```


