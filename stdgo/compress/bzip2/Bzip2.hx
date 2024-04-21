package stdgo.compress.bzip2;
/**
    // Package bzip2 implements bzip2 decompression.
**/
private var __go2hxdoc__package : Bool;
@:invalid typedef T_bitReader = Dynamic;
@:invalid typedef T_reader = Dynamic;
@:invalid typedef T_huffmanTree = Dynamic;
@:invalid typedef T_huffmanNode = Dynamic;
@:invalid typedef T_huffmanSymbolLengthPair = Dynamic;
@:invalid typedef T_huffmanCode = Dynamic;
@:invalid typedef T__struct_0_asInterface = Dynamic;
@:invalid typedef T__struct_0_static_extension = Dynamic;
typedef T__struct_0 = stdgo._internal.compress.bzip2.Bzip2.T__struct_0;
@:invalid typedef T__struct_1_asInterface = Dynamic;
@:invalid typedef T__struct_1_static_extension = Dynamic;
typedef T__struct_1 = stdgo._internal.compress.bzip2.Bzip2.T__struct_1;
@:invalid typedef T__struct_2_asInterface = Dynamic;
@:invalid typedef T__struct_2_static_extension = Dynamic;
typedef T__struct_2 = stdgo._internal.compress.bzip2.Bzip2.T__struct_2;
typedef StructuralError = stdgo._internal.compress.bzip2.Bzip2.StructuralError;
typedef T_moveToFrontDecoder = stdgo._internal.compress.bzip2.Bzip2.T_moveToFrontDecoder;
/**
    // NewReader returns an io.Reader which decompresses bzip2 data from r.
    // If r does not also implement io.ByteReader,
    // the decompressor may read more data than necessary from r.
**/
inline function newReader(r:stdgo._internal.io.Io.Reader):stdgo._internal.io.Io.Reader throw "not implemented";
inline function testReader(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testBitReader(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testMTF(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testZeroRead(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function benchmarkDecodeDigits(b:stdgo._internal.testing.Testing.B):Void throw "not implemented";
inline function benchmarkDecodeNewton(b:stdgo._internal.testing.Testing.B):Void throw "not implemented";
inline function benchmarkDecodeRand(b:stdgo._internal.testing.Testing.B):Void throw "not implemented";
@:invalid typedef T_bitReader_asInterface = Dynamic;
@:invalid typedef T_bitReader_static_extension = Dynamic;
@:invalid typedef T_reader_asInterface = Dynamic;
@:invalid typedef T_reader_static_extension = Dynamic;
@:invalid typedef T_huffmanTree_asInterface = Dynamic;
@:invalid typedef T_huffmanTree_static_extension = Dynamic;
@:invalid typedef StructuralError_asInterface = Dynamic;
@:invalid typedef StructuralError_static_extension = Dynamic;
@:invalid typedef T_moveToFrontDecoder_asInterface = Dynamic;
@:invalid typedef T_moveToFrontDecoder_static_extension = Dynamic;
