package stdgo.encoding.gob;
@:invalid var __go2hxdoc__package : Dynamic;
@:invalid var _errBadUint : Dynamic;
@:invalid var _errBadType : Dynamic;
@:invalid var _errRange : Dynamic;
@:invalid var _maxIgnoreNestingDepth : Dynamic;
@:invalid var _emptyStructType : Dynamic;
@:invalid var _errBadCount : Dynamic;
@:invalid var _decArrayHelper : Dynamic;
@:invalid var _decSliceHelper : Dynamic;
@:invalid var _decOpTable : Dynamic;
@:invalid var _encArrayHelper : Dynamic;
@:invalid var _encSliceHelper : Dynamic;
@:invalid var _encBufferPool : Dynamic;
@:invalid var _encOpTable : Dynamic;
@:invalid var _spaceForLength : Dynamic;
@:invalid var _gobEncoderInterfaceType : Dynamic;
@:invalid var _gobDecoderInterfaceType : Dynamic;
@:invalid var _binaryMarshalerInterfaceType : Dynamic;
@:invalid var _binaryUnmarshalerInterfaceType : Dynamic;
@:invalid var _textMarshalerInterfaceType : Dynamic;
@:invalid var _textUnmarshalerInterfaceType : Dynamic;
@:invalid var _wireTypeType : Dynamic;
@:invalid var _types : Dynamic;
@:invalid var _idToTypeSlice : Dynamic;
@:invalid var _tBool : Dynamic;
@:invalid var _tInt : Dynamic;
@:invalid var _tUint : Dynamic;
@:invalid var _tFloat : Dynamic;
@:invalid var _tBytes : Dynamic;
@:invalid var _tString : Dynamic;
@:invalid var _tComplex : Dynamic;
@:invalid var _decIgnoreOpMap : Dynamic;
@:invalid var _tInterface : Dynamic;
@:invalid var _tReserved7 : Dynamic;
@:invalid var _tReserved6 : Dynamic;
@:invalid var _tReserved5 : Dynamic;
@:invalid var _tReserved4 : Dynamic;
@:invalid var _tReserved3 : Dynamic;
@:invalid var _tReserved2 : Dynamic;
@:invalid var _tReserved1 : Dynamic;
@:invalid var _typeInfoMapInit : Dynamic;
@:invalid var _tWireType : Dynamic;
@:invalid var _doFuzzTests : Dynamic;
@:invalid var _encodeT : Dynamic;
@:invalid var _boolResult : Dynamic;
@:invalid var _signedResult : Dynamic;
@:invalid var _unsignedResult : Dynamic;
@:invalid var _floatResult : Dynamic;
@:invalid var _complexResult : Dynamic;
@:invalid var _bytesResult : Dynamic;
@:invalid var _singletons : Dynamic;
@:invalid var _unsupportedValues : Dynamic;
@:invalid var _singleTests : Dynamic;
@:invalid var _ignoreTests : Dynamic;
@:invalid var _badDataTests : Dynamic;
@:invalid var _basicTypes : Dynamic;
@:invalid var _noValue : Dynamic;
@:invalid var _intBits : Dynamic;
@:invalid var _uintptrBits : Dynamic;
@:invalid var _tooBig : Dynamic;
@:invalid var _debugFunc : Dynamic;
@:invalid var _uint64Size : Dynamic;
@:invalid var _singletonField : Dynamic;
@:invalid var _maxLength : Dynamic;
@:invalid var _testInt : Dynamic;
@:invalid var _testFloat32 : Dynamic;
@:invalid var _testString : Dynamic;
@:invalid var _testSlice : Dynamic;
@:invalid var _testMap : Dynamic;
@:invalid var _testArray : Dynamic;
@:invalid var _xGob : Dynamic;
@:invalid var _xBinary : Dynamic;
@:invalid var _xText : Dynamic;
@:invalid var _userTypeCache : Dynamic;
@:invalid var _typeLock : Dynamic;
@:invalid var _firstUserId : Dynamic;
@:invalid var _builtinIdToTypeSlice : Dynamic;
@:invalid var _wireTypeUserInfo : Dynamic;
@:invalid var _typeInfoMap : Dynamic;
@:invalid var _nameToConcreteType : Dynamic;
@:invalid var _concreteTypeToName : Dynamic;
typedef Squarer = stdgo._internal.encoding.gob.Gob.Squarer;
typedef T_interfaceIndirectTestI = stdgo._internal.encoding.gob.Gob.T_interfaceIndirectTestI;
typedef T_gobType = stdgo._internal.encoding.gob.Gob.T_gobType;
typedef GobEncoder = stdgo._internal.encoding.gob.Gob.GobEncoder;
typedef GobDecoder = stdgo._internal.encoding.gob.Gob.GobDecoder;
@:invalid typedef EncodeT = Dynamic;
@:invalid typedef T0 = Dynamic;
@:invalid typedef T1 = Dynamic;
@:invalid typedef T2 = Dynamic;
@:invalid typedef RT0 = Dynamic;
@:invalid typedef RT1 = Dynamic;
@:invalid typedef IT0 = Dynamic;
@:invalid typedef Indirect = Dynamic;
@:invalid typedef Direct = Dynamic;
@:invalid typedef Point = Dynamic;
@:invalid typedef InterfaceItem = Dynamic;
@:invalid typedef NoInterfaceItem = Dynamic;
@:invalid typedef BasicInterfaceItem = Dynamic;
@:invalid typedef PtrInterfaceItem = Dynamic;
@:invalid typedef U = Dynamic;
@:invalid typedef OnTheFly = Dynamic;
@:invalid typedef DT = Dynamic;
@:invalid typedef LargeSliceByte = Dynamic;
@:invalid typedef LargeSliceInt8 = Dynamic;
@:invalid typedef StringPair = Dynamic;
@:invalid typedef LargeSliceStruct = Dynamic;
@:invalid typedef LargeSliceString = Dynamic;
@:invalid typedef T_decoderState = Dynamic;
@:invalid typedef T_decBuffer = Dynamic;
@:invalid typedef T_decInstr = Dynamic;
@:invalid typedef T_decEngine = Dynamic;
@:invalid typedef T_emptyStruct = Dynamic;
@:invalid typedef Decoder = Dynamic;
@:invalid typedef T_encoderState = Dynamic;
@:invalid typedef T_encBuffer = Dynamic;
@:invalid typedef T_encInstr = Dynamic;
@:invalid typedef T_encEngine = Dynamic;
@:invalid typedef Encoder = Dynamic;
@:invalid typedef ET0 = Dynamic;
@:invalid typedef ET2 = Dynamic;
@:invalid typedef ET1 = Dynamic;
@:invalid typedef ET3 = Dynamic;
@:invalid typedef ET4 = Dynamic;
@:invalid typedef SingleTest = Dynamic;
@:invalid typedef T_interfaceIndirectTestT = Dynamic;
@:invalid typedef Struct0 = Dynamic;
@:invalid typedef NewType0 = Dynamic;
@:invalid typedef T_ignoreTest = Dynamic;
@:invalid typedef Bug0Outer = Dynamic;
@:invalid typedef Bug0Inner = Dynamic;
@:invalid typedef Bug1Elem = Dynamic;
@:invalid typedef Bug2 = Dynamic;
@:invalid typedef Bug3 = Dynamic;
@:invalid typedef Bug4Public = Dynamic;
@:invalid typedef Bug4Secret = Dynamic;
@:invalid typedef Z = Dynamic;
@:invalid typedef T_badDataTest = Dynamic;
@:invalid typedef T_gobError = Dynamic;
@:invalid typedef ByteStruct = Dynamic;
@:invalid typedef StringStruct = Dynamic;
@:invalid typedef ArrayStruct = Dynamic;
@:invalid typedef GobTest0 = Dynamic;
@:invalid typedef GobTest1 = Dynamic;
@:invalid typedef GobTest2 = Dynamic;
@:invalid typedef GobTest3 = Dynamic;
@:invalid typedef GobTest4 = Dynamic;
@:invalid typedef GobTest5 = Dynamic;
@:invalid typedef GobTest6 = Dynamic;
@:invalid typedef GobTest7 = Dynamic;
@:invalid typedef GobTestIgnoreEncoder = Dynamic;
@:invalid typedef GobTestValueEncDec = Dynamic;
@:invalid typedef GobTestIndirectEncDec = Dynamic;
@:invalid typedef GobTestArrayEncDec = Dynamic;
@:invalid typedef GobTestIndirectArrayEncDec = Dynamic;
@:invalid typedef T_gobDecoderBug0 = Dynamic;
@:invalid typedef T_isZeroBug = Dynamic;
@:invalid typedef T_isZeroBugInterface = Dynamic;
@:invalid typedef Bench = Dynamic;
@:invalid typedef T_benchmarkBuf = Dynamic;
@:invalid typedef T_userTypeInfo = Dynamic;
@:invalid typedef CommonType = Dynamic;
@:invalid typedef T_arrayType = Dynamic;
@:invalid typedef T_gobEncoderType = Dynamic;
@:invalid typedef T_mapType = Dynamic;
@:invalid typedef T_sliceType = Dynamic;
@:invalid typedef T_fieldType = Dynamic;
@:invalid typedef T_structType = Dynamic;
@:invalid typedef T_wireType = Dynamic;
@:invalid typedef T_typeInfo = Dynamic;
@:invalid typedef T_typeT = Dynamic;
@:invalid typedef Bar = Dynamic;
@:invalid typedef Foo = Dynamic;
@:invalid typedef N1 = Dynamic;
@:invalid typedef N2 = Dynamic;
@:invalid typedef T__struct_0_asInterface = Dynamic;
@:invalid typedef T__struct_0_static_extension = Dynamic;
typedef T__struct_0 = stdgo._internal.encoding.gob.Gob.T__struct_0;
@:invalid typedef T__struct_1_asInterface = Dynamic;
@:invalid typedef T__struct_1_static_extension = Dynamic;
typedef T__struct_1 = stdgo._internal.encoding.gob.Gob.T__struct_1;
@:invalid typedef T__struct_2_asInterface = Dynamic;
@:invalid typedef T__struct_2_static_extension = Dynamic;
typedef T__struct_2 = stdgo._internal.encoding.gob.Gob.T__struct_2;
@:invalid typedef T__struct_3_asInterface = Dynamic;
@:invalid typedef T__struct_3_static_extension = Dynamic;
typedef T__struct_3 = stdgo._internal.encoding.gob.Gob.T__struct_3;
@:invalid typedef T__struct_4_asInterface = Dynamic;
@:invalid typedef T__struct_4_static_extension = Dynamic;
typedef T__struct_4 = stdgo._internal.encoding.gob.Gob.T__struct_4;
@:invalid typedef T__struct_5_asInterface = Dynamic;
@:invalid typedef T__struct_5_static_extension = Dynamic;
typedef T__struct_5 = stdgo._internal.encoding.gob.Gob.T__struct_5;
@:invalid typedef T__struct_6_asInterface = Dynamic;
@:invalid typedef T__struct_6_static_extension = Dynamic;
typedef T__struct_6 = stdgo._internal.encoding.gob.Gob.T__struct_6;
@:invalid typedef T__struct_7_asInterface = Dynamic;
@:invalid typedef T__struct_7_static_extension = Dynamic;
typedef T__struct_7 = stdgo._internal.encoding.gob.Gob.T__struct_7;
@:invalid typedef T__struct_8_asInterface = Dynamic;
@:invalid typedef T__struct_8_static_extension = Dynamic;
typedef T__struct_8 = stdgo._internal.encoding.gob.Gob.T__struct_8;
@:invalid typedef T__struct_9_asInterface = Dynamic;
@:invalid typedef T__struct_9_static_extension = Dynamic;
typedef T__struct_9 = stdgo._internal.encoding.gob.Gob.T__struct_9;
@:invalid typedef T__struct_10_asInterface = Dynamic;
@:invalid typedef T__struct_10_static_extension = Dynamic;
typedef T__struct_10 = stdgo._internal.encoding.gob.Gob.T__struct_10;
@:invalid typedef T__struct_11_asInterface = Dynamic;
@:invalid typedef T__struct_11_static_extension = Dynamic;
typedef T__struct_11 = stdgo._internal.encoding.gob.Gob.T__struct_11;
@:invalid typedef T__struct_12_asInterface = Dynamic;
@:invalid typedef T__struct_12_static_extension = Dynamic;
typedef T__struct_12 = stdgo._internal.encoding.gob.Gob.T__struct_12;
typedef Int_ = stdgo._internal.encoding.gob.Gob.Int_;
typedef Float_ = stdgo._internal.encoding.gob.Gob.Float_;
typedef Vector = stdgo._internal.encoding.gob.Gob.Vector;
typedef String_ = stdgo._internal.encoding.gob.Gob.String_;
typedef T_decHelper = stdgo._internal.encoding.gob.Gob.T_decHelper;
typedef T_decOp = stdgo._internal.encoding.gob.Gob.T_decOp;
typedef T_encHelper = stdgo._internal.encoding.gob.Gob.T_encHelper;
typedef T_encOp = stdgo._internal.encoding.gob.Gob.T_encOp;
typedef Bug1StructMap = stdgo._internal.encoding.gob.Gob.Bug1StructMap;
typedef Gobber = stdgo._internal.encoding.gob.Gob.Gobber;
typedef ValueGobber = stdgo._internal.encoding.gob.Gob.ValueGobber;
typedef BinaryGobber = stdgo._internal.encoding.gob.Gob.BinaryGobber;
typedef BinaryValueGobber = stdgo._internal.encoding.gob.Gob.BinaryValueGobber;
typedef TextGobber = stdgo._internal.encoding.gob.Gob.TextGobber;
typedef TextValueGobber = stdgo._internal.encoding.gob.Gob.TextValueGobber;
typedef T_isZeroBugArray = stdgo._internal.encoding.gob.Gob.T_isZeroBugArray;
typedef T_typeId = stdgo._internal.encoding.gob.Gob.T_typeId;
function _testError(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function _newDecBuffer(_data:stdgo.Slice<stdgo.GoByte>):Void {}
function testUintCodec(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function _verifyInt(_i:stdgo.GoInt64, _t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function testIntCodec(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function _newDecodeState(_buf:stdgo.Ref<T_decBuffer>):Void {}
function _newEncoderState(_b:stdgo.Ref<T_encBuffer>):Void {}
function testScalarEncInstructions(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function _execDec(_instr:stdgo.Ref<T_decInstr>, _state:stdgo.Ref<T_decoderState>, _t:stdgo.Ref<stdgo._internal.testing.Testing.T_>, _value:stdgo._internal.reflect.Reflect.Value):Void {}
function _newDecodeStateFromData(_data:stdgo.Slice<stdgo.GoByte>):Void {}
function testScalarDecInstructions(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
@:invalid typedef T_testEndToEnd_121___localname___T2 = Dynamic;
@:invalid typedef T_testEndToEnd_122___localname___T3 = Dynamic;
@:invalid typedef T_testEndToEnd_123___localname___T1 = Dynamic;
function testEndToEnd(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
@:invalid typedef T_testOverflow_124___localname___inputT = Dynamic;
@:invalid typedef T_testOverflow_125___localname___outi8 = Dynamic;
@:invalid typedef T_testOverflow_126___localname___outi16 = Dynamic;
@:invalid typedef T_testOverflow_127___localname___outi32 = Dynamic;
@:invalid typedef T_testOverflow_128___localname___outu8 = Dynamic;
@:invalid typedef T_testOverflow_129___localname___outu16 = Dynamic;
@:invalid typedef T_testOverflow_130___localname___outu32 = Dynamic;
@:invalid typedef T_testOverflow_131___localname___outf32 = Dynamic;
@:invalid typedef T_testOverflow_132___localname___outc64 = Dynamic;
function testOverflow(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
@:invalid typedef T_testNesting_133___localname___RT = Dynamic;
function testNesting(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function testAutoIndirection(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function testReorderedFields(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function testIgnoredFields(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
typedef T_testBadRecursiveType_134___localname___Rec = stdgo._internal.encoding.gob.Gob.T_testBadRecursiveType_134___localname___Rec;
function testBadRecursiveType(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function testIndirectSliceMapArray(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function testInterface(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function testInterfaceBasic(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function testInterfacePointer(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function testIgnoreInterface(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function testUnexportedFields(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function testDebugSingleton(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function _newDT():Void {}
function testDebugStruct(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function _encFuzzDec(_rng:stdgo.Ref<stdgo._internal.math.rand.Rand.Rand>, _in:stdgo.AnyInterface):Void {}
function testFuzz(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function testFuzzRegressions(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function _testFuzz(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>, _seed:stdgo.GoInt64, _n:stdgo.GoInt, _input:haxe.Rest<stdgo.AnyInterface>):Void {}
function testFuzzOneByte(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function testErrorInvalidTypeId(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function _testEncodeDecode(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>, _in:stdgo.AnyInterface, _out:stdgo.AnyInterface):Void {}
function testLargeSlice(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function testLocalRemoteTypesMismatch(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function _decBoolArray(_state:stdgo.Ref<T_decoderState>, _v:stdgo._internal.reflect.Reflect.Value, _length:stdgo.GoInt, _ovfl:stdgo.Error):Void {}
function _decBoolSlice(_state:stdgo.Ref<T_decoderState>, _v:stdgo._internal.reflect.Reflect.Value, _length:stdgo.GoInt, _ovfl:stdgo.Error):Void {}
function _decComplex64Array(_state:stdgo.Ref<T_decoderState>, _v:stdgo._internal.reflect.Reflect.Value, _length:stdgo.GoInt, _ovfl:stdgo.Error):Void {}
function _decComplex64Slice(_state:stdgo.Ref<T_decoderState>, _v:stdgo._internal.reflect.Reflect.Value, _length:stdgo.GoInt, _ovfl:stdgo.Error):Void {}
function _decComplex128Array(_state:stdgo.Ref<T_decoderState>, _v:stdgo._internal.reflect.Reflect.Value, _length:stdgo.GoInt, _ovfl:stdgo.Error):Void {}
function _decComplex128Slice(_state:stdgo.Ref<T_decoderState>, _v:stdgo._internal.reflect.Reflect.Value, _length:stdgo.GoInt, _ovfl:stdgo.Error):Void {}
function _decFloat32Array(_state:stdgo.Ref<T_decoderState>, _v:stdgo._internal.reflect.Reflect.Value, _length:stdgo.GoInt, _ovfl:stdgo.Error):Void {}
function _decFloat32Slice(_state:stdgo.Ref<T_decoderState>, _v:stdgo._internal.reflect.Reflect.Value, _length:stdgo.GoInt, _ovfl:stdgo.Error):Void {}
function _decFloat64Array(_state:stdgo.Ref<T_decoderState>, _v:stdgo._internal.reflect.Reflect.Value, _length:stdgo.GoInt, _ovfl:stdgo.Error):Void {}
function _decFloat64Slice(_state:stdgo.Ref<T_decoderState>, _v:stdgo._internal.reflect.Reflect.Value, _length:stdgo.GoInt, _ovfl:stdgo.Error):Void {}
function _decIntArray(_state:stdgo.Ref<T_decoderState>, _v:stdgo._internal.reflect.Reflect.Value, _length:stdgo.GoInt, _ovfl:stdgo.Error):Void {}
function _decIntSlice(_state:stdgo.Ref<T_decoderState>, _v:stdgo._internal.reflect.Reflect.Value, _length:stdgo.GoInt, _ovfl:stdgo.Error):Void {}
function _decInt16Array(_state:stdgo.Ref<T_decoderState>, _v:stdgo._internal.reflect.Reflect.Value, _length:stdgo.GoInt, _ovfl:stdgo.Error):Void {}
function _decInt16Slice(_state:stdgo.Ref<T_decoderState>, _v:stdgo._internal.reflect.Reflect.Value, _length:stdgo.GoInt, _ovfl:stdgo.Error):Void {}
function _decInt32Array(_state:stdgo.Ref<T_decoderState>, _v:stdgo._internal.reflect.Reflect.Value, _length:stdgo.GoInt, _ovfl:stdgo.Error):Void {}
function _decInt32Slice(_state:stdgo.Ref<T_decoderState>, _v:stdgo._internal.reflect.Reflect.Value, _length:stdgo.GoInt, _ovfl:stdgo.Error):Void {}
function _decInt64Array(_state:stdgo.Ref<T_decoderState>, _v:stdgo._internal.reflect.Reflect.Value, _length:stdgo.GoInt, _ovfl:stdgo.Error):Void {}
function _decInt64Slice(_state:stdgo.Ref<T_decoderState>, _v:stdgo._internal.reflect.Reflect.Value, _length:stdgo.GoInt, _ovfl:stdgo.Error):Void {}
function _decInt8Array(_state:stdgo.Ref<T_decoderState>, _v:stdgo._internal.reflect.Reflect.Value, _length:stdgo.GoInt, _ovfl:stdgo.Error):Void {}
function _decInt8Slice(_state:stdgo.Ref<T_decoderState>, _v:stdgo._internal.reflect.Reflect.Value, _length:stdgo.GoInt, _ovfl:stdgo.Error):Void {}
function _decStringArray(_state:stdgo.Ref<T_decoderState>, _v:stdgo._internal.reflect.Reflect.Value, _length:stdgo.GoInt, _ovfl:stdgo.Error):Void {}
function _decStringSlice(_state:stdgo.Ref<T_decoderState>, _v:stdgo._internal.reflect.Reflect.Value, _length:stdgo.GoInt, _ovfl:stdgo.Error):Void {}
function _decUintArray(_state:stdgo.Ref<T_decoderState>, _v:stdgo._internal.reflect.Reflect.Value, _length:stdgo.GoInt, _ovfl:stdgo.Error):Void {}
function _decUintSlice(_state:stdgo.Ref<T_decoderState>, _v:stdgo._internal.reflect.Reflect.Value, _length:stdgo.GoInt, _ovfl:stdgo.Error):Void {}
function _decUint16Array(_state:stdgo.Ref<T_decoderState>, _v:stdgo._internal.reflect.Reflect.Value, _length:stdgo.GoInt, _ovfl:stdgo.Error):Void {}
function _decUint16Slice(_state:stdgo.Ref<T_decoderState>, _v:stdgo._internal.reflect.Reflect.Value, _length:stdgo.GoInt, _ovfl:stdgo.Error):Void {}
function _decUint32Array(_state:stdgo.Ref<T_decoderState>, _v:stdgo._internal.reflect.Reflect.Value, _length:stdgo.GoInt, _ovfl:stdgo.Error):Void {}
function _decUint32Slice(_state:stdgo.Ref<T_decoderState>, _v:stdgo._internal.reflect.Reflect.Value, _length:stdgo.GoInt, _ovfl:stdgo.Error):Void {}
function _decUint64Array(_state:stdgo.Ref<T_decoderState>, _v:stdgo._internal.reflect.Reflect.Value, _length:stdgo.GoInt, _ovfl:stdgo.Error):Void {}
function _decUint64Slice(_state:stdgo.Ref<T_decoderState>, _v:stdgo._internal.reflect.Reflect.Value, _length:stdgo.GoInt, _ovfl:stdgo.Error):Void {}
function _decUintptrArray(_state:stdgo.Ref<T_decoderState>, _v:stdgo._internal.reflect.Reflect.Value, _length:stdgo.GoInt, _ovfl:stdgo.Error):Void {}
function _decUintptrSlice(_state:stdgo.Ref<T_decoderState>, _v:stdgo._internal.reflect.Reflect.Value, _length:stdgo.GoInt, _ovfl:stdgo.Error):Void {}
macro function _growSlice<E>(__generic__0:haxe.macro.Expr.ExprOf<E>, _v:haxe.macro.Expr.ExprOf<stdgo._internal.reflect.Reflect.Value>, _ps:haxe.macro.Expr.ExprOf<stdgo.Ref<stdgo.Slice<E>>>, _length:haxe.macro.Expr.ExprOf<stdgo.GoInt>):Void {}
function _overflow(_name:stdgo.GoString):Void {}
function _decodeUintReader(_r:stdgo._internal.io.Io.Reader, _buf:stdgo.Slice<stdgo.GoByte>):Void {}
function _ignoreUint(_i:stdgo.Ref<T_decInstr>, _state:stdgo.Ref<T_decoderState>, _v:stdgo._internal.reflect.Reflect.Value):Void {}
function _ignoreTwoUints(_i:stdgo.Ref<T_decInstr>, _state:stdgo.Ref<T_decoderState>, _v:stdgo._internal.reflect.Reflect.Value):Void {}
function _decAlloc(_v:stdgo._internal.reflect.Reflect.Value):Void {}
function _decBool(_i:stdgo.Ref<T_decInstr>, _state:stdgo.Ref<T_decoderState>, _value:stdgo._internal.reflect.Reflect.Value):Void {}
function _decInt8(_i:stdgo.Ref<T_decInstr>, _state:stdgo.Ref<T_decoderState>, _value:stdgo._internal.reflect.Reflect.Value):Void {}
function _decUint8(_i:stdgo.Ref<T_decInstr>, _state:stdgo.Ref<T_decoderState>, _value:stdgo._internal.reflect.Reflect.Value):Void {}
function _decInt16(_i:stdgo.Ref<T_decInstr>, _state:stdgo.Ref<T_decoderState>, _value:stdgo._internal.reflect.Reflect.Value):Void {}
function _decUint16(_i:stdgo.Ref<T_decInstr>, _state:stdgo.Ref<T_decoderState>, _value:stdgo._internal.reflect.Reflect.Value):Void {}
function _decInt32(_i:stdgo.Ref<T_decInstr>, _state:stdgo.Ref<T_decoderState>, _value:stdgo._internal.reflect.Reflect.Value):Void {}
function _decUint32(_i:stdgo.Ref<T_decInstr>, _state:stdgo.Ref<T_decoderState>, _value:stdgo._internal.reflect.Reflect.Value):Void {}
function _decInt64(_i:stdgo.Ref<T_decInstr>, _state:stdgo.Ref<T_decoderState>, _value:stdgo._internal.reflect.Reflect.Value):Void {}
function _decUint64(_i:stdgo.Ref<T_decInstr>, _state:stdgo.Ref<T_decoderState>, _value:stdgo._internal.reflect.Reflect.Value):Void {}
function _float64FromBits(_u:stdgo.GoUInt64):Void {}
function _float32FromBits(_u:stdgo.GoUInt64, _ovfl:stdgo.Error):Void {}
function _decFloat32(_i:stdgo.Ref<T_decInstr>, _state:stdgo.Ref<T_decoderState>, _value:stdgo._internal.reflect.Reflect.Value):Void {}
function _decFloat64(_i:stdgo.Ref<T_decInstr>, _state:stdgo.Ref<T_decoderState>, _value:stdgo._internal.reflect.Reflect.Value):Void {}
function _decComplex64(_i:stdgo.Ref<T_decInstr>, _state:stdgo.Ref<T_decoderState>, _value:stdgo._internal.reflect.Reflect.Value):Void {}
function _decComplex128(_i:stdgo.Ref<T_decInstr>, _state:stdgo.Ref<T_decoderState>, _value:stdgo._internal.reflect.Reflect.Value):Void {}
function _decUint8Slice(_i:stdgo.Ref<T_decInstr>, _state:stdgo.Ref<T_decoderState>, _value:stdgo._internal.reflect.Reflect.Value):Void {}
function _decString(_i:stdgo.Ref<T_decInstr>, _state:stdgo.Ref<T_decoderState>, _value:stdgo._internal.reflect.Reflect.Value):Void {}
function _ignoreUint8Array(_i:stdgo.Ref<T_decInstr>, _state:stdgo.Ref<T_decoderState>, _value:stdgo._internal.reflect.Reflect.Value):Void {}
function _decodeIntoValue(_state:stdgo.Ref<T_decoderState>, _op:T_decOp, _isPtr:Bool, _value:stdgo._internal.reflect.Reflect.Value, _instr:stdgo.Ref<T_decInstr>):Void {}
function _allocValue(_t:stdgo._internal.reflect.Reflect.Type_):Void {}
function newDecoder(_r:stdgo._internal.io.Io.Reader):Void {}
function _toInt(_x:stdgo.GoUInt64):Void {}
function _encBoolArray(_state:stdgo.Ref<T_encoderState>, _v:stdgo._internal.reflect.Reflect.Value):Void {}
function _encBoolSlice(_state:stdgo.Ref<T_encoderState>, _v:stdgo._internal.reflect.Reflect.Value):Void {}
function _encComplex64Array(_state:stdgo.Ref<T_encoderState>, _v:stdgo._internal.reflect.Reflect.Value):Void {}
function _encComplex64Slice(_state:stdgo.Ref<T_encoderState>, _v:stdgo._internal.reflect.Reflect.Value):Void {}
function _encComplex128Array(_state:stdgo.Ref<T_encoderState>, _v:stdgo._internal.reflect.Reflect.Value):Void {}
function _encComplex128Slice(_state:stdgo.Ref<T_encoderState>, _v:stdgo._internal.reflect.Reflect.Value):Void {}
function _encFloat32Array(_state:stdgo.Ref<T_encoderState>, _v:stdgo._internal.reflect.Reflect.Value):Void {}
function _encFloat32Slice(_state:stdgo.Ref<T_encoderState>, _v:stdgo._internal.reflect.Reflect.Value):Void {}
function _encFloat64Array(_state:stdgo.Ref<T_encoderState>, _v:stdgo._internal.reflect.Reflect.Value):Void {}
function _encFloat64Slice(_state:stdgo.Ref<T_encoderState>, _v:stdgo._internal.reflect.Reflect.Value):Void {}
function _encIntArray(_state:stdgo.Ref<T_encoderState>, _v:stdgo._internal.reflect.Reflect.Value):Void {}
function _encIntSlice(_state:stdgo.Ref<T_encoderState>, _v:stdgo._internal.reflect.Reflect.Value):Void {}
function _encInt16Array(_state:stdgo.Ref<T_encoderState>, _v:stdgo._internal.reflect.Reflect.Value):Void {}
function _encInt16Slice(_state:stdgo.Ref<T_encoderState>, _v:stdgo._internal.reflect.Reflect.Value):Void {}
function _encInt32Array(_state:stdgo.Ref<T_encoderState>, _v:stdgo._internal.reflect.Reflect.Value):Void {}
function _encInt32Slice(_state:stdgo.Ref<T_encoderState>, _v:stdgo._internal.reflect.Reflect.Value):Void {}
function _encInt64Array(_state:stdgo.Ref<T_encoderState>, _v:stdgo._internal.reflect.Reflect.Value):Void {}
function _encInt64Slice(_state:stdgo.Ref<T_encoderState>, _v:stdgo._internal.reflect.Reflect.Value):Void {}
function _encInt8Array(_state:stdgo.Ref<T_encoderState>, _v:stdgo._internal.reflect.Reflect.Value):Void {}
function _encInt8Slice(_state:stdgo.Ref<T_encoderState>, _v:stdgo._internal.reflect.Reflect.Value):Void {}
function _encStringArray(_state:stdgo.Ref<T_encoderState>, _v:stdgo._internal.reflect.Reflect.Value):Void {}
function _encStringSlice(_state:stdgo.Ref<T_encoderState>, _v:stdgo._internal.reflect.Reflect.Value):Void {}
function _encUintArray(_state:stdgo.Ref<T_encoderState>, _v:stdgo._internal.reflect.Reflect.Value):Void {}
function _encUintSlice(_state:stdgo.Ref<T_encoderState>, _v:stdgo._internal.reflect.Reflect.Value):Void {}
function _encUint16Array(_state:stdgo.Ref<T_encoderState>, _v:stdgo._internal.reflect.Reflect.Value):Void {}
function _encUint16Slice(_state:stdgo.Ref<T_encoderState>, _v:stdgo._internal.reflect.Reflect.Value):Void {}
function _encUint32Array(_state:stdgo.Ref<T_encoderState>, _v:stdgo._internal.reflect.Reflect.Value):Void {}
function _encUint32Slice(_state:stdgo.Ref<T_encoderState>, _v:stdgo._internal.reflect.Reflect.Value):Void {}
function _encUint64Array(_state:stdgo.Ref<T_encoderState>, _v:stdgo._internal.reflect.Reflect.Value):Void {}
function _encUint64Slice(_state:stdgo.Ref<T_encoderState>, _v:stdgo._internal.reflect.Reflect.Value):Void {}
function _encUintptrArray(_state:stdgo.Ref<T_encoderState>, _v:stdgo._internal.reflect.Reflect.Value):Void {}
function _encUintptrSlice(_state:stdgo.Ref<T_encoderState>, _v:stdgo._internal.reflect.Reflect.Value):Void {}
function _encIndirect(_pv:stdgo._internal.reflect.Reflect.Value, _indir:stdgo.GoInt):Void {}
function _encBool(_i:stdgo.Ref<T_encInstr>, _state:stdgo.Ref<T_encoderState>, _v:stdgo._internal.reflect.Reflect.Value):Void {}
function _encInt(_i:stdgo.Ref<T_encInstr>, _state:stdgo.Ref<T_encoderState>, _v:stdgo._internal.reflect.Reflect.Value):Void {}
function _encUint(_i:stdgo.Ref<T_encInstr>, _state:stdgo.Ref<T_encoderState>, _v:stdgo._internal.reflect.Reflect.Value):Void {}
function _floatBits(_f:stdgo.GoFloat64):Void {}
function _encFloat(_i:stdgo.Ref<T_encInstr>, _state:stdgo.Ref<T_encoderState>, _v:stdgo._internal.reflect.Reflect.Value):Void {}
function _encComplex(_i:stdgo.Ref<T_encInstr>, _state:stdgo.Ref<T_encoderState>, _v:stdgo._internal.reflect.Reflect.Value):Void {}
function _encUint8Array(_i:stdgo.Ref<T_encInstr>, _state:stdgo.Ref<T_encoderState>, _v:stdgo._internal.reflect.Reflect.Value):Void {}
function _encString(_i:stdgo.Ref<T_encInstr>, _state:stdgo.Ref<T_encoderState>, _v:stdgo._internal.reflect.Reflect.Value):Void {}
function _encStructTerminator(_i:stdgo.Ref<T_encInstr>, _state:stdgo.Ref<T_encoderState>, _v:stdgo._internal.reflect.Reflect.Value):Void {}
function _valid(_v:stdgo._internal.reflect.Reflect.Value):Void {}
function _encodeReflectValue(_state:stdgo.Ref<T_encoderState>, _v:stdgo._internal.reflect.Reflect.Value, _op:T_encOp, _indir:stdgo.GoInt):Void {}
function _encOpFor(_rt:stdgo._internal.reflect.Reflect.Type_, _inProgress:stdgo.GoMap<stdgo._internal.reflect.Reflect.Type_, stdgo.Ref<T_encOp>>, _building:stdgo.GoMap<stdgo.Ref<T_typeInfo>, Bool>):Void {}
function _gobEncodeOpFor(_ut:stdgo.Ref<T_userTypeInfo>):Void {}
function _compileEnc(_ut:stdgo.Ref<T_userTypeInfo>, _building:stdgo.GoMap<stdgo.Ref<T_typeInfo>, Bool>):Void {}
function _getEncEngine(_ut:stdgo.Ref<T_userTypeInfo>, _building:stdgo.GoMap<stdgo.Ref<T_typeInfo>, Bool>):Void {}
function _buildEncEngine(_info:stdgo.Ref<T_typeInfo>, _ut:stdgo.Ref<T_userTypeInfo>, _building:stdgo.GoMap<stdgo.Ref<T_typeInfo>, Bool>):Void {}
function newEncoder(_w:stdgo._internal.io.Io.Writer):Void {}
function testBasicEncoderDecoder(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function testEncodeIntSlice(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function testEncoderDecoder(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function _badTypeCheck(_e:stdgo.AnyInterface, _shouldFail:Bool, _msg:stdgo.GoString, _t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function testWrongTypeDecoder(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function testUnsupported(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function _encAndDec(_in:stdgo.AnyInterface, _out:stdgo.AnyInterface):Void {}
@:invalid typedef T_testTypeToPtrType_135___localname___Type0 = Dynamic;
function testTypeToPtrType(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
@:invalid typedef T_testPtrTypeToType_136___localname___Type1 = Dynamic;
function testPtrTypeToType(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
@:invalid typedef T_testTypeToPtrPtrPtrPtrType_137___localname___Type2 = Dynamic;
function testTypeToPtrPtrPtrPtrType(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
@:invalid typedef T_testSlice_138___localname___Type3 = Dynamic;
function testSlice(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
@:invalid typedef T_testValueError_139___localname___Type4 = Dynamic;
function testValueError(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
@:invalid typedef T_testArray_140___localname___Type5 = Dynamic;
@:invalid typedef T_testArray_141___localname___Type6 = Dynamic;
function testArray(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
typedef T_testRecursiveMapType_142___localname___recursiveMap = stdgo._internal.encoding.gob.Gob.T_testRecursiveMapType_142___localname___recursiveMap;
function testRecursiveMapType(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
typedef T_testRecursiveSliceType_143___localname___recursiveSlice = stdgo._internal.encoding.gob.Gob.T_testRecursiveSliceType_143___localname___recursiveSlice;
function testRecursiveSliceType(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
@:invalid typedef T_testDefaultsInArray_144___localname___Type7 = Dynamic;
function testDefaultsInArray(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function testSingletons(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
@:invalid typedef T_testStructNonStruct_145___localname___Struct = Dynamic;
typedef T_testStructNonStruct_146___localname___NonStruct = stdgo._internal.encoding.gob.Gob.T_testStructNonStruct_146___localname___NonStruct;
function testStructNonStruct(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function testInterfaceIndirect(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function testDecodeIntoNothing(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function testIgnoreRecursiveType(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function testNestedInterfaces(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function testMapBug1(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function testGobMapInterfaceEncode(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function testSliceReusesMemory(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function testBadCount(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function testSequentialDecoder(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function testChanFuncIgnored(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function testSliceIncompatibility(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function testGobPtrSlices(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function testPtrToMapOfMap(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function testCatchInvalidNilValue(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function testTopLevelNilPointer(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function _encodeAndRecover(_value:stdgo.AnyInterface):Void {}
function testNilPointerPanics(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function testNilPointerInsideInterface(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function testMutipleEncodingsOfBadType(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function test29ElementSlice(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function testErrorForHugeSlice(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function testBadData(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
@:invalid typedef T_testDecodeErrorMultipleTypes_147___localname___Test = Dynamic;
function testDecodeErrorMultipleTypes(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
@:invalid typedef T_testMarshalFloatMap_148___localname___mapEntry = Dynamic;
function testMarshalFloatMap(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
@:invalid typedef T_testDecodePartial_149___localname___T = Dynamic;
function testDecodePartial(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function testDecoderOverflow(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function _errorf(_format:stdgo.GoString, _args:haxe.Rest<stdgo.AnyInterface>):Void {}
function _error_(_err:stdgo.Error):Void {}
function _catchError(_err:stdgo.Ref<stdgo.Error>):Void {}
function testGobEncoderField(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function testGobEncoderValueField(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function testGobEncoderIndirectField(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function testGobEncoderArrayField(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function testGobEncoderIndirectArrayField(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function testGobEncoderFieldsOfDifferentType(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function testGobEncoderValueEncoder(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function testGobEncoderValueThenPointer(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function testGobEncoderPointerThenValue(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function testGobEncoderFieldTypeError(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function testGobEncoderStructSingleton(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function testGobEncoderNonStructSingleton(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function testGobEncoderIgnoreStructField(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function testGobEncoderIgnoreNonStructField(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function testGobEncoderIgnoreNilEncoder(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function testGobEncoderExtraIndirect(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function testGobEncodeIsZero(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function testGobEncodePtrError(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function testNetIP(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function testIgnoreDepthLimit(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function _benchmarkEndToEnd(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>, _ctor:() -> stdgo.AnyInterface, _pipe:() -> { var _0 : stdgo._internal.io.Io.Reader; var _1 : stdgo._internal.io.Io.Writer; var _2 : stdgo.Error; }):Void {}
function benchmarkEndToEndPipe(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {}
function benchmarkEndToEndByteBuffer(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {}
function benchmarkEndToEndSliceByteBuffer(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {}
function testCountEncodeMallocs(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function testCountDecodeMallocs(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function _benchmarkEncodeSlice(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>, _a:stdgo.AnyInterface):Void {}
function benchmarkEncodeComplex128Slice(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {}
function benchmarkEncodeFloat64Slice(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {}
function benchmarkEncodeInt32Slice(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {}
function benchmarkEncodeStringSlice(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {}
function benchmarkEncodeInterfaceSlice(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {}
function _benchmarkDecodeSlice(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>, _a:stdgo.AnyInterface):Void {}
function benchmarkDecodeComplex128Slice(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {}
function benchmarkDecodeFloat64Slice(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {}
function benchmarkDecodeInt32Slice(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {}
function benchmarkDecodeStringSlice(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {}
function benchmarkDecodeStringsSlice(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {}
function benchmarkDecodeBytesSlice(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {}
function benchmarkDecodeInterfaceSlice(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {}
function benchmarkDecodeMap(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {}
function _validUserType(_rt:stdgo._internal.reflect.Reflect.Type_):Void {}
function _implementsInterface(_typ:stdgo._internal.reflect.Reflect.Type_, _gobEncDecType:stdgo._internal.reflect.Reflect.Type_):Void {}
function _userType(_rt:stdgo._internal.reflect.Reflect.Type_):Void {}
function _idToType(_id:T_typeId):Void {}
function _builtinIdToType(_id:T_typeId):Void {}
function _setTypeId(_typ:T_gobType):Void {}
function _newArrayType(_name:stdgo.GoString):Void {}
function _newGobEncoderType(_name:stdgo.GoString):Void {}
function _newMapType(_name:stdgo.GoString):Void {}
function _newSliceType(_name:stdgo.GoString):Void {}
function _newStructType(_name:stdgo.GoString):Void {}
function _newTypeObject(_name:stdgo.GoString, _ut:stdgo.Ref<T_userTypeInfo>, _rt:stdgo._internal.reflect.Reflect.Type_):Void {}
function _isExported(_name:stdgo.GoString):Void {}
function _isSent(_field:stdgo.Ref<stdgo._internal.reflect.Reflect.StructField>):Void {}
function _getBaseType(_name:stdgo.GoString, _rt:stdgo._internal.reflect.Reflect.Type_):Void {}
function _getType(_name:stdgo.GoString, _ut:stdgo.Ref<T_userTypeInfo>, _rt:stdgo._internal.reflect.Reflect.Type_):Void {}
function _checkId(_want:T_typeId, _got:T_typeId):Void {}
function _bootstrapType(_name:stdgo.GoString, _e:stdgo.AnyInterface):Void {}
function _lookupTypeInfo(_rt:stdgo._internal.reflect.Reflect.Type_):Void {}
function _getTypeInfo(_ut:stdgo.Ref<T_userTypeInfo>):Void {}
function _buildTypeInfo(_ut:stdgo.Ref<T_userTypeInfo>, _rt:stdgo._internal.reflect.Reflect.Type_):Void {}
function _mustGetTypeInfo(_rt:stdgo._internal.reflect.Reflect.Type_):Void {}
function registerName(_name:stdgo.GoString, _value:stdgo.AnyInterface):Void {}
function register(_value:stdgo.AnyInterface):Void {}
function _registerBasics():Void {}
function _getTypeUnlocked(_name:stdgo.GoString, _rt:stdgo._internal.reflect.Reflect.Type_):Void {}
function testBasic(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function testReregistration(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function testArrayType(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function testSliceType(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function testMapType(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function testStructType(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
@:invalid typedef T_testRegistration_150___localname___T = Dynamic;
function testRegistration(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function testRegistrationNaming(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
@:invalid typedef T_testStressParallel_151___localname___T2 = Dynamic;
function testStressParallel(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function testTypeRace(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
@:invalid var _ : Dynamic;
@:invalid typedef Point_asInterface = Dynamic;
@:invalid typedef Point_static_extension = Dynamic;
@:invalid typedef T_decoderState_asInterface = Dynamic;
@:invalid typedef T_decoderState_static_extension = Dynamic;
@:invalid typedef T_decBuffer_asInterface = Dynamic;
@:invalid typedef T_decBuffer_static_extension = Dynamic;
@:invalid typedef Decoder_asInterface = Dynamic;
@:invalid typedef Decoder_static_extension = Dynamic;
@:invalid typedef T_encoderState_asInterface = Dynamic;
@:invalid typedef T_encoderState_static_extension = Dynamic;
@:invalid typedef T_encBuffer_asInterface = Dynamic;
@:invalid typedef T_encBuffer_static_extension = Dynamic;
@:invalid typedef Encoder_asInterface = Dynamic;
@:invalid typedef Encoder_static_extension = Dynamic;
@:invalid typedef T_interfaceIndirectTestT_asInterface = Dynamic;
@:invalid typedef T_interfaceIndirectTestT_static_extension = Dynamic;
@:invalid typedef ByteStruct_asInterface = Dynamic;
@:invalid typedef ByteStruct_static_extension = Dynamic;
@:invalid typedef StringStruct_asInterface = Dynamic;
@:invalid typedef StringStruct_static_extension = Dynamic;
@:invalid typedef ArrayStruct_asInterface = Dynamic;
@:invalid typedef ArrayStruct_static_extension = Dynamic;
@:invalid typedef T_gobDecoderBug0_asInterface = Dynamic;
@:invalid typedef T_gobDecoderBug0_static_extension = Dynamic;
@:invalid typedef T_isZeroBugInterface_asInterface = Dynamic;
@:invalid typedef T_isZeroBugInterface_static_extension = Dynamic;
@:invalid typedef T_benchmarkBuf_asInterface = Dynamic;
@:invalid typedef T_benchmarkBuf_static_extension = Dynamic;
@:invalid typedef CommonType_asInterface = Dynamic;
@:invalid typedef CommonType_static_extension = Dynamic;
@:invalid typedef T_arrayType_asInterface = Dynamic;
@:invalid typedef T_arrayType_static_extension = Dynamic;
@:invalid typedef T_gobEncoderType_asInterface = Dynamic;
@:invalid typedef T_gobEncoderType_static_extension = Dynamic;
@:invalid typedef T_mapType_asInterface = Dynamic;
@:invalid typedef T_mapType_static_extension = Dynamic;
@:invalid typedef T_sliceType_asInterface = Dynamic;
@:invalid typedef T_sliceType_static_extension = Dynamic;
@:invalid typedef T_structType_asInterface = Dynamic;
@:invalid typedef T_structType_static_extension = Dynamic;
@:invalid typedef T_wireType_asInterface = Dynamic;
@:invalid typedef T_wireType_static_extension = Dynamic;
@:invalid typedef Int__asInterface = Dynamic;
@:invalid typedef Int__static_extension = Dynamic;
@:invalid typedef Float__asInterface = Dynamic;
@:invalid typedef Float__static_extension = Dynamic;
@:invalid typedef Vector_asInterface = Dynamic;
@:invalid typedef Vector_static_extension = Dynamic;
@:invalid typedef Gobber_asInterface = Dynamic;
@:invalid typedef Gobber_static_extension = Dynamic;
@:invalid typedef ValueGobber_asInterface = Dynamic;
@:invalid typedef ValueGobber_static_extension = Dynamic;
@:invalid typedef BinaryGobber_asInterface = Dynamic;
@:invalid typedef BinaryGobber_static_extension = Dynamic;
@:invalid typedef BinaryValueGobber_asInterface = Dynamic;
@:invalid typedef BinaryValueGobber_static_extension = Dynamic;
@:invalid typedef TextGobber_asInterface = Dynamic;
@:invalid typedef TextGobber_static_extension = Dynamic;
@:invalid typedef TextValueGobber_asInterface = Dynamic;
@:invalid typedef TextValueGobber_static_extension = Dynamic;
@:invalid typedef T_isZeroBugArray_asInterface = Dynamic;
@:invalid typedef T_isZeroBugArray_static_extension = Dynamic;
@:invalid typedef T_typeId_asInterface = Dynamic;
@:invalid typedef T_typeId_static_extension = Dynamic;
