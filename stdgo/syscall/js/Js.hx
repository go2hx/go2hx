package stdgo.syscall.js;
final typeUndefined : stdgo._internal.syscall.js.Js.Type_ = stdgo._internal.syscall.js.Js.typeUndefined;
final typeNull = stdgo._internal.syscall.js.Js.typeNull;
final typeBoolean = stdgo._internal.syscall.js.Js.typeBoolean;
final typeNumber = stdgo._internal.syscall.js.Js.typeNumber;
final typeString = stdgo._internal.syscall.js.Js.typeString;
final typeSymbol = stdgo._internal.syscall.js.Js.typeSymbol;
final typeObject = stdgo._internal.syscall.js.Js.typeObject;
final typeFunction = stdgo._internal.syscall.js.Js.typeFunction;
@:structInit @:using(stdgo.syscall.js.Js.Func_static_extension) abstract Func(stdgo._internal.syscall.js.Js.Func) from stdgo._internal.syscall.js.Js.Func to stdgo._internal.syscall.js.Js.Func {
    public var value(get, set) : stdgo._internal.syscall.js.Js.Value;
    function get_value():stdgo._internal.syscall.js.Js.Value return this.value;
    function set_value(v:stdgo._internal.syscall.js.Js.Value):stdgo._internal.syscall.js.Js.Value {
        this.value = v;
        return v;
    }
    public var _id(get, set) : std.UInt;
    function get__id():std.UInt return this._id;
    function set__id(v:std.UInt):std.UInt {
        this._id = v;
        return v;
    }
    public function new(?value:stdgo._internal.syscall.js.Js.Value, ?_id:std.UInt) this = new stdgo._internal.syscall.js.Js.Func(value, _id);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.syscall.js.Js.Value_static_extension) abstract Value(stdgo._internal.syscall.js.Js.Value) from stdgo._internal.syscall.js.Js.Value to stdgo._internal.syscall.js.Js.Value {
    public var __32(get, set) : haxe.ds.Vector<() -> Void>;
    function get___32():haxe.ds.Vector<() -> Void> return haxe.ds.Vector.fromArrayCopy([for (i in this.__32) () -> i()]);
    function set___32(v:haxe.ds.Vector<() -> Void>):haxe.ds.Vector<() -> Void> {
        this.__32 = ([for (i in v) i] : stdgo.GoArray<() -> Void>);
        return v;
    }
    public var _ref(get, set) : stdgo._internal.syscall.js.Js.T_ref;
    function get__ref():stdgo._internal.syscall.js.Js.T_ref return this._ref;
    function set__ref(v:stdgo._internal.syscall.js.Js.T_ref):stdgo._internal.syscall.js.Js.T_ref {
        this._ref = v;
        return v;
    }
    public var _gcPtr(get, set) : stdgo.Pointer<stdgo._internal.syscall.js.Js.T_ref>;
    function get__gcPtr():stdgo.Pointer<stdgo._internal.syscall.js.Js.T_ref> return this._gcPtr;
    function set__gcPtr(v:stdgo.Pointer<stdgo._internal.syscall.js.Js.T_ref>):stdgo.Pointer<stdgo._internal.syscall.js.Js.T_ref> {
        this._gcPtr = v;
        return v;
    }
    public function new(?__32:haxe.ds.Vector<() -> Void>, ?_ref:stdgo._internal.syscall.js.Js.T_ref, ?_gcPtr:stdgo.Pointer<stdgo._internal.syscall.js.Js.T_ref>) this = new stdgo._internal.syscall.js.Js.Value(([for (i in __32) i] : stdgo.GoArray<() -> Void>), _ref, _gcPtr);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.syscall.js.Js.Error_static_extension) abstract Error(stdgo._internal.syscall.js.Js.Error) from stdgo._internal.syscall.js.Js.Error to stdgo._internal.syscall.js.Js.Error {
    public var value(get, set) : stdgo._internal.syscall.js.Js.Value;
    function get_value():stdgo._internal.syscall.js.Js.Value return this.value;
    function set_value(v:stdgo._internal.syscall.js.Js.Value):stdgo._internal.syscall.js.Js.Value {
        this.value = v;
        return v;
    }
    public function new(?value:stdgo._internal.syscall.js.Js.Value) this = new stdgo._internal.syscall.js.Js.Error(value);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.syscall.js.Js.ValueError_static_extension) abstract ValueError(stdgo._internal.syscall.js.Js.ValueError) from stdgo._internal.syscall.js.Js.ValueError to stdgo._internal.syscall.js.Js.ValueError {
    public var method(get, set) : String;
    function get_method():String return this.method;
    function set_method(v:String):String {
        this.method = v;
        return v;
    }
    public var type(get, set) : stdgo._internal.syscall.js.Js.Type_;
    function get_type():stdgo._internal.syscall.js.Js.Type_ return this.type;
    function set_type(v:stdgo._internal.syscall.js.Js.Type_):stdgo._internal.syscall.js.Js.Type_ {
        this.type = v;
        return v;
    }
    public function new(?method:String, ?type:stdgo._internal.syscall.js.Js.Type_) this = new stdgo._internal.syscall.js.Js.ValueError(method, type);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
typedef T_ref = stdgo._internal.syscall.js.Js.T_ref;
typedef Type_ = stdgo._internal.syscall.js.Js.Type_;
class Func_static_extension {
    static public function release(_c:Func):Void {
        stdgo._internal.syscall.js.Js.Func_static_extension.release(_c);
    }
    public static function _isNumber(__self__:Func):Bool {
        return stdgo._internal.syscall.js.Js.Func_static_extension._isNumber(__self__);
    }
    public static function _float(__self__:Func, _p:String):StdTypes.Float {
        return stdgo._internal.syscall.js.Js.Func_static_extension._float(__self__, _p);
    }
    public static function type(__self__:Func):stdgo._internal.syscall.js.Js.Type_ {
        return stdgo._internal.syscall.js.Js.Func_static_extension.type(__self__);
    }
    public static function truthy(__self__:Func):Bool {
        return stdgo._internal.syscall.js.Js.Func_static_extension.truthy(__self__);
    }
    public static function string(__self__:Func):String {
        return stdgo._internal.syscall.js.Js.Func_static_extension.string(__self__);
    }
    public static function setIndex(__self__:Func, _i:StdTypes.Int, _x:stdgo.AnyInterface) {
        stdgo._internal.syscall.js.Js.Func_static_extension.setIndex(__self__, _i, _x);
    }
    public static function set(__self__:Func, _p:String, _x:stdgo.AnyInterface) {
        stdgo._internal.syscall.js.Js.Func_static_extension.set(__self__, _p, _x);
    }
    public static function new_(__self__:Func, _args:haxe.Rest<stdgo.AnyInterface>):stdgo._internal.syscall.js.Js.Value {
        return stdgo._internal.syscall.js.Js.Func_static_extension.new_(__self__, ...[for (i in _args) i]);
    }
    public static function length_(__self__:Func):StdTypes.Int {
        return stdgo._internal.syscall.js.Js.Func_static_extension.length_(__self__);
    }
    public static function isUndefined(__self__:Func):Bool {
        return stdgo._internal.syscall.js.Js.Func_static_extension.isUndefined(__self__);
    }
    public static function isNull(__self__:Func):Bool {
        return stdgo._internal.syscall.js.Js.Func_static_extension.isNull(__self__);
    }
    public static function isNaN(__self__:Func):Bool {
        return stdgo._internal.syscall.js.Js.Func_static_extension.isNaN(__self__);
    }
    public static function invoke(__self__:Func, _args:haxe.Rest<stdgo.AnyInterface>):stdgo._internal.syscall.js.Js.Value {
        return stdgo._internal.syscall.js.Js.Func_static_extension.invoke(__self__, ...[for (i in _args) i]);
    }
    public static function int_(__self__:Func):StdTypes.Int {
        return stdgo._internal.syscall.js.Js.Func_static_extension.int_(__self__);
    }
    public static function instanceOf(__self__:Func, __0:stdgo._internal.syscall.js.Js.Value):Bool {
        return stdgo._internal.syscall.js.Js.Func_static_extension.instanceOf(__self__, __0);
    }
    public static function index(__self__:Func, _i:StdTypes.Int):stdgo._internal.syscall.js.Js.Value {
        return stdgo._internal.syscall.js.Js.Func_static_extension.index(__self__, _i);
    }
    public static function get(__self__:Func, _p:String):stdgo._internal.syscall.js.Js.Value {
        return stdgo._internal.syscall.js.Js.Func_static_extension.get(__self__, _p);
    }
    public static function float_(__self__:Func):StdTypes.Float {
        return stdgo._internal.syscall.js.Js.Func_static_extension.float_(__self__);
    }
    public static function equal(__self__:Func, __0:stdgo._internal.syscall.js.Js.Value):Bool {
        return stdgo._internal.syscall.js.Js.Func_static_extension.equal(__self__, __0);
    }
    public static function delete(__self__:Func, _p:String) {
        stdgo._internal.syscall.js.Js.Func_static_extension.delete(__self__, _p);
    }
    public static function call(__self__:Func, _m:String, _args:haxe.Rest<stdgo.AnyInterface>):stdgo._internal.syscall.js.Js.Value {
        return stdgo._internal.syscall.js.Js.Func_static_extension.call(__self__, _m, ...[for (i in _args) i]);
    }
    public static function bool_(__self__:Func):Bool {
        return stdgo._internal.syscall.js.Js.Func_static_extension.bool_(__self__);
    }
}
class Value_static_extension {
    static public function instanceOf(_v:Value, _t:Value):Bool {
        return stdgo._internal.syscall.js.Js.Value_static_extension.instanceOf(_v, _t);
    }
    static public function string(_v:Value):String {
        return stdgo._internal.syscall.js.Js.Value_static_extension.string(_v);
    }
    static public function truthy(_v:Value):Bool {
        return stdgo._internal.syscall.js.Js.Value_static_extension.truthy(_v);
    }
    static public function bool_(_v:Value):Bool {
        return stdgo._internal.syscall.js.Js.Value_static_extension.bool_(_v);
    }
    static public function int_(_v:Value):StdTypes.Int {
        return stdgo._internal.syscall.js.Js.Value_static_extension.int_(_v);
    }
    static public function float_(_v:Value):StdTypes.Float {
        return stdgo._internal.syscall.js.Js.Value_static_extension.float_(_v);
    }
    static public function _float(_v:Value, _method:String):StdTypes.Float {
        return stdgo._internal.syscall.js.Js.Value_static_extension._float(_v, _method);
    }
    static public function _isNumber(_v:Value):Bool {
        return stdgo._internal.syscall.js.Js.Value_static_extension._isNumber(_v);
    }
    static public function new_(_v:Value, _args:haxe.Rest<stdgo.AnyInterface>):Value {
        return stdgo._internal.syscall.js.Js.Value_static_extension.new_(_v, ...[for (i in _args) i]);
    }
    static public function invoke(_v:Value, _args:haxe.Rest<stdgo.AnyInterface>):Value {
        return stdgo._internal.syscall.js.Js.Value_static_extension.invoke(_v, ...[for (i in _args) i]);
    }
    static public function call(_v:Value, _m:String, _args:haxe.Rest<stdgo.AnyInterface>):Value {
        return stdgo._internal.syscall.js.Js.Value_static_extension.call(_v, _m, ...[for (i in _args) i]);
    }
    static public function length_(_v:Value):StdTypes.Int {
        return stdgo._internal.syscall.js.Js.Value_static_extension.length_(_v);
    }
    static public function setIndex(_v:Value, _i:StdTypes.Int, _x:stdgo.AnyInterface):Void {
        stdgo._internal.syscall.js.Js.Value_static_extension.setIndex(_v, _i, _x);
    }
    static public function index(_v:Value, _i:StdTypes.Int):Value {
        return stdgo._internal.syscall.js.Js.Value_static_extension.index(_v, _i);
    }
    static public function delete(_v:Value, _p:String):Void {
        stdgo._internal.syscall.js.Js.Value_static_extension.delete(_v, _p);
    }
    static public function set(_v:Value, _p:String, _x:stdgo.AnyInterface):Void {
        stdgo._internal.syscall.js.Js.Value_static_extension.set(_v, _p, _x);
    }
    static public function get(_v:Value, _p:String):Value {
        return stdgo._internal.syscall.js.Js.Value_static_extension.get(_v, _p);
    }
    static public function type(_v:Value):Type_ {
        return stdgo._internal.syscall.js.Js.Value_static_extension.type(_v);
    }
    static public function isNaN(_v:Value):Bool {
        return stdgo._internal.syscall.js.Js.Value_static_extension.isNaN(_v);
    }
    static public function isNull(_v:Value):Bool {
        return stdgo._internal.syscall.js.Js.Value_static_extension.isNull(_v);
    }
    static public function isUndefined(_v:Value):Bool {
        return stdgo._internal.syscall.js.Js.Value_static_extension.isUndefined(_v);
    }
    static public function equal(_v:Value, _w:Value):Bool {
        return stdgo._internal.syscall.js.Js.Value_static_extension.equal(_v, _w);
    }
}
class Error_static_extension {
    static public function error(_e:Error):String {
        return stdgo._internal.syscall.js.Js.Error_static_extension.error(_e);
    }
    public static function _isNumber(__self__:Error):Bool {
        return stdgo._internal.syscall.js.Js.Error_static_extension._isNumber(__self__);
    }
    public static function _float(__self__:Error, _p:String):StdTypes.Float {
        return stdgo._internal.syscall.js.Js.Error_static_extension._float(__self__, _p);
    }
    public static function type(__self__:Error):stdgo._internal.syscall.js.Js.Type_ {
        return stdgo._internal.syscall.js.Js.Error_static_extension.type(__self__);
    }
    public static function truthy(__self__:Error):Bool {
        return stdgo._internal.syscall.js.Js.Error_static_extension.truthy(__self__);
    }
    public static function string(__self__:Error):String {
        return stdgo._internal.syscall.js.Js.Error_static_extension.string(__self__);
    }
    public static function setIndex(__self__:Error, _i:StdTypes.Int, _x:stdgo.AnyInterface) {
        stdgo._internal.syscall.js.Js.Error_static_extension.setIndex(__self__, _i, _x);
    }
    public static function set(__self__:Error, _p:String, _x:stdgo.AnyInterface) {
        stdgo._internal.syscall.js.Js.Error_static_extension.set(__self__, _p, _x);
    }
    public static function new_(__self__:Error, _args:haxe.Rest<stdgo.AnyInterface>):stdgo._internal.syscall.js.Js.Value {
        return stdgo._internal.syscall.js.Js.Error_static_extension.new_(__self__, ...[for (i in _args) i]);
    }
    public static function length_(__self__:Error):StdTypes.Int {
        return stdgo._internal.syscall.js.Js.Error_static_extension.length_(__self__);
    }
    public static function isUndefined(__self__:Error):Bool {
        return stdgo._internal.syscall.js.Js.Error_static_extension.isUndefined(__self__);
    }
    public static function isNull(__self__:Error):Bool {
        return stdgo._internal.syscall.js.Js.Error_static_extension.isNull(__self__);
    }
    public static function isNaN(__self__:Error):Bool {
        return stdgo._internal.syscall.js.Js.Error_static_extension.isNaN(__self__);
    }
    public static function invoke(__self__:Error, _args:haxe.Rest<stdgo.AnyInterface>):stdgo._internal.syscall.js.Js.Value {
        return stdgo._internal.syscall.js.Js.Error_static_extension.invoke(__self__, ...[for (i in _args) i]);
    }
    public static function int_(__self__:Error):StdTypes.Int {
        return stdgo._internal.syscall.js.Js.Error_static_extension.int_(__self__);
    }
    public static function instanceOf(__self__:Error, __0:stdgo._internal.syscall.js.Js.Value):Bool {
        return stdgo._internal.syscall.js.Js.Error_static_extension.instanceOf(__self__, __0);
    }
    public static function index(__self__:Error, _i:StdTypes.Int):stdgo._internal.syscall.js.Js.Value {
        return stdgo._internal.syscall.js.Js.Error_static_extension.index(__self__, _i);
    }
    public static function get(__self__:Error, _p:String):stdgo._internal.syscall.js.Js.Value {
        return stdgo._internal.syscall.js.Js.Error_static_extension.get(__self__, _p);
    }
    public static function float_(__self__:Error):StdTypes.Float {
        return stdgo._internal.syscall.js.Js.Error_static_extension.float_(__self__);
    }
    public static function equal(__self__:Error, __0:stdgo._internal.syscall.js.Js.Value):Bool {
        return stdgo._internal.syscall.js.Js.Error_static_extension.equal(__self__, __0);
    }
    public static function delete(__self__:Error, _p:String) {
        stdgo._internal.syscall.js.Js.Error_static_extension.delete(__self__, _p);
    }
    public static function call(__self__:Error, _m:String, _args:haxe.Rest<stdgo.AnyInterface>):stdgo._internal.syscall.js.Js.Value {
        return stdgo._internal.syscall.js.Js.Error_static_extension.call(__self__, _m, ...[for (i in _args) i]);
    }
    public static function bool_(__self__:Error):Bool {
        return stdgo._internal.syscall.js.Js.Error_static_extension.bool_(__self__);
    }
}
class ValueError_static_extension {
    static public function error(_e:ValueError):String {
        return stdgo._internal.syscall.js.Js.ValueError_static_extension.error(_e);
    }
}
class Type__static_extension {
    static public function _isObject(_t:Type_):Bool {
        return stdgo._internal.syscall.js.Js.Type__static_extension._isObject(_t);
    }
    static public function string(_t:Type_):String {
        return stdgo._internal.syscall.js.Js.Type__static_extension.string(_t);
    }
}
/**
    Package js gives access to the WebAssembly host environment when using the js/wasm architecture.
    Its API is based on JavaScript semantics.
    
    This package is EXPERIMENTAL. Its current scope is only to allow tests to run, but not yet to provide a
    comprehensive API for users. It is exempt from the Go compatibility promise.
**/
class Js {
    /**
        FuncOf returns a function to be used by JavaScript.
        
        The Go function fn is called with the value of JavaScript's "this" keyword and the
        arguments of the invocation. The return value of the invocation is
        the result of the Go function mapped back to JavaScript according to ValueOf.
        
        Invoking the wrapped Go function from JavaScript will
        pause the event loop and spawn a new goroutine.
        Other wrapped functions which are triggered during a call from Go to JavaScript
        get executed on the same goroutine.
        
        As a consequence, if one wrapped function blocks, JavaScript's event loop
        is blocked until that function returns. Hence, calling any async JavaScript
        API, which requires the event loop, like fetch (http.Client), will cause an
        immediate deadlock. Therefore a blocking function should explicitly start a
        new goroutine.
        
        Func.Release must be called to free up resources when the function will not be invoked any more.
    **/
    static public function funcOf(_fn:(_this:Value, _args:stdgo.Slice<Value>) -> stdgo.AnyInterface):Func {
        final _fn = _fn;
        return stdgo._internal.syscall.js.Js.funcOf(_fn);
    }
    /**
        Undefined returns the JavaScript value "undefined".
    **/
    static public function undefined():Value {
        return stdgo._internal.syscall.js.Js.undefined();
    }
    /**
        Null returns the JavaScript value "null".
    **/
    static public function null_():Value {
        return stdgo._internal.syscall.js.Js.null_();
    }
    /**
        Global returns the JavaScript global object, usually "window" or "global".
    **/
    static public function global():Value {
        return stdgo._internal.syscall.js.Js.global();
    }
    /**
        ValueOf returns x as a JavaScript value:
        
        	| Go                     | JavaScript             |
        	| ---------------------- | ---------------------- |
        	| js.Value               | [its value]            |
        	| js.Func                | function               |
        	| nil                    | null                   |
        	| bool                   | boolean                |
        	| integers and floats    | number                 |
        	| string                 | string                 |
        	| []interface{}          | new array              |
        	| map[string]interface{} | new object             |
        
        Panics if x is not one of the expected types.
    **/
    static public function valueOf(_x:stdgo.AnyInterface):Value {
        return stdgo._internal.syscall.js.Js.valueOf(_x);
    }
    /**
        CopyBytesToGo copies bytes from src to dst.
        It panics if src is not a Uint8Array or Uint8ClampedArray.
        It returns the number of bytes copied, which will be the minimum of the lengths of src and dst.
    **/
    static public function copyBytesToGo(_dst:Array<StdTypes.Int>, _src:Value):StdTypes.Int {
        final _dst = ([for (i in _dst) i] : stdgo.Slice<stdgo.GoByte>);
        return stdgo._internal.syscall.js.Js.copyBytesToGo(_dst, _src);
    }
    /**
        CopyBytesToJS copies bytes from src to dst.
        It panics if dst is not a Uint8Array or Uint8ClampedArray.
        It returns the number of bytes copied, which will be the minimum of the lengths of src and dst.
    **/
    static public function copyBytesToJS(_dst:Value, _src:Array<StdTypes.Int>):StdTypes.Int {
        final _src = ([for (i in _src) i] : stdgo.Slice<stdgo.GoByte>);
        return stdgo._internal.syscall.js.Js.copyBytesToJS(_dst, _src);
    }
}
