package stdgo.reflect;
@:invalid var __go2hxdoc__package : Dynamic;
@:invalid var invalid : Dynamic;
@:invalid var bool_ : Dynamic;
@:invalid var int_ : Dynamic;
@:invalid var int8 : Dynamic;
@:invalid var int16 : Dynamic;
@:invalid var int32 : Dynamic;
@:invalid var int64 : Dynamic;
@:invalid var uint : Dynamic;
@:invalid var uint8 : Dynamic;
@:invalid var uint16 : Dynamic;
@:invalid var uint32 : Dynamic;
@:invalid var uint64 : Dynamic;
@:invalid var uintptr : Dynamic;
@:invalid var float32 : Dynamic;
@:invalid var float64 : Dynamic;
@:invalid var complex64 : Dynamic;
@:invalid var complex128 : Dynamic;
@:invalid var array : Dynamic;
@:invalid var chan : Dynamic;
@:invalid var func : Dynamic;
@:invalid var interface_ : Dynamic;
@:invalid var map_ : Dynamic;
@:invalid var pointer : Dynamic;
@:invalid var slice : Dynamic;
@:invalid var string : Dynamic;
@:invalid var struct_ : Dynamic;
@:invalid var unsafePointer : Dynamic;
@:invalid var ptr : Dynamic;
@:invalid var recvDir : Dynamic;
@:invalid var sendDir : Dynamic;
@:invalid var bothDir : Dynamic;
@:invalid var selectSend : Dynamic;
@:invalid var selectRecv : Dynamic;
@:invalid var selectDefault : Dynamic;
typedef Type_ = stdgo._internal.reflect.Reflect.Type_;
@:invalid typedef Method = Dynamic;
@:invalid typedef StructField = Dynamic;
@:invalid typedef Value = Dynamic;
@:invalid typedef ValueError = Dynamic;
@:invalid typedef MapIter = Dynamic;
@:invalid typedef StringHeader = Dynamic;
@:invalid typedef SliceHeader = Dynamic;
@:invalid typedef SelectCase = Dynamic;
typedef Kind = stdgo._internal.reflect.Reflect.Kind;
typedef ChanDir = stdgo._internal.reflect.Reflect.ChanDir;
typedef StructTag = stdgo._internal.reflect.Reflect.StructTag;
typedef SelectDir = stdgo._internal.reflect.Reflect.SelectDir;
function deepEqual(_x:stdgo.AnyInterface, _y:stdgo.AnyInterface):Void {}
function makeFunc(_typ:Type_, _fn:(_args:stdgo.Slice<Value>) -> stdgo.Slice<Value>):Void {}
function swapper(_slice:stdgo.AnyInterface):Void {}
function typeOf(_i:stdgo.AnyInterface):Void {}
function ptrTo(_t:Type_):Void {}
function pointerTo(_t:Type_):Void {}
function chanOf(_dir:ChanDir, _t:Type_):Void {}
function mapOf(_key:Type_, _elem:Type_):Void {}
function funcOf(_in:stdgo.Slice<Type_>, _out:stdgo.Slice<Type_>, _variadic:Bool):Void {}
function sliceOf(_t:Type_):Void {}
function structOf(_fields:stdgo.Slice<StructField>):Void {}
function arrayOf(_length:stdgo.GoInt, _elem:Type_):Void {}
function append(_s:Value, _x:haxe.Rest<Value>):Void {}
function appendSlice(_s:Value, _t:Value):Void {}
function copy(_dst:Value, _src:Value):Void {}
function select(_cases:stdgo.Slice<SelectCase>):Void {}
function makeSlice(_typ:Type_, _len:stdgo.GoInt, _cap:stdgo.GoInt):Void {}
function makeChan(_typ:Type_, _buffer:stdgo.GoInt):Void {}
function makeMap(_typ:Type_):Void {}
function makeMapWithSize(_typ:Type_, _n:stdgo.GoInt):Void {}
function indirect(_v:Value):Void {}
function valueOf(_i:stdgo.AnyInterface):Void {}
function zero(_typ:Type_):Void {}
function new_(_typ:Type_):Void {}
function newAt(_typ:Type_, _p:stdgo._internal.unsafe.Unsafe.UnsafePointer):Void {}
function visibleFields(_t:Type_):Void {}
@:invalid typedef Method_asInterface = Dynamic;
@:invalid typedef Method_static_extension = Dynamic;
@:invalid typedef StructField_asInterface = Dynamic;
@:invalid typedef StructField_static_extension = Dynamic;
@:invalid typedef Value_asInterface = Dynamic;
@:invalid typedef Value_static_extension = Dynamic;
@:invalid typedef ValueError_asInterface = Dynamic;
@:invalid typedef ValueError_static_extension = Dynamic;
@:invalid typedef MapIter_asInterface = Dynamic;
@:invalid typedef MapIter_static_extension = Dynamic;
@:invalid typedef Kind_asInterface = Dynamic;
@:invalid typedef Kind_static_extension = Dynamic;
@:invalid typedef ChanDir_asInterface = Dynamic;
@:invalid typedef ChanDir_static_extension = Dynamic;
@:invalid typedef StructTag_asInterface = Dynamic;
@:invalid typedef StructTag_static_extension = Dynamic;
