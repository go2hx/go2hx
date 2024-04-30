# Module: `stdgo.compress.flate`

[(view library index)](../../stdgo.md)


# Overview


```
Package flate implements the DEFLATE compressed data format, described in
    RFC 1951.  The gzip and zlib packages implement access to DEFLATE-based file
    formats.
```
# Index


- [Constants](<#constants>)

- [`function benchmarkDecode(b:stdgo._internal.testing.B):Void`](<#function-benchmarkdecode>)

- [`function benchmarkEncode(b:stdgo._internal.testing.B):Void`](<#function-benchmarkencode>)

- [`function newReader(r:stdgo._internal.io.Reader):stdgo._internal.io.ReadCloser`](<#function-newreader>)

- [`function newReaderDict(r:stdgo._internal.io.Reader, dict:Array<Int>):stdgo._internal.io.ReadCloser`](<#function-newreaderdict>)

- [`function newWriter(w:stdgo._internal.io.Writer, level:Int):stdgo.Tuple<stdgo.compress.flate.Writer, stdgo.Error>`](<#function-newwriter>)

- [`function newWriterDict(w:stdgo._internal.io.Writer, level:Int, dict:Array<Int>):stdgo.Tuple<stdgo.compress.flate.Writer, stdgo.Error>`](<#function-newwriterdict>)

- [`function testBestSpeed(t:stdgo._internal.testing.T_):Void`](<#function-testbestspeed>)

- [`function testBestSpeedMatch(t:stdgo._internal.testing.T_):Void`](<#function-testbestspeedmatch>)

- [`function testBestSpeedMaxMatchOffset(t:stdgo._internal.testing.T_):Void`](<#function-testbestspeedmaxmatchoffset>)

- [`function testBestSpeedShiftOffsets(t:stdgo._internal.testing.T_):Void`](<#function-testbestspeedshiftoffsets>)

- [`function testBlockHuff(t:stdgo._internal.testing.T_):Void`](<#function-testblockhuff>)

- [`function testBulkHash4(t:stdgo._internal.testing.T_):Void`](<#function-testbulkhash4>)

- [`function testDeflate(t:stdgo._internal.testing.T_):Void`](<#function-testdeflate>)

- [`function testDeflateFast_Reset(t:stdgo._internal.testing.T_):Void`](<#function-testdeflatefast_reset>)

- [`function testDeflateInflate(t:stdgo._internal.testing.T_):Void`](<#function-testdeflateinflate>)

- [`function testDeflateInflateString(t:stdgo._internal.testing.T_):Void`](<#function-testdeflateinflatestring>)

- [`function testDeterministic(t:stdgo._internal.testing.T_):Void`](<#function-testdeterministic>)

- [`function testDictDecoder(t:stdgo._internal.testing.T_):Void`](<#function-testdictdecoder>)

- [`function testInvalidBits(t:stdgo._internal.testing.T_):Void`](<#function-testinvalidbits>)

- [`function testInvalidEncoding(t:stdgo._internal.testing.T_):Void`](<#function-testinvalidencoding>)

- [`function testIssue5915(t:stdgo._internal.testing.T_):Void`](<#function-testissue5915>)

- [`function testIssue5962(t:stdgo._internal.testing.T_):Void`](<#function-testissue5962>)

- [`function testIssue6255(t:stdgo._internal.testing.T_):Void`](<#function-testissue6255>)

- [`function testMaxStackSize(t:stdgo._internal.testing.T_):Void`](<#function-testmaxstacksize>)

- [`function testNlitOutOfRange(t:stdgo._internal.testing.T_):Void`](<#function-testnlitoutofrange>)

- [`function testReaderDict(t:stdgo._internal.testing.T_):Void`](<#function-testreaderdict>)

- [`function testReaderEarlyEOF(t:stdgo._internal.testing.T_):Void`](<#function-testreaderearlyeof>)

- [`function testReaderReusesReaderBuffer(t:stdgo._internal.testing.T_):Void`](<#function-testreaderreusesreaderbuffer>)

- [`function testReaderTruncated(t:stdgo._internal.testing.T_):Void`](<#function-testreadertruncated>)

- [`function testRegression2508(t:stdgo._internal.testing.T_):Void`](<#function-testregression2508>)

- [`function testReset(t:stdgo._internal.testing.T_):Void`](<#function-testreset>)

- [`function testResetDict(t:stdgo._internal.testing.T_):Void`](<#function-testresetdict>)

- [`function testReverseBits(t:stdgo._internal.testing.T_):Void`](<#function-testreversebits>)

- [`function testStreams(t:stdgo._internal.testing.T_):Void`](<#function-teststreams>)

- [`function testTruncatedStreams(t:stdgo._internal.testing.T_):Void`](<#function-testtruncatedstreams>)

- [`function testVeryLongSparseChunk(t:stdgo._internal.testing.T_):Void`](<#function-testverylongsparsechunk>)

- [`function testWriteBlock(t:stdgo._internal.testing.T_):Void`](<#function-testwriteblock>)

- [`function testWriteBlockDynamic(t:stdgo._internal.testing.T_):Void`](<#function-testwriteblockdynamic>)

- [`function testWriteError(t:stdgo._internal.testing.T_):Void`](<#function-testwriteerror>)

- [`function testWriterClose(t:stdgo._internal.testing.T_):Void`](<#function-testwriterclose>)

- [`function testWriterDict(t:stdgo._internal.testing.T_):Void`](<#function-testwriterdict>)

- [`function testWriterPersistentCloseError(t:stdgo._internal.testing.T_):Void`](<#function-testwriterpersistentcloseerror>)

- [`function testWriterPersistentFlushError(t:stdgo._internal.testing.T_):Void`](<#function-testwriterpersistentflusherror>)

- [`function testWriterPersistentWriteError(t:stdgo._internal.testing.T_):Void`](<#function-testwriterpersistentwriteerror>)

- [`function testWriterReset(t:stdgo._internal.testing.T_):Void`](<#function-testwriterreset>)

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

- [typedef Reader\_static\_extension](<#typedef-reader_static_extension>)

- [typedef Resetter](<#typedef-resetter>)

- [typedef Resetter\_static\_extension](<#typedef-resetter_static_extension>)

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

# Constants


```haxe
import stdgo.compress.flate.Flate
```


```haxe
final bestCompression:haxe.UInt64 = stdgo._internal.compress.flate.Flate.bestCompression
```


```haxe
final bestSpeed:haxe.UInt64 = stdgo._internal.compress.flate.Flate.bestSpeed
```


```haxe
final defaultCompression:haxe.UInt64 = stdgo._internal.compress.flate.Flate.defaultCompression
```


```haxe
final huffmanOnly:haxe.UInt64 = stdgo._internal.compress.flate.Flate.huffmanOnly
```


```haxe
final noCompression:haxe.UInt64 = stdgo._internal.compress.flate.Flate.noCompression
```


# Functions


```haxe
import stdgo.compress.flate.Flate
```


## function benchmarkDecode


```haxe
function benchmarkDecode(b:stdgo._internal.testing.B):Void
```


[\(view code\)](<./Flate.hx#L193>)


## function benchmarkEncode


```haxe
function benchmarkEncode(b:stdgo._internal.testing.B):Void
```


[\(view code\)](<./Flate.hx#L194>)


## function newReader


```haxe
function newReader(r:stdgo._internal.io.Reader):stdgo._internal.io.ReadCloser
```


```
NewReader returns a new ReadCloser that can be used
    to read the uncompressed version of r.
    If r does not also implement io.ByteReader,
    the decompressor may read more data than necessary from r.
    The reader returns io.EOF after the final block in the DEFLATE stream has
    been encountered. Any trailing data after the final block is ignored.
```

The ReadCloser returned by NewReader also implements Resetter.  

[\(view code\)](<./Flate.hx#L177>)


## function newReaderDict


```haxe
function newReaderDict(r:stdgo._internal.io.Reader, dict:Array<Int>):stdgo._internal.io.ReadCloser
```


```
NewReaderDict is like NewReader but initializes the reader
    with a preset dictionary. The returned Reader behaves as if
    the uncompressed data stream started with the given dictionary,
    which has already been read. NewReaderDict is typically used
    to read data compressed by NewWriterDict.
```

The ReadCloser returned by NewReader also implements Resetter.  

[\(view code\)](<./Flate.hx#L187>)


## function newWriter


```haxe
function newWriter(w:stdgo._internal.io.Writer, level:Int):stdgo.Tuple<stdgo.compress.flate.Writer, stdgo.Error>
```


```
NewWriter returns a new Writer compressing data at the given level.
    Following zlib, levels range from 1 (BestSpeed) to 9 (BestCompression);
    higher levels typically run slower but compress more. Level 0
    (NoCompression) does not attempt any compression; it only adds the
    necessary DEFLATE framing.
    Level -1 (DefaultCompression) uses the default compression level.
    Level -2 (HuffmanOnly) will use Huffman compression only, giving
    a very fast compression for all types of input, but sacrificing considerable
    compression efficiency.
```

If level is in the range \[\-2, 9\] then the error returned will be nil.
Otherwise the error returned will be non\-nil.  

[\(view code\)](<./Flate.hx#L85>)


## function newWriterDict


```haxe
function newWriterDict(w:stdgo._internal.io.Writer, level:Int, dict:Array<Int>):stdgo.Tuple<stdgo.compress.flate.Writer, stdgo.Error>
```


```
NewWriterDict is like NewWriter but initializes the new
    Writer with a preset dictionary. The returned Writer behaves
    as if the dictionary had been written to it without producing
    any compressed output. The compressed data written to w
    can only be decompressed by a Reader initialized with the
    same dictionary.
```
[\(view code\)](<./Flate.hx#L94>)


## function testBestSpeed


```haxe
function testBestSpeed(t:stdgo._internal.testing.T_):Void
```


```
TestBestSpeed tests that round-tripping through deflate and then inflate
    recovers the original input. The Write sizes are near the thresholds in the
    compressor.encSpeed method (0, 16, 128), as well as near maxStoreBlockSize
    (65535).
```
[\(view code\)](<./Flate.hx#L115>)


## function testBestSpeedMatch


```haxe
function testBestSpeedMatch(t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Flate.hx#L119>)


## function testBestSpeedMaxMatchOffset


```haxe
function testBestSpeedMaxMatchOffset(t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Flate.hx#L120>)


## function testBestSpeedShiftOffsets


```haxe
function testBestSpeedShiftOffsets(t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Flate.hx#L121>)


## function testBlockHuff


```haxe
function testBlockHuff(t:stdgo._internal.testing.T_):Void
```


```
TestBlockHuff tests huffman encoding against reference files
    to detect possible regressions.
    If encoding/bit allocation changes you can regenerate these files
    by using the -update flag.
```
[\(view code\)](<./Flate.hx#L156>)


## function testBulkHash4


```haxe
function testBulkHash4(t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Flate.hx#L95>)


## function testDeflate


```haxe
function testDeflate(t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Flate.hx#L96>)


## function testDeflateFast\_Reset


```haxe
function testDeflateFast_Reset(t:stdgo._internal.testing.T_):Void
```


```
TestDeflateFast_Reset will test that encoding is consistent
    across a warparound of the table offset.
    See https://github.com/golang/go/issues/34121
```
[\(view code\)](<./Flate.hx#L209>)


## function testDeflateInflate


```haxe
function testDeflateInflate(t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Flate.hx#L99>)


## function testDeflateInflateString


```haxe
function testDeflateInflateString(t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Flate.hx#L101>)


## function testDeterministic


```haxe
function testDeterministic(t:stdgo._internal.testing.T_):Void
```


```
Test if two runs produce identical results
    even when writing different sizes to the Writer.
```
[\(view code\)](<./Flate.hx#L203>)


## function testDictDecoder


```haxe
function testDictDecoder(t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Flate.hx#L123>)


## function testInvalidBits


```haxe
function testInvalidBits(t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Flate.hx#L137>)


## function testInvalidEncoding


```haxe
function testInvalidEncoding(t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Flate.hx#L136>)


## function testIssue5915


```haxe
function testIssue5915(t:stdgo._internal.testing.T_):Void
```



The following test should not panic.  

[\(view code\)](<./Flate.hx#L127>)


## function testIssue5962


```haxe
function testIssue5962(t:stdgo._internal.testing.T_):Void
```



The following test should not panic.  

[\(view code\)](<./Flate.hx#L131>)


## function testIssue6255


```haxe
function testIssue6255(t:stdgo._internal.testing.T_):Void
```



The following test should not panic.  

[\(view code\)](<./Flate.hx#L135>)


## function testMaxStackSize


```haxe
function testMaxStackSize(t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Flate.hx#L122>)


## function testNlitOutOfRange


```haxe
function testNlitOutOfRange(t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Flate.hx#L192>)


## function testReaderDict


```haxe
function testReaderDict(t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Flate.hx#L102>)


## function testReaderEarlyEOF


```haxe
function testReaderEarlyEOF(t:stdgo._internal.testing.T_):Void
```


```
Verify that flate.Reader.Read returns (n, io.EOF) instead
    of (n, nil) + (0, io.EOF) when possible.
```

This helps net/http.Transport reuse HTTP/1 connections more
aggressively.  


See https://github.com/google/go-github/pull/317 for background.  

[\(view code\)](<./Flate.hx#L149>)


## function testReaderReusesReaderBuffer


```haxe
function testReaderReusesReaderBuffer(t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Flate.hx#L191>)


## function testReaderTruncated


```haxe
function testReaderTruncated(t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Flate.hx#L189>)


## function testRegression2508


```haxe
function testRegression2508(t:stdgo._internal.testing.T_):Void
```



See https://golang.org/issue/2508  

[\(view code\)](<./Flate.hx#L107>)


## function testReset


```haxe
function testReset(t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Flate.hx#L188>)


## function testResetDict


```haxe
function testResetDict(t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Flate.hx#L190>)


## function testReverseBits


```haxe
function testReverseBits(t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Flate.hx#L100>)


## function testStreams


```haxe
function testStreams(t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Flate.hx#L138>)


## function testTruncatedStreams


```haxe
function testTruncatedStreams(t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Flate.hx#L139>)


## function testVeryLongSparseChunk


```haxe
function testVeryLongSparseChunk(t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Flate.hx#L98>)


## function testWriteBlock


```haxe
function testWriteBlock(t:stdgo._internal.testing.T_):Void
```


```
TestWriteBlock tests if the writeBlock encoding has changed.
    To update the reference files use the "-update" flag on the test.
```
[\(view code\)](<./Flate.hx#L161>)


## function testWriteBlockDynamic


```haxe
function testWriteBlockDynamic(t:stdgo._internal.testing.T_):Void
```


```
TestWriteBlockDynamic tests if the writeBlockDynamic encoding has changed.
    To update the reference files use the "-update" flag on the test.
```
[\(view code\)](<./Flate.hx#L166>)


## function testWriteError


```haxe
function testWriteError(t:stdgo._internal.testing.T_):Void
```



Test if errors from the underlying writer is passed upwards.  

[\(view code\)](<./Flate.hx#L198>)


## function testWriterClose


```haxe
function testWriterClose(t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Flate.hx#L97>)


## function testWriterDict


```haxe
function testWriterDict(t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Flate.hx#L103>)


## function testWriterPersistentCloseError


```haxe
function testWriterPersistentCloseError(t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Flate.hx#L118>)


## function testWriterPersistentFlushError


```haxe
function testWriterPersistentFlushError(t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Flate.hx#L117>)


## function testWriterPersistentWriteError


```haxe
function testWriterPersistentWriteError(t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Flate.hx#L116>)


## function testWriterReset


```haxe
function testWriterReset(t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Flate.hx#L108>)


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


## typedef Reader\_static\_extension


```haxe
typedef Reader_static_extension = Dynamic;
```


## typedef Resetter


```haxe
typedef Resetter = stdgo._internal.compress.flate.Resetter;
```


## typedef Resetter\_static\_extension


```haxe
typedef Resetter_static_extension = Dynamic;
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


