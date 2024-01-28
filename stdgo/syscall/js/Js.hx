package stdgo.syscall.js;
@:invalid var __go2hxdoc__package : Dynamic;
@:invalid var _funcs : Dynamic;
@:invalid var _nextFuncID : Dynamic;
@:invalid var _valueUndefined : Dynamic;
@:invalid var _valueNaN : Dynamic;
@:invalid var _valueZero : Dynamic;
@:invalid var _valueNull : Dynamic;
@:invalid var _valueTrue : Dynamic;
@:invalid var _valueFalse : Dynamic;
@:invalid var _valueGlobal : Dynamic;
@:invalid var _jsGo : Dynamic;
@:invalid var _objectConstructor : Dynamic;
@:invalid var _arrayConstructor : Dynamic;
@:invalid var _funcsMu : Dynamic;
@:invalid var _nanHead : Dynamic;
@:invalid var _typeFlagNone : Dynamic;
@:invalid var _typeFlagObject : Dynamic;
@:invalid var _typeFlagString : Dynamic;
@:invalid var _typeFlagSymbol : Dynamic;
@:invalid var _typeFlagFunction : Dynamic;
@:invalid var typeUndefined : Dynamic;
@:invalid var typeNull : Dynamic;
@:invalid var typeBoolean : Dynamic;
@:invalid var typeNumber : Dynamic;
@:invalid var typeString : Dynamic;
@:invalid var typeSymbol : Dynamic;
@:invalid var typeObject : Dynamic;
@:invalid var typeFunction : Dynamic;
@:invalid typedef Func = Dynamic;
@:invalid typedef Value = Dynamic;
@:invalid typedef Error = Dynamic;
@:invalid typedef ValueError = Dynamic;
typedef T_ref = stdgo._internal.syscall.js.Js.T_ref;
typedef Type_ = stdgo._internal.syscall.js.Js.Type_;
function funcOf(_fn:(_this:Value, _args:stdgo.Slice<Value>) -> stdgo.AnyInterface):Void {}
function _setEventHandler(_fn:() -> Bool):Void {}
function _handleEvent():Void {}
function _makeValue(_r:T_ref):Void {}
function _finalizeRef(_r:T_ref):Void {}
function _predefValue(_id:stdgo.GoUInt32, _typeFlag:stdgo.GoByte):Void {}
function _floatValue(_f:stdgo.GoFloat64):Void {}
function undefined():Void {}
function null_():Void {}
function global():Void {}
function valueOf(_x:stdgo.AnyInterface):Void {}
function _stringVal(_x:stdgo.GoString):Void {}
function _valueGet(_v:T_ref, _p:stdgo.GoString):Void {}
function _valueSet(_v:T_ref, _p:stdgo.GoString, _x:T_ref):Void {}
function _valueDelete(_v:T_ref, _p:stdgo.GoString):Void {}
function _valueIndex(_v:T_ref, _i:stdgo.GoInt):Void {}
function _valueSetIndex(_v:T_ref, _i:stdgo.GoInt, _x:T_ref):Void {}
function _makeArgs(_args:stdgo.Slice<stdgo.AnyInterface>):Void {}
function _valueLength(_v:T_ref):Void {}
function _valueCall(_v:T_ref, _m:stdgo.GoString, _args:stdgo.Slice<T_ref>):Void {}
function _valueInvoke(_v:T_ref, _args:stdgo.Slice<T_ref>):Void {}
function _valueNew(_v:T_ref, _args:stdgo.Slice<T_ref>):Void {}
function _jsString(_v:Value):Void {}
function _valuePrepareString(_v:T_ref):Void {}
function _valueLoadString(_v:T_ref, _b:stdgo.Slice<stdgo.GoByte>):Void {}
function _valueInstanceOf(_v:T_ref, _t:T_ref):Void {}
function copyBytesToGo(_dst:stdgo.Slice<stdgo.GoByte>, _src:Value):Void {}
function _copyBytesToGo(_dst:stdgo.Slice<stdgo.GoByte>, _src:T_ref):Void {}
function copyBytesToJS(_dst:Value, _src:stdgo.Slice<stdgo.GoByte>):Void {}
function _copyBytesToJS(_dst:T_ref, _src:stdgo.Slice<stdgo.GoByte>):Void {}
@:invalid typedef Func_asInterface = Dynamic;
@:invalid typedef Func_static_extension = Dynamic;
@:invalid typedef Value_asInterface = Dynamic;
@:invalid typedef Value_static_extension = Dynamic;
@:invalid typedef Error_asInterface = Dynamic;
@:invalid typedef Error_static_extension = Dynamic;
@:invalid typedef ValueError_asInterface = Dynamic;
@:invalid typedef ValueError_static_extension = Dynamic;
@:invalid typedef Type__asInterface = Dynamic;
@:invalid typedef Type__static_extension = Dynamic;
