# Module: `stdgo._internal.compress.flate`

[(view library index)](../../../stdgo.md)


# Overview


stdgo/_internal/internal/Macro.macro.hx:43: non hxb types:,408

# Index


- [Constants](<#constants>)

- [Variables](<#variables>)

- [`function _bulkHash4(_b:stdgo.Slice<stdgo.GoByte>, _dst:stdgo.Slice<stdgo.GoUInt32>):Void`](<#function-_bulkhash4>)

- [`function _checkErrors(_got:stdgo.Slice<stdgo.Error>, _want:stdgo.Error, _t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-_checkerrors>)

- [`function _doBench(_b:stdgo.Ref<stdgo._internal.testing.B>, _f:(_b:stdgo.Ref<stdgo._internal.testing.B>, _buf:stdgo.Slice<stdgo.GoByte>, _level:stdgo.GoInt, _n:stdgo.GoInt):Void):Void`](<#function-_dobench>)

- [`function _emitLiteral(_dst:stdgo.Slice<stdgo._internal.compress.flate.T_token>, _lit:stdgo.Slice<stdgo.GoByte>):stdgo.Slice<stdgo._internal.compress.flate.T_token>`](<#function-_emitliteral>)

- [`function _fixedHuffmanDecoderInit():Void`](<#function-_fixedhuffmandecoderinit>)

- [`function _generateFixedLiteralEncoding():stdgo.Ref<stdgo._internal.compress.flate.T_huffmanEncoder>`](<#function-_generatefixedliteralencoding>)

- [`function _generateFixedOffsetEncoding():stdgo.Ref<stdgo._internal.compress.flate.T_huffmanEncoder>`](<#function-_generatefixedoffsetencoding>)

- [`function _hash(_u:stdgo.GoUInt32):stdgo.GoUInt32`](<#function-_hash>)

- [`function _hash4(_b:stdgo.Slice<stdgo.GoByte>):stdgo.GoUInt32`](<#function-_hash4>)

- [`function _histogram(_b:stdgo.Slice<stdgo.GoByte>, _h:stdgo.Slice<stdgo.GoInt32>):Void`](<#function-_histogram>)

- [`function _largeDataChunk():stdgo.Slice<stdgo.GoByte>`](<#function-_largedatachunk>)

- [`function _lengthCode(_len:stdgo.GoUInt32):stdgo.GoUInt32`](<#function-_lengthcode>)

- [`function _literalToken(_literal:stdgo.GoUInt32):stdgo._internal.compress.flate.T_token`](<#function-_literaltoken>)

- [`function _load32(_b:stdgo.Slice<stdgo.GoByte>, _i:stdgo.GoInt32):stdgo.GoUInt32`](<#function-_load32>)

- [`function _load64(_b:stdgo.Slice<stdgo.GoByte>, _i:stdgo.GoInt32):stdgo.GoUInt64`](<#function-_load64>)

- [`function _matchLen(_a:stdgo.Slice<stdgo.GoByte>, _b:stdgo.Slice<stdgo.GoByte>, _max:stdgo.GoInt):stdgo.GoInt`](<#function-_matchlen>)

- [`function _matchToken(_xlength:stdgo.GoUInt32, _xoffset:stdgo.GoUInt32):stdgo._internal.compress.flate.T_token`](<#function-_matchtoken>)

- [`function _maxNode():stdgo._internal.compress.flate.T_literalNode`](<#function-_maxnode>)

- [`function _newDeflateFast():stdgo.Ref<stdgo._internal.compress.flate.T_deflateFast>`](<#function-_newdeflatefast>)

- [`function _newHuffmanBitWriter(_w:stdgo._internal.io.Writer):stdgo.Ref<stdgo._internal.compress.flate.T_huffmanBitWriter>`](<#function-_newhuffmanbitwriter>)

- [`function _newHuffmanEncoder(_size:stdgo.GoInt):stdgo.Ref<stdgo._internal.compress.flate.T_huffmanEncoder>`](<#function-_newhuffmanencoder>)

- [`function _newSyncBuffer():stdgo.Ref<stdgo._internal.compress.flate.T_syncBuffer>`](<#function-_newsyncbuffer>)

- [`function _noEOF(_e:stdgo.Error):stdgo.Error`](<#function-_noeof>)

- [`function _offsetCode(_off:stdgo.GoUInt32):stdgo.GoUInt32`](<#function-_offsetcode>)

- [`function _reverseBits(_number:stdgo.GoUInt16, _bitLength:stdgo.GoByte):stdgo.GoUInt16`](<#function-_reversebits>)

- [`function _testBlock(_t:stdgo.Ref<stdgo._internal.testing.T_>, _test:stdgo._internal.compress.flate.T_huffTest, _ttype:stdgo.GoString):Void`](<#function-_testblock>)

- [`function _testBlockHuff(_t:stdgo.Ref<stdgo._internal.testing.T_>, _in:stdgo.GoString, _out:stdgo.GoString):Void`](<#function-_testblockhuff>)

- [`function _testDeterministic(_i:stdgo.GoInt, _t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-_testdeterministic>)

- [`function _testResetOutput(_t:stdgo.Ref<stdgo._internal.testing.T_>, _level:stdgo.GoInt, _dict:stdgo.Slice<stdgo.GoByte>):Void`](<#function-_testresetoutput>)

- [`function _testSync(_t:stdgo.Ref<stdgo._internal.testing.T_>, _level:stdgo.GoInt, _input:stdgo.Slice<stdgo.GoByte>, _name:stdgo.GoString):Void`](<#function-_testsync>)

- [`function _testToFromWithLevelAndLimit(_t:stdgo.Ref<stdgo._internal.testing.T_>, _level:stdgo.GoInt, _input:stdgo.Slice<stdgo.GoByte>, _name:stdgo.GoString, _limit:stdgo.GoInt):Void`](<#function-_testtofromwithlevelandlimit>)

- [`function _testToFromWithLimit(_t:stdgo.Ref<stdgo._internal.testing.T_>, _input:stdgo.Slice<stdgo.GoByte>, _name:stdgo.GoString, _limit:stdgo.GoArray<stdgo.GoInt>):Void`](<#function-_testtofromwithlimit>)

- [`function _testWriterEOF(_t:stdgo.Ref<stdgo._internal.testing.T_>, _ttype:stdgo.GoString, _test:stdgo._internal.compress.flate.T_huffTest, _useInput:Bool):Void`](<#function-_testwritereof>)

- [`function _writeToType(_t:stdgo.Ref<stdgo._internal.testing.T_>, _ttype:stdgo.GoString, _bw:stdgo.Ref<stdgo._internal.compress.flate.T_huffmanBitWriter>, _tok:stdgo.Slice<stdgo._internal.compress.flate.T_token>, _input:stdgo.Slice<stdgo.GoByte>):Void`](<#function-_writetotype>)

- [`function benchmarkDecode(_b:stdgo.Ref<stdgo._internal.testing.B>):Void`](<#function-benchmarkdecode>)

- [`function benchmarkEncode(_b:stdgo.Ref<stdgo._internal.testing.B>):Void`](<#function-benchmarkencode>)

- [`function newReader(_r:stdgo._internal.io.Reader):stdgo._internal.io.ReadCloser`](<#function-newreader>)

- [`function newReaderDict(_r:stdgo._internal.io.Reader, _dict:stdgo.Slice<stdgo.GoByte>):stdgo._internal.io.ReadCloser`](<#function-newreaderdict>)

- [`function newWriter(_w:stdgo._internal.io.Writer, _level:stdgo.GoInt):{
	_1:stdgo.Error;
	_0:stdgo.Ref<stdgo._internal.compress.flate.Writer>;
}`](<#function-newwriter>)

- [`function newWriterDict(_w:stdgo._internal.io.Writer, _level:stdgo.GoInt, _dict:stdgo.Slice<stdgo.GoByte>):{
	_1:stdgo.Error;
	_0:stdgo.Ref<stdgo._internal.compress.flate.Writer>;
}`](<#function-newwriterdict>)

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

- [class ReadError](<#class-readerror>)

  - [`function new(?offset:stdgo.GoInt64, ?err:Null<stdgo.Error>):Void`](<#readerror-function-new>)

  - [`function error():stdgo.GoString`](<#readerror-function-error>)

- [class WriteError](<#class-writeerror>)

  - [`function new(?offset:stdgo.GoInt64, ?err:Null<stdgo.Error>):Void`](<#writeerror-function-new>)

  - [`function error():stdgo.GoString`](<#writeerror-function-error>)

- [class Writer](<#class-writer>)

  - [`function new(?_d:stdgo._internal.compress.flate.T_compressor, ?_dict:stdgo.Slice<stdgo.GoUInt8>):Void`](<#writer-function-new>)

  - [`function write( _b:stdgo.Slice<stdgo.GoByte>):{ _1:stdgo.Error; _0:stdgo.GoInt;}`](<#writer-function-write>)

- [typedef CorruptInputError](<#typedef-corruptinputerror>)

- [typedef InternalError](<#typedef-internalerror>)

- [typedef Reader](<#typedef-reader>)

- [typedef Resetter](<#typedef-resetter>)

- [typedef T\_\_struct\_0](<#typedef-t__struct_0>)

- [typedef T\_\_struct\_1](<#typedef-t__struct_1>)

- [typedef T\_\_struct\_2](<#typedef-t__struct_2>)

- [typedef T\_\_struct\_3](<#typedef-t__struct_3>)

- [typedef T\_\_struct\_4](<#typedef-t__struct_4>)

- [typedef T\_\_struct\_5](<#typedef-t__struct_5>)

- [typedef T\_\_struct\_6](<#typedef-t__struct_6>)

- [typedef T\_\_struct\_7](<#typedef-t__struct_7>)

- [typedef T\_byFreq](<#typedef-t_byfreq>)

- [typedef T\_byLiteral](<#typedef-t_byliteral>)

- [typedef T\_token](<#typedef-t_token>)

# Constants


```haxe
import stdgo._internal.compress.flate.Flate
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
final _ml:stdgo.GoUInt64 = ((2143289344i64 : stdgo.GoUInt64))
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
import stdgo._internal.compress.flate.Flate
```


```haxe
var _:Bool
```


```haxe
var _codeOrder:stdgo.GoArray<stdgo.GoInt>
```


```haxe
var _codegenOrder:stdgo.Slice<stdgo.GoUInt32>
```


```haxe
var _deflateInflateStringTests:stdgo.Slice<stdgo._internal.compress.flate.T_deflateInflateStringTest>
```


```haxe
var _deflateInflateTests:stdgo.Slice<stdgo.Ref<stdgo._internal.compress.flate.T_deflateInflateTest>>
```


```haxe
var _deflateTests:stdgo.Slice<stdgo.Ref<stdgo._internal.compress.flate.T_deflateTest>>
```


```haxe
var _errIO:stdgo.Error
```


```haxe
var _errWriterClosed:stdgo.Error
```


```haxe
var _fixedHuffmanDecoder:stdgo._internal.compress.flate.T_huffmanDecoder
```


```haxe
var _fixedLiteralEncoding:stdgo.Ref<stdgo._internal.compress.flate.T_huffmanEncoder>
```


```haxe
var _fixedOffsetEncoding:stdgo.Ref<stdgo._internal.compress.flate.T_huffmanEncoder>
```


```haxe
var _fixedOnce:stdgo._internal.sync.Once
```


```haxe
var _huffOffset:stdgo.Ref<stdgo._internal.compress.flate.T_huffmanEncoder>
```


```haxe
var _lengthBase:stdgo.Slice<stdgo.GoUInt32>
```


```haxe
var _lengthCodes:stdgo.GoArray<stdgo.GoUInt32>
```


```haxe
var _lengthExtraBits:stdgo.Slice<stdgo.GoInt8>
```


```haxe
var _levelTests:stdgo.Slice<stdgo._internal.compress.flate.T__struct_6>
```


```haxe
var _levels:stdgo.Slice<stdgo._internal.compress.flate.T_compressionLevel>
```


```haxe
var _offsetBase:stdgo.Slice<stdgo.GoUInt32>
```


```haxe
var _offsetCodes:stdgo.GoArray<stdgo.GoUInt32>
```


```haxe
var _offsetExtraBits:stdgo.Slice<stdgo.GoInt8>
```


```haxe
var _reverseBitsTests:stdgo.Slice<stdgo.Ref<stdgo._internal.compress.flate.T_reverseBitsTest>>
```


```haxe
var _sizes:stdgo.Slice<stdgo._internal.compress.flate.T__struct_7>
```


```haxe
var _suites:stdgo.Slice<stdgo._internal.compress.flate.T__struct_5>
```


```haxe
var _update:stdgo.Pointer<Bool>
```


```haxe
var _writeBlockTests:stdgo.Slice<stdgo._internal.compress.flate.T_huffTest>
```


# Functions


```haxe
import stdgo._internal.compress.flate.Flate
```


## function \_bulkHash4


```haxe
function _bulkHash4(_b:stdgo.Slice<stdgo.GoByte>, _dst:stdgo.Slice<stdgo.GoUInt32>):Void
```


[\(view code\)](<./Flate.hx#L6884>)


## function \_checkErrors


```haxe
function _checkErrors(_got:stdgo.Slice<stdgo.Error>, _want:stdgo.Error, _t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Flate.hx#L7574>)


## function \_doBench


```haxe
function _doBench(_b:stdgo.Ref<stdgo._internal.testing.B>, _f:(_b:stdgo.Ref<stdgo._internal.testing.B>, _buf:stdgo.Slice<stdgo.GoByte>, _level:stdgo.GoInt, _n:stdgo.GoInt):Void):Void
```


[\(view code\)](<./Flate.hx#L9116>)


## function \_emitLiteral


```haxe
function _emitLiteral(_dst:stdgo.Slice<stdgo._internal.compress.flate.T_token>, _lit:stdgo.Slice<stdgo.GoByte>):stdgo.Slice<stdgo._internal.compress.flate.T_token>
```


[\(view code\)](<./Flate.hx#L7919>)


## function \_fixedHuffmanDecoderInit


```haxe
function _fixedHuffmanDecoderInit():Void
```


[\(view code\)](<./Flate.hx#L8860>)


## function \_generateFixedLiteralEncoding


```haxe
function _generateFixedLiteralEncoding():stdgo.Ref<stdgo._internal.compress.flate.T_huffmanEncoder>
```


[\(view code\)](<./Flate.hx#L8816>)


## function \_generateFixedOffsetEncoding


```haxe
function _generateFixedOffsetEncoding():stdgo.Ref<stdgo._internal.compress.flate.T_huffmanEncoder>
```


[\(view code\)](<./Flate.hx#L8843>)


## function \_hash


```haxe
function _hash(_u:stdgo.GoUInt32):stdgo.GoUInt32
```


[\(view code\)](<./Flate.hx#L7913>)


## function \_hash4


```haxe
function _hash4(_b:stdgo.Slice<stdgo.GoByte>):stdgo.GoUInt32
```


[\(view code\)](<./Flate.hx#L6881>)


## function \_histogram


```haxe
function _histogram(_b:stdgo.Slice<stdgo.GoByte>, _h:stdgo.Slice<stdgo.GoInt32>):Void
```


[\(view code\)](<./Flate.hx#L8470>)


## function \_largeDataChunk


```haxe
function _largeDataChunk():stdgo.Slice<stdgo.GoByte>
```


[\(view code\)](<./Flate.hx#L6929>)


## function \_lengthCode


```haxe
function _lengthCode(_len:stdgo.GoUInt32):stdgo.GoUInt32
```


[\(view code\)](<./Flate.hx#L9140>)


## function \_literalToken


```haxe
function _literalToken(_literal:stdgo.GoUInt32):stdgo._internal.compress.flate.T_token
```


[\(view code\)](<./Flate.hx#L9134>)


## function \_load32


```haxe
function _load32(_b:stdgo.Slice<stdgo.GoByte>, _i:stdgo.GoInt32):stdgo.GoUInt32
```


[\(view code\)](<./Flate.hx#L7905>)


## function \_load64


```haxe
function _load64(_b:stdgo.Slice<stdgo.GoByte>, _i:stdgo.GoInt32):stdgo.GoUInt64
```


[\(view code\)](<./Flate.hx#L7909>)


## function \_matchLen


```haxe
function _matchLen(_a:stdgo.Slice<stdgo.GoByte>, _b:stdgo.Slice<stdgo.GoByte>, _max:stdgo.GoInt):stdgo.GoInt
```


[\(view code\)](<./Flate.hx#L6899>)


## function \_matchToken


```haxe
function _matchToken(_xlength:stdgo.GoUInt32, _xoffset:stdgo.GoUInt32):stdgo._internal.compress.flate.T_token
```


[\(view code\)](<./Flate.hx#L9137>)


## function \_maxNode


```haxe
function _maxNode():stdgo._internal.compress.flate.T_literalNode
```


[\(view code\)](<./Flate.hx#L8810>)


## function \_newDeflateFast


```haxe
function _newDeflateFast():stdgo.Ref<stdgo._internal.compress.flate.T_deflateFast>
```


[\(view code\)](<./Flate.hx#L7916>)


## function \_newHuffmanBitWriter


```haxe
function _newHuffmanBitWriter(_w:stdgo._internal.io.Writer):stdgo.Ref<stdgo._internal.compress.flate.T_huffmanBitWriter>
```


[\(view code\)](<./Flate.hx#L8467>)


## function \_newHuffmanEncoder


```haxe
function _newHuffmanEncoder(_size:stdgo.GoInt):stdgo.Ref<stdgo._internal.compress.flate.T_huffmanEncoder>
```


[\(view code\)](<./Flate.hx#L8813>)


## function \_newSyncBuffer


```haxe
function _newSyncBuffer():stdgo.Ref<stdgo._internal.compress.flate.T_syncBuffer>
```


[\(view code\)](<./Flate.hx#L7040>)


## function \_noEOF


```haxe
function _noEOF(_e:stdgo.Error):stdgo.Error
```


[\(view code\)](<./Flate.hx#L8854>)


## function \_offsetCode


```haxe
function _offsetCode(_off:stdgo.GoUInt32):stdgo.GoUInt32
```


[\(view code\)](<./Flate.hx#L9143>)


## function \_reverseBits


```haxe
function _reverseBits(_number:stdgo.GoUInt16, _bitLength:stdgo.GoByte):stdgo.GoUInt16
```


[\(view code\)](<./Flate.hx#L8851>)


## function \_testBlock


```haxe
function _testBlock(_t:stdgo.Ref<stdgo._internal.testing.T_>, _test:stdgo._internal.compress.flate.T_huffTest, _ttype:stdgo.GoString):Void
```


[\(view code\)](<./Flate.hx#L8558>)


## function \_testBlockHuff


```haxe
function _testBlockHuff(_t:stdgo.Ref<stdgo._internal.testing.T_>, _in:stdgo.GoString, _out:stdgo.GoString):Void
```


[\(view code\)](<./Flate.hx#L8489>)


## function \_testDeterministic


```haxe
function _testDeterministic(_i:stdgo.GoInt, _t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Flate.hx#L9262>)


## function \_testResetOutput


```haxe
function _testResetOutput(_t:stdgo.Ref<stdgo._internal.testing.T_>, _level:stdgo.GoInt, _dict:stdgo.Slice<stdgo.GoByte>):Void
```


[\(view code\)](<./Flate.hx#L7359>)


## function \_testSync


```haxe
function _testSync(_t:stdgo.Ref<stdgo._internal.testing.T_>, _level:stdgo.GoInt, _input:stdgo.Slice<stdgo.GoByte>, _name:stdgo.GoString):Void
```


[\(view code\)](<./Flate.hx#L7043>)


## function \_testToFromWithLevelAndLimit


```haxe
function _testToFromWithLevelAndLimit(_t:stdgo.Ref<stdgo._internal.testing.T_>, _level:stdgo.GoInt, _input:stdgo.Slice<stdgo.GoByte>, _name:stdgo.GoString, _limit:stdgo.GoInt):Void
```


[\(view code\)](<./Flate.hx#L7142>)


## function \_testToFromWithLimit


```haxe
function _testToFromWithLimit(_t:stdgo.Ref<stdgo._internal.testing.T_>, _input:stdgo.Slice<stdgo.GoByte>, _name:stdgo.GoString, _limit:stdgo.GoArray<stdgo.GoInt>):Void
```


[\(view code\)](<./Flate.hx#L7171>)


## function \_testWriterEOF


```haxe
function _testWriterEOF(_t:stdgo.Ref<stdgo._internal.testing.T_>, _ttype:stdgo.GoString, _test:stdgo._internal.compress.flate.T_huffTest, _useInput:Bool):Void
```


[\(view code\)](<./Flate.hx#L8759>)


## function \_writeToType


```haxe
function _writeToType(_t:stdgo.Ref<stdgo._internal.testing.T_>, _ttype:stdgo.GoString, _bw:stdgo.Ref<stdgo._internal.compress.flate.T_huffmanBitWriter>, _tok:stdgo.Slice<stdgo._internal.compress.flate.T_token>, _input:stdgo.Slice<stdgo.GoByte>):Void
```


[\(view code\)](<./Flate.hx#L8738>)


## function benchmarkDecode


```haxe
function benchmarkDecode(_b:stdgo.Ref<stdgo._internal.testing.B>):Void
```


[\(view code\)](<./Flate.hx#L9077>)


## function benchmarkEncode


```haxe
function benchmarkEncode(_b:stdgo.Ref<stdgo._internal.testing.B>):Void
```


[\(view code\)](<./Flate.hx#L9152>)


## function newReader


```haxe
function newReader(_r:stdgo._internal.io.Reader):stdgo._internal.io.ReadCloser
```


[\(view code\)](<./Flate.hx#L8890>)


## function newReaderDict


```haxe
function newReaderDict(_r:stdgo._internal.io.Reader, _dict:stdgo.Slice<stdgo.GoByte>):stdgo._internal.io.ReadCloser
```


[\(view code\)](<./Flate.hx#L8900>)


## function newWriter


```haxe
function newWriter(_w:stdgo._internal.io.Writer, _level:stdgo.GoInt):{
	_1:stdgo.Error;
	_0:stdgo.Ref<stdgo._internal.compress.flate.Writer>;
}
```


[\(view code\)](<./Flate.hx#L6909>)


## function newWriterDict


```haxe
function newWriterDict(_w:stdgo._internal.io.Writer, _level:stdgo.GoInt, _dict:stdgo.Slice<stdgo.GoByte>):{
	_1:stdgo.Error;
	_0:stdgo.Ref<stdgo._internal.compress.flate.Writer>;
}
```


[\(view code\)](<./Flate.hx#L6919>)


## function testBestSpeed


```haxe
function testBestSpeed(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Flate.hx#L7419>)


## function testBestSpeedMatch


```haxe
function testBestSpeedMatch(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Flate.hx#L7582>)


## function testBestSpeedMaxMatchOffset


```haxe
function testBestSpeedMaxMatchOffset(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Flate.hx#L7734>)


## function testBestSpeedShiftOffsets


```haxe
function testBestSpeedShiftOffsets(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Flate.hx#L7788>)


## function testBlockHuff


```haxe
function testBlockHuff(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Flate.hx#L8476>)


## function testBulkHash4


```haxe
function testBulkHash4(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Flate.hx#L6936>)


## function testDeflate


```haxe
function testDeflate(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Flate.hx#L6964>)


## function testDeflateFast\_Reset


```haxe
function testDeflateFast_Reset(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Flate.hx#L9309>)


## function testDeflateInflate


```haxe
function testDeflateInflate(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Flate.hx#L7180>)


## function testDeflateInflateString


```haxe
function testDeflateInflateString(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Flate.hx#L7199>)


## function testDeterministic


```haxe
function testDeterministic(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Flate.hx#L9248>)


## function testDictDecoder


```haxe
function testDictDecoder(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Flate.hx#L7925>)


## function testInvalidBits


```haxe
function testInvalidBits(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Flate.hx#L8302>)


## function testInvalidEncoding


```haxe
function testInvalidEncoding(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Flate.hx#L8290>)


## function testIssue5915


```haxe
function testIssue5915(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Flate.hx#L8154>)


## function testIssue5962


```haxe
function testIssue5962(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Flate.hx#L8226>)


## function testIssue6255


```haxe
function testIssue6255(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Flate.hx#L8265>)


## function testMaxStackSize


```haxe
function testMaxStackSize(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Flate.hx#L7822>)


## function testNlitOutOfRange


```haxe
function testNlitOutOfRange(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Flate.hx#L9033>)


## function testReaderDict


```haxe
function testReaderDict(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Flate.hx#L7215>)


## function testReaderEarlyEOF


```haxe
function testReaderEarlyEOF(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Flate.hx#L8396>)


## function testReaderReusesReaderBuffer


```haxe
function testReaderReusesReaderBuffer(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Flate.hx#L8978>)


## function testReaderTruncated


```haxe
function testReaderTruncated(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Flate.hx#L8930>)


## function testRegression2508


```haxe
function testRegression2508(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Flate.hx#L7259>)


## function testReset


```haxe
function testReset(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Flate.hx#L8910>)


## function testResetDict


```haxe
function testResetDict(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Flate.hx#L8956>)


## function testReverseBits


```haxe
function testReverseBits(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Flate.hx#L7189>)


## function testStreams


```haxe
function testStreams(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Flate.hx#L8313>)


## function testTruncatedStreams


```haxe
function testTruncatedStreams(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Flate.hx#L8373>)


## function testVeryLongSparseChunk


```haxe
function testVeryLongSparseChunk(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Flate.hx#L7020>)


## function testWriteBlock


```haxe
function testWriteBlock(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Flate.hx#L8548>)


## function testWriteBlockDynamic


```haxe
function testWriteBlockDynamic(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Flate.hx#L8553>)


## function testWriteError


```haxe
function testWriteError(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Flate.hx#L9183>)


## function testWriterClose


```haxe
function testWriterClose(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Flate.hx#L6979>)


## function testWriterDict


```haxe
function testWriterDict(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Flate.hx#L7236>)


## function testWriterPersistentCloseError


```haxe
function testWriterPersistentCloseError(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Flate.hx#L7548>)


## function testWriterPersistentFlushError


```haxe
function testWriterPersistentFlushError(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Flate.hx#L7538>)


## function testWriterPersistentWriteError


```haxe
function testWriterPersistentWriteError(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Flate.hx#L7504>)


## function testWriterReset


```haxe
function testWriterReset(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Flate.hx#L7282>)


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


[\(view code\)](<./Flate.hx#L6626>)


### ReadError function error


```haxe
function error():stdgo.GoString
```


[\(view code\)](<./Flate.hx#L11184>)


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


[\(view code\)](<./Flate.hx#L6638>)


### WriteError function error


```haxe
function error():stdgo.GoString
```


[\(view code\)](<./Flate.hx#L11202>)


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


[\(view code\)](<./Flate.hx#L6359>)


### Writer function write


```haxe
function write( _b:stdgo.Slice<stdgo.GoByte>):{
	_1:stdgo.Error;
	_0:stdgo.GoInt;
}
```


[\(view code\)](<./Flate.hx#L9935>)


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
		_0:stdgo.GoByte;
	};
	public function read(_p:stdgo.Slice<stdgo.GoByte>):{
		_1:stdgo.Error;
		_0:stdgo.GoInt;
	};
};
```


## typedef Resetter


```haxe
typedef Resetter = {
	public function reset(_r:stdgo._internal.io.Reader, _dict:stdgo.Slice<stdgo.GoByte>):stdgo.Error;	//  Reset discards any buffered data and resets the Resetter as if it was newly initialized with the given reader.
};
```


## typedef T\_\_struct\_0


```haxe
typedef T__struct_0 = {
	_want:stdgo.GoInt32;
	_t:stdgo.GoInt32;
	_s:stdgo.GoInt32;
	_previous:stdgo.Slice<stdgo.GoUInt8>;
	_current:stdgo.Slice<stdgo.GoUInt8>;
};
```


## typedef T\_\_struct\_1


```haxe
typedef T__struct_1 = {
	_length:stdgo.GoInt;
	_dist:stdgo.GoInt;
};
```


## typedef T\_\_struct\_2


```haxe
typedef T__struct_2 = {
	_want:stdgo.GoString;
	_stream:stdgo.GoString;
	_desc:stdgo.GoString;
};
```


## typedef T\_\_struct\_3


```haxe
typedef T__struct_3 = {
	_output:stdgo.GoString;
	_input:stdgo.GoString;
};
```


## typedef T\_\_struct\_4


```haxe
typedef T__struct_4 = {
	{<reader> | stdgo._internal.io.Reader | meta:{<m>}};
};
```


## typedef T\_\_struct\_5


```haxe
typedef T__struct_5 = {
	_name:stdgo.GoString;
	_file:stdgo.GoString;
};
```


## typedef T\_\_struct\_6


```haxe
typedef T__struct_6 = {
	_name:stdgo.GoString;
	_level:stdgo.GoInt;
};
```


## typedef T\_\_struct\_7


```haxe
typedef T__struct_7 = {
	_name:stdgo.GoString;
	_n:stdgo.GoInt;
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


