# Module: `stdgo.compress.flate`

[(view library index)](../../stdgo.md)


# Overview



Package flate implements the DEFLATE compressed data format, described in
RFC 1951.  The gzip and zlib packages implement access to DEFLATE\-based file
formats.  

stdgo/internal/Macro.macro.hx:38: TypeInfoData_go2hx_hx

# Index


- [Constants](<#constants>)

- [Variables](<#variables>)

- [`function _bulkHash4(_b:stdgo.Slice<stdgo.GoByte>, _dst:stdgo.Slice<stdgo.GoUInt32>):Void`](<#function-_bulkhash4>)

- [`function _checkErrors(_got:stdgo.Slice<stdgo.Error>, _want:stdgo.Error, _t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-_checkerrors>)

- [`function _doBench(_b:stdgo.Ref<stdgo.testing.B>, _f:(_b:stdgo.Ref<stdgo.testing.B>, _buf:stdgo.Slice<stdgo.GoByte>, _level:stdgo.GoInt, _n:stdgo.GoInt):Void):Void`](<#function-_dobench>)

- [`function _emitLiteral(_dst:stdgo.Slice<stdgo.compress.flate.T_token>, _lit:stdgo.Slice<stdgo.GoByte>):stdgo.Slice<stdgo.compress.flate.T_token>`](<#function-_emitliteral>)

- [`function _fixedHuffmanDecoderInit():Void`](<#function-_fixedhuffmandecoderinit>)

- [`function _generateFixedLiteralEncoding():stdgo.Ref<stdgo.compress.flate.T_huffmanEncoder>`](<#function-_generatefixedliteralencoding>)

- [`function _generateFixedOffsetEncoding():stdgo.Ref<stdgo.compress.flate.T_huffmanEncoder>`](<#function-_generatefixedoffsetencoding>)

- [`function _hash(_u:stdgo.GoUInt32):stdgo.GoUInt32`](<#function-_hash>)

- [`function _hash4(_b:stdgo.Slice<stdgo.GoByte>):stdgo.GoUInt32`](<#function-_hash4>)

- [`function _histogram(_b:stdgo.Slice<stdgo.GoByte>, _h:stdgo.Slice<stdgo.GoInt32>):Void`](<#function-_histogram>)

- [`function _largeDataChunk():stdgo.Slice<stdgo.GoByte>`](<#function-_largedatachunk>)

- [`function _lengthCode(_len:stdgo.GoUInt32):stdgo.GoUInt32`](<#function-_lengthcode>)

- [`function _literalToken(_literal:stdgo.GoUInt32):stdgo.compress.flate.T_token`](<#function-_literaltoken>)

- [`function _load32(_b:stdgo.Slice<stdgo.GoByte>, _i:stdgo.GoInt32):stdgo.GoUInt32`](<#function-_load32>)

- [`function _load64(_b:stdgo.Slice<stdgo.GoByte>, _i:stdgo.GoInt32):stdgo.GoUInt64`](<#function-_load64>)

- [`function _matchLen(_a:stdgo.Slice<stdgo.GoByte>, _b:stdgo.Slice<stdgo.GoByte>, _max:stdgo.GoInt):stdgo.GoInt`](<#function-_matchlen>)

- [`function _matchToken(_xlength:stdgo.GoUInt32, _xoffset:stdgo.GoUInt32):stdgo.compress.flate.T_token`](<#function-_matchtoken>)

- [`function _maxNode():stdgo.compress.flate.T_literalNode`](<#function-_maxnode>)

- [`function _newDeflateFast():stdgo.Ref<stdgo.compress.flate.T_deflateFast>`](<#function-_newdeflatefast>)

- [`function _newHuffmanBitWriter(_w:stdgo.io.Writer):stdgo.Ref<stdgo.compress.flate.T_huffmanBitWriter>`](<#function-_newhuffmanbitwriter>)

- [`function _newHuffmanEncoder(_size:stdgo.GoInt):stdgo.Ref<stdgo.compress.flate.T_huffmanEncoder>`](<#function-_newhuffmanencoder>)

- [`function _newSyncBuffer():stdgo.Ref<stdgo.compress.flate.T_syncBuffer>`](<#function-_newsyncbuffer>)

- [`function _noEOF(_e:stdgo.Error):stdgo.Error`](<#function-_noeof>)

- [`function _offsetCode(_off:stdgo.GoUInt32):stdgo.GoUInt32`](<#function-_offsetcode>)

- [`function _reverseBits(_number:stdgo.GoUInt16, _bitLength:stdgo.GoByte):stdgo.GoUInt16`](<#function-_reversebits>)

- [`function _testBlock(_t:stdgo.Ref<stdgo.testing.T_>, _test:stdgo.compress.flate.T_huffTest, _ttype:stdgo.GoString):Void`](<#function-_testblock>)

- [`function _testBlockHuff(_t:stdgo.Ref<stdgo.testing.T_>, _in:stdgo.GoString, _out:stdgo.GoString):Void`](<#function-_testblockhuff>)

- [`function _testDeterministic(_i:stdgo.GoInt, _t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-_testdeterministic>)

- [`function _testResetOutput(_t:stdgo.Ref<stdgo.testing.T_>, _level:stdgo.GoInt, _dict:stdgo.Slice<stdgo.GoByte>):Void`](<#function-_testresetoutput>)

- [`function _testSync(_t:stdgo.Ref<stdgo.testing.T_>, _level:stdgo.GoInt, _input:stdgo.Slice<stdgo.GoByte>, _name:stdgo.GoString):Void`](<#function-_testsync>)

- [`function _testToFromWithLevelAndLimit(_t:stdgo.Ref<stdgo.testing.T_>, _level:stdgo.GoInt, _input:stdgo.Slice<stdgo.GoByte>, _name:stdgo.GoString, _limit:stdgo.GoInt):Void`](<#function-_testtofromwithlevelandlimit>)

- [`function _testToFromWithLimit(_t:stdgo.Ref<stdgo.testing.T_>, _input:stdgo.Slice<stdgo.GoByte>, _name:stdgo.GoString, _limit:stdgo.GoArray<stdgo.GoInt>):Void`](<#function-_testtofromwithlimit>)

- [`function _testWriterEOF(_t:stdgo.Ref<stdgo.testing.T_>, _ttype:stdgo.GoString, _test:stdgo.compress.flate.T_huffTest, _useInput:Bool):Void`](<#function-_testwritereof>)

- [`function _writeToType(_t:stdgo.Ref<stdgo.testing.T_>, _ttype:stdgo.GoString, _bw:stdgo.Ref<stdgo.compress.flate.T_huffmanBitWriter>, _tok:stdgo.Slice<stdgo.compress.flate.T_token>, _input:stdgo.Slice<stdgo.GoByte>):Void`](<#function-_writetotype>)

- [`function benchmarkDecode(_b:stdgo.Ref<stdgo.testing.B>):Void`](<#function-benchmarkdecode>)

- [`function benchmarkEncode(_b:stdgo.Ref<stdgo.testing.B>):Void`](<#function-benchmarkencode>)

- [`function newReader(_r:stdgo.io.Reader):stdgo.io.ReadCloser`](<#function-newreader>)

- [`function newReaderDict(_r:stdgo.io.Reader, _dict:stdgo.Slice<stdgo.GoByte>):stdgo.io.ReadCloser`](<#function-newreaderdict>)

- [`function newWriter(_w:stdgo.io.Writer, _level:stdgo.GoInt):{
	_1:stdgo.Error;
	_0:stdgo.Ref<stdgo.compress.flate.Writer>;
}`](<#function-newwriter>)

- [`function newWriterDict(_w:stdgo.io.Writer, _level:stdgo.GoInt, _dict:stdgo.Slice<stdgo.GoByte>):{
	_1:stdgo.Error;
	_0:stdgo.Ref<stdgo.compress.flate.Writer>;
}`](<#function-newwriterdict>)

- [`function testBestSpeed(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testbestspeed>)

- [`function testBestSpeedMatch(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testbestspeedmatch>)

- [`function testBestSpeedMaxMatchOffset(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testbestspeedmaxmatchoffset>)

- [`function testBestSpeedShiftOffsets(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testbestspeedshiftoffsets>)

- [`function testBlockHuff(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testblockhuff>)

- [`function testBulkHash4(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testbulkhash4>)

- [`function testDeflate(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testdeflate>)

- [`function testDeflateFast_Reset(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testdeflatefast_reset>)

- [`function testDeflateInflate(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testdeflateinflate>)

- [`function testDeflateInflateString(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testdeflateinflatestring>)

- [`function testDeterministic(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testdeterministic>)

- [`function testDictDecoder(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testdictdecoder>)

- [`function testInvalidBits(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testinvalidbits>)

- [`function testInvalidEncoding(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testinvalidencoding>)

- [`function testIssue5915(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testissue5915>)

- [`function testIssue5962(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testissue5962>)

- [`function testIssue6255(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testissue6255>)

- [`function testMaxStackSize(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testmaxstacksize>)

- [`function testNlitOutOfRange(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testnlitoutofrange>)

- [`function testReaderDict(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testreaderdict>)

- [`function testReaderEarlyEOF(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testreaderearlyeof>)

- [`function testReaderReusesReaderBuffer(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testreaderreusesreaderbuffer>)

- [`function testReaderTruncated(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testreadertruncated>)

- [`function testRegression2508(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testregression2508>)

- [`function testReset(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testreset>)

- [`function testResetDict(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testresetdict>)

- [`function testReverseBits(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testreversebits>)

- [`function testStreams(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-teststreams>)

- [`function testTruncatedStreams(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testtruncatedstreams>)

- [`function testVeryLongSparseChunk(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testverylongsparsechunk>)

- [`function testWriteBlock(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testwriteblock>)

- [`function testWriteBlockDynamic(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testwriteblockdynamic>)

- [`function testWriteError(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testwriteerror>)

- [`function testWriterClose(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testwriterclose>)

- [`function testWriterDict(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testwriterdict>)

- [`function testWriterPersistentCloseError(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testwriterpersistentcloseerror>)

- [`function testWriterPersistentFlushError(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testwriterpersistentflusherror>)

- [`function testWriterPersistentWriteError(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testwriterpersistentwriteerror>)

- [`function testWriterReset(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testwriterreset>)

- [class ReadError](<#class-readerror>)

  - [`function new(?offset:stdgo.GoInt64, ?err:Null<stdgo.Error>):Void`](<#readerror-function-new>)

  - [`function error():stdgo.GoString`](<#readerror-function-error>)

- [class WriteError](<#class-writeerror>)

  - [`function new(?offset:stdgo.GoInt64, ?err:Null<stdgo.Error>):Void`](<#writeerror-function-new>)

  - [`function error():stdgo.GoString`](<#writeerror-function-error>)

- [class Writer](<#class-writer>)

  - [`function new(?_d:stdgo.compress.flate.T_compressor, ?_dict:stdgo.Slice<stdgo.GoUInt8>):Void`](<#writer-function-new>)

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
import stdgo.compress.flate.Flate
```


```haxe
final _badCode:stdgo.GoUInt64 = ((255i64 : stdgo.GoUInt64))
```


```haxe
final _baseMatchLength:stdgo.GoUInt64 = ((3i64 : stdgo.GoUInt64))
```



The LZ77 step produces a sequence of literal tokens and \<length, offset\>
pair tokens. The offset is also known as distance. The underlying wire
format limits the range of lengths and offsets. For example, there are
256 legitimate lengths: those in the range \[3, 258\]. This package's
compressor uses a higher minimum match length, enabling optimizations
such as finding matches via 32\-bit loads and compares.  


The smallest match length per the RFC section 3.2.5  

```haxe
final _baseMatchOffset:stdgo.GoUInt64 = ((1i64 : stdgo.GoUInt64))
```



The smallest match offset  

```haxe
final _bufferFlushSize:stdgo.GoUInt64 = ((240i64 : stdgo.GoUInt64))
```



bufferFlushSize indicates the buffer size
after which bytes are flushed to the writer.
Should preferably be a multiple of 6, since
we accumulate 6 bytes between writes to the buffer.  

```haxe
final _bufferReset:stdgo.GoUInt64 = ((2147352577i64 : stdgo.GoUInt64))
```



Reset the buffer offset when reaching this.
Offsets are stored between blocks as int32 values.
Since the offset we are checking against is at the beginning
of the buffer, we need to subtract the current and input
buffer to not risk overflowing the int32.  

```haxe
final _bufferSize:stdgo.GoUInt64 = ((248i64 : stdgo.GoUInt64))
```



bufferSize is the actual output byte buffer size.
It must have additional headroom for a flush
which can contain up to 8 bytes.  

```haxe
final _codegenCodeCount:stdgo.GoUInt64 = ((19i64 : stdgo.GoUInt64))
```



The number of codegen codes.  

```haxe
final _endBlockMarker:stdgo.GoUInt64 = ((256i64 : stdgo.GoUInt64))
```



The special code used to mark the end of a block.  

```haxe
final _hashBits:stdgo.GoUInt64 = ((17i64 : stdgo.GoUInt64))
```



After 17 performance degrades  

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



These constants are defined by the Snappy implementation so that its
assembly implementation can fast\-path some 16\-bytes\-at\-a\-time copies. They
aren't necessary in the pure Go implementation, as we don't use those same
optimizations, but using the same thresholds doesn't really hurt.  

```haxe
final _lengthCodesStart:stdgo.GoUInt64 = ((257i64 : stdgo.GoUInt64))
```



The first length code.  

```haxe
final _lengthShift:stdgo.GoUInt64 = ((22i64 : stdgo.GoUInt64))
```



2 bits:   type   0 = literal  1=EOF  2=Match   3=Unused
8 bits:   xlength = length \- MIN\_MATCH\_LENGTH
22 bits   xoffset = offset \- MIN\_OFFSET\_SIZE, or literal  

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



max length of Huffman code  

```haxe
final _maxFlateBlockTokens:stdgo.GoUInt64 = ((16384i64 : stdgo.GoUInt64))
```



The maximum number of tokens we put into a single flate block, just to
stop things from getting too large.  

```haxe
final _maxHashOffset:stdgo.GoUInt64 = ((16777216i64 : stdgo.GoUInt64))
```


```haxe
final _maxMatchLength:stdgo.GoUInt64 = ((258i64 : stdgo.GoUInt64))
```



The largest match length  

```haxe
final _maxMatchOffset:stdgo.GoUInt64 = ((32768i64 : stdgo.GoUInt64))
```



The largest match offset  

```haxe
final _maxNumDist:stdgo.GoUInt64 = ((30i64 : stdgo.GoUInt64))
```


```haxe
final _maxNumLit:stdgo.GoUInt64 = ((286i64 : stdgo.GoUInt64))
```



The next three numbers come from the RFC section 3.2.7, with the
additional proviso in section 3.2.5 which implies that distance codes
30 and 31 should never occur in compressed data.  

```haxe
final _maxStoreBlockSize:stdgo.GoUInt64 = ((65535i64 : stdgo.GoUInt64))
```


```haxe
final _minMatchLength:stdgo.GoUInt64 = ((4i64 : stdgo.GoUInt64))
```



The smallest match length that the compressor actually emits  

```haxe
final _minNonLiteralBlockSize:stdgo.GoUInt64 = ((17i64 : stdgo.GoUInt64))
```



These constants are defined by the Snappy implementation so that its
assembly implementation can fast\-path some 16\-bytes\-at\-a\-time copies. They
aren't necessary in the pure Go implementation, as we don't use those same
optimizations, but using the same thresholds doesn't really hurt.  

```haxe
final _ml:stdgo.GoUInt64 = ((2143289344i64 : stdgo.GoUInt64))
```



Maximum length token. Used to reduce the size of writeBlockTests  

```haxe
final _numCodes:stdgo.GoUInt64 = ((19i64 : stdgo.GoUInt64))
```



number of codes in Huffman meta\-code  

```haxe
final _offsetCodeCount:stdgo.GoUInt64 = ((30i64 : stdgo.GoUInt64))
```



The largest offset code.  

```haxe
final _offsetMask:stdgo.GoUInt64 = ((4194303i64 : stdgo.GoUInt64))
```


```haxe
final _skipNever:stdgo.GoUInt64 = ((2147483647i64 : stdgo.GoUInt64))
```


```haxe
final _tableBits:stdgo.GoUInt64 = ((14i64 : stdgo.GoUInt64))
```



Bits used in the table.  

```haxe
final _tableMask:stdgo.GoUInt64 = ((16383i64 : stdgo.GoUInt64))
```



Mask for table indices. Redundant, but can eliminate bounds checks.  

```haxe
final _tableShift:stdgo.GoUInt64 = ((18i64 : stdgo.GoUInt64))
```



Right\-shift to get the tableBits most significant bits of a uint32.  

```haxe
final _tableSize:stdgo.GoUInt64 = ((16384i64 : stdgo.GoUInt64))
```



Size of the table.  

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



HuffmanOnly disables Lempel\-Ziv match searching and only performs Huffman
entropy encoding. This mode is useful in compressing data that has
already been compressed with an LZ style algorithm \(e.g. Snappy or LZ4\)
that lacks an entropy encoder. Compression gains are achieved when
certain bytes in the input stream occur more frequently than others.  


Note that HuffmanOnly produces a compressed output that is
RFC 1951 compliant. That is, any valid DEFLATE decompressor will
continue to be able to decompress this output.  

```haxe
final noCompression:stdgo.GoUInt64 = ((0i64 : stdgo.GoUInt64))
```


# Variables


```haxe
import stdgo.compress.flate.Flate
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



The odd order in which the codegen code sizes are written.  

```haxe
var _deflateInflateStringTests:stdgo.Slice<stdgo.compress.flate.T_deflateInflateStringTest>
```


```haxe
var _deflateInflateTests:stdgo.Slice<stdgo.Ref<stdgo.compress.flate.T_deflateInflateTest>>
```


```haxe
var _deflateTests:stdgo.Slice<stdgo.Ref<stdgo.compress.flate.T_deflateTest>>
```


```haxe
var _errIO:stdgo.Error
```


```haxe
var _errWriterClosed:stdgo.Error
```


```haxe
var _fixedHuffmanDecoder:stdgo.compress.flate.T_huffmanDecoder
```


```haxe
var _fixedLiteralEncoding:stdgo.Ref<stdgo.compress.flate.T_huffmanEncoder>
```


```haxe
var _fixedOffsetEncoding:stdgo.Ref<stdgo.compress.flate.T_huffmanEncoder>
```


```haxe
var _fixedOnce:stdgo.sync.Once
```



Initialize the fixedHuffmanDecoder only once upon first use.  

```haxe
var _huffOffset:stdgo.Ref<stdgo.compress.flate.T_huffmanEncoder>
```



huffOffset is a static offset encoder used for huffman only encoding.
It can be reused since we will not be encoding offset values.  

```haxe
var _lengthBase:stdgo.Slice<stdgo.GoUInt32>
```



The length indicated by length code X \- LENGTH\_CODES\_START.  

```haxe
var _lengthCodes:stdgo.GoArray<stdgo.GoUInt32>
```



The length code for length X \(MIN\_MATCH\_LENGTH \<= X \<= MAX\_MATCH\_LENGTH\)
is lengthCodes\[length \- MIN\_MATCH\_LENGTH\]  

```haxe
var _lengthExtraBits:stdgo.Slice<stdgo.GoInt8>
```



The number of extra bits needed by length code X \- LENGTH\_CODES\_START.  

```haxe
var _levelTests:stdgo.Slice<stdgo.compress.flate.T__struct_6>
```


```haxe
var _levels:stdgo.Slice<stdgo.compress.flate.T_compressionLevel>
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



offset code word extra bits.  

```haxe
var _reverseBitsTests:stdgo.Slice<stdgo.Ref<stdgo.compress.flate.T_reverseBitsTest>>
```


```haxe
var _sizes:stdgo.Slice<stdgo.compress.flate.T__struct_7>
```


```haxe
var _suites:stdgo.Slice<stdgo.compress.flate.T__struct_5>
```


```haxe
var _update:stdgo.Pointer<Bool>
```


```haxe
var _writeBlockTests:stdgo.Slice<stdgo.compress.flate.T_huffTest>
```


# Functions


```haxe
import stdgo.compress.flate.Flate
```


## function \_bulkHash4


```haxe
function _bulkHash4(_b:stdgo.Slice<stdgo.GoByte>, _dst:stdgo.Slice<stdgo.GoUInt32>):Void
```



bulkHash4 will compute hashes using the same
algorithm as hash4.  

[\(view code\)](<./Flate.hx#L7553>)


## function \_checkErrors


```haxe
function _checkErrors(_got:stdgo.Slice<stdgo.Error>, _want:stdgo.Error, _t:stdgo.Ref<stdgo.testing.T_>):Void
```


[\(view code\)](<./Flate.hx#L8279>)


## function \_doBench


```haxe
function _doBench(_b:stdgo.Ref<stdgo.testing.B>, _f:(_b:stdgo.Ref<stdgo.testing.B>, _buf:stdgo.Slice<stdgo.GoByte>, _level:stdgo.GoInt, _n:stdgo.GoInt):Void):Void
```


[\(view code\)](<./Flate.hx#L9890>)


## function \_emitLiteral


```haxe
function _emitLiteral(_dst:stdgo.Slice<stdgo.compress.flate.T_token>, _lit:stdgo.Slice<stdgo.GoByte>):stdgo.Slice<stdgo.compress.flate.T_token>
```


[\(view code\)](<./Flate.hx#L8624>)


## function \_fixedHuffmanDecoderInit


```haxe
function _fixedHuffmanDecoderInit():Void
```


[\(view code\)](<./Flate.hx#L9615>)


## function \_generateFixedLiteralEncoding


```haxe
function _generateFixedLiteralEncoding():stdgo.Ref<stdgo.compress.flate.T_huffmanEncoder>
```



Generates a HuffmanCode corresponding to the fixed literal table.  

[\(view code\)](<./Flate.hx#L9568>)


## function \_generateFixedOffsetEncoding


```haxe
function _generateFixedOffsetEncoding():stdgo.Ref<stdgo.compress.flate.T_huffmanEncoder>
```


[\(view code\)](<./Flate.hx#L9595>)


## function \_hash


```haxe
function _hash(_u:stdgo.GoUInt32):stdgo.GoUInt32
```


[\(view code\)](<./Flate.hx#L8618>)


## function \_hash4


```haxe
function _hash4(_b:stdgo.Slice<stdgo.GoByte>):stdgo.GoUInt32
```



hash4 returns a hash representation of the first 4 bytes
of the supplied slice.
The caller must ensure that len\(b\) \>= 4.  

[\(view code\)](<./Flate.hx#L7546>)


## function \_histogram


```haxe
function _histogram(_b:stdgo.Slice<stdgo.GoByte>, _h:stdgo.Slice<stdgo.GoInt32>):Void
```



histogram accumulates a histogram of b in h.  


len\(h\) must be \>= 256, and h's elements must be all zeroes.  

[\(view code\)](<./Flate.hx#L9198>)


## function \_largeDataChunk


```haxe
function _largeDataChunk():stdgo.Slice<stdgo.GoByte>
```


[\(view code\)](<./Flate.hx#L7625>)


## function \_lengthCode


```haxe
function _lengthCode(_len:stdgo.GoUInt32):stdgo.GoUInt32
```


[\(view code\)](<./Flate.hx#L9920>)


## function \_literalToken


```haxe
function _literalToken(_literal:stdgo.GoUInt32):stdgo.compress.flate.T_token
```



Convert a literal into a literal token.  

[\(view code\)](<./Flate.hx#L9911>)


## function \_load32


```haxe
function _load32(_b:stdgo.Slice<stdgo.GoByte>, _i:stdgo.GoInt32):stdgo.GoUInt32
```


[\(view code\)](<./Flate.hx#L8610>)


## function \_load64


```haxe
function _load64(_b:stdgo.Slice<stdgo.GoByte>, _i:stdgo.GoInt32):stdgo.GoUInt64
```


[\(view code\)](<./Flate.hx#L8614>)


## function \_matchLen


```haxe
function _matchLen(_a:stdgo.Slice<stdgo.GoByte>, _b:stdgo.Slice<stdgo.GoByte>, _max:stdgo.GoInt):stdgo.GoInt
```



matchLen returns the number of matching bytes in a and b
up to length 'max'. Both slices must be at least 'max'
bytes in size.  

[\(view code\)](<./Flate.hx#L7573>)


## function \_matchToken


```haxe
function _matchToken(_xlength:stdgo.GoUInt32, _xoffset:stdgo.GoUInt32):stdgo.compress.flate.T_token
```



Convert a \< xlength, xoffset \> pair into a match token.  

[\(view code\)](<./Flate.hx#L9917>)


## function \_maxNode


```haxe
function _maxNode():stdgo.compress.flate.T_literalNode
```


[\(view code\)](<./Flate.hx#L9559>)


## function \_newDeflateFast


```haxe
function _newDeflateFast():stdgo.Ref<stdgo.compress.flate.T_deflateFast>
```


[\(view code\)](<./Flate.hx#L8621>)


## function \_newHuffmanBitWriter


```haxe
function _newHuffmanBitWriter(_w:stdgo.io.Writer):stdgo.Ref<stdgo.compress.flate.T_huffmanBitWriter>
```


[\(view code\)](<./Flate.hx#L9190>)


## function \_newHuffmanEncoder


```haxe
function _newHuffmanEncoder(_size:stdgo.GoInt):stdgo.Ref<stdgo.compress.flate.T_huffmanEncoder>
```


[\(view code\)](<./Flate.hx#L9562>)


## function \_newSyncBuffer


```haxe
function _newSyncBuffer():stdgo.Ref<stdgo.compress.flate.T_syncBuffer>
```


[\(view code\)](<./Flate.hx#L7736>)


## function \_noEOF


```haxe
function _noEOF(_e:stdgo.Error):stdgo.Error
```



noEOF returns err, unless err == io.EOF, in which case it returns io.ErrUnexpectedEOF.  

[\(view code\)](<./Flate.hx#L9609>)


## function \_offsetCode


```haxe
function _offsetCode(_off:stdgo.GoUInt32):stdgo.GoUInt32
```



Returns the offset code corresponding to a specific offset.  

[\(view code\)](<./Flate.hx#L9926>)


## function \_reverseBits


```haxe
function _reverseBits(_number:stdgo.GoUInt16, _bitLength:stdgo.GoByte):stdgo.GoUInt16
```


[\(view code\)](<./Flate.hx#L9603>)


## function \_testBlock


```haxe
function _testBlock(_t:stdgo.Ref<stdgo.testing.T_>, _test:stdgo.compress.flate.T_huffTest, _ttype:stdgo.GoString):Void
```



testBlock tests a block against its references,
or regenerate the references, if "\-update" flag is set.  

[\(view code\)](<./Flate.hx#L9304>)


## function \_testBlockHuff


```haxe
function _testBlockHuff(_t:stdgo.Ref<stdgo.testing.T_>, _in:stdgo.GoString, _out:stdgo.GoString):Void
```


[\(view code\)](<./Flate.hx#L9223>)


## function \_testDeterministic


```haxe
function _testDeterministic(_i:stdgo.GoInt, _t:stdgo.Ref<stdgo.testing.T_>):Void
```


[\(view code\)](<./Flate.hx#L10052>)


## function \_testResetOutput


```haxe
function _testResetOutput(_t:stdgo.Ref<stdgo.testing.T_>, _level:stdgo.GoInt, _dict:stdgo.Slice<stdgo.GoByte>):Void
```


[\(view code\)](<./Flate.hx#L8058>)


## function \_testSync


```haxe
function _testSync(_t:stdgo.Ref<stdgo.testing.T_>, _level:stdgo.GoInt, _input:stdgo.Slice<stdgo.GoByte>, _name:stdgo.GoString):Void
```


[\(view code\)](<./Flate.hx#L7739>)


## function \_testToFromWithLevelAndLimit


```haxe
function _testToFromWithLevelAndLimit(_t:stdgo.Ref<stdgo.testing.T_>, _level:stdgo.GoInt, _input:stdgo.Slice<stdgo.GoByte>, _name:stdgo.GoString, _limit:stdgo.GoInt):Void
```


[\(view code\)](<./Flate.hx#L7838>)


## function \_testToFromWithLimit


```haxe
function _testToFromWithLimit(_t:stdgo.Ref<stdgo.testing.T_>, _input:stdgo.Slice<stdgo.GoByte>, _name:stdgo.GoString, _limit:stdgo.GoArray<stdgo.GoInt>):Void
```


[\(view code\)](<./Flate.hx#L7867>)


## function \_testWriterEOF


```haxe
function _testWriterEOF(_t:stdgo.Ref<stdgo.testing.T_>, _ttype:stdgo.GoString, _test:stdgo.compress.flate.T_huffTest, _useInput:Bool):Void
```



testWriterEOF tests if the written block contains an EOF marker.  

[\(view code\)](<./Flate.hx#L9508>)


## function \_writeToType


```haxe
function _writeToType(_t:stdgo.Ref<stdgo.testing.T_>, _ttype:stdgo.GoString, _bw:stdgo.Ref<stdgo.compress.flate.T_huffmanBitWriter>, _tok:stdgo.Slice<stdgo.compress.flate.T_token>, _input:stdgo.Slice<stdgo.GoByte>):Void
```


[\(view code\)](<./Flate.hx#L9484>)


## function benchmarkDecode


```haxe
function benchmarkDecode(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Flate.hx#L9851>)


## function benchmarkEncode


```haxe
function benchmarkEncode(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Flate.hx#L9935>)


## function newReader


```haxe
function newReader(_r:stdgo.io.Reader):stdgo.io.ReadCloser
```



NewReader returns a new ReadCloser that can be used
to read the uncompressed version of r.
If r does not also implement io.ByteReader,
the decompressor may read more data than necessary from r.
The reader returns io.EOF after the final block in the DEFLATE stream has
been encountered. Any trailing data after the final block is ignored.  


The ReadCloser returned by NewReader also implements Resetter.  

[\(view code\)](<./Flate.hx#L9655>)


## function newReaderDict


```haxe
function newReaderDict(_r:stdgo.io.Reader, _dict:stdgo.Slice<stdgo.GoByte>):stdgo.io.ReadCloser
```



NewReaderDict is like NewReader but initializes the reader
with a preset dictionary. The returned Reader behaves as if
the uncompressed data stream started with the given dictionary,
which has already been read. NewReaderDict is typically used
to read data compressed by NewWriterDict.  


The ReadCloser returned by NewReader also implements Resetter.  

[\(view code\)](<./Flate.hx#L9674>)


## function newWriter


```haxe
function newWriter(_w:stdgo.io.Writer, _level:stdgo.GoInt):{
	_1:stdgo.Error;
	_0:stdgo.Ref<stdgo.compress.flate.Writer>;
}
```



NewWriter returns a new Writer compressing data at the given level.
Following zlib, levels range from 1 \(BestSpeed\) to 9 \(BestCompression\);
higher levels typically run slower but compress more. Level 0
\(NoCompression\) does not attempt any compression; it only adds the
necessary DEFLATE framing.
Level \-1 \(DefaultCompression\) uses the default compression level.
Level \-2 \(HuffmanOnly\) will use Huffman compression only, giving
a very fast compression for all types of input, but sacrificing considerable
compression efficiency.  


If level is in the range \[\-2, 9\] then the error returned will be nil.
Otherwise the error returned will be non\-nil.  

[\(view code\)](<./Flate.hx#L7597>)


## function newWriterDict


```haxe
function newWriterDict(_w:stdgo.io.Writer, _level:stdgo.GoInt, _dict:stdgo.Slice<stdgo.GoByte>):{
	_1:stdgo.Error;
	_0:stdgo.Ref<stdgo.compress.flate.Writer>;
}
```



NewWriterDict is like NewWriter but initializes the new
Writer with a preset dictionary. The returned Writer behaves
as if the dictionary had been written to it without producing
any compressed output. The compressed data written to w
can only be decompressed by a Reader initialized with the
same dictionary.  

[\(view code\)](<./Flate.hx#L7615>)


## function testBestSpeed


```haxe
function testBestSpeed(_t:stdgo.Ref<stdgo.testing.T_>):Void
```



TestBestSpeed tests that round\-tripping through deflate and then inflate
recovers the original input. The Write sizes are near the thresholds in the
compressor.encSpeed method \(0, 16, 128\), as well as near maxStoreBlockSize
\(65535\).  

[\(view code\)](<./Flate.hx#L8124>)


## function testBestSpeedMatch


```haxe
function testBestSpeedMatch(_t:stdgo.Ref<stdgo.testing.T_>):Void
```


[\(view code\)](<./Flate.hx#L8287>)


## function testBestSpeedMaxMatchOffset


```haxe
function testBestSpeedMaxMatchOffset(_t:stdgo.Ref<stdgo.testing.T_>):Void
```


[\(view code\)](<./Flate.hx#L8439>)


## function testBestSpeedShiftOffsets


```haxe
function testBestSpeedShiftOffsets(_t:stdgo.Ref<stdgo.testing.T_>):Void
```


[\(view code\)](<./Flate.hx#L8493>)


## function testBlockHuff


```haxe
function testBlockHuff(_t:stdgo.Ref<stdgo.testing.T_>):Void
```



TestBlockHuff tests huffman encoding against reference files
to detect possible regressions.
If encoding/bit allocation changes you can regenerate these files
by using the \-update flag.  

[\(view code\)](<./Flate.hx#L9210>)


## function testBulkHash4


```haxe
function testBulkHash4(_t:stdgo.Ref<stdgo.testing.T_>):Void
```


[\(view code\)](<./Flate.hx#L7632>)


## function testDeflate


```haxe
function testDeflate(_t:stdgo.Ref<stdgo.testing.T_>):Void
```


[\(view code\)](<./Flate.hx#L7660>)


## function testDeflateFast\_Reset


```haxe
function testDeflateFast_Reset(_t:stdgo.Ref<stdgo.testing.T_>):Void
```



TestDeflateFast\_Reset will test that encoding is consistent
across a warparound of the table offset.
See https://github.com/golang/go/issues/34121  

[\(view code\)](<./Flate.hx#L10104>)


## function testDeflateInflate


```haxe
function testDeflateInflate(_t:stdgo.Ref<stdgo.testing.T_>):Void
```


[\(view code\)](<./Flate.hx#L7876>)


## function testDeflateInflateString


```haxe
function testDeflateInflateString(_t:stdgo.Ref<stdgo.testing.T_>):Void
```


[\(view code\)](<./Flate.hx#L7895>)


## function testDeterministic


```haxe
function testDeterministic(_t:stdgo.Ref<stdgo.testing.T_>):Void
```



Test if two runs produce identical results
even when writing different sizes to the Writer.  

[\(view code\)](<./Flate.hx#L10038>)


## function testDictDecoder


```haxe
function testDictDecoder(_t:stdgo.Ref<stdgo.testing.T_>):Void
```


[\(view code\)](<./Flate.hx#L8630>)


## function testInvalidBits


```haxe
function testInvalidBits(_t:stdgo.Ref<stdgo.testing.T_>):Void
```


[\(view code\)](<./Flate.hx#L9016>)


## function testInvalidEncoding


```haxe
function testInvalidEncoding(_t:stdgo.Ref<stdgo.testing.T_>):Void
```


[\(view code\)](<./Flate.hx#L9004>)


## function testIssue5915


```haxe
function testIssue5915(_t:stdgo.Ref<stdgo.testing.T_>):Void
```



The following test should not panic.  

[\(view code\)](<./Flate.hx#L8862>)


## function testIssue5962


```haxe
function testIssue5962(_t:stdgo.Ref<stdgo.testing.T_>):Void
```



The following test should not panic.  

[\(view code\)](<./Flate.hx#L8937>)


## function testIssue6255


```haxe
function testIssue6255(_t:stdgo.Ref<stdgo.testing.T_>):Void
```



The following test should not panic.  

[\(view code\)](<./Flate.hx#L8979>)


## function testMaxStackSize


```haxe
function testMaxStackSize(_t:stdgo.Ref<stdgo.testing.T_>):Void
```


[\(view code\)](<./Flate.hx#L8527>)


## function testNlitOutOfRange


```haxe
function testNlitOutOfRange(_t:stdgo.Ref<stdgo.testing.T_>):Void
```


[\(view code\)](<./Flate.hx#L9807>)


## function testReaderDict


```haxe
function testReaderDict(_t:stdgo.Ref<stdgo.testing.T_>):Void
```


[\(view code\)](<./Flate.hx#L7911>)


## function testReaderEarlyEOF


```haxe
function testReaderEarlyEOF(_t:stdgo.Ref<stdgo.testing.T_>):Void
```



Verify that flate.Reader.Read returns \(n, io.EOF\) instead
of \(n, nil\) \+ \(0, io.EOF\) when possible.  


This helps net/http.Transport reuse HTTP/1 connections more
aggressively.  


See https://github.com/google/go-github/pull/317 for background.  

[\(view code\)](<./Flate.hx#L9119>)


## function testReaderReusesReaderBuffer


```haxe
function testReaderReusesReaderBuffer(_t:stdgo.Ref<stdgo.testing.T_>):Void
```


[\(view code\)](<./Flate.hx#L9752>)


## function testReaderTruncated


```haxe
function testReaderTruncated(_t:stdgo.Ref<stdgo.testing.T_>):Void
```


[\(view code\)](<./Flate.hx#L9704>)


## function testRegression2508


```haxe
function testRegression2508(_t:stdgo.Ref<stdgo.testing.T_>):Void
```



See https://golang.org/issue/2508  

[\(view code\)](<./Flate.hx#L7958>)


## function testReset


```haxe
function testReset(_t:stdgo.Ref<stdgo.testing.T_>):Void
```


[\(view code\)](<./Flate.hx#L9684>)


## function testResetDict


```haxe
function testResetDict(_t:stdgo.Ref<stdgo.testing.T_>):Void
```


[\(view code\)](<./Flate.hx#L9730>)


## function testReverseBits


```haxe
function testReverseBits(_t:stdgo.Ref<stdgo.testing.T_>):Void
```


[\(view code\)](<./Flate.hx#L7885>)


## function testStreams


```haxe
function testStreams(_t:stdgo.Ref<stdgo.testing.T_>):Void
```


[\(view code\)](<./Flate.hx#L9027>)


## function testTruncatedStreams


```haxe
function testTruncatedStreams(_t:stdgo.Ref<stdgo.testing.T_>):Void
```


[\(view code\)](<./Flate.hx#L9087>)


## function testVeryLongSparseChunk


```haxe
function testVeryLongSparseChunk(_t:stdgo.Ref<stdgo.testing.T_>):Void
```


[\(view code\)](<./Flate.hx#L7716>)


## function testWriteBlock


```haxe
function testWriteBlock(_t:stdgo.Ref<stdgo.testing.T_>):Void
```



TestWriteBlock tests if the writeBlock encoding has changed.
To update the reference files use the "\-update" flag on the test.  

[\(view code\)](<./Flate.hx#L9286>)


## function testWriteBlockDynamic


```haxe
function testWriteBlockDynamic(_t:stdgo.Ref<stdgo.testing.T_>):Void
```



TestWriteBlockDynamic tests if the writeBlockDynamic encoding has changed.
To update the reference files use the "\-update" flag on the test.  

[\(view code\)](<./Flate.hx#L9295>)


## function testWriteError


```haxe
function testWriteError(_t:stdgo.Ref<stdgo.testing.T_>):Void
```



Test if errors from the underlying writer is passed upwards.  

[\(view code\)](<./Flate.hx#L9969>)


## function testWriterClose


```haxe
function testWriterClose(_t:stdgo.Ref<stdgo.testing.T_>):Void
```


[\(view code\)](<./Flate.hx#L7675>)


## function testWriterDict


```haxe
function testWriterDict(_t:stdgo.Ref<stdgo.testing.T_>):Void
```


[\(view code\)](<./Flate.hx#L7932>)


## function testWriterPersistentCloseError


```haxe
function testWriterPersistentCloseError(_t:stdgo.Ref<stdgo.testing.T_>):Void
```


[\(view code\)](<./Flate.hx#L8253>)


## function testWriterPersistentFlushError


```haxe
function testWriterPersistentFlushError(_t:stdgo.Ref<stdgo.testing.T_>):Void
```


[\(view code\)](<./Flate.hx#L8243>)


## function testWriterPersistentWriteError


```haxe
function testWriterPersistentWriteError(_t:stdgo.Ref<stdgo.testing.T_>):Void
```


[\(view code\)](<./Flate.hx#L8209>)


## function testWriterReset


```haxe
function testWriterReset(_t:stdgo.Ref<stdgo.testing.T_>):Void
```


[\(view code\)](<./Flate.hx#L7981>)


# Classes


```haxe
import stdgo.compress.flate.*
```


## class ReadError



A ReadError reports an error encountered while reading input.  


Deprecated: No longer returned.  

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


[\(view code\)](<./Flate.hx#L7236>)


### ReadError function error


```haxe
function error():stdgo.GoString
```


[\(view code\)](<./Flate.hx#L12381>)


## class WriteError



A WriteError reports an error encountered while writing output.  


Deprecated: No longer returned.  

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


[\(view code\)](<./Flate.hx#L7255>)


### WriteError function error


```haxe
function error():stdgo.GoString
```


[\(view code\)](<./Flate.hx#L12399>)


## class Writer



A Writer takes data written to it and writes the compressed
form of that data to an underlying writer \(see NewWriter\).  

```haxe
var _d:stdgo.compress.flate.T_compressor
```


```haxe
var _dict:stdgo.Slice<stdgo.GoUInt8>
```


### Writer function new


```haxe
function new(?_d:stdgo.compress.flate.T_compressor, ?_dict:stdgo.Slice<stdgo.GoUInt8>):Void
```


[\(view code\)](<./Flate.hx#L6831>)


### Writer function write


```haxe
function write( _b:stdgo.Slice<stdgo.GoByte>):{
	_1:stdgo.Error;
	_0:stdgo.GoInt;
}
```


[\(view code\)](<./Flate.hx#L10770>)


# Typedefs


```haxe
import stdgo.compress.flate.*
```


## typedef CorruptInputError


```haxe
typedef CorruptInputError = stdgo.GoInt64;
```



A CorruptInputError reports the presence of corrupt input at a given offset.  

## typedef InternalError


```haxe
typedef InternalError = stdgo.GoString;
```



An InternalError reports an error in the flate code itself.  

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



The actual read interface needed by NewReader.
If the passed in io.Reader does not also have ReadByte,
the NewReader will introduce its own buffering.  

## typedef Resetter


```haxe
typedef Resetter = {
	public function reset(_r:stdgo.io.Reader, _dict:stdgo.Slice<stdgo.GoByte>):stdgo.Error;	//  Reset discards any buffered data and resets the Resetter as if it was newly initialized with the given reader.
};
```



Resetter resets a ReadCloser returned by NewReader or NewReaderDict
to switch to a new underlying Reader. This permits reusing a ReadCloser
instead of allocating a new one.  

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
	{<reader> | stdgo.io.Reader | meta:{<m>}};
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
typedef T_byFreq = stdgo.Slice<stdgo.compress.flate.T_literalNode>;
```


## typedef T\_byLiteral


```haxe
typedef T_byLiteral = stdgo.Slice<stdgo.compress.flate.T_literalNode>;
```


## typedef T\_token


```haxe
typedef T_token = stdgo.GoUInt32;
```


