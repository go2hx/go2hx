package stdgo.compress.bzip2;
@:invalid var __go2hxdoc__package : Dynamic;
@:invalid var _digits : Dynamic;
@:invalid var _newton : Dynamic;
@:invalid var _random : Dynamic;
@:invalid var _bzip2FileMagic : Dynamic;
@:invalid var _bzip2BlockMagic : Dynamic;
@:invalid var _bzip2FinalMagic : Dynamic;
@:invalid var _crctab : Dynamic;
@:invalid var _invalidNodeValue : Dynamic;
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
function _newBitReader(_r:stdgo._internal.io.Io.Reader):Void {}
function newReader(_r:stdgo._internal.io.Io.Reader):Void {}
function _inverseBWT(_tt:stdgo.Slice<stdgo.GoUInt32>, _origPtr:stdgo.GoUInt, _c:stdgo.Slice<stdgo.GoUInt>):Void {}
function _updateCRC(_val:stdgo.GoUInt32, _b:stdgo.Slice<stdgo.GoByte>):Void {}
function _mustDecodeHex(_s:stdgo.GoString):Void {}
function _mustLoadFile(_f:stdgo.GoString):Void {}
function _trim(_b:stdgo.Slice<stdgo.GoByte>):Void {}
function testReader(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function testBitReader(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function testMTF(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function testZeroRead(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function _benchmarkDecode(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>, _compressed:stdgo.Slice<stdgo.GoByte>):Void {}
function benchmarkDecodeDigits(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {}
function benchmarkDecodeNewton(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {}
function benchmarkDecodeRand(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {}
function _newHuffmanTree(_lengths:stdgo.Slice<stdgo.GoUInt8>):Void {}
function _buildHuffmanNode(_t:stdgo.Ref<T_huffmanTree>, _codes:stdgo.Slice<T_huffmanCode>, _level:stdgo.GoUInt32):Void {}
function _newMTFDecoder(_symbols:stdgo.Slice<stdgo.GoByte>):Void {}
function _newMTFDecoderWithRange(_n:stdgo.GoInt):Void {}
@:invalid var _ : Dynamic;
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
