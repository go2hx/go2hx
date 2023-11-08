package stdgo.syscall.js;
/**
    // Package js gives access to the WebAssembly host environment when using the js/wasm architecture.
    // Its API is based on JavaScript semantics.
    //
    // This package is EXPERIMENTAL. Its current scope is only to allow tests to run, but not yet to provide a
    // comprehensive API for users. It is exempt from the Go compatibility promise.
**/
private var __go2hxdoc__package : Bool;
/**
    
    
    
**/
var _funcs : stdgo.GoMap<stdgo.StdGoTypes.GoUInt32, (stdgo.syscall.js.Js.Value, stdgo.Slice<stdgo.syscall.js.Js.Value>) -> stdgo.StdGoTypes.AnyInterface> = (null : stdgo.GoMap<stdgo.StdGoTypes.GoUInt32, (stdgo.syscall.js.Js.Value, stdgo.Slice<stdgo.syscall.js.Js.Value>) -> stdgo.StdGoTypes.AnyInterface>);
/**
    
    
    
**/
var _nextFuncID : stdgo.StdGoTypes.GoUInt32 = (0 : stdgo.StdGoTypes.GoUInt32);
/**
    
    
    
**/
var _valueUndefined : stdgo.syscall.js.Js.Value = ({} : stdgo.syscall.js.Js.Value);
/**
    
    
    
**/
var _valueNaN : stdgo.syscall.js.Js.Value = ({} : stdgo.syscall.js.Js.Value);
/**
    
    
    
**/
var _valueZero : stdgo.syscall.js.Js.Value = ({} : stdgo.syscall.js.Js.Value);
/**
    
    
    
**/
var _valueNull : stdgo.syscall.js.Js.Value = ({} : stdgo.syscall.js.Js.Value);
/**
    
    
    
**/
var _valueTrue : stdgo.syscall.js.Js.Value = ({} : stdgo.syscall.js.Js.Value);
/**
    
    
    
**/
var _valueFalse : stdgo.syscall.js.Js.Value = ({} : stdgo.syscall.js.Js.Value);
/**
    
    
    
**/
var _valueGlobal : stdgo.syscall.js.Js.Value = ({} : stdgo.syscall.js.Js.Value);
/**
    
    
    // instance of the Go class in JavaScript
**/
var _jsGo : stdgo.syscall.js.Js.Value = ({} : stdgo.syscall.js.Js.Value);
/**
    
    
    
**/
var _objectConstructor : stdgo.syscall.js.Js.Value = ({} : stdgo.syscall.js.Js.Value);
/**
    
    
    
**/
var _arrayConstructor : stdgo.syscall.js.Js.Value = ({} : stdgo.syscall.js.Js.Value);
/**
    
    
    
**/
var _funcsMu = ({} : stdgo.sync.Sync.Mutex);
/**
    // nanHead are the upper 32 bits of a ref which are set if the value is not encoded as an IEEE 754 number (see above).
    
    
**/
final _nanHead : stdgo.StdGoTypes.GoUInt64 = (0 : stdgo.StdGoTypes.GoUInt64);
/**
    // the type flags need to be in sync with wasm_exec.js
    
    
**/
final _typeFlagNone : stdgo.StdGoTypes.GoUInt64 = (0 : stdgo.StdGoTypes.GoUInt64);
/**
    
    
    
**/
final _typeFlagObject = @:invalid_type null;
/**
    
    
    
**/
final _typeFlagString = @:invalid_type null;
/**
    
    
    
**/
final _typeFlagSymbol = @:invalid_type null;
/**
    
    
    
**/
final _typeFlagFunction = @:invalid_type null;
/**
    
    
    
**/
final typeUndefined : stdgo.syscall.js.Js.Type = ((0 : stdgo.StdGoTypes.GoInt) : stdgo.syscall.js.Js.Type);
/**
    
    
    
**/
final typeNull = ((0 : stdgo.StdGoTypes.GoInt) : stdgo.syscall.js.Js.Type);
/**
    
    
    
**/
final typeBoolean = ((0 : stdgo.StdGoTypes.GoInt) : stdgo.syscall.js.Js.Type);
/**
    
    
    
**/
final typeNumber = ((0 : stdgo.StdGoTypes.GoInt) : stdgo.syscall.js.Js.Type);
/**
    
    
    
**/
final typeString = ((0 : stdgo.StdGoTypes.GoInt) : stdgo.syscall.js.Js.Type);
/**
    
    
    
**/
final typeSymbol = ((0 : stdgo.StdGoTypes.GoInt) : stdgo.syscall.js.Js.Type);
/**
    
    
    
**/
final typeObject = ((0 : stdgo.StdGoTypes.GoInt) : stdgo.syscall.js.Js.Type);
/**
    
    
    
**/
final typeFunction = ((0 : stdgo.StdGoTypes.GoInt) : stdgo.syscall.js.Js.Type);
/**
    // Func is a wrapped Go function to be called by JavaScript.
    
    
**/
@:structInit @:using(stdgo.syscall.js.Js.Func_static_extension) class Func {
    @:embedded
    public var value : stdgo.syscall.js.Js.Value = ({} : stdgo.syscall.js.Js.Value);
    public var _id : stdgo.StdGoTypes.GoUInt32 = 0;
    public function new(?value:stdgo.syscall.js.Js.Value, ?_id:stdgo.StdGoTypes.GoUInt32) {
        if (value != null) this.value = value;
        if (_id != null) this._id = _id;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    @:embedded
    public function bool_():Bool return false;
    @:embedded
    public function call(_m:stdgo.GoString, _args:haxe.Rest<stdgo.StdGoTypes.AnyInterface>):stdgo.syscall.js.Js.Value return ({} : stdgo.syscall.js.Js.Value);
    @:embedded
    public function delete(_p:stdgo.GoString) @:typeType null;
    @:embedded
    public function equal(__0:stdgo.syscall.js.Js.Value):Bool return false;
    @:embedded
    public function float_():stdgo.StdGoTypes.GoFloat64 return (0 : stdgo.StdGoTypes.GoFloat64);
    @:embedded
    public function get(_p:stdgo.GoString):stdgo.syscall.js.Js.Value return ({} : stdgo.syscall.js.Js.Value);
    @:embedded
    public function index(_i:stdgo.StdGoTypes.GoInt):stdgo.syscall.js.Js.Value return ({} : stdgo.syscall.js.Js.Value);
    @:embedded
    public function instanceOf(__0:stdgo.syscall.js.Js.Value):Bool return false;
    @:embedded
    public function int_():stdgo.StdGoTypes.GoInt return (0 : stdgo.StdGoTypes.GoInt);
    @:embedded
    public function invoke(_args:haxe.Rest<stdgo.StdGoTypes.AnyInterface>):stdgo.syscall.js.Js.Value return ({} : stdgo.syscall.js.Js.Value);
    @:embedded
    public function isNaN():Bool return false;
    @:embedded
    public function isNull():Bool return false;
    @:embedded
    public function isUndefined():Bool return false;
    @:embedded
    public function length_():stdgo.StdGoTypes.GoInt return (0 : stdgo.StdGoTypes.GoInt);
    @:embedded
    public function new_(_args:haxe.Rest<stdgo.StdGoTypes.AnyInterface>):stdgo.syscall.js.Js.Value return ({} : stdgo.syscall.js.Js.Value);
    @:embedded
    public function set(_p:stdgo.GoString, _x:stdgo.StdGoTypes.AnyInterface) @:typeType null;
    @:embedded
    public function setIndex(_i:stdgo.StdGoTypes.GoInt, _x:stdgo.StdGoTypes.AnyInterface) @:typeType null;
    @:embedded
    public function string():stdgo.GoString return ("" : stdgo.GoString);
    @:embedded
    public function truthy():Bool return false;
    @:embedded
    public function type():stdgo.syscall.js.Js.Type return ((0 : stdgo.StdGoTypes.GoInt) : stdgo.syscall.js.Js.Type);
    @:embedded
    public function _float(_p:stdgo.GoString):stdgo.StdGoTypes.GoFloat64 return (0 : stdgo.StdGoTypes.GoFloat64);
    @:embedded
    public function _isNumber():Bool return false;
    public function __copy__() {
        return new Func(value, _id);
    }
}
/**
    // Value represents a JavaScript value. The zero value is the JavaScript value "undefined".
    // Values can be checked for equality with the Equal method.
    
    
**/
@:structInit @:using(stdgo.syscall.js.Js.Value_static_extension) class Value {
    @:optional
    public var __10 : stdgo.GoArray<() -> Void> = new stdgo.GoArray<() -> Void>(...[for (i in 0 ... 0) null]);
    public var _ref : stdgo.syscall.js.Js.T_ref = ((0 : stdgo.StdGoTypes.GoUInt64) : stdgo.syscall.js.Js.T_ref);
    public var _gcPtr : stdgo.Pointer<stdgo.syscall.js.Js.T_ref> = (null : stdgo.Pointer<stdgo.syscall.js.Js.T_ref>);
    public function new(?__10:stdgo.GoArray<() -> Void>, ?_ref:stdgo.syscall.js.Js.T_ref, ?_gcPtr:stdgo.Pointer<stdgo.syscall.js.Js.T_ref>) {
        if (__10 != null) this.__10 = __10;
        if (_ref != null) this._ref = _ref;
        if (_gcPtr != null) this._gcPtr = _gcPtr;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Value(__10, _ref, _gcPtr);
    }
}
/**
    // Error wraps a JavaScript error.
    
    
**/
@:structInit @:using(stdgo.syscall.js.Js.T_error_static_extension) class T_error {
    /**
        // Value is the underlying JavaScript error value.
    **/
    @:embedded
    public var value : stdgo.syscall.js.Js.Value = ({} : stdgo.syscall.js.Js.Value);
    public function new(?value:stdgo.syscall.js.Js.Value) {
        if (value != null) this.value = value;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    @:embedded
    public function bool_():Bool return false;
    @:embedded
    public function call(_m:stdgo.GoString, _args:haxe.Rest<stdgo.StdGoTypes.AnyInterface>):stdgo.syscall.js.Js.Value return ({} : stdgo.syscall.js.Js.Value);
    @:embedded
    public function delete(_p:stdgo.GoString) @:typeType null;
    @:embedded
    public function equal(__0:stdgo.syscall.js.Js.Value):Bool return false;
    @:embedded
    public function float_():stdgo.StdGoTypes.GoFloat64 return (0 : stdgo.StdGoTypes.GoFloat64);
    @:embedded
    public function get(_p:stdgo.GoString):stdgo.syscall.js.Js.Value return ({} : stdgo.syscall.js.Js.Value);
    @:embedded
    public function index(_i:stdgo.StdGoTypes.GoInt):stdgo.syscall.js.Js.Value return ({} : stdgo.syscall.js.Js.Value);
    @:embedded
    public function instanceOf(__0:stdgo.syscall.js.Js.Value):Bool return false;
    @:embedded
    public function int_():stdgo.StdGoTypes.GoInt return (0 : stdgo.StdGoTypes.GoInt);
    @:embedded
    public function invoke(_args:haxe.Rest<stdgo.StdGoTypes.AnyInterface>):stdgo.syscall.js.Js.Value return ({} : stdgo.syscall.js.Js.Value);
    @:embedded
    public function isNaN():Bool return false;
    @:embedded
    public function isNull():Bool return false;
    @:embedded
    public function isUndefined():Bool return false;
    @:embedded
    public function length_():stdgo.StdGoTypes.GoInt return (0 : stdgo.StdGoTypes.GoInt);
    @:embedded
    public function new_(_args:haxe.Rest<stdgo.StdGoTypes.AnyInterface>):stdgo.syscall.js.Js.Value return ({} : stdgo.syscall.js.Js.Value);
    @:embedded
    public function set(_p:stdgo.GoString, _x:stdgo.StdGoTypes.AnyInterface) @:typeType null;
    @:embedded
    public function setIndex(_i:stdgo.StdGoTypes.GoInt, _x:stdgo.StdGoTypes.AnyInterface) @:typeType null;
    @:embedded
    public function string():stdgo.GoString return ("" : stdgo.GoString);
    @:embedded
    public function truthy():Bool return false;
    @:embedded
    public function type():stdgo.syscall.js.Js.Type return ((0 : stdgo.StdGoTypes.GoInt) : stdgo.syscall.js.Js.Type);
    @:embedded
    public function _float(_p:stdgo.GoString):stdgo.StdGoTypes.GoFloat64 return (0 : stdgo.StdGoTypes.GoFloat64);
    @:embedded
    public function _isNumber():Bool return false;
    public function __copy__() {
        return new T_error(value);
    }
}
/**
    // A ValueError occurs when a Value method is invoked on
    // a Value that does not support it. Such cases are documented
    // in the description of each method.
    
    
**/
@:structInit @:using(stdgo.syscall.js.Js.ValueError_static_extension) class ValueError {
    public var method : stdgo.GoString = "";
    public var type : stdgo.syscall.js.Js.Type = ((0 : stdgo.StdGoTypes.GoInt) : stdgo.syscall.js.Js.Type);
    public function new(?method:stdgo.GoString, ?type:stdgo.syscall.js.Js.Type) {
        if (method != null) this.method = method;
        if (type != null) this.type = type;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new ValueError(method, type);
    }
}
/**
    // ref is used to identify a JavaScript value, since the value itself can not be passed to WebAssembly.
    //
    // The JavaScript value "undefined" is represented by the value 0.
    // A JavaScript number (64-bit float, except 0 and NaN) is represented by its IEEE 754 binary representation.
    // All other values are represented as an IEEE 754 binary representation of NaN with bits 0-31 used as
    // an ID and bits 32-34 used to differentiate between string, symbol, function and object.
**/
@:named typedef T_ref = stdgo.StdGoTypes.GoUInt64;
/**
    // Type represents the JavaScript type of a Value.
**/
@:named @:using(stdgo.syscall.js.Js.Type_static_extension) typedef Type = stdgo.StdGoTypes.GoInt;
/**
    // FuncOf returns a function to be used by JavaScript.
    //
    // The Go function fn is called with the value of JavaScript's "this" keyword and the
    // arguments of the invocation. The return value of the invocation is
    // the result of the Go function mapped back to JavaScript according to ValueOf.
    //
    // Invoking the wrapped Go function from JavaScript will
    // pause the event loop and spawn a new goroutine.
    // Other wrapped functions which are triggered during a call from Go to JavaScript
    // get executed on the same goroutine.
    //
    // As a consequence, if one wrapped function blocks, JavaScript's event loop
    // is blocked until that function returns. Hence, calling any async JavaScript
    // API, which requires the event loop, like fetch (http.Client), will cause an
    // immediate deadlock. Therefore a blocking function should explicitly start a
    // new goroutine.
    //
    // Func.Release must be called to free up resources when the function will not be invoked any more.
**/
function funcOf(_fn:(_this:Value, _args:stdgo.Slice<Value>) -> stdgo.StdGoTypes.AnyInterface):Func throw ":syscall.js.funcOf is not yet implemented";
/**
    // setEventHandler is defined in the runtime package.
**/
function _setEventHandler(_fn:() -> Bool):Void throw ":syscall.js._setEventHandler is not yet implemented";
/**
    // handleEvent retrieves the pending event (window._pendingEvent) and calls the js.Func on it.
    // It returns true if an event was handled.
**/
function _handleEvent():Bool throw ":syscall.js._handleEvent is not yet implemented";
function _makeValue(_r:T_ref):Value throw ":syscall.js._makeValue is not yet implemented";
/**
    //go:wasmimport gojs syscall/js.finalizeRef
**/
function _finalizeRef(_r:T_ref):Void throw ":syscall.js._finalizeRef is not yet implemented";
function _predefValue(_id:stdgo.StdGoTypes.GoUInt32, _typeFlag:stdgo.StdGoTypes.GoByte):Value throw ":syscall.js._predefValue is not yet implemented";
function _floatValue(_f:stdgo.StdGoTypes.GoFloat64):Value throw ":syscall.js._floatValue is not yet implemented";
/**
    // Undefined returns the JavaScript value "undefined".
**/
function undefined():Value throw ":syscall.js.undefined is not yet implemented";
/**
    // Null returns the JavaScript value "null".
**/
function null_():Value throw ":syscall.js.null_ is not yet implemented";
/**
    // Global returns the JavaScript global object, usually "window" or "global".
**/
function global():Value throw ":syscall.js.global is not yet implemented";
/**
    // ValueOf returns x as a JavaScript value:
    //
    //	| Go                     | JavaScript             |
    //	| ---------------------- | ---------------------- |
    //	| js.Value               | [its value]            |
    //	| js.Func                | function               |
    //	| nil                    | null                   |
    //	| bool                   | boolean                |
    //	| integers and floats    | number                 |
    //	| string                 | string                 |
    //	| []interface{}          | new array              |
    //	| map[string]interface{} | new object             |
    //
    // Panics if x is not one of the expected types.
**/
function valueOf(_x:stdgo.StdGoTypes.AnyInterface):Value throw ":syscall.js.valueOf is not yet implemented";
/**
    //go:wasmimport gojs syscall/js.stringVal
**/
function _stringVal(_x:stdgo.GoString):T_ref throw ":syscall.js._stringVal is not yet implemented";
/**
    //go:wasmimport gojs syscall/js.valueGet
**/
function _valueGet(_v:T_ref, _p:stdgo.GoString):T_ref throw ":syscall.js._valueGet is not yet implemented";
/**
    //go:wasmimport gojs syscall/js.valueSet
**/
function _valueSet(_v:T_ref, _p:stdgo.GoString, _x:T_ref):Void throw ":syscall.js._valueSet is not yet implemented";
/**
    //go:wasmimport gojs syscall/js.valueDelete
**/
function _valueDelete(_v:T_ref, _p:stdgo.GoString):Void throw ":syscall.js._valueDelete is not yet implemented";
/**
    //go:wasmimport gojs syscall/js.valueIndex
**/
function _valueIndex(_v:T_ref, _i:stdgo.StdGoTypes.GoInt):T_ref throw ":syscall.js._valueIndex is not yet implemented";
/**
    //go:wasmimport gojs syscall/js.valueSetIndex
**/
function _valueSetIndex(_v:T_ref, _i:stdgo.StdGoTypes.GoInt, _x:T_ref):Void throw ":syscall.js._valueSetIndex is not yet implemented";
function _makeArgs(_args:stdgo.Slice<stdgo.StdGoTypes.AnyInterface>):{ var _0 : stdgo.Slice<Value>; var _1 : stdgo.Slice<T_ref>; } throw ":syscall.js._makeArgs is not yet implemented";
/**
    //go:wasmimport gojs syscall/js.valueLength
**/
function _valueLength(_v:T_ref):stdgo.StdGoTypes.GoInt throw ":syscall.js._valueLength is not yet implemented";
/**
    //go:wasmimport gojs syscall/js.valueCall
    //go:nosplit
**/
function _valueCall(_v:T_ref, _m:stdgo.GoString, _args:stdgo.Slice<T_ref>):{ var _0 : T_ref; var _1 : Bool; } throw ":syscall.js._valueCall is not yet implemented";
/**
    //go:wasmimport gojs syscall/js.valueInvoke
**/
function _valueInvoke(_v:T_ref, _args:stdgo.Slice<T_ref>):{ var _0 : T_ref; var _1 : Bool; } throw ":syscall.js._valueInvoke is not yet implemented";
/**
    //go:wasmimport gojs syscall/js.valueNew
**/
function _valueNew(_v:T_ref, _args:stdgo.Slice<T_ref>):{ var _0 : T_ref; var _1 : Bool; } throw ":syscall.js._valueNew is not yet implemented";
function _jsString(_v:Value):stdgo.GoString throw ":syscall.js._jsString is not yet implemented";
/**
    //go:wasmimport gojs syscall/js.valuePrepareString
**/
function _valuePrepareString(_v:T_ref):{ var _0 : T_ref; var _1 : stdgo.StdGoTypes.GoInt; } throw ":syscall.js._valuePrepareString is not yet implemented";
/**
    //go:wasmimport gojs syscall/js.valueLoadString
**/
function _valueLoadString(_v:T_ref, _b:stdgo.Slice<stdgo.StdGoTypes.GoByte>):Void throw ":syscall.js._valueLoadString is not yet implemented";
/**
    //go:wasmimport gojs syscall/js.valueInstanceOf
**/
function _valueInstanceOf(_v:T_ref, _t:T_ref):Bool throw ":syscall.js._valueInstanceOf is not yet implemented";
/**
    // CopyBytesToGo copies bytes from src to dst.
    // It panics if src is not a Uint8Array or Uint8ClampedArray.
    // It returns the number of bytes copied, which will be the minimum of the lengths of src and dst.
**/
function copyBytesToGo(_dst:stdgo.Slice<stdgo.StdGoTypes.GoByte>, _src:Value):stdgo.StdGoTypes.GoInt throw ":syscall.js.copyBytesToGo is not yet implemented";
/**
    //go:wasmimport gojs syscall/js.copyBytesToGo
**/
function _copyBytesToGo(_dst:stdgo.Slice<stdgo.StdGoTypes.GoByte>, _src:T_ref):{ var _0 : stdgo.StdGoTypes.GoInt; var _1 : Bool; } throw ":syscall.js._copyBytesToGo is not yet implemented";
/**
    // CopyBytesToJS copies bytes from src to dst.
    // It panics if dst is not a Uint8Array or Uint8ClampedArray.
    // It returns the number of bytes copied, which will be the minimum of the lengths of src and dst.
**/
function copyBytesToJS(_dst:Value, _src:stdgo.Slice<stdgo.StdGoTypes.GoByte>):stdgo.StdGoTypes.GoInt throw ":syscall.js.copyBytesToJS is not yet implemented";
/**
    //go:wasmimport gojs syscall/js.copyBytesToJS
**/
function _copyBytesToJS(_dst:T_ref, _src:stdgo.Slice<stdgo.StdGoTypes.GoByte>):{ var _0 : stdgo.StdGoTypes.GoInt; var _1 : Bool; } throw ":syscall.js._copyBytesToJS is not yet implemented";
class Func_asInterface {
    /**
        // Release frees up resources allocated for the function.
        // The function must not be invoked after calling Release.
        // It is allowed to call Release while the function is still running.
    **/
    @:keep
    public dynamic function release():Void __self__.value.release();
    @:embedded
    public dynamic function _isNumber():Bool return __self__.value._isNumber();
    @:embedded
    public dynamic function _float(_p:stdgo.GoString):stdgo.StdGoTypes.GoFloat64 return __self__.value._float(_p);
    @:embedded
    public dynamic function type():stdgo.syscall.js.Js.Type return __self__.value.type();
    @:embedded
    public dynamic function truthy():Bool return __self__.value.truthy();
    @:embedded
    public dynamic function string():stdgo.GoString return __self__.value.string();
    @:embedded
    public dynamic function setIndex(_i:stdgo.StdGoTypes.GoInt, _x:stdgo.StdGoTypes.AnyInterface):Void __self__.value.setIndex(_i, _x);
    @:embedded
    public dynamic function set(_p:stdgo.GoString, _x:stdgo.StdGoTypes.AnyInterface):Void __self__.value.set(_p, _x);
    @:embedded
    public dynamic function new_(_args:haxe.Rest<stdgo.StdGoTypes.AnyInterface>):stdgo.syscall.js.Js.Value return __self__.value.new_(..._args);
    @:embedded
    public dynamic function length_():stdgo.StdGoTypes.GoInt return __self__.value.length_();
    @:embedded
    public dynamic function isUndefined():Bool return __self__.value.isUndefined();
    @:embedded
    public dynamic function isNull():Bool return __self__.value.isNull();
    @:embedded
    public dynamic function isNaN():Bool return __self__.value.isNaN();
    @:embedded
    public dynamic function invoke(_args:haxe.Rest<stdgo.StdGoTypes.AnyInterface>):stdgo.syscall.js.Js.Value return __self__.value.invoke(..._args);
    @:embedded
    public dynamic function int_():stdgo.StdGoTypes.GoInt return __self__.value.int_();
    @:embedded
    public dynamic function instanceOf(__0:stdgo.syscall.js.Js.Value):Bool return __self__.value.instanceOf(__0);
    @:embedded
    public dynamic function index(_i:stdgo.StdGoTypes.GoInt):stdgo.syscall.js.Js.Value return __self__.value.index(_i);
    @:embedded
    public dynamic function get(_p:stdgo.GoString):stdgo.syscall.js.Js.Value return __self__.value.get(_p);
    @:embedded
    public dynamic function float_():stdgo.StdGoTypes.GoFloat64 return __self__.value.float_();
    @:embedded
    public dynamic function equal(__0:stdgo.syscall.js.Js.Value):Bool return __self__.value.equal(__0);
    @:embedded
    public dynamic function delete(_p:stdgo.GoString):Void __self__.value.delete(_p);
    @:embedded
    public dynamic function call(_m:stdgo.GoString, _args:haxe.Rest<stdgo.StdGoTypes.AnyInterface>):stdgo.syscall.js.Js.Value return __self__.value.call(_m, ..._args);
    @:embedded
    public dynamic function bool_():Bool return __self__.value.bool_();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<Func>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.syscall.js.Js.Func_asInterface) class Func_static_extension {
    /**
        // Release frees up resources allocated for the function.
        // The function must not be invoked after calling Release.
        // It is allowed to call Release while the function is still running.
    **/
    @:keep
    static public function release( _c:Func):Void throw "Func:syscall.js.release is not yet implemented";
    @:embedded
    public static function _isNumber( __self__:Func):Bool return __self__._isNumber();
    @:embedded
    public static function _float( __self__:Func, _p:stdgo.GoString):stdgo.StdGoTypes.GoFloat64 return __self__._float(_p);
    @:embedded
    public static function type( __self__:Func):stdgo.syscall.js.Js.Type return __self__.type();
    @:embedded
    public static function truthy( __self__:Func):Bool return __self__.truthy();
    @:embedded
    public static function string( __self__:Func):stdgo.GoString return __self__.string();
    @:embedded
    public static function setIndex( __self__:Func, _i:stdgo.StdGoTypes.GoInt, _x:stdgo.StdGoTypes.AnyInterface) __self__.setIndex(_i, _x);
    @:embedded
    public static function set( __self__:Func, _p:stdgo.GoString, _x:stdgo.StdGoTypes.AnyInterface) __self__.set(_p, _x);
    @:embedded
    public static function new_( __self__:Func, _args:haxe.Rest<stdgo.StdGoTypes.AnyInterface>):stdgo.syscall.js.Js.Value return __self__.new_(..._args);
    @:embedded
    public static function length_( __self__:Func):stdgo.StdGoTypes.GoInt return __self__.length_();
    @:embedded
    public static function isUndefined( __self__:Func):Bool return __self__.isUndefined();
    @:embedded
    public static function isNull( __self__:Func):Bool return __self__.isNull();
    @:embedded
    public static function isNaN( __self__:Func):Bool return __self__.isNaN();
    @:embedded
    public static function invoke( __self__:Func, _args:haxe.Rest<stdgo.StdGoTypes.AnyInterface>):stdgo.syscall.js.Js.Value return __self__.invoke(..._args);
    @:embedded
    public static function int_( __self__:Func):stdgo.StdGoTypes.GoInt return __self__.int_();
    @:embedded
    public static function instanceOf( __self__:Func, __0:stdgo.syscall.js.Js.Value):Bool return __self__.instanceOf(__0);
    @:embedded
    public static function index( __self__:Func, _i:stdgo.StdGoTypes.GoInt):stdgo.syscall.js.Js.Value return __self__.index(_i);
    @:embedded
    public static function get( __self__:Func, _p:stdgo.GoString):stdgo.syscall.js.Js.Value return __self__.get(_p);
    @:embedded
    public static function float_( __self__:Func):stdgo.StdGoTypes.GoFloat64 return __self__.float_();
    @:embedded
    public static function equal( __self__:Func, __0:stdgo.syscall.js.Js.Value):Bool return __self__.equal(__0);
    @:embedded
    public static function delete( __self__:Func, _p:stdgo.GoString) __self__.delete(_p);
    @:embedded
    public static function call( __self__:Func, _m:stdgo.GoString, _args:haxe.Rest<stdgo.StdGoTypes.AnyInterface>):stdgo.syscall.js.Js.Value return __self__.call(_m, ..._args);
    @:embedded
    public static function bool_( __self__:Func):Bool return __self__.bool_();
}
class Value_asInterface {
    /**
        // InstanceOf reports whether v is an instance of type t according to JavaScript's instanceof operator.
    **/
    @:keep
    public dynamic function instanceOf(_t:Value):Bool return __self__.value.instanceOf(_t);
    /**
        // String returns the value v as a string.
        // String is a special case because of Go's String method convention. Unlike the other getters,
        // it does not panic if v's Type is not TypeString. Instead, it returns a string of the form "<T>"
        // or "<T: V>" where T is v's type and V is a string representation of v's value.
    **/
    @:keep
    public dynamic function string():stdgo.GoString return __self__.value.string();
    /**
        // Truthy returns the JavaScript "truthiness" of the value v. In JavaScript,
        // false, 0, "", null, undefined, and NaN are "falsy", and everything else is
        // "truthy". See https://developer.mozilla.org/en-US/docs/Glossary/Truthy.
    **/
    @:keep
    public dynamic function truthy():Bool return __self__.value.truthy();
    /**
        // Bool returns the value v as a bool.
        // It panics if v is not a JavaScript boolean.
    **/
    @:keep
    public dynamic function bool_():Bool return __self__.value.bool_();
    /**
        // Int returns the value v truncated to an int.
        // It panics if v is not a JavaScript number.
    **/
    @:keep
    public dynamic function int_():stdgo.StdGoTypes.GoInt return __self__.value.int_();
    /**
        // Float returns the value v as a float64.
        // It panics if v is not a JavaScript number.
    **/
    @:keep
    public dynamic function float_():stdgo.StdGoTypes.GoFloat64 return __self__.value.float_();
    @:keep
    public dynamic function _float(_method:stdgo.GoString):stdgo.StdGoTypes.GoFloat64 return __self__.value._float(_method);
    @:keep
    public dynamic function _isNumber():Bool return __self__.value._isNumber();
    /**
        // New uses JavaScript's "new" operator with value v as constructor and the given arguments.
        // It panics if v is not a JavaScript function.
        // The arguments get mapped to JavaScript values according to the ValueOf function.
    **/
    @:keep
    public dynamic function new_(_args:haxe.Rest<stdgo.StdGoTypes.AnyInterface>):Value return __self__.value.new_(..._args);
    /**
        // Invoke does a JavaScript call of the value v with the given arguments.
        // It panics if v is not a JavaScript function.
        // The arguments get mapped to JavaScript values according to the ValueOf function.
    **/
    @:keep
    public dynamic function invoke(_args:haxe.Rest<stdgo.StdGoTypes.AnyInterface>):Value return __self__.value.invoke(..._args);
    /**
        // Call does a JavaScript call to the method m of value v with the given arguments.
        // It panics if v has no method m.
        // The arguments get mapped to JavaScript values according to the ValueOf function.
    **/
    @:keep
    public dynamic function call(_m:stdgo.GoString, _args:haxe.Rest<stdgo.StdGoTypes.AnyInterface>):Value return __self__.value.call(_m, ..._args);
    /**
        // Length returns the JavaScript property "length" of v.
        // It panics if v is not a JavaScript object.
    **/
    @:keep
    public dynamic function length_():stdgo.StdGoTypes.GoInt return __self__.value.length_();
    /**
        // SetIndex sets the JavaScript index i of value v to ValueOf(x).
        // It panics if v is not a JavaScript object.
    **/
    @:keep
    public dynamic function setIndex(_i:stdgo.StdGoTypes.GoInt, _x:stdgo.StdGoTypes.AnyInterface):Void __self__.value.setIndex(_i, _x);
    /**
        // Index returns JavaScript index i of value v.
        // It panics if v is not a JavaScript object.
    **/
    @:keep
    public dynamic function index(_i:stdgo.StdGoTypes.GoInt):Value return __self__.value.index(_i);
    /**
        // Delete deletes the JavaScript property p of value v.
        // It panics if v is not a JavaScript object.
    **/
    @:keep
    public dynamic function delete(_p:stdgo.GoString):Void __self__.value.delete(_p);
    /**
        // Set sets the JavaScript property p of value v to ValueOf(x).
        // It panics if v is not a JavaScript object.
    **/
    @:keep
    public dynamic function set(_p:stdgo.GoString, _x:stdgo.StdGoTypes.AnyInterface):Void __self__.value.set(_p, _x);
    /**
        // Get returns the JavaScript property p of value v.
        // It panics if v is not a JavaScript object.
    **/
    @:keep
    public dynamic function get(_p:stdgo.GoString):Value return __self__.value.get(_p);
    /**
        // Type returns the JavaScript type of the value v. It is similar to JavaScript's typeof operator,
        // except that it returns TypeNull instead of TypeObject for null.
    **/
    @:keep
    public dynamic function type():Type return __self__.value.type();
    /**
        // IsNaN reports whether v is the JavaScript value "NaN".
    **/
    @:keep
    public dynamic function isNaN():Bool return __self__.value.isNaN();
    /**
        // IsNull reports whether v is the JavaScript value "null".
    **/
    @:keep
    public dynamic function isNull():Bool return __self__.value.isNull();
    /**
        // IsUndefined reports whether v is the JavaScript value "undefined".
    **/
    @:keep
    public dynamic function isUndefined():Bool return __self__.value.isUndefined();
    /**
        // Equal reports whether v and w are equal according to JavaScript's === operator.
    **/
    @:keep
    public dynamic function equal(_w:Value):Bool return __self__.value.equal(_w);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<Value>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.syscall.js.Js.Value_asInterface) class Value_static_extension {
    /**
        // InstanceOf reports whether v is an instance of type t according to JavaScript's instanceof operator.
    **/
    @:keep
    static public function instanceOf( _v:Value, _t:Value):Bool throw "Value:syscall.js.instanceOf is not yet implemented";
    /**
        // String returns the value v as a string.
        // String is a special case because of Go's String method convention. Unlike the other getters,
        // it does not panic if v's Type is not TypeString. Instead, it returns a string of the form "<T>"
        // or "<T: V>" where T is v's type and V is a string representation of v's value.
    **/
    @:keep
    static public function string( _v:Value):stdgo.GoString throw "Value:syscall.js.string is not yet implemented";
    /**
        // Truthy returns the JavaScript "truthiness" of the value v. In JavaScript,
        // false, 0, "", null, undefined, and NaN are "falsy", and everything else is
        // "truthy". See https://developer.mozilla.org/en-US/docs/Glossary/Truthy.
    **/
    @:keep
    static public function truthy( _v:Value):Bool throw "Value:syscall.js.truthy is not yet implemented";
    /**
        // Bool returns the value v as a bool.
        // It panics if v is not a JavaScript boolean.
    **/
    @:keep
    static public function bool_( _v:Value):Bool throw "Value:syscall.js.bool_ is not yet implemented";
    /**
        // Int returns the value v truncated to an int.
        // It panics if v is not a JavaScript number.
    **/
    @:keep
    static public function int_( _v:Value):stdgo.StdGoTypes.GoInt throw "Value:syscall.js.int_ is not yet implemented";
    /**
        // Float returns the value v as a float64.
        // It panics if v is not a JavaScript number.
    **/
    @:keep
    static public function float_( _v:Value):stdgo.StdGoTypes.GoFloat64 throw "Value:syscall.js.float_ is not yet implemented";
    @:keep
    static public function _float( _v:Value, _method:stdgo.GoString):stdgo.StdGoTypes.GoFloat64 throw "Value:syscall.js._float is not yet implemented";
    @:keep
    static public function _isNumber( _v:Value):Bool throw "Value:syscall.js._isNumber is not yet implemented";
    /**
        // New uses JavaScript's "new" operator with value v as constructor and the given arguments.
        // It panics if v is not a JavaScript function.
        // The arguments get mapped to JavaScript values according to the ValueOf function.
    **/
    @:keep
    static public function new_( _v:Value, _args:haxe.Rest<stdgo.StdGoTypes.AnyInterface>):Value throw "Value:syscall.js.new_ is not yet implemented";
    /**
        // Invoke does a JavaScript call of the value v with the given arguments.
        // It panics if v is not a JavaScript function.
        // The arguments get mapped to JavaScript values according to the ValueOf function.
    **/
    @:keep
    static public function invoke( _v:Value, _args:haxe.Rest<stdgo.StdGoTypes.AnyInterface>):Value throw "Value:syscall.js.invoke is not yet implemented";
    /**
        // Call does a JavaScript call to the method m of value v with the given arguments.
        // It panics if v has no method m.
        // The arguments get mapped to JavaScript values according to the ValueOf function.
    **/
    @:keep
    static public function call( _v:Value, _m:stdgo.GoString, _args:haxe.Rest<stdgo.StdGoTypes.AnyInterface>):Value throw "Value:syscall.js.call is not yet implemented";
    /**
        // Length returns the JavaScript property "length" of v.
        // It panics if v is not a JavaScript object.
    **/
    @:keep
    static public function length_( _v:Value):stdgo.StdGoTypes.GoInt throw "Value:syscall.js.length_ is not yet implemented";
    /**
        // SetIndex sets the JavaScript index i of value v to ValueOf(x).
        // It panics if v is not a JavaScript object.
    **/
    @:keep
    static public function setIndex( _v:Value, _i:stdgo.StdGoTypes.GoInt, _x:stdgo.StdGoTypes.AnyInterface):Void throw "Value:syscall.js.setIndex is not yet implemented";
    /**
        // Index returns JavaScript index i of value v.
        // It panics if v is not a JavaScript object.
    **/
    @:keep
    static public function index( _v:Value, _i:stdgo.StdGoTypes.GoInt):Value throw "Value:syscall.js.index is not yet implemented";
    /**
        // Delete deletes the JavaScript property p of value v.
        // It panics if v is not a JavaScript object.
    **/
    @:keep
    static public function delete( _v:Value, _p:stdgo.GoString):Void throw "Value:syscall.js.delete is not yet implemented";
    /**
        // Set sets the JavaScript property p of value v to ValueOf(x).
        // It panics if v is not a JavaScript object.
    **/
    @:keep
    static public function set( _v:Value, _p:stdgo.GoString, _x:stdgo.StdGoTypes.AnyInterface):Void throw "Value:syscall.js.set is not yet implemented";
    /**
        // Get returns the JavaScript property p of value v.
        // It panics if v is not a JavaScript object.
    **/
    @:keep
    static public function get( _v:Value, _p:stdgo.GoString):Value throw "Value:syscall.js.get is not yet implemented";
    /**
        // Type returns the JavaScript type of the value v. It is similar to JavaScript's typeof operator,
        // except that it returns TypeNull instead of TypeObject for null.
    **/
    @:keep
    static public function type( _v:Value):Type throw "Value:syscall.js.type is not yet implemented";
    /**
        // IsNaN reports whether v is the JavaScript value "NaN".
    **/
    @:keep
    static public function isNaN( _v:Value):Bool throw "Value:syscall.js.isNaN is not yet implemented";
    /**
        // IsNull reports whether v is the JavaScript value "null".
    **/
    @:keep
    static public function isNull( _v:Value):Bool throw "Value:syscall.js.isNull is not yet implemented";
    /**
        // IsUndefined reports whether v is the JavaScript value "undefined".
    **/
    @:keep
    static public function isUndefined( _v:Value):Bool throw "Value:syscall.js.isUndefined is not yet implemented";
    /**
        // Equal reports whether v and w are equal according to JavaScript's === operator.
    **/
    @:keep
    static public function equal( _v:Value, _w:Value):Bool throw "Value:syscall.js.equal is not yet implemented";
}
class T_error_asInterface {
    /**
        // Error implements the error interface.
    **/
    @:keep
    public dynamic function error():stdgo.GoString return __self__.value.error();
    @:embedded
    public dynamic function _isNumber():Bool return __self__.value._isNumber();
    @:embedded
    public dynamic function _float(_p:stdgo.GoString):stdgo.StdGoTypes.GoFloat64 return __self__.value._float(_p);
    @:embedded
    public dynamic function type():stdgo.syscall.js.Js.Type return __self__.value.type();
    @:embedded
    public dynamic function truthy():Bool return __self__.value.truthy();
    @:embedded
    public dynamic function string():stdgo.GoString return __self__.value.string();
    @:embedded
    public dynamic function setIndex(_i:stdgo.StdGoTypes.GoInt, _x:stdgo.StdGoTypes.AnyInterface):Void __self__.value.setIndex(_i, _x);
    @:embedded
    public dynamic function set(_p:stdgo.GoString, _x:stdgo.StdGoTypes.AnyInterface):Void __self__.value.set(_p, _x);
    @:embedded
    public dynamic function new_(_args:haxe.Rest<stdgo.StdGoTypes.AnyInterface>):stdgo.syscall.js.Js.Value return __self__.value.new_(..._args);
    @:embedded
    public dynamic function length_():stdgo.StdGoTypes.GoInt return __self__.value.length_();
    @:embedded
    public dynamic function isUndefined():Bool return __self__.value.isUndefined();
    @:embedded
    public dynamic function isNull():Bool return __self__.value.isNull();
    @:embedded
    public dynamic function isNaN():Bool return __self__.value.isNaN();
    @:embedded
    public dynamic function invoke(_args:haxe.Rest<stdgo.StdGoTypes.AnyInterface>):stdgo.syscall.js.Js.Value return __self__.value.invoke(..._args);
    @:embedded
    public dynamic function int_():stdgo.StdGoTypes.GoInt return __self__.value.int_();
    @:embedded
    public dynamic function instanceOf(__0:stdgo.syscall.js.Js.Value):Bool return __self__.value.instanceOf(__0);
    @:embedded
    public dynamic function index(_i:stdgo.StdGoTypes.GoInt):stdgo.syscall.js.Js.Value return __self__.value.index(_i);
    @:embedded
    public dynamic function get(_p:stdgo.GoString):stdgo.syscall.js.Js.Value return __self__.value.get(_p);
    @:embedded
    public dynamic function float_():stdgo.StdGoTypes.GoFloat64 return __self__.value.float_();
    @:embedded
    public dynamic function equal(__0:stdgo.syscall.js.Js.Value):Bool return __self__.value.equal(__0);
    @:embedded
    public dynamic function delete(_p:stdgo.GoString):Void __self__.value.delete(_p);
    @:embedded
    public dynamic function call(_m:stdgo.GoString, _args:haxe.Rest<stdgo.StdGoTypes.AnyInterface>):stdgo.syscall.js.Js.Value return __self__.value.call(_m, ..._args);
    @:embedded
    public dynamic function bool_():Bool return __self__.value.bool_();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_error>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.syscall.js.Js.T_error_asInterface) class T_error_static_extension {
    /**
        // Error implements the error interface.
    **/
    @:keep
    static public function error( _e:T_error):stdgo.GoString throw "T_error:syscall.js.error is not yet implemented";
    @:embedded
    public static function _isNumber( __self__:T_error):Bool return __self__._isNumber();
    @:embedded
    public static function _float( __self__:T_error, _p:stdgo.GoString):stdgo.StdGoTypes.GoFloat64 return __self__._float(_p);
    @:embedded
    public static function type( __self__:T_error):stdgo.syscall.js.Js.Type return __self__.type();
    @:embedded
    public static function truthy( __self__:T_error):Bool return __self__.truthy();
    @:embedded
    public static function string( __self__:T_error):stdgo.GoString return __self__.string();
    @:embedded
    public static function setIndex( __self__:T_error, _i:stdgo.StdGoTypes.GoInt, _x:stdgo.StdGoTypes.AnyInterface) __self__.setIndex(_i, _x);
    @:embedded
    public static function set( __self__:T_error, _p:stdgo.GoString, _x:stdgo.StdGoTypes.AnyInterface) __self__.set(_p, _x);
    @:embedded
    public static function new_( __self__:T_error, _args:haxe.Rest<stdgo.StdGoTypes.AnyInterface>):stdgo.syscall.js.Js.Value return __self__.new_(..._args);
    @:embedded
    public static function length_( __self__:T_error):stdgo.StdGoTypes.GoInt return __self__.length_();
    @:embedded
    public static function isUndefined( __self__:T_error):Bool return __self__.isUndefined();
    @:embedded
    public static function isNull( __self__:T_error):Bool return __self__.isNull();
    @:embedded
    public static function isNaN( __self__:T_error):Bool return __self__.isNaN();
    @:embedded
    public static function invoke( __self__:T_error, _args:haxe.Rest<stdgo.StdGoTypes.AnyInterface>):stdgo.syscall.js.Js.Value return __self__.invoke(..._args);
    @:embedded
    public static function int_( __self__:T_error):stdgo.StdGoTypes.GoInt return __self__.int_();
    @:embedded
    public static function instanceOf( __self__:T_error, __0:stdgo.syscall.js.Js.Value):Bool return __self__.instanceOf(__0);
    @:embedded
    public static function index( __self__:T_error, _i:stdgo.StdGoTypes.GoInt):stdgo.syscall.js.Js.Value return __self__.index(_i);
    @:embedded
    public static function get( __self__:T_error, _p:stdgo.GoString):stdgo.syscall.js.Js.Value return __self__.get(_p);
    @:embedded
    public static function float_( __self__:T_error):stdgo.StdGoTypes.GoFloat64 return __self__.float_();
    @:embedded
    public static function equal( __self__:T_error, __0:stdgo.syscall.js.Js.Value):Bool return __self__.equal(__0);
    @:embedded
    public static function delete( __self__:T_error, _p:stdgo.GoString) __self__.delete(_p);
    @:embedded
    public static function call( __self__:T_error, _m:stdgo.GoString, _args:haxe.Rest<stdgo.StdGoTypes.AnyInterface>):stdgo.syscall.js.Js.Value return __self__.call(_m, ..._args);
    @:embedded
    public static function bool_( __self__:T_error):Bool return __self__.bool_();
}
class ValueError_asInterface {
    @:keep
    public dynamic function error():stdgo.GoString return __self__.value.error();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<ValueError>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.syscall.js.Js.ValueError_asInterface) class ValueError_static_extension {
    @:keep
    static public function error( _e:stdgo.StdGoTypes.Ref<ValueError>):stdgo.GoString throw "ValueError:syscall.js.error is not yet implemented";
}
class Type_asInterface {
    @:keep
    public dynamic function _isObject():Bool return __self__.value._isObject();
    @:keep
    public dynamic function string():stdgo.GoString return __self__.value.string();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<Type>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.syscall.js.Js.Type_asInterface) class Type_static_extension {
    @:keep
    static public function _isObject( _t:Type):Bool throw "Type:syscall.js._isObject is not yet implemented";
    @:keep
    static public function string( _t:Type):stdgo.GoString throw "Type:syscall.js.string is not yet implemented";
}
