package stdgo.go.constant;
@:invalid var __go2hxdoc__package : Dynamic;
@:invalid var __Kind_index : Dynamic;
@:invalid var _floatVal0 : Dynamic;
@:invalid var _intTests : Dynamic;
@:invalid var _floatTests : Dynamic;
@:invalid var _imagTests : Dynamic;
@:invalid var _opTests : Dynamic;
@:invalid var _xxx : Dynamic;
@:invalid var _issue14262 : Dynamic;
@:invalid var _stringTests : Dynamic;
@:invalid var _optab : Dynamic;
@:invalid var _fracTests : Dynamic;
@:invalid var _bytesTests : Dynamic;
@:invalid var _bitLenTests : Dynamic;
@:invalid var __Kind_name : Dynamic;
@:invalid var unknown : Dynamic;
@:invalid var bool_ : Dynamic;
@:invalid var string : Dynamic;
@:invalid var int_ : Dynamic;
@:invalid var float_ : Dynamic;
@:invalid var complex : Dynamic;
@:invalid var _prec : Dynamic;
@:invalid var _maxExp : Dynamic;
@:invalid var _emptyString : Dynamic;
@:invalid var __m : Dynamic;
@:invalid var __log : Dynamic;
@:invalid var _wordSize : Dynamic;
typedef Value = stdgo._internal.go.constant.Constant.Value;
@:invalid typedef T_unknownVal = Dynamic;
@:invalid typedef T_stringVal = Dynamic;
@:invalid typedef T_intVal = Dynamic;
@:invalid typedef T_ratVal = Dynamic;
@:invalid typedef T_floatVal = Dynamic;
@:invalid typedef T_complexVal = Dynamic;
@:invalid typedef T_makeTestCase = Dynamic;
@:invalid typedef T__struct_0_asInterface = Dynamic;
@:invalid typedef T__struct_0_static_extension = Dynamic;
typedef T__struct_0 = stdgo._internal.go.constant.Constant.T__struct_0;
@:invalid typedef T__struct_1_asInterface = Dynamic;
@:invalid typedef T__struct_1_static_extension = Dynamic;
typedef T__struct_1 = stdgo._internal.go.constant.Constant.T__struct_1;
@:invalid typedef T__struct_2_asInterface = Dynamic;
@:invalid typedef T__struct_2_static_extension = Dynamic;
typedef T__struct_2 = stdgo._internal.go.constant.Constant.T__struct_2;
typedef Kind = stdgo._internal.go.constant.Constant.Kind;
typedef T_boolVal = stdgo._internal.go.constant.Constant.T_boolVal;
typedef T_int64Val = stdgo._internal.go.constant.Constant.T_int64Val;
function _reverse(_x:stdgo.Slice<stdgo.GoString>):Void {}
function _newInt():Void {}
function _newRat():Void {}
function _newFloat():Void {}
function _i64toi(_x:T_int64Val):Void {}
function _i64tor(_x:T_int64Val):Void {}
function _i64tof(_x:T_int64Val):Void {}
function _itor(_x:T_intVal):Void {}
function _itof(_x:T_intVal):Void {}
function _rtof(_x:T_ratVal):Void {}
function _vtoc(_x:Value):Void {}
function _makeInt(_x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>):Void {}
function _makeRat(_x:stdgo.Ref<stdgo._internal.math.big.Big.Rat>):Void {}
function _makeFloat(_x:stdgo.Ref<stdgo._internal.math.big.Big.Float_>):Void {}
function _makeComplex(_re:Value, _im:Value):Void {}
function _makeFloatFromLiteral(_lit:stdgo.GoString):Void {}
function _smallInt(_x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>):Void {}
function _smallFloat64(_x:stdgo.GoFloat64):Void {}
function _smallFloat(_x:stdgo.Ref<stdgo._internal.math.big.Big.Float_>):Void {}
function makeUnknown():Void {}
function makeBool(_b:Bool):Void {}
function makeString(_s:stdgo.GoString):Void {}
function makeInt64(_x:stdgo.GoInt64):Void {}
function makeUint64(_x:stdgo.GoUInt64):Void {}
function makeFloat64(_x:stdgo.GoFloat64):Void {}
function makeFromLiteral(_lit:stdgo.GoString, _tok:stdgo._internal.go.token.Token.Token, _zero:stdgo.GoUInt):Void {}
function boolVal(_x:Value):Void {}
function stringVal(_x:Value):Void {}
function int64Val(_x:Value):Void {}
function uint64Val(_x:Value):Void {}
function float32Val(_x:Value):Void {}
function float64Val(_x:Value):Void {}
function val(_x:Value):Void {}
function make(_x:stdgo.AnyInterface):Void {}
function bitLen(_x:Value):Void {}
function sign(_x:Value):Void {}
function bytes(_x:Value):Void {}
function makeFromBytes(_bytes:stdgo.Slice<stdgo.GoByte>):Void {}
function num(_x:Value):Void {}
function denom(_x:Value):Void {}
function makeImag(_x:Value):Void {}
function real(_x:Value):Void {}
function imag(_x:Value):Void {}
function toInt(_x:Value):Void {}
function toFloat(_x:Value):Void {}
function toComplex(_x:Value):Void {}
function _is32bit(_x:stdgo.GoInt64):Void {}
function _is63bit(_x:stdgo.GoInt64):Void {}
function unaryOp(_op:stdgo._internal.go.token.Token.Token, _y:Value, _prec:stdgo.GoUInt):Void {}
function _ord(_x:Value):Void {}
function _match(_x:Value, _y:Value):Void {}
function _match0(_x:Value, _y:Value):Void {}
function binaryOp(_x_:Value, _op:stdgo._internal.go.token.Token.Token, _y_:Value):Void {}
function _add(_x:Value, _y:Value):Void {}
function _sub(_x:Value, _y:Value):Void {}
function _mul(_x:Value, _y:Value):Void {}
function _quo(_x:Value, _y:Value):Void {}
function shift(_x:Value, _op:stdgo._internal.go.token.Token.Token, _s:stdgo.GoUInt):Void {}
function _cmpZero(_x:stdgo.GoInt, _op:stdgo._internal.go.token.Token.Token):Void {}
function compare(_x_:Value, _op:stdgo._internal.go.token.Token.Token, _y_:Value):Void {}
function _testNumbers(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>, _kind:stdgo._internal.go.token.Token.Token, _tests:stdgo.Slice<stdgo.GoString>):Void {}
function testNumbers(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function testOps(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function _eql(_x:Value, _y:Value):Void {}
function testString(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function _val(_lit:stdgo.GoString):Void {}
function _panicHandler(_v:stdgo.Ref<Value>):Void {}
function _doOp(_x:Value, _op:stdgo._internal.go.token.Token.Token, _y:Value):Void {}
function testFractions(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function testBytes(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function testUnknown(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function testMakeFloat64(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function _dup(_k:Kind, _x:stdgo.AnyInterface):Void {}
function testMake(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function benchmarkStringAdd(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {}
function testBitLen(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
@:invalid typedef T_unknownVal_asInterface = Dynamic;
@:invalid typedef T_unknownVal_static_extension = Dynamic;
@:invalid typedef T_stringVal_asInterface = Dynamic;
@:invalid typedef T_stringVal_static_extension = Dynamic;
@:invalid typedef T_intVal_asInterface = Dynamic;
@:invalid typedef T_intVal_static_extension = Dynamic;
@:invalid typedef T_ratVal_asInterface = Dynamic;
@:invalid typedef T_ratVal_static_extension = Dynamic;
@:invalid typedef T_floatVal_asInterface = Dynamic;
@:invalid typedef T_floatVal_static_extension = Dynamic;
@:invalid typedef T_complexVal_asInterface = Dynamic;
@:invalid typedef T_complexVal_static_extension = Dynamic;
@:invalid typedef Kind_asInterface = Dynamic;
@:invalid typedef Kind_static_extension = Dynamic;
@:invalid typedef T_boolVal_asInterface = Dynamic;
@:invalid typedef T_boolVal_static_extension = Dynamic;
@:invalid typedef T_int64Val_asInterface = Dynamic;
@:invalid typedef T_int64Val_static_extension = Dynamic;
