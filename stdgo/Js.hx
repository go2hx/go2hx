package stdgo;
final typeUndefined : Type_ = stdgo._internal.syscall.js.Js_typeundefined.typeUndefined;
final typeNull = stdgo._internal.syscall.js.Js_typenull.typeNull;
final typeBoolean = stdgo._internal.syscall.js.Js_typeboolean.typeBoolean;
final typeNumber = stdgo._internal.syscall.js.Js_typenumber.typeNumber;
final typeString = stdgo._internal.syscall.js.Js_typestring.typeString;
final typeSymbol = stdgo._internal.syscall.js.Js_typesymbol.typeSymbol;
final typeObject = stdgo._internal.syscall.js.Js_typeobject.typeObject;
final typeFunction = stdgo._internal.syscall.js.Js_typefunction.typeFunction;
var jSGo(get, set) : Value;
private function get_jSGo():Value return stdgo._internal.syscall.js.Js_jsgo.jSGo;
private function set_jSGo(v:Value):Value {
        stdgo._internal.syscall.js.Js_jsgo.jSGo = v;
        return v;
    }
@:structInit @:using(stdgo.syscall.js.Js.Func_static_extension) abstract Func(stdgo._internal.syscall.js.Js_func.Func) from stdgo._internal.syscall.js.Js_func.Func to stdgo._internal.syscall.js.Js_func.Func {
    public var value(get, set) : Value;
    function get_value():Value return this.value;
    function set_value(v:Value):Value {
        this.value = v;
        return v;
    }
    public var _id(get, set) : std.UInt;
    function get__id():std.UInt return this._id;
    function set__id(v:std.UInt):std.UInt {
        this._id = (v : stdgo.GoUInt32);
        return v;
    }
    public function new(?value:Value, ?_id:std.UInt) this = new stdgo._internal.syscall.js.Js_func.Func(value, (_id : stdgo.GoUInt32));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.syscall.js.Js.Value_static_extension) abstract Value(stdgo._internal.syscall.js.Js_value.Value) from stdgo._internal.syscall.js.Js_value.Value to stdgo._internal.syscall.js.Js_value.Value {
    public var __32(get, set) : haxe.ds.Vector<() -> Void>;
    function get___32():haxe.ds.Vector<() -> Void> return haxe.ds.Vector.fromArrayCopy([for (i in this.__32) () -> i()]);
    function set___32(v:haxe.ds.Vector<() -> Void>):haxe.ds.Vector<() -> Void> {
        this.__32 = ([for (i in v) i] : stdgo.GoArray<() -> Void>);
        return v;
    }
    public var _ref(get, set) : T_ref;
    function get__ref():T_ref return this._ref;
    function set__ref(v:T_ref):T_ref {
        this._ref = v;
        return v;
    }
    public var _gcPtr(get, set) : stdgo.Pointer<T_ref>;
    function get__gcPtr():stdgo.Pointer<T_ref> return this._gcPtr;
    function set__gcPtr(v:stdgo.Pointer<T_ref>):stdgo.Pointer<T_ref> {
        this._gcPtr = v;
        return v;
    }
    public function new(?__32:haxe.ds.Vector<() -> Void>, ?_ref:T_ref, ?_gcPtr:stdgo.Pointer<T_ref>, ?value) this = new stdgo._internal.syscall.js.Js_value.Value(([for (i in __32) i] : stdgo.GoArray<() -> Void>), _ref, _gcPtr, value);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.syscall.js.Js.Error_static_extension) abstract Error(stdgo._internal.syscall.js.Js_error.Error) from stdgo._internal.syscall.js.Js_error.Error to stdgo._internal.syscall.js.Js_error.Error {
    public var value(get, set) : Value;
    function get_value():Value return this.value;
    function set_value(v:Value):Value {
        this.value = v;
        return v;
    }
    public function new(?value:Value) this = new stdgo._internal.syscall.js.Js_error.Error(value);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.syscall.js.Js.ValueError_static_extension) abstract ValueError(stdgo._internal.syscall.js.Js_valueerror.ValueError) from stdgo._internal.syscall.js.Js_valueerror.ValueError to stdgo._internal.syscall.js.Js_valueerror.ValueError {
    public var method(get, set) : String;
    function get_method():String return this.method;
    function set_method(v:String):String {
        this.method = (v : stdgo.GoString);
        return v;
    }
    public var type(get, set) : Type_;
    function get_type():Type_ return this.type;
    function set_type(v:Type_):Type_ {
        this.type = v;
        return v;
    }
    public function new(?method:String, ?type:Type_) this = new stdgo._internal.syscall.js.Js_valueerror.ValueError((method : stdgo.GoString), type);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:dox(hide) typedef T_ref = stdgo._internal.syscall.js.Js_t_ref.T_ref;
typedef Type_ = stdgo._internal.syscall.js.Js_type_.Type_;
typedef FuncPointer = stdgo._internal.syscall.js.Js_funcpointer.FuncPointer;
class Func_static_extension {
    static public function release(_c:Func):Void {
        stdgo._internal.syscall.js.Js_func_static_extension.Func_static_extension.release(_c);
    }
    public static function _isNumber(__self__:stdgo._internal.syscall.js.Js_func.Func):Bool {
        return stdgo._internal.syscall.js.Js_func_static_extension.Func_static_extension._isNumber(__self__);
    }
    public static function _float(__self__:stdgo._internal.syscall.js.Js_func.Func, _0:String):StdTypes.Float {
        final _0 = (_0 : stdgo.GoString);
        return stdgo._internal.syscall.js.Js_func_static_extension.Func_static_extension._float(__self__, _0);
    }
    public static function type(__self__:stdgo._internal.syscall.js.Js_func.Func):Type_ {
        return stdgo._internal.syscall.js.Js_func_static_extension.Func_static_extension.type(__self__);
    }
    public static function truthy(__self__:stdgo._internal.syscall.js.Js_func.Func):Bool {
        return stdgo._internal.syscall.js.Js_func_static_extension.Func_static_extension.truthy(__self__);
    }
    public static function string(__self__:stdgo._internal.syscall.js.Js_func.Func):String {
        return stdgo._internal.syscall.js.Js_func_static_extension.Func_static_extension.string(__self__);
    }
    public static function setIndex(__self__:stdgo._internal.syscall.js.Js_func.Func, _0:StdTypes.Int, _1:stdgo.AnyInterface):Void {
        final _0 = (_0 : stdgo.GoInt);
        final _1 = (_1 : stdgo.AnyInterface);
        stdgo._internal.syscall.js.Js_func_static_extension.Func_static_extension.setIndex(__self__, _0, _1);
    }
    public static function set(__self__:stdgo._internal.syscall.js.Js_func.Func, _0:String, _1:stdgo.AnyInterface):Void {
        final _0 = (_0 : stdgo.GoString);
        final _1 = (_1 : stdgo.AnyInterface);
        stdgo._internal.syscall.js.Js_func_static_extension.Func_static_extension.set(__self__, _0, _1);
    }
    public static function new_(__self__:stdgo._internal.syscall.js.Js_func.Func, _0:haxe.Rest<stdgo.AnyInterface>):Value {
        return stdgo._internal.syscall.js.Js_func_static_extension.Func_static_extension.new_(__self__, ...[for (i in _0) i]);
    }
    public static function length_(__self__:stdgo._internal.syscall.js.Js_func.Func):StdTypes.Int {
        return stdgo._internal.syscall.js.Js_func_static_extension.Func_static_extension.length_(__self__);
    }
    public static function isUndefined(__self__:stdgo._internal.syscall.js.Js_func.Func):Bool {
        return stdgo._internal.syscall.js.Js_func_static_extension.Func_static_extension.isUndefined(__self__);
    }
    public static function isNull(__self__:stdgo._internal.syscall.js.Js_func.Func):Bool {
        return stdgo._internal.syscall.js.Js_func_static_extension.Func_static_extension.isNull(__self__);
    }
    public static function isNaN(__self__:stdgo._internal.syscall.js.Js_func.Func):Bool {
        return stdgo._internal.syscall.js.Js_func_static_extension.Func_static_extension.isNaN(__self__);
    }
    public static function invoke(__self__:stdgo._internal.syscall.js.Js_func.Func, _0:haxe.Rest<stdgo.AnyInterface>):Value {
        return stdgo._internal.syscall.js.Js_func_static_extension.Func_static_extension.invoke(__self__, ...[for (i in _0) i]);
    }
    public static function int_(__self__:stdgo._internal.syscall.js.Js_func.Func):StdTypes.Int {
        return stdgo._internal.syscall.js.Js_func_static_extension.Func_static_extension.int_(__self__);
    }
    public static function instanceOf(__self__:stdgo._internal.syscall.js.Js_func.Func, _0:Value):Bool {
        return stdgo._internal.syscall.js.Js_func_static_extension.Func_static_extension.instanceOf(__self__, _0);
    }
    public static function index(__self__:stdgo._internal.syscall.js.Js_func.Func, _0:StdTypes.Int):Value {
        final _0 = (_0 : stdgo.GoInt);
        return stdgo._internal.syscall.js.Js_func_static_extension.Func_static_extension.index(__self__, _0);
    }
    public static function get(__self__:stdgo._internal.syscall.js.Js_func.Func, _0:String):Value {
        final _0 = (_0 : stdgo.GoString);
        return stdgo._internal.syscall.js.Js_func_static_extension.Func_static_extension.get(__self__, _0);
    }
    public static function float_(__self__:stdgo._internal.syscall.js.Js_func.Func):StdTypes.Float {
        return stdgo._internal.syscall.js.Js_func_static_extension.Func_static_extension.float_(__self__);
    }
    public static function equal(__self__:stdgo._internal.syscall.js.Js_func.Func, _0:Value):Bool {
        return stdgo._internal.syscall.js.Js_func_static_extension.Func_static_extension.equal(__self__, _0);
    }
    public static function delete(__self__:stdgo._internal.syscall.js.Js_func.Func, _0:String):Void {
        final _0 = (_0 : stdgo.GoString);
        stdgo._internal.syscall.js.Js_func_static_extension.Func_static_extension.delete(__self__, _0);
    }
    public static function call(__self__:stdgo._internal.syscall.js.Js_func.Func, _0:String, _1:haxe.Rest<stdgo.AnyInterface>):Value {
        final _0 = (_0 : stdgo.GoString);
        return stdgo._internal.syscall.js.Js_func_static_extension.Func_static_extension.call(__self__, _0, ...[for (i in _1) i]);
    }
    public static function bool_(__self__:stdgo._internal.syscall.js.Js_func.Func):Bool {
        return stdgo._internal.syscall.js.Js_func_static_extension.Func_static_extension.bool_(__self__);
    }
}
typedef ValuePointer = stdgo._internal.syscall.js.Js_valuepointer.ValuePointer;
class Value_static_extension {
    static public function instanceOf(_v:Value, _t:Value):Bool {
        return stdgo._internal.syscall.js.Js_value_static_extension.Value_static_extension.instanceOf(_v, _t);
    }
    static public function string(_v:Value):String {
        return stdgo._internal.syscall.js.Js_value_static_extension.Value_static_extension.string(_v);
    }
    static public function truthy(_v:Value):Bool {
        return stdgo._internal.syscall.js.Js_value_static_extension.Value_static_extension.truthy(_v);
    }
    static public function bool_(_v:Value):Bool {
        return stdgo._internal.syscall.js.Js_value_static_extension.Value_static_extension.bool_(_v);
    }
    static public function int_(_v:Value):StdTypes.Int {
        return stdgo._internal.syscall.js.Js_value_static_extension.Value_static_extension.int_(_v);
    }
    static public function float_(_v:Value):StdTypes.Float {
        return stdgo._internal.syscall.js.Js_value_static_extension.Value_static_extension.float_(_v);
    }
    static public function _float(_v:Value, _method:String):StdTypes.Float {
        final _method = (_method : stdgo.GoString);
        return stdgo._internal.syscall.js.Js_value_static_extension.Value_static_extension._float(_v, _method);
    }
    static public function _isNumber(_v:Value):Bool {
        return stdgo._internal.syscall.js.Js_value_static_extension.Value_static_extension._isNumber(_v);
    }
    static public function new_(_v:Value, _args:haxe.Rest<stdgo.AnyInterface>):Value {
        return stdgo._internal.syscall.js.Js_value_static_extension.Value_static_extension.new_(_v, ...[for (i in _args) i]);
    }
    static public function invoke(_v:Value, _args:haxe.Rest<stdgo.AnyInterface>):Value {
        return stdgo._internal.syscall.js.Js_value_static_extension.Value_static_extension.invoke(_v, ...[for (i in _args) i]);
    }
    static public function call(_v:Value, _m:String, _args:haxe.Rest<stdgo.AnyInterface>):Value {
        final _m = (_m : stdgo.GoString);
        return stdgo._internal.syscall.js.Js_value_static_extension.Value_static_extension.call(_v, _m, ...[for (i in _args) i]);
    }
    static public function length_(_v:Value):StdTypes.Int {
        return stdgo._internal.syscall.js.Js_value_static_extension.Value_static_extension.length_(_v);
    }
    static public function setIndex(_v:Value, _i:StdTypes.Int, _x:stdgo.AnyInterface):Void {
        final _i = (_i : stdgo.GoInt);
        final _x = (_x : stdgo.AnyInterface);
        stdgo._internal.syscall.js.Js_value_static_extension.Value_static_extension.setIndex(_v, _i, _x);
    }
    static public function index(_v:Value, _i:StdTypes.Int):Value {
        final _i = (_i : stdgo.GoInt);
        return stdgo._internal.syscall.js.Js_value_static_extension.Value_static_extension.index(_v, _i);
    }
    static public function delete(_v:Value, _p:String):Void {
        final _p = (_p : stdgo.GoString);
        stdgo._internal.syscall.js.Js_value_static_extension.Value_static_extension.delete(_v, _p);
    }
    static public function set(_v:Value, _p:String, _x:stdgo.AnyInterface):Void {
        final _p = (_p : stdgo.GoString);
        final _x = (_x : stdgo.AnyInterface);
        stdgo._internal.syscall.js.Js_value_static_extension.Value_static_extension.set(_v, _p, _x);
    }
    static public function get(_v:Value, _p:String):Value {
        final _p = (_p : stdgo.GoString);
        return stdgo._internal.syscall.js.Js_value_static_extension.Value_static_extension.get(_v, _p);
    }
    static public function type(_v:Value):Type_ {
        return stdgo._internal.syscall.js.Js_value_static_extension.Value_static_extension.type(_v);
    }
    static public function isNaN(_v:Value):Bool {
        return stdgo._internal.syscall.js.Js_value_static_extension.Value_static_extension.isNaN(_v);
    }
    static public function isNull(_v:Value):Bool {
        return stdgo._internal.syscall.js.Js_value_static_extension.Value_static_extension.isNull(_v);
    }
    static public function isUndefined(_v:Value):Bool {
        return stdgo._internal.syscall.js.Js_value_static_extension.Value_static_extension.isUndefined(_v);
    }
    static public function equal(_v:Value, _w:Value):Bool {
        return stdgo._internal.syscall.js.Js_value_static_extension.Value_static_extension.equal(_v, _w);
    }
}
typedef ErrorPointer = stdgo._internal.syscall.js.Js_errorpointer.ErrorPointer;
class Error_static_extension {
    static public function error(_e:Error):String {
        return stdgo._internal.syscall.js.Js_error_static_extension.Error_static_extension.error(_e);
    }
    public static function _isNumber(__self__:stdgo._internal.syscall.js.Js_error.Error):Bool {
        return stdgo._internal.syscall.js.Js_error_static_extension.Error_static_extension._isNumber(__self__);
    }
    public static function _float(__self__:stdgo._internal.syscall.js.Js_error.Error, _0:String):StdTypes.Float {
        final _0 = (_0 : stdgo.GoString);
        return stdgo._internal.syscall.js.Js_error_static_extension.Error_static_extension._float(__self__, _0);
    }
    public static function type(__self__:stdgo._internal.syscall.js.Js_error.Error):Type_ {
        return stdgo._internal.syscall.js.Js_error_static_extension.Error_static_extension.type(__self__);
    }
    public static function truthy(__self__:stdgo._internal.syscall.js.Js_error.Error):Bool {
        return stdgo._internal.syscall.js.Js_error_static_extension.Error_static_extension.truthy(__self__);
    }
    public static function string(__self__:stdgo._internal.syscall.js.Js_error.Error):String {
        return stdgo._internal.syscall.js.Js_error_static_extension.Error_static_extension.string(__self__);
    }
    public static function setIndex(__self__:stdgo._internal.syscall.js.Js_error.Error, _0:StdTypes.Int, _1:stdgo.AnyInterface):Void {
        final _0 = (_0 : stdgo.GoInt);
        final _1 = (_1 : stdgo.AnyInterface);
        stdgo._internal.syscall.js.Js_error_static_extension.Error_static_extension.setIndex(__self__, _0, _1);
    }
    public static function set(__self__:stdgo._internal.syscall.js.Js_error.Error, _0:String, _1:stdgo.AnyInterface):Void {
        final _0 = (_0 : stdgo.GoString);
        final _1 = (_1 : stdgo.AnyInterface);
        stdgo._internal.syscall.js.Js_error_static_extension.Error_static_extension.set(__self__, _0, _1);
    }
    public static function new_(__self__:stdgo._internal.syscall.js.Js_error.Error, _0:haxe.Rest<stdgo.AnyInterface>):Value {
        return stdgo._internal.syscall.js.Js_error_static_extension.Error_static_extension.new_(__self__, ...[for (i in _0) i]);
    }
    public static function length_(__self__:stdgo._internal.syscall.js.Js_error.Error):StdTypes.Int {
        return stdgo._internal.syscall.js.Js_error_static_extension.Error_static_extension.length_(__self__);
    }
    public static function isUndefined(__self__:stdgo._internal.syscall.js.Js_error.Error):Bool {
        return stdgo._internal.syscall.js.Js_error_static_extension.Error_static_extension.isUndefined(__self__);
    }
    public static function isNull(__self__:stdgo._internal.syscall.js.Js_error.Error):Bool {
        return stdgo._internal.syscall.js.Js_error_static_extension.Error_static_extension.isNull(__self__);
    }
    public static function isNaN(__self__:stdgo._internal.syscall.js.Js_error.Error):Bool {
        return stdgo._internal.syscall.js.Js_error_static_extension.Error_static_extension.isNaN(__self__);
    }
    public static function invoke(__self__:stdgo._internal.syscall.js.Js_error.Error, _0:haxe.Rest<stdgo.AnyInterface>):Value {
        return stdgo._internal.syscall.js.Js_error_static_extension.Error_static_extension.invoke(__self__, ...[for (i in _0) i]);
    }
    public static function int_(__self__:stdgo._internal.syscall.js.Js_error.Error):StdTypes.Int {
        return stdgo._internal.syscall.js.Js_error_static_extension.Error_static_extension.int_(__self__);
    }
    public static function instanceOf(__self__:stdgo._internal.syscall.js.Js_error.Error, _0:Value):Bool {
        return stdgo._internal.syscall.js.Js_error_static_extension.Error_static_extension.instanceOf(__self__, _0);
    }
    public static function index(__self__:stdgo._internal.syscall.js.Js_error.Error, _0:StdTypes.Int):Value {
        final _0 = (_0 : stdgo.GoInt);
        return stdgo._internal.syscall.js.Js_error_static_extension.Error_static_extension.index(__self__, _0);
    }
    public static function get(__self__:stdgo._internal.syscall.js.Js_error.Error, _0:String):Value {
        final _0 = (_0 : stdgo.GoString);
        return stdgo._internal.syscall.js.Js_error_static_extension.Error_static_extension.get(__self__, _0);
    }
    public static function float_(__self__:stdgo._internal.syscall.js.Js_error.Error):StdTypes.Float {
        return stdgo._internal.syscall.js.Js_error_static_extension.Error_static_extension.float_(__self__);
    }
    public static function equal(__self__:stdgo._internal.syscall.js.Js_error.Error, _0:Value):Bool {
        return stdgo._internal.syscall.js.Js_error_static_extension.Error_static_extension.equal(__self__, _0);
    }
    public static function delete(__self__:stdgo._internal.syscall.js.Js_error.Error, _0:String):Void {
        final _0 = (_0 : stdgo.GoString);
        stdgo._internal.syscall.js.Js_error_static_extension.Error_static_extension.delete(__self__, _0);
    }
    public static function call(__self__:stdgo._internal.syscall.js.Js_error.Error, _0:String, _1:haxe.Rest<stdgo.AnyInterface>):Value {
        final _0 = (_0 : stdgo.GoString);
        return stdgo._internal.syscall.js.Js_error_static_extension.Error_static_extension.call(__self__, _0, ...[for (i in _1) i]);
    }
    public static function bool_(__self__:stdgo._internal.syscall.js.Js_error.Error):Bool {
        return stdgo._internal.syscall.js.Js_error_static_extension.Error_static_extension.bool_(__self__);
    }
}
typedef ValueErrorPointer = stdgo._internal.syscall.js.Js_valueerrorpointer.ValueErrorPointer;
class ValueError_static_extension {
    static public function error(_e:ValueError):String {
        final _e = (_e : stdgo.Ref<stdgo._internal.syscall.js.Js_valueerror.ValueError>);
        return stdgo._internal.syscall.js.Js_valueerror_static_extension.ValueError_static_extension.error(_e);
    }
}
@:dox(hide) typedef T_refPointer = stdgo._internal.syscall.js.Js_t_refpointer.T_refPointer;
@:dox(hide) class T_ref_static_extension {

}
typedef Type_Pointer = stdgo._internal.syscall.js.Js_type_pointer.Type_Pointer;
class Type__static_extension {
    static public function _isObject(_t:Type_):Bool {
        return stdgo._internal.syscall.js.Js_type__static_extension.Type__static_extension._isObject(_t);
    }
    static public function string(_t:Type_):String {
        return stdgo._internal.syscall.js.Js_type__static_extension.Type__static_extension.string(_t);
    }
}
/**
    * Package js gives access to the WebAssembly host environment when using the js/wasm architecture.
    * Its API is based on JavaScript semantics.
    * 
    * This package is EXPERIMENTAL. Its current scope is only to allow tests to run, but not yet to provide a
    * comprehensive API for users. It is exempt from the Go compatibility promise.
**/
class Js {
    /**
        * FuncOf returns a function to be used by JavaScript.
        * 
        * The Go function fn is called with the value of JavaScript's "this" keyword and the
        * arguments of the invocation. The return value of the invocation is
        * the result of the Go function mapped back to JavaScript according to ValueOf.
        * 
        * Invoking the wrapped Go function from JavaScript will
        * pause the event loop and spawn a new goroutine.
        * Other wrapped functions which are triggered during a call from Go to JavaScript
        * get executed on the same goroutine.
        * 
        * As a consequence, if one wrapped function blocks, JavaScript's event loop
        * is blocked until that function returns. Hence, calling any async JavaScript
        * API, which requires the event loop, like fetch (http.Client), will cause an
        * immediate deadlock. Therefore a blocking function should explicitly start a
        * new goroutine.
        * 
        * Func.Release must be called to free up resources when the function will not be invoked any more.
    **/
    static public inline function funcOf(_fn:(Value, Array<Value>) -> stdgo.AnyInterface):Func {
        final _fn = _fn;
        return stdgo._internal.syscall.js.Js_funcof.funcOf(_fn);
    }
    /**
        * Undefined returns the JavaScript value "undefined".
    **/
    static public inline function undefined():Value {
        return stdgo._internal.syscall.js.Js_undefined.undefined();
    }
    /**
        * Null returns the JavaScript value "null".
    **/
    static public inline function null_():Value {
        return stdgo._internal.syscall.js.Js_null_.null_();
    }
    /**
        * Global returns the JavaScript global object, usually "window" or "global".
    **/
    static public inline function global():Value {
        return stdgo._internal.syscall.js.Js_global.global();
    }
    /**
        * ValueOf returns x as a JavaScript value:
        * 
        * 	| Go                     | JavaScript             |
        * 	| ---------------------- | ---------------------- |
        * 	| js.Value               | [its value]            |
        * 	| js.Func                | function               |
        * 	| nil                    | null                   |
        * 	| bool                   | boolean                |
        * 	| integers and floats    | number                 |
        * 	| string                 | string                 |
        * 	| []interface{}          | new array              |
        * 	| map[string]interface{} | new object             |
        * 
        * Panics if x is not one of the expected types.
    **/
    static public inline function valueOf(_x:stdgo.AnyInterface):Value {
        final _x = (_x : stdgo.AnyInterface);
        return stdgo._internal.syscall.js.Js_valueof.valueOf(_x);
    }
    /**
        * CopyBytesToGo copies bytes from src to dst.
        * It panics if src is not a Uint8Array or Uint8ClampedArray.
        * It returns the number of bytes copied, which will be the minimum of the lengths of src and dst.
    **/
    static public inline function copyBytesToGo(_dst:Array<std.UInt>, _src:Value):StdTypes.Int {
        final _dst = ([for (i in _dst) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.syscall.js.Js_copybytestogo.copyBytesToGo(_dst, _src);
    }
    /**
        * CopyBytesToJS copies bytes from src to dst.
        * It panics if dst is not a Uint8Array or Uint8ClampedArray.
        * It returns the number of bytes copied, which will be the minimum of the lengths of src and dst.
    **/
    static public inline function copyBytesToJS(_dst:Value, _src:Array<std.UInt>):StdTypes.Int {
        final _src = ([for (i in _src) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.syscall.js.Js_copybytestojs.copyBytesToJS(_dst, _src);
    }
}
