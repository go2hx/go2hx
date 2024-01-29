# Module: `stdgo.compress.flate`

[(view library index)](../../stdgo.md)


# Overview


# Index


- [Variables](<#variables>)

- [`function _bulkHash4(_b:stdgo.Slice<stdgo.GoByte>, _dst:stdgo.Slice<stdgo.GoUInt32>):Void`](<#function-_bulkhash4>)

- [`function _checkErrors(_got:stdgo.Slice<stdgo.Error>, _want:stdgo.Error, _t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-_checkerrors>)

- [`function _doBench(_b:stdgo.Ref<stdgo._internal.testing.B>, _f:(_b:stdgo.Ref<stdgo._internal.testing.B>, _buf:stdgo.Slice<stdgo.GoByte>, _level:stdgo.GoInt, _n:stdgo.GoInt):Void):Void`](<#function-_dobench>)

- [`function _emitLiteral(_dst:stdgo.Slice<stdgo.compress.flate.T_token>, _lit:stdgo.Slice<stdgo.GoByte>):Void`](<#function-_emitliteral>)

- [`function _fixedHuffmanDecoderInit():Void`](<#function-_fixedhuffmandecoderinit>)

- [`function _generateFixedLiteralEncoding():Void`](<#function-_generatefixedliteralencoding>)

- [`function _generateFixedOffsetEncoding():Void`](<#function-_generatefixedoffsetencoding>)

- [`function _hash(_u:stdgo.GoUInt32):Void`](<#function-_hash>)

- [`function _hash4(_b:stdgo.Slice<stdgo.GoByte>):Void`](<#function-_hash4>)

- [`function _histogram(_b:stdgo.Slice<stdgo.GoByte>, _h:stdgo.Slice<stdgo.GoInt32>):Void`](<#function-_histogram>)

- [`function _largeDataChunk():Void`](<#function-_largedatachunk>)

- [`function _lengthCode(_len:stdgo.GoUInt32):Void`](<#function-_lengthcode>)

- [`function _literalToken(_literal:stdgo.GoUInt32):Void`](<#function-_literaltoken>)

- [`function _load32(_b:stdgo.Slice<stdgo.GoByte>, _i:stdgo.GoInt32):Void`](<#function-_load32>)

- [`function _load64(_b:stdgo.Slice<stdgo.GoByte>, _i:stdgo.GoInt32):Void`](<#function-_load64>)

- [`function _matchLen(_a:stdgo.Slice<stdgo.GoByte>, _b:stdgo.Slice<stdgo.GoByte>, _max:stdgo.GoInt):Void`](<#function-_matchlen>)

- [`function _matchToken(_xlength:stdgo.GoUInt32, _xoffset:stdgo.GoUInt32):Void`](<#function-_matchtoken>)

- [`function _maxNode():Void`](<#function-_maxnode>)

- [`function _newDeflateFast():Void`](<#function-_newdeflatefast>)

- [`function _newHuffmanBitWriter(_w:stdgo._internal.io.Writer):Void`](<#function-_newhuffmanbitwriter>)

- [`function _newHuffmanEncoder(_size:stdgo.GoInt):Void`](<#function-_newhuffmanencoder>)

- [`function _newSyncBuffer():Void`](<#function-_newsyncbuffer>)

- [`function _noEOF(_e:stdgo.Error):Void`](<#function-_noeof>)

- [`function _offsetCode(_off:stdgo.GoUInt32):Void`](<#function-_offsetcode>)

- [`function _reverseBits(_number:stdgo.GoUInt16, _bitLength:stdgo.GoByte):Void`](<#function-_reversebits>)

- [`function _testBlock(_t:stdgo.Ref<stdgo._internal.testing.T_>, _test:stdgo.compress.flate.T_huffTest, _ttype:stdgo.GoString):Void`](<#function-_testblock>)

- [`function _testBlockHuff(_t:stdgo.Ref<stdgo._internal.testing.T_>, _in:stdgo.GoString, _out:stdgo.GoString):Void`](<#function-_testblockhuff>)

- [`function _testDeterministic(_i:stdgo.GoInt, _t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-_testdeterministic>)

- [`function _testResetOutput(_t:stdgo.Ref<stdgo._internal.testing.T_>, _level:stdgo.GoInt, _dict:stdgo.Slice<stdgo.GoByte>):Void`](<#function-_testresetoutput>)

- [`function _testSync(_t:stdgo.Ref<stdgo._internal.testing.T_>, _level:stdgo.GoInt, _input:stdgo.Slice<stdgo.GoByte>, _name:stdgo.GoString):Void`](<#function-_testsync>)

- [`function _testToFromWithLevelAndLimit(_t:stdgo.Ref<stdgo._internal.testing.T_>, _level:stdgo.GoInt, _input:stdgo.Slice<stdgo.GoByte>, _name:stdgo.GoString, _limit:stdgo.GoInt):Void`](<#function-_testtofromwithlevelandlimit>)

- [`function _testToFromWithLimit(_t:stdgo.Ref<stdgo._internal.testing.T_>, _input:stdgo.Slice<stdgo.GoByte>, _name:stdgo.GoString, _limit:stdgo.GoArray<stdgo.GoInt>):Void`](<#function-_testtofromwithlimit>)

- [`function _testWriterEOF(_t:stdgo.Ref<stdgo._internal.testing.T_>, _ttype:stdgo.GoString, _test:stdgo.compress.flate.T_huffTest, _useInput:Bool):Void`](<#function-_testwritereof>)

- [`function _writeToType(_t:stdgo.Ref<stdgo._internal.testing.T_>, _ttype:stdgo.GoString, _bw:stdgo.Ref<stdgo.compress.flate.T_huffmanBitWriter>, _tok:stdgo.Slice<stdgo.compress.flate.T_token>, _input:stdgo.Slice<stdgo.GoByte>):Void`](<#function-_writetotype>)

- [`function benchmarkDecode(_b:stdgo.Ref<stdgo._internal.testing.B>):Void`](<#function-benchmarkdecode>)

- [`function benchmarkEncode(_b:stdgo.Ref<stdgo._internal.testing.B>):Void`](<#function-benchmarkencode>)

- [`function newReader(_r:stdgo._internal.io.Reader):Void`](<#function-newreader>)

- [`function newReaderDict(_r:stdgo._internal.io.Reader, _dict:stdgo.Slice<stdgo.GoByte>):Void`](<#function-newreaderdict>)

- [`function newWriter(_w:stdgo._internal.io.Writer, _level:stdgo.GoInt):Void`](<#function-newwriter>)

- [`function newWriterDict(_w:stdgo._internal.io.Writer, _level:stdgo.GoInt, _dict:stdgo.Slice<stdgo.GoByte>):Void`](<#function-newwriterdict>)

- [`function testBestSpeed(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testbestspeed>)

- [`function testBestSpeedMatch(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testbestspeedmatch>)

- [`function testBestSpeedMaxMatchOffset(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testbestspeedmaxmatchoffset>)

- [`function testBestSpeedShiftOffsets(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testbestspeedshiftoffsets>)

- [`function testBlockHuff(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testblockhuff>)

- [`function testBulkHash4(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testbulkhash4>)

- [`function testDeflate(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testdeflate>)

- [`function testDeflateFast_Reset(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testdeflatefast_reset>)

- [`function testDeflateInflate(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testdeflateinflate>)

- [`function testDeflateInflateString(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testdeflateinflatestring>)

- [`function testDeterministic(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testdeterministic>)

- [`function testDictDecoder(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testdictdecoder>)

- [`function testInvalidBits(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testinvalidbits>)

- [`function testInvalidEncoding(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testinvalidencoding>)

- [`function testIssue5915(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testissue5915>)

- [`function testIssue5962(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testissue5962>)

- [`function testIssue6255(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testissue6255>)

- [`function testMaxStackSize(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testmaxstacksize>)

- [`function testNlitOutOfRange(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testnlitoutofrange>)

- [`function testReaderDict(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testreaderdict>)

- [`function testReaderEarlyEOF(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testreaderearlyeof>)

- [`function testReaderReusesReaderBuffer(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testreaderreusesreaderbuffer>)

- [`function testReaderTruncated(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testreadertruncated>)

- [`function testRegression2508(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testregression2508>)

- [`function testReset(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testreset>)

- [`function testResetDict(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testresetdict>)

- [`function testReverseBits(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testreversebits>)

- [`function testStreams(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-teststreams>)

- [`function testTruncatedStreams(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testtruncatedstreams>)

- [`function testVeryLongSparseChunk(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testverylongsparsechunk>)

- [`function testWriteBlock(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testwriteblock>)

- [`function testWriteBlockDynamic(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testwriteblockdynamic>)

- [`function testWriteError(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testwriteerror>)

- [`function testWriterClose(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testwriterclose>)

- [`function testWriterDict(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testwriterdict>)

- [`function testWriterPersistentCloseError(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testwriterpersistentcloseerror>)

- [`function testWriterPersistentFlushError(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testwriterpersistentflusherror>)

- [`function testWriterPersistentWriteError(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testwriterpersistentwriteerror>)

- [`function testWriterReset(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testwriterreset>)

- [typedef CorruptInputError](<#typedef-corruptinputerror>)

- [typedef CorruptInputError\_asInterface](<#typedef-corruptinputerror_asinterface>)

- [typedef CorruptInputError\_static\_extension](<#typedef-corruptinputerror_static_extension>)

- [typedef InternalError](<#typedef-internalerror>)

- [typedef InternalError\_asInterface](<#typedef-internalerror_asinterface>)

- [typedef InternalError\_static\_extension](<#typedef-internalerror_static_extension>)

- [typedef ReadError](<#typedef-readerror>)

- [typedef ReadError\_asInterface](<#typedef-readerror_asinterface>)

- [typedef ReadError\_static\_extension](<#typedef-readerror_static_extension>)

- [typedef Reader](<#typedef-reader>)

- [typedef Resetter](<#typedef-resetter>)

- [typedef T\_\_struct\_0](<#typedef-t__struct_0>)

- [typedef T\_\_struct\_0\_asInterface](<#typedef-t__struct_0_asinterface>)

- [typedef T\_\_struct\_0\_static\_extension](<#typedef-t__struct_0_static_extension>)

- [typedef T\_\_struct\_1](<#typedef-t__struct_1>)

- [typedef T\_\_struct\_1\_asInterface](<#typedef-t__struct_1_asinterface>)

- [typedef T\_\_struct\_1\_static\_extension](<#typedef-t__struct_1_static_extension>)

- [typedef T\_\_struct\_2](<#typedef-t__struct_2>)

- [typedef T\_\_struct\_2\_asInterface](<#typedef-t__struct_2_asinterface>)

- [typedef T\_\_struct\_2\_static\_extension](<#typedef-t__struct_2_static_extension>)

- [typedef T\_\_struct\_3](<#typedef-t__struct_3>)

- [typedef T\_\_struct\_3\_asInterface](<#typedef-t__struct_3_asinterface>)

- [typedef T\_\_struct\_3\_static\_extension](<#typedef-t__struct_3_static_extension>)

- [typedef T\_\_struct\_4](<#typedef-t__struct_4>)

- [typedef T\_\_struct\_4\_asInterface](<#typedef-t__struct_4_asinterface>)

- [typedef T\_\_struct\_4\_static\_extension](<#typedef-t__struct_4_static_extension>)

- [typedef T\_\_struct\_5](<#typedef-t__struct_5>)

- [typedef T\_\_struct\_5\_asInterface](<#typedef-t__struct_5_asinterface>)

- [typedef T\_\_struct\_5\_static\_extension](<#typedef-t__struct_5_static_extension>)

- [typedef T\_\_struct\_6](<#typedef-t__struct_6>)

- [typedef T\_\_struct\_6\_asInterface](<#typedef-t__struct_6_asinterface>)

- [typedef T\_\_struct\_6\_static\_extension](<#typedef-t__struct_6_static_extension>)

- [typedef T\_\_struct\_7](<#typedef-t__struct_7>)

- [typedef T\_\_struct\_7\_asInterface](<#typedef-t__struct_7_asinterface>)

- [typedef T\_\_struct\_7\_static\_extension](<#typedef-t__struct_7_static_extension>)

- [typedef T\_byFreq](<#typedef-t_byfreq>)

- [typedef T\_byFreq\_asInterface](<#typedef-t_byfreq_asinterface>)

- [typedef T\_byFreq\_static\_extension](<#typedef-t_byfreq_static_extension>)

- [typedef T\_byLiteral](<#typedef-t_byliteral>)

- [typedef T\_byLiteral\_asInterface](<#typedef-t_byliteral_asinterface>)

- [typedef T\_byLiteral\_static\_extension](<#typedef-t_byliteral_static_extension>)

- [typedef T\_compressionLevel](<#typedef-t_compressionlevel>)

- [typedef T\_compressor](<#typedef-t_compressor>)

- [typedef T\_compressor\_asInterface](<#typedef-t_compressor_asinterface>)

- [typedef T\_compressor\_static\_extension](<#typedef-t_compressor_static_extension>)

- [typedef T\_decompressor](<#typedef-t_decompressor>)

- [typedef T\_decompressor\_asInterface](<#typedef-t_decompressor_asinterface>)

- [typedef T\_decompressor\_static\_extension](<#typedef-t_decompressor_static_extension>)

- [typedef T\_deflateFast](<#typedef-t_deflatefast>)

- [typedef T\_deflateFast\_asInterface](<#typedef-t_deflatefast_asinterface>)

- [typedef T\_deflateFast\_static\_extension](<#typedef-t_deflatefast_static_extension>)

- [typedef T\_deflateInflateStringTest](<#typedef-t_deflateinflatestringtest>)

- [typedef T\_deflateInflateTest](<#typedef-t_deflateinflatetest>)

- [typedef T\_deflateTest](<#typedef-t_deflatetest>)

- [typedef T\_dictDecoder](<#typedef-t_dictdecoder>)

- [typedef T\_dictDecoder\_asInterface](<#typedef-t_dictdecoder_asinterface>)

- [typedef T\_dictDecoder\_static\_extension](<#typedef-t_dictdecoder_static_extension>)

- [typedef T\_dictWriter](<#typedef-t_dictwriter>)

- [typedef T\_dictWriter\_asInterface](<#typedef-t_dictwriter_asinterface>)

- [typedef T\_dictWriter\_static\_extension](<#typedef-t_dictwriter_static_extension>)

- [typedef T\_errorWriter](<#typedef-t_errorwriter>)

- [typedef T\_errorWriter\_asInterface](<#typedef-t_errorwriter_asinterface>)

- [typedef T\_errorWriter\_static\_extension](<#typedef-t_errorwriter_static_extension>)

- [typedef T\_failWriter](<#typedef-t_failwriter>)

- [typedef T\_failWriter\_asInterface](<#typedef-t_failwriter_asinterface>)

- [typedef T\_failWriter\_static\_extension](<#typedef-t_failwriter_static_extension>)

- [typedef T\_hcode](<#typedef-t_hcode>)

- [typedef T\_hcode\_asInterface](<#typedef-t_hcode_asinterface>)

- [typedef T\_hcode\_static\_extension](<#typedef-t_hcode_static_extension>)

- [typedef T\_huffTest](<#typedef-t_hufftest>)

- [typedef T\_huffmanBitWriter](<#typedef-t_huffmanbitwriter>)

- [typedef T\_huffmanBitWriter\_asInterface](<#typedef-t_huffmanbitwriter_asinterface>)

- [typedef T\_huffmanBitWriter\_static\_extension](<#typedef-t_huffmanbitwriter_static_extension>)

- [typedef T\_huffmanDecoder](<#typedef-t_huffmandecoder>)

- [typedef T\_huffmanDecoder\_asInterface](<#typedef-t_huffmandecoder_asinterface>)

- [typedef T\_huffmanDecoder\_static\_extension](<#typedef-t_huffmandecoder_static_extension>)

- [typedef T\_huffmanEncoder](<#typedef-t_huffmanencoder>)

- [typedef T\_huffmanEncoder\_asInterface](<#typedef-t_huffmanencoder_asinterface>)

- [typedef T\_huffmanEncoder\_static\_extension](<#typedef-t_huffmanencoder_static_extension>)

- [typedef T\_levelInfo](<#typedef-t_levelinfo>)

- [typedef T\_literalNode](<#typedef-t_literalnode>)

- [typedef T\_reverseBitsTest](<#typedef-t_reversebitstest>)

- [typedef T\_sparseReader](<#typedef-t_sparsereader>)

- [typedef T\_sparseReader\_asInterface](<#typedef-t_sparsereader_asinterface>)

- [typedef T\_sparseReader\_static\_extension](<#typedef-t_sparsereader_static_extension>)

- [typedef T\_syncBuffer](<#typedef-t_syncbuffer>)

- [typedef T\_syncBuffer\_asInterface](<#typedef-t_syncbuffer_asinterface>)

- [typedef T\_syncBuffer\_static\_extension](<#typedef-t_syncbuffer_static_extension>)

- [typedef T\_tableEntry](<#typedef-t_tableentry>)

- [typedef T\_token](<#typedef-t_token>)

- [typedef T\_token\_asInterface](<#typedef-t_token_asinterface>)

- [typedef T\_token\_static\_extension](<#typedef-t_token_static_extension>)

- [typedef WriteError](<#typedef-writeerror>)

- [typedef WriteError\_asInterface](<#typedef-writeerror_asinterface>)

- [typedef WriteError\_static\_extension](<#typedef-writeerror_static_extension>)

- [typedef Writer](<#typedef-writer>)

- [typedef Writer\_asInterface](<#typedef-writer_asinterface>)

- [typedef Writer\_static\_extension](<#typedef-writer_static_extension>)

# Variables


```haxe
import stdgo.compress.flate.Flate
```


```haxe
var _:Dynamic
```


```haxe
var __go2hxdoc__package:Dynamic
```


```haxe
var _badCode:Dynamic
```


```haxe
var _baseMatchLength:Dynamic
```


```haxe
var _baseMatchOffset:Dynamic
```


```haxe
var _bufferFlushSize:Dynamic
```


```haxe
var _bufferReset:Dynamic
```


```haxe
var _bufferSize:Dynamic
```


```haxe
var _codeOrder:Dynamic
```


```haxe
var _codegenCodeCount:Dynamic
```


```haxe
var _codegenOrder:Dynamic
```


```haxe
var _deflateInflateStringTests:Dynamic
```


```haxe
var _deflateInflateTests:Dynamic
```


```haxe
var _deflateTests:Dynamic
```


```haxe
var _endBlockMarker:Dynamic
```


```haxe
var _errIO:Dynamic
```


```haxe
var _errWriterClosed:Dynamic
```


```haxe
var _fixedHuffmanDecoder:Dynamic
```


```haxe
var _fixedLiteralEncoding:Dynamic
```


```haxe
var _fixedOffsetEncoding:Dynamic
```


```haxe
var _fixedOnce:Dynamic
```


```haxe
var _hashBits:Dynamic
```


```haxe
var _hashMask:Dynamic
```


```haxe
var _hashSize:Dynamic
```


```haxe
var _hashmul:Dynamic
```


```haxe
var _huffOffset:Dynamic
```


```haxe
var _huffmanChunkBits:Dynamic
```


```haxe
var _huffmanCountMask:Dynamic
```


```haxe
var _huffmanNumChunks:Dynamic
```


```haxe
var _huffmanValueShift:Dynamic
```


```haxe
var _inputMargin:Dynamic
```


```haxe
var _lengthBase:Dynamic
```


```haxe
var _lengthCodes:Dynamic
```


```haxe
var _lengthCodesStart:Dynamic
```


```haxe
var _lengthExtraBits:Dynamic
```


```haxe
var _lengthShift:Dynamic
```


```haxe
var _levelTests:Dynamic
```


```haxe
var _levels:Dynamic
```


```haxe
var _literalType:Dynamic
```


```haxe
var _logWindowSize:Dynamic
```


```haxe
var _matchType:Dynamic
```


```haxe
var _maxBitsLimit:Dynamic
```


```haxe
var _maxCodeLen:Dynamic
```


```haxe
var _maxFlateBlockTokens:Dynamic
```


```haxe
var _maxHashOffset:Dynamic
```


```haxe
var _maxMatchLength:Dynamic
```


```haxe
var _maxMatchOffset:Dynamic
```


```haxe
var _maxNumDist:Dynamic
```


```haxe
var _maxNumLit:Dynamic
```


```haxe
var _maxStoreBlockSize:Dynamic
```


```haxe
var _minMatchLength:Dynamic
```


```haxe
var _minNonLiteralBlockSize:Dynamic
```


```haxe
var _ml:Dynamic
```


```haxe
var _numCodes:Dynamic
```


```haxe
var _offsetBase:Dynamic
```


```haxe
var _offsetCodeCount:Dynamic
```


```haxe
var _offsetCodes:Dynamic
```


```haxe
var _offsetExtraBits:Dynamic
```


```haxe
var _offsetMask:Dynamic
```


```haxe
var _reverseBitsTests:Dynamic
```


```haxe
var _sizes:Dynamic
```


```haxe
var _skipNever:Dynamic
```


```haxe
var _suites:Dynamic
```


```haxe
var _tableBits:Dynamic
```


```haxe
var _tableMask:Dynamic
```


```haxe
var _tableShift:Dynamic
```


```haxe
var _tableSize:Dynamic
```


```haxe
var _typeMask:Dynamic
```


```haxe
var _update:Dynamic
```


```haxe
var _windowMask:Dynamic
```


```haxe
var _windowSize:Dynamic
```


```haxe
var _writeBlockTests:Dynamic
```


```haxe
var bestCompression:Dynamic
```


```haxe
var bestSpeed:Dynamic
```


```haxe
var defaultCompression:Dynamic
```


```haxe
var huffmanOnly:Dynamic
```


```haxe
var noCompression:Dynamic
```


# Functions


```haxe
import stdgo.compress.flate.Flate
```


## function \_bulkHash4


```haxe
function _bulkHash4(_b:stdgo.Slice<stdgo.GoByte>, _dst:stdgo.Slice<stdgo.GoUInt32>):Void
```


[\(view code\)](<./Flate.hx#L135>)


## function \_checkErrors


```haxe
function _checkErrors(_got:stdgo.Slice<stdgo.Error>, _want:stdgo.Error, _t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Flate.hx#L160>)


## function \_doBench


```haxe
function _doBench(_b:stdgo.Ref<stdgo._internal.testing.B>, _f:(_b:stdgo.Ref<stdgo._internal.testing.B>, _buf:stdgo.Slice<stdgo.GoByte>, _level:stdgo.GoInt, _n:stdgo.GoInt):Void):Void
```


[\(view code\)](<./Flate.hx#L203>)


## function \_emitLiteral


```haxe
function _emitLiteral(_dst:stdgo.Slice<stdgo.compress.flate.T_token>, _lit:stdgo.Slice<stdgo.GoByte>):Void
```


[\(view code\)](<./Flate.hx#L169>)


## function \_fixedHuffmanDecoderInit


```haxe
function _fixedHuffmanDecoderInit():Void
```


[\(view code\)](<./Flate.hx#L194>)


## function \_generateFixedLiteralEncoding


```haxe
function _generateFixedLiteralEncoding():Void
```


[\(view code\)](<./Flate.hx#L190>)


## function \_generateFixedOffsetEncoding


```haxe
function _generateFixedOffsetEncoding():Void
```


[\(view code\)](<./Flate.hx#L191>)


## function \_hash


```haxe
function _hash(_u:stdgo.GoUInt32):Void
```


[\(view code\)](<./Flate.hx#L167>)


## function \_hash4


```haxe
function _hash4(_b:stdgo.Slice<stdgo.GoByte>):Void
```


[\(view code\)](<./Flate.hx#L134>)


## function \_histogram


```haxe
function _histogram(_b:stdgo.Slice<stdgo.GoByte>, _h:stdgo.Slice<stdgo.GoInt32>):Void
```


[\(view code\)](<./Flate.hx#L180>)


## function \_largeDataChunk


```haxe
function _largeDataChunk():Void
```


[\(view code\)](<./Flate.hx#L139>)


## function \_lengthCode


```haxe
function _lengthCode(_len:stdgo.GoUInt32):Void
```


[\(view code\)](<./Flate.hx#L206>)


## function \_literalToken


```haxe
function _literalToken(_literal:stdgo.GoUInt32):Void
```


[\(view code\)](<./Flate.hx#L204>)


## function \_load32


```haxe
function _load32(_b:stdgo.Slice<stdgo.GoByte>, _i:stdgo.GoInt32):Void
```


[\(view code\)](<./Flate.hx#L165>)


## function \_load64


```haxe
function _load64(_b:stdgo.Slice<stdgo.GoByte>, _i:stdgo.GoInt32):Void
```


[\(view code\)](<./Flate.hx#L166>)


## function \_matchLen


```haxe
function _matchLen(_a:stdgo.Slice<stdgo.GoByte>, _b:stdgo.Slice<stdgo.GoByte>, _max:stdgo.GoInt):Void
```


[\(view code\)](<./Flate.hx#L136>)


## function \_matchToken


```haxe
function _matchToken(_xlength:stdgo.GoUInt32, _xoffset:stdgo.GoUInt32):Void
```


[\(view code\)](<./Flate.hx#L205>)


## function \_maxNode


```haxe
function _maxNode():Void
```


[\(view code\)](<./Flate.hx#L188>)


## function \_newDeflateFast


```haxe
function _newDeflateFast():Void
```


[\(view code\)](<./Flate.hx#L168>)


## function \_newHuffmanBitWriter


```haxe
function _newHuffmanBitWriter(_w:stdgo._internal.io.Writer):Void
```


[\(view code\)](<./Flate.hx#L179>)


## function \_newHuffmanEncoder


```haxe
function _newHuffmanEncoder(_size:stdgo.GoInt):Void
```


[\(view code\)](<./Flate.hx#L189>)


## function \_newSyncBuffer


```haxe
function _newSyncBuffer():Void
```


[\(view code\)](<./Flate.hx#L144>)


## function \_noEOF


```haxe
function _noEOF(_e:stdgo.Error):Void
```


[\(view code\)](<./Flate.hx#L193>)


## function \_offsetCode


```haxe
function _offsetCode(_off:stdgo.GoUInt32):Void
```


[\(view code\)](<./Flate.hx#L207>)


## function \_reverseBits


```haxe
function _reverseBits(_number:stdgo.GoUInt16, _bitLength:stdgo.GoByte):Void
```


[\(view code\)](<./Flate.hx#L192>)


## function \_testBlock


```haxe
function _testBlock(_t:stdgo.Ref<stdgo._internal.testing.T_>, _test:stdgo.compress.flate.T_huffTest, _ttype:stdgo.GoString):Void
```


[\(view code\)](<./Flate.hx#L185>)


## function \_testBlockHuff


```haxe
function _testBlockHuff(_t:stdgo.Ref<stdgo._internal.testing.T_>, _in:stdgo.GoString, _out:stdgo.GoString):Void
```


[\(view code\)](<./Flate.hx#L182>)


## function \_testDeterministic


```haxe
function _testDeterministic(_i:stdgo.GoInt, _t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Flate.hx#L211>)


## function \_testResetOutput


```haxe
function _testResetOutput(_t:stdgo.Ref<stdgo._internal.testing.T_>, _level:stdgo.GoInt, _dict:stdgo.Slice<stdgo.GoByte>):Void
```


[\(view code\)](<./Flate.hx#L155>)


## function \_testSync


```haxe
function _testSync(_t:stdgo.Ref<stdgo._internal.testing.T_>, _level:stdgo.GoInt, _input:stdgo.Slice<stdgo.GoByte>, _name:stdgo.GoString):Void
```


[\(view code\)](<./Flate.hx#L145>)


## function \_testToFromWithLevelAndLimit


```haxe
function _testToFromWithLevelAndLimit(_t:stdgo.Ref<stdgo._internal.testing.T_>, _level:stdgo.GoInt, _input:stdgo.Slice<stdgo.GoByte>, _name:stdgo.GoString, _limit:stdgo.GoInt):Void
```


[\(view code\)](<./Flate.hx#L146>)


## function \_testToFromWithLimit


```haxe
function _testToFromWithLimit(_t:stdgo.Ref<stdgo._internal.testing.T_>, _input:stdgo.Slice<stdgo.GoByte>, _name:stdgo.GoString, _limit:stdgo.GoArray<stdgo.GoInt>):Void
```


[\(view code\)](<./Flate.hx#L147>)


## function \_testWriterEOF


```haxe
function _testWriterEOF(_t:stdgo.Ref<stdgo._internal.testing.T_>, _ttype:stdgo.GoString, _test:stdgo.compress.flate.T_huffTest, _useInput:Bool):Void
```


[\(view code\)](<./Flate.hx#L187>)


## function \_writeToType


```haxe
function _writeToType(_t:stdgo.Ref<stdgo._internal.testing.T_>, _ttype:stdgo.GoString, _bw:stdgo.Ref<stdgo.compress.flate.T_huffmanBitWriter>, _tok:stdgo.Slice<stdgo.compress.flate.T_token>, _input:stdgo.Slice<stdgo.GoByte>):Void
```


[\(view code\)](<./Flate.hx#L186>)


## function benchmarkDecode


```haxe
function benchmarkDecode(_b:stdgo.Ref<stdgo._internal.testing.B>):Void
```


[\(view code\)](<./Flate.hx#L202>)


## function benchmarkEncode


```haxe
function benchmarkEncode(_b:stdgo.Ref<stdgo._internal.testing.B>):Void
```


[\(view code\)](<./Flate.hx#L208>)


## function newReader


```haxe
function newReader(_r:stdgo._internal.io.Reader):Void
```


[\(view code\)](<./Flate.hx#L195>)


## function newReaderDict


```haxe
function newReaderDict(_r:stdgo._internal.io.Reader, _dict:stdgo.Slice<stdgo.GoByte>):Void
```


[\(view code\)](<./Flate.hx#L196>)


## function newWriter


```haxe
function newWriter(_w:stdgo._internal.io.Writer, _level:stdgo.GoInt):Void
```


[\(view code\)](<./Flate.hx#L137>)


## function newWriterDict


```haxe
function newWriterDict(_w:stdgo._internal.io.Writer, _level:stdgo.GoInt, _dict:stdgo.Slice<stdgo.GoByte>):Void
```


[\(view code\)](<./Flate.hx#L138>)


## function testBestSpeed


```haxe
function testBestSpeed(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Flate.hx#L156>)


## function testBestSpeedMatch


```haxe
function testBestSpeedMatch(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Flate.hx#L161>)


## function testBestSpeedMaxMatchOffset


```haxe
function testBestSpeedMaxMatchOffset(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Flate.hx#L162>)


## function testBestSpeedShiftOffsets


```haxe
function testBestSpeedShiftOffsets(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Flate.hx#L163>)


## function testBlockHuff


```haxe
function testBlockHuff(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Flate.hx#L181>)


## function testBulkHash4


```haxe
function testBulkHash4(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Flate.hx#L140>)


## function testDeflate


```haxe
function testDeflate(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Flate.hx#L141>)


## function testDeflateFast\_Reset


```haxe
function testDeflateFast_Reset(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Flate.hx#L212>)


## function testDeflateInflate


```haxe
function testDeflateInflate(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Flate.hx#L148>)


## function testDeflateInflateString


```haxe
function testDeflateInflateString(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Flate.hx#L150>)


## function testDeterministic


```haxe
function testDeterministic(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Flate.hx#L210>)


## function testDictDecoder


```haxe
function testDictDecoder(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Flate.hx#L170>)


## function testInvalidBits


```haxe
function testInvalidBits(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Flate.hx#L175>)


## function testInvalidEncoding


```haxe
function testInvalidEncoding(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Flate.hx#L174>)


## function testIssue5915


```haxe
function testIssue5915(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Flate.hx#L171>)


## function testIssue5962


```haxe
function testIssue5962(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Flate.hx#L172>)


## function testIssue6255


```haxe
function testIssue6255(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Flate.hx#L173>)


## function testMaxStackSize


```haxe
function testMaxStackSize(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Flate.hx#L164>)


## function testNlitOutOfRange


```haxe
function testNlitOutOfRange(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Flate.hx#L201>)


## function testReaderDict


```haxe
function testReaderDict(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Flate.hx#L151>)


## function testReaderEarlyEOF


```haxe
function testReaderEarlyEOF(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Flate.hx#L178>)


## function testReaderReusesReaderBuffer


```haxe
function testReaderReusesReaderBuffer(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Flate.hx#L200>)


## function testReaderTruncated


```haxe
function testReaderTruncated(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Flate.hx#L198>)


## function testRegression2508


```haxe
function testRegression2508(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Flate.hx#L153>)


## function testReset


```haxe
function testReset(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Flate.hx#L197>)


## function testResetDict


```haxe
function testResetDict(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Flate.hx#L199>)


## function testReverseBits


```haxe
function testReverseBits(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Flate.hx#L149>)


## function testStreams


```haxe
function testStreams(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Flate.hx#L176>)


## function testTruncatedStreams


```haxe
function testTruncatedStreams(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Flate.hx#L177>)


## function testVeryLongSparseChunk


```haxe
function testVeryLongSparseChunk(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Flate.hx#L143>)


## function testWriteBlock


```haxe
function testWriteBlock(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Flate.hx#L183>)


## function testWriteBlockDynamic


```haxe
function testWriteBlockDynamic(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Flate.hx#L184>)


## function testWriteError


```haxe
function testWriteError(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Flate.hx#L209>)


## function testWriterClose


```haxe
function testWriterClose(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Flate.hx#L142>)


## function testWriterDict


```haxe
function testWriterDict(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Flate.hx#L152>)


## function testWriterPersistentCloseError


```haxe
function testWriterPersistentCloseError(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Flate.hx#L159>)


## function testWriterPersistentFlushError


```haxe
function testWriterPersistentFlushError(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Flate.hx#L158>)


## function testWriterPersistentWriteError


```haxe
function testWriterPersistentWriteError(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Flate.hx#L157>)


## function testWriterReset


```haxe
function testWriterReset(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Flate.hx#L154>)


# Typedefs


```haxe
import stdgo.compress.flate.*
```


## typedef CorruptInputError


```haxe
typedef CorruptInputError = stdgo._internal.compress.flate.CorruptInputError;
```


## typedef CorruptInputError\_asInterface


```haxe
typedef CorruptInputError_asInterface = Dynamic;
```


## typedef CorruptInputError\_static\_extension


```haxe
typedef CorruptInputError_static_extension = Dynamic;
```


## typedef InternalError


```haxe
typedef InternalError = stdgo._internal.compress.flate.InternalError;
```


## typedef InternalError\_asInterface


```haxe
typedef InternalError_asInterface = Dynamic;
```


## typedef InternalError\_static\_extension


```haxe
typedef InternalError_static_extension = Dynamic;
```


## typedef ReadError


```haxe
typedef ReadError = Dynamic;
```


## typedef ReadError\_asInterface


```haxe
typedef ReadError_asInterface = Dynamic;
```


## typedef ReadError\_static\_extension


```haxe
typedef ReadError_static_extension = Dynamic;
```


## typedef Reader


```haxe
typedef Reader = stdgo._internal.compress.flate.Reader;
```


## typedef Resetter


```haxe
typedef Resetter = stdgo._internal.compress.flate.Resetter;
```


## typedef T\_\_struct\_0


```haxe
typedef T__struct_0 = stdgo._internal.compress.flate.T__struct_0;
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
typedef T__struct_1 = stdgo._internal.compress.flate.T__struct_1;
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
typedef T__struct_2 = stdgo._internal.compress.flate.T__struct_2;
```


## typedef T\_\_struct\_2\_asInterface


```haxe
typedef T__struct_2_asInterface = Dynamic;
```


## typedef T\_\_struct\_2\_static\_extension


```haxe
typedef T__struct_2_static_extension = Dynamic;
```


## typedef T\_\_struct\_3


```haxe
typedef T__struct_3 = stdgo._internal.compress.flate.T__struct_3;
```


## typedef T\_\_struct\_3\_asInterface


```haxe
typedef T__struct_3_asInterface = Dynamic;
```


## typedef T\_\_struct\_3\_static\_extension


```haxe
typedef T__struct_3_static_extension = Dynamic;
```


## typedef T\_\_struct\_4


```haxe
typedef T__struct_4 = stdgo._internal.compress.flate.T__struct_4;
```


## typedef T\_\_struct\_4\_asInterface


```haxe
typedef T__struct_4_asInterface = Dynamic;
```


## typedef T\_\_struct\_4\_static\_extension


```haxe
typedef T__struct_4_static_extension = Dynamic;
```


## typedef T\_\_struct\_5


```haxe
typedef T__struct_5 = stdgo._internal.compress.flate.T__struct_5;
```


## typedef T\_\_struct\_5\_asInterface


```haxe
typedef T__struct_5_asInterface = Dynamic;
```


## typedef T\_\_struct\_5\_static\_extension


```haxe
typedef T__struct_5_static_extension = Dynamic;
```


## typedef T\_\_struct\_6


```haxe
typedef T__struct_6 = stdgo._internal.compress.flate.T__struct_6;
```


## typedef T\_\_struct\_6\_asInterface


```haxe
typedef T__struct_6_asInterface = Dynamic;
```


## typedef T\_\_struct\_6\_static\_extension


```haxe
typedef T__struct_6_static_extension = Dynamic;
```


## typedef T\_\_struct\_7


```haxe
typedef T__struct_7 = stdgo._internal.compress.flate.T__struct_7;
```


## typedef T\_\_struct\_7\_asInterface


```haxe
typedef T__struct_7_asInterface = Dynamic;
```


## typedef T\_\_struct\_7\_static\_extension


```haxe
typedef T__struct_7_static_extension = Dynamic;
```


## typedef T\_byFreq


```haxe
typedef T_byFreq = stdgo._internal.compress.flate.T_byFreq;
```


## typedef T\_byFreq\_asInterface


```haxe
typedef T_byFreq_asInterface = Dynamic;
```


## typedef T\_byFreq\_static\_extension


```haxe
typedef T_byFreq_static_extension = Dynamic;
```


## typedef T\_byLiteral


```haxe
typedef T_byLiteral = stdgo._internal.compress.flate.T_byLiteral;
```


## typedef T\_byLiteral\_asInterface


```haxe
typedef T_byLiteral_asInterface = Dynamic;
```


## typedef T\_byLiteral\_static\_extension


```haxe
typedef T_byLiteral_static_extension = Dynamic;
```


## typedef T\_compressionLevel


```haxe
typedef T_compressionLevel = Dynamic;
```


## typedef T\_compressor


```haxe
typedef T_compressor = Dynamic;
```


## typedef T\_compressor\_asInterface


```haxe
typedef T_compressor_asInterface = Dynamic;
```


## typedef T\_compressor\_static\_extension


```haxe
typedef T_compressor_static_extension = Dynamic;
```


## typedef T\_decompressor


```haxe
typedef T_decompressor = Dynamic;
```


## typedef T\_decompressor\_asInterface


```haxe
typedef T_decompressor_asInterface = Dynamic;
```


## typedef T\_decompressor\_static\_extension


```haxe
typedef T_decompressor_static_extension = Dynamic;
```


## typedef T\_deflateFast


```haxe
typedef T_deflateFast = Dynamic;
```


## typedef T\_deflateFast\_asInterface


```haxe
typedef T_deflateFast_asInterface = Dynamic;
```


## typedef T\_deflateFast\_static\_extension


```haxe
typedef T_deflateFast_static_extension = Dynamic;
```


## typedef T\_deflateInflateStringTest


```haxe
typedef T_deflateInflateStringTest = Dynamic;
```


## typedef T\_deflateInflateTest


```haxe
typedef T_deflateInflateTest = Dynamic;
```


## typedef T\_deflateTest


```haxe
typedef T_deflateTest = Dynamic;
```


## typedef T\_dictDecoder


```haxe
typedef T_dictDecoder = Dynamic;
```


## typedef T\_dictDecoder\_asInterface


```haxe
typedef T_dictDecoder_asInterface = Dynamic;
```


## typedef T\_dictDecoder\_static\_extension


```haxe
typedef T_dictDecoder_static_extension = Dynamic;
```


## typedef T\_dictWriter


```haxe
typedef T_dictWriter = Dynamic;
```


## typedef T\_dictWriter\_asInterface


```haxe
typedef T_dictWriter_asInterface = Dynamic;
```


## typedef T\_dictWriter\_static\_extension


```haxe
typedef T_dictWriter_static_extension = Dynamic;
```


## typedef T\_errorWriter


```haxe
typedef T_errorWriter = Dynamic;
```


## typedef T\_errorWriter\_asInterface


```haxe
typedef T_errorWriter_asInterface = Dynamic;
```


## typedef T\_errorWriter\_static\_extension


```haxe
typedef T_errorWriter_static_extension = Dynamic;
```


## typedef T\_failWriter


```haxe
typedef T_failWriter = Dynamic;
```


## typedef T\_failWriter\_asInterface


```haxe
typedef T_failWriter_asInterface = Dynamic;
```


## typedef T\_failWriter\_static\_extension


```haxe
typedef T_failWriter_static_extension = Dynamic;
```


## typedef T\_hcode


```haxe
typedef T_hcode = Dynamic;
```


## typedef T\_hcode\_asInterface


```haxe
typedef T_hcode_asInterface = Dynamic;
```


## typedef T\_hcode\_static\_extension


```haxe
typedef T_hcode_static_extension = Dynamic;
```


## typedef T\_huffTest


```haxe
typedef T_huffTest = Dynamic;
```


## typedef T\_huffmanBitWriter


```haxe
typedef T_huffmanBitWriter = Dynamic;
```


## typedef T\_huffmanBitWriter\_asInterface


```haxe
typedef T_huffmanBitWriter_asInterface = Dynamic;
```


## typedef T\_huffmanBitWriter\_static\_extension


```haxe
typedef T_huffmanBitWriter_static_extension = Dynamic;
```


## typedef T\_huffmanDecoder


```haxe
typedef T_huffmanDecoder = Dynamic;
```


## typedef T\_huffmanDecoder\_asInterface


```haxe
typedef T_huffmanDecoder_asInterface = Dynamic;
```


## typedef T\_huffmanDecoder\_static\_extension


```haxe
typedef T_huffmanDecoder_static_extension = Dynamic;
```


## typedef T\_huffmanEncoder


```haxe
typedef T_huffmanEncoder = Dynamic;
```


## typedef T\_huffmanEncoder\_asInterface


```haxe
typedef T_huffmanEncoder_asInterface = Dynamic;
```


## typedef T\_huffmanEncoder\_static\_extension


```haxe
typedef T_huffmanEncoder_static_extension = Dynamic;
```


## typedef T\_levelInfo


```haxe
typedef T_levelInfo = Dynamic;
```


## typedef T\_literalNode


```haxe
typedef T_literalNode = Dynamic;
```


## typedef T\_reverseBitsTest


```haxe
typedef T_reverseBitsTest = Dynamic;
```


## typedef T\_sparseReader


```haxe
typedef T_sparseReader = Dynamic;
```


## typedef T\_sparseReader\_asInterface


```haxe
typedef T_sparseReader_asInterface = Dynamic;
```


## typedef T\_sparseReader\_static\_extension


```haxe
typedef T_sparseReader_static_extension = Dynamic;
```


## typedef T\_syncBuffer


```haxe
typedef T_syncBuffer = Dynamic;
```


## typedef T\_syncBuffer\_asInterface


```haxe
typedef T_syncBuffer_asInterface = Dynamic;
```


## typedef T\_syncBuffer\_static\_extension


```haxe
typedef T_syncBuffer_static_extension = Dynamic;
```


## typedef T\_tableEntry


```haxe
typedef T_tableEntry = Dynamic;
```


## typedef T\_token


```haxe
typedef T_token = stdgo._internal.compress.flate.T_token;
```


## typedef T\_token\_asInterface


```haxe
typedef T_token_asInterface = Dynamic;
```


## typedef T\_token\_static\_extension


```haxe
typedef T_token_static_extension = Dynamic;
```


## typedef WriteError


```haxe
typedef WriteError = Dynamic;
```


## typedef WriteError\_asInterface


```haxe
typedef WriteError_asInterface = Dynamic;
```


## typedef WriteError\_static\_extension


```haxe
typedef WriteError_static_extension = Dynamic;
```


## typedef Writer


```haxe
typedef Writer = Dynamic;
```


## typedef Writer\_asInterface


```haxe
typedef Writer_asInterface = Dynamic;
```


## typedef Writer\_static\_extension


```haxe
typedef Writer_static_extension = Dynamic;
```


