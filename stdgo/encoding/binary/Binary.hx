package stdgo.encoding.binary;
@:invalid var __go2hxdoc__package : Dynamic;
@:invalid var _errOverflow : Dynamic;
@:invalid var _s : Dynamic;
@:invalid var _big : Dynamic;
@:invalid var _little : Dynamic;
@:invalid var _src : Dynamic;
@:invalid var _res : Dynamic;
@:invalid var _putbuf : Dynamic;
@:invalid var _intArrays : Dynamic;
@:invalid var _tests : Dynamic;
@:invalid var littleEndian : Dynamic;
@:invalid var bigEndian : Dynamic;
@:invalid var _structSize : Dynamic;
@:invalid var nativeEndian : Dynamic;
@:invalid var maxVarintLen16 : Dynamic;
@:invalid var maxVarintLen32 : Dynamic;
@:invalid var maxVarintLen64 : Dynamic;
typedef ByteOrder = stdgo._internal.encoding.binary.Binary.ByteOrder;
typedef AppendByteOrder = stdgo._internal.encoding.binary.Binary.AppendByteOrder;
@:invalid typedef T_littleEndian = Dynamic;
@:invalid typedef T_bigEndian = Dynamic;
@:invalid typedef T_coder = Dynamic;
@:invalid typedef Struct = Dynamic;
@:invalid typedef T_ = Dynamic;
@:invalid typedef BlankFields = Dynamic;
@:invalid typedef BlankFieldsProbe = Dynamic;
@:invalid typedef Unexported = Dynamic;
@:invalid typedef T_byteSliceReader = Dynamic;
@:invalid typedef T_nativeEndian = Dynamic;
@:invalid typedef T__struct_0_asInterface = Dynamic;
@:invalid typedef T__struct_0_static_extension = Dynamic;
typedef T__struct_0 = stdgo._internal.encoding.binary.Binary.T__struct_0;
@:invalid typedef T__struct_1_asInterface = Dynamic;
@:invalid typedef T__struct_1_static_extension = Dynamic;
typedef T__struct_1 = stdgo._internal.encoding.binary.Binary.T__struct_1;
@:invalid typedef T__struct_2_asInterface = Dynamic;
@:invalid typedef T__struct_2_static_extension = Dynamic;
typedef T__struct_2 = stdgo._internal.encoding.binary.Binary.T__struct_2;
@:invalid typedef T__struct_3_asInterface = Dynamic;
@:invalid typedef T__struct_3_static_extension = Dynamic;
typedef T__struct_3 = stdgo._internal.encoding.binary.Binary.T__struct_3;
@:invalid typedef T__struct_4_asInterface = Dynamic;
@:invalid typedef T__struct_4_static_extension = Dynamic;
typedef T__struct_4 = stdgo._internal.encoding.binary.Binary.T__struct_4;
@:invalid typedef T__struct_5_asInterface = Dynamic;
@:invalid typedef T__struct_5_static_extension = Dynamic;
typedef T__struct_5 = stdgo._internal.encoding.binary.Binary.T__struct_5;
@:invalid typedef T__struct_6_asInterface = Dynamic;
@:invalid typedef T__struct_6_static_extension = Dynamic;
typedef T__struct_6 = stdgo._internal.encoding.binary.Binary.T__struct_6;
typedef T_decoder = stdgo._internal.encoding.binary.Binary.T_decoder;
typedef T_encoder = stdgo._internal.encoding.binary.Binary.T_encoder;
function read(_r:stdgo._internal.io.Io.Reader, _order:ByteOrder, _data:stdgo.AnyInterface):Void {}
function write(_w:stdgo._internal.io.Io.Writer, _order:ByteOrder, _data:stdgo.AnyInterface):Void {}
function size(_v:stdgo.AnyInterface):Void {}
function _dataSize(_v:stdgo._internal.reflect.Reflect.Value):Void {}
function _sizeof(_t:stdgo._internal.reflect.Reflect.Type_):Void {}
function _intDataSize(_data:stdgo.AnyInterface):Void {}
function _checkResult(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>, _dir:stdgo.GoString, _order:ByteOrder, _err:stdgo.Error, _have:stdgo.AnyInterface, _want:stdgo.AnyInterface):Void {}
function _testRead(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>, _order:ByteOrder, _b:stdgo.Slice<stdgo.GoByte>, _s1:stdgo.AnyInterface):Void {}
function _testWrite(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>, _order:ByteOrder, _b:stdgo.Slice<stdgo.GoByte>, _s1:stdgo.AnyInterface):Void {}
function testLittleEndianRead(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function testLittleEndianWrite(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function testLittleEndianPtrWrite(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function testBigEndianRead(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function testBigEndianWrite(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function testBigEndianPtrWrite(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function testReadSlice(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function testWriteSlice(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function testReadBool(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function testReadBoolSlice(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function testSliceRoundTrip(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function testWriteT(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function testBlankFields(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
@:invalid typedef T_testSizeStructCache_11___localname___foo = Dynamic;
@:invalid typedef T_testSizeStructCache_12___localname___bar = Dynamic;
function testSizeStructCache(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function testSizeInvalid(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function testUnexportedRead(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function testReadErrorMsg(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function testReadTruncated(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function _testUint64SmallSliceLengthPanics():Void {}
function _testPutUint64SmallSliceLengthPanics():Void {}
typedef T_testByteOrder_13___localname___byteOrder = stdgo._internal.encoding.binary.Binary.T_testByteOrder_13___localname___byteOrder;
function testByteOrder(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function testEarlyBoundsChecks(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function testReadInvalidDestination(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function _testReadInvalidDestination(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>, _order:ByteOrder):Void {}
@:invalid typedef T_testNoFixedSize_14___localname___Person = Dynamic;
function testNoFixedSize(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function benchmarkReadSlice1000Int32s(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {}
function benchmarkReadStruct(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {}
function benchmarkWriteStruct(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {}
function benchmarkReadInts(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {}
function benchmarkWriteInts(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {}
function benchmarkWriteSlice1000Int32s(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {}
function benchmarkPutUint16(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {}
function benchmarkAppendUint16(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {}
function benchmarkPutUint32(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {}
function benchmarkAppendUint32(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {}
function benchmarkPutUint64(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {}
function benchmarkAppendUint64(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {}
function benchmarkLittleEndianPutUint16(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {}
function benchmarkLittleEndianAppendUint16(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {}
function benchmarkLittleEndianPutUint32(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {}
function benchmarkLittleEndianAppendUint32(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {}
function benchmarkLittleEndianPutUint64(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {}
function benchmarkLittleEndianAppendUint64(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {}
function benchmarkReadFloats(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {}
function benchmarkWriteFloats(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {}
function benchmarkReadSlice1000Float32s(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {}
function benchmarkWriteSlice1000Float32s(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {}
function benchmarkReadSlice1000Uint8s(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {}
function benchmarkWriteSlice1000Uint8s(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {}
function testNativeEndian(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function appendUvarint(_buf:stdgo.Slice<stdgo.GoByte>, _x:stdgo.GoUInt64):Void {}
function putUvarint(_buf:stdgo.Slice<stdgo.GoByte>, _x:stdgo.GoUInt64):Void {}
function uvarint(_buf:stdgo.Slice<stdgo.GoByte>):Void {}
function appendVarint(_buf:stdgo.Slice<stdgo.GoByte>, _x:stdgo.GoInt64):Void {}
function putVarint(_buf:stdgo.Slice<stdgo.GoByte>, _x:stdgo.GoInt64):Void {}
function varint(_buf:stdgo.Slice<stdgo.GoByte>):Void {}
function readUvarint(_r:stdgo._internal.io.Io.ByteReader):Void {}
function readVarint(_r:stdgo._internal.io.Io.ByteReader):Void {}
function _testConstant(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>, _w:stdgo.GoUInt, _max:stdgo.GoInt):Void {}
function testConstants(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function _testVarint(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>, _x:stdgo.GoInt64):Void {}
function _testUvarint(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>, _x:stdgo.GoUInt64):Void {}
function testVarint(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function testUvarint(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function testBufferTooSmall(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function testBufferTooBigWithOverflow(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function _testOverflow(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>, _buf:stdgo.Slice<stdgo.GoByte>, _x0:stdgo.GoUInt64, _n0:stdgo.GoInt, _err0:stdgo.Error):Void {}
function testOverflow(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function testNonCanonicalZero(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function benchmarkPutUvarint32(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {}
function benchmarkPutUvarint64(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {}
@:invalid typedef T_littleEndian_asInterface = Dynamic;
@:invalid typedef T_littleEndian_static_extension = Dynamic;
@:invalid typedef T_bigEndian_asInterface = Dynamic;
@:invalid typedef T_bigEndian_static_extension = Dynamic;
@:invalid typedef T_byteSliceReader_asInterface = Dynamic;
@:invalid typedef T_byteSliceReader_static_extension = Dynamic;
@:invalid typedef T_nativeEndian_asInterface = Dynamic;
@:invalid typedef T_nativeEndian_static_extension = Dynamic;
@:invalid typedef T_decoder_asInterface = Dynamic;
@:invalid typedef T_decoder_static_extension = Dynamic;
@:invalid typedef T_encoder_asInterface = Dynamic;
@:invalid typedef T_encoder_static_extension = Dynamic;
