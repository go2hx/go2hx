package stdgo.compress.flate;
/**
    // Package flate implements the DEFLATE compressed data format, described in
    // RFC 1951.  The gzip and zlib packages implement access to DEFLATE-based file
    // formats.
**/
private var __go2hxdoc__package : Bool;
final noCompression : haxe.UInt64 = stdgo._internal.compress.flate.Flate.noCompression;
final bestSpeed : haxe.UInt64 = stdgo._internal.compress.flate.Flate.bestSpeed;
final bestCompression : haxe.UInt64 = stdgo._internal.compress.flate.Flate.bestCompression;
final defaultCompression : haxe.UInt64 = stdgo._internal.compress.flate.Flate.defaultCompression;
final huffmanOnly : haxe.UInt64 = stdgo._internal.compress.flate.Flate.huffmanOnly;
typedef Resetter = stdgo._internal.compress.flate.Flate.Resetter;
typedef Reader = stdgo._internal.compress.flate.Flate.Reader;
@:invalid typedef T_compressionLevel = Dynamic;
@:invalid typedef T_compressor = Dynamic;
@:invalid typedef T_dictWriter = Dynamic;
@:invalid typedef Writer = Dynamic;
@:invalid typedef T_deflateTest = Dynamic;
@:invalid typedef T_deflateInflateTest = Dynamic;
@:invalid typedef T_reverseBitsTest = Dynamic;
@:invalid typedef T_sparseReader = Dynamic;
@:invalid typedef T_syncBuffer = Dynamic;
@:invalid typedef T_deflateInflateStringTest = Dynamic;
@:invalid typedef T_failWriter = Dynamic;
@:invalid typedef T_tableEntry = Dynamic;
@:invalid typedef T_deflateFast = Dynamic;
@:invalid typedef T_dictDecoder = Dynamic;
@:invalid typedef T_huffmanBitWriter = Dynamic;
@:invalid typedef T_huffTest = Dynamic;
@:invalid typedef T_hcode = Dynamic;
@:invalid typedef T_huffmanEncoder = Dynamic;
@:invalid typedef T_literalNode = Dynamic;
@:invalid typedef T_levelInfo = Dynamic;
@:invalid typedef ReadError = Dynamic;
@:invalid typedef WriteError = Dynamic;
@:invalid typedef T_huffmanDecoder = Dynamic;
@:invalid typedef T_decompressor = Dynamic;
@:invalid typedef T_errorWriter = Dynamic;
@:invalid typedef T__struct_0_asInterface = Dynamic;
@:invalid typedef T__struct_0_static_extension = Dynamic;
typedef T__struct_0 = stdgo._internal.compress.flate.Flate.T__struct_0;
@:invalid typedef T__struct_1_asInterface = Dynamic;
@:invalid typedef T__struct_1_static_extension = Dynamic;
typedef T__struct_1 = stdgo._internal.compress.flate.Flate.T__struct_1;
@:invalid typedef T__struct_2_asInterface = Dynamic;
@:invalid typedef T__struct_2_static_extension = Dynamic;
typedef T__struct_2 = stdgo._internal.compress.flate.Flate.T__struct_2;
@:invalid typedef T__struct_3_asInterface = Dynamic;
@:invalid typedef T__struct_3_static_extension = Dynamic;
typedef T__struct_3 = stdgo._internal.compress.flate.Flate.T__struct_3;
@:invalid typedef T__struct_4_asInterface = Dynamic;
@:invalid typedef T__struct_4_static_extension = Dynamic;
typedef T__struct_4 = stdgo._internal.compress.flate.Flate.T__struct_4;
@:invalid typedef T__struct_5_asInterface = Dynamic;
@:invalid typedef T__struct_5_static_extension = Dynamic;
typedef T__struct_5 = stdgo._internal.compress.flate.Flate.T__struct_5;
@:invalid typedef T__struct_6_asInterface = Dynamic;
@:invalid typedef T__struct_6_static_extension = Dynamic;
typedef T__struct_6 = stdgo._internal.compress.flate.Flate.T__struct_6;
@:invalid typedef T__struct_7_asInterface = Dynamic;
@:invalid typedef T__struct_7_static_extension = Dynamic;
typedef T__struct_7 = stdgo._internal.compress.flate.Flate.T__struct_7;
typedef T_byLiteral = stdgo._internal.compress.flate.Flate.T_byLiteral;
typedef T_byFreq = stdgo._internal.compress.flate.Flate.T_byFreq;
typedef CorruptInputError = stdgo._internal.compress.flate.Flate.CorruptInputError;
typedef InternalError = stdgo._internal.compress.flate.Flate.InternalError;
typedef T_token = stdgo._internal.compress.flate.Flate.T_token;
/**
    // NewWriter returns a new Writer compressing data at the given level.
    // Following zlib, levels range from 1 (BestSpeed) to 9 (BestCompression);
    // higher levels typically run slower but compress more. Level 0
    // (NoCompression) does not attempt any compression; it only adds the
    // necessary DEFLATE framing.
    // Level -1 (DefaultCompression) uses the default compression level.
    // Level -2 (HuffmanOnly) will use Huffman compression only, giving
    // a very fast compression for all types of input, but sacrificing considerable
    // compression efficiency.
    //
    // If level is in the range [-2, 9] then the error returned will be nil.
    // Otherwise the error returned will be non-nil.
**/
inline function newWriter(w:stdgo._internal.io.Io.Writer, level:Int):stdgo.Tuple<Writer, stdgo.Error> throw "not implemented";
/**
    // NewWriterDict is like NewWriter but initializes the new
    // Writer with a preset dictionary. The returned Writer behaves
    // as if the dictionary had been written to it without producing
    // any compressed output. The compressed data written to w
    // can only be decompressed by a Reader initialized with the
    // same dictionary.
**/
inline function newWriterDict(w:stdgo._internal.io.Io.Writer, level:Int, dict:Array<Int>):stdgo.Tuple<Writer, stdgo.Error> throw "not implemented";
inline function testBulkHash4(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testDeflate(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testWriterClose(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testVeryLongSparseChunk(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testDeflateInflate(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testReverseBits(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testDeflateInflateString(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testReaderDict(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testWriterDict(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
/**
    // See https://golang.org/issue/2508
**/
inline function testRegression2508(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testWriterReset(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
/**
    // TestBestSpeed tests that round-tripping through deflate and then inflate
    // recovers the original input. The Write sizes are near the thresholds in the
    // compressor.encSpeed method (0, 16, 128), as well as near maxStoreBlockSize
    // (65535).
**/
inline function testBestSpeed(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testWriterPersistentWriteError(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testWriterPersistentFlushError(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testWriterPersistentCloseError(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testBestSpeedMatch(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testBestSpeedMaxMatchOffset(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testBestSpeedShiftOffsets(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testMaxStackSize(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testDictDecoder(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
/**
    // The following test should not panic.
**/
inline function testIssue5915(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
/**
    // The following test should not panic.
**/
inline function testIssue5962(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
/**
    // The following test should not panic.
**/
inline function testIssue6255(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testInvalidEncoding(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testInvalidBits(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testStreams(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testTruncatedStreams(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
/**
    // Verify that flate.Reader.Read returns (n, io.EOF) instead
    // of (n, nil) + (0, io.EOF) when possible.
    //
    // This helps net/http.Transport reuse HTTP/1 connections more
    // aggressively.
    //
    // See https://github.com/google/go-github/pull/317 for background.
**/
inline function testReaderEarlyEOF(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
/**
    // TestBlockHuff tests huffman encoding against reference files
    // to detect possible regressions.
    // If encoding/bit allocation changes you can regenerate these files
    // by using the -update flag.
**/
inline function testBlockHuff(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
/**
    // TestWriteBlock tests if the writeBlock encoding has changed.
    // To update the reference files use the "-update" flag on the test.
**/
inline function testWriteBlock(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
/**
    // TestWriteBlockDynamic tests if the writeBlockDynamic encoding has changed.
    // To update the reference files use the "-update" flag on the test.
**/
inline function testWriteBlockDynamic(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
/**
    // NewReader returns a new ReadCloser that can be used
    // to read the uncompressed version of r.
    // If r does not also implement io.ByteReader,
    // the decompressor may read more data than necessary from r.
    // The reader returns io.EOF after the final block in the DEFLATE stream has
    // been encountered. Any trailing data after the final block is ignored.
    //
    // The ReadCloser returned by NewReader also implements Resetter.
**/
inline function newReader(r:stdgo._internal.io.Io.Reader):stdgo._internal.io.Io.ReadCloser throw "not implemented";
/**
    // NewReaderDict is like NewReader but initializes the reader
    // with a preset dictionary. The returned Reader behaves as if
    // the uncompressed data stream started with the given dictionary,
    // which has already been read. NewReaderDict is typically used
    // to read data compressed by NewWriterDict.
    //
    // The ReadCloser returned by NewReader also implements Resetter.
**/
inline function newReaderDict(r:stdgo._internal.io.Io.Reader, dict:Array<Int>):stdgo._internal.io.Io.ReadCloser throw "not implemented";
inline function testReset(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testReaderTruncated(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testResetDict(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testReaderReusesReaderBuffer(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testNlitOutOfRange(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function benchmarkDecode(b:stdgo._internal.testing.Testing.B):Void throw "not implemented";
inline function benchmarkEncode(b:stdgo._internal.testing.Testing.B):Void throw "not implemented";
/**
    // Test if errors from the underlying writer is passed upwards.
**/
inline function testWriteError(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
/**
    // Test if two runs produce identical results
    // even when writing different sizes to the Writer.
**/
inline function testDeterministic(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
/**
    // TestDeflateFast_Reset will test that encoding is consistent
    // across a warparound of the table offset.
    // See https://github.com/golang/go/issues/34121
**/
inline function testDeflateFast_Reset(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
@:invalid typedef T_compressor_asInterface = Dynamic;
@:invalid typedef T_compressor_static_extension = Dynamic;
@:invalid typedef T_dictWriter_asInterface = Dynamic;
@:invalid typedef T_dictWriter_static_extension = Dynamic;
@:invalid typedef Writer_asInterface = Dynamic;
@:invalid typedef Writer_static_extension = Dynamic;
@:invalid typedef T_sparseReader_asInterface = Dynamic;
@:invalid typedef T_sparseReader_static_extension = Dynamic;
@:invalid typedef T_syncBuffer_asInterface = Dynamic;
@:invalid typedef T_syncBuffer_static_extension = Dynamic;
@:invalid typedef T_failWriter_asInterface = Dynamic;
@:invalid typedef T_failWriter_static_extension = Dynamic;
@:invalid typedef T_deflateFast_asInterface = Dynamic;
@:invalid typedef T_deflateFast_static_extension = Dynamic;
@:invalid typedef T_dictDecoder_asInterface = Dynamic;
@:invalid typedef T_dictDecoder_static_extension = Dynamic;
@:invalid typedef T_huffmanBitWriter_asInterface = Dynamic;
@:invalid typedef T_huffmanBitWriter_static_extension = Dynamic;
@:invalid typedef T_hcode_asInterface = Dynamic;
@:invalid typedef T_hcode_static_extension = Dynamic;
@:invalid typedef T_huffmanEncoder_asInterface = Dynamic;
@:invalid typedef T_huffmanEncoder_static_extension = Dynamic;
@:invalid typedef ReadError_asInterface = Dynamic;
@:invalid typedef ReadError_static_extension = Dynamic;
@:invalid typedef WriteError_asInterface = Dynamic;
@:invalid typedef WriteError_static_extension = Dynamic;
@:invalid typedef T_huffmanDecoder_asInterface = Dynamic;
@:invalid typedef T_huffmanDecoder_static_extension = Dynamic;
@:invalid typedef T_decompressor_asInterface = Dynamic;
@:invalid typedef T_decompressor_static_extension = Dynamic;
@:invalid typedef T_errorWriter_asInterface = Dynamic;
@:invalid typedef T_errorWriter_static_extension = Dynamic;
@:invalid typedef T_byLiteral_asInterface = Dynamic;
@:invalid typedef T_byLiteral_static_extension = Dynamic;
@:invalid typedef T_byFreq_asInterface = Dynamic;
@:invalid typedef T_byFreq_static_extension = Dynamic;
@:invalid typedef CorruptInputError_asInterface = Dynamic;
@:invalid typedef CorruptInputError_static_extension = Dynamic;
@:invalid typedef InternalError_asInterface = Dynamic;
@:invalid typedef InternalError_static_extension = Dynamic;
@:invalid typedef T_token_asInterface = Dynamic;
@:invalid typedef T_token_static_extension = Dynamic;
