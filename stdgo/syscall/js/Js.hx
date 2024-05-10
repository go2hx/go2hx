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
    static public function release(c:Func):Void {
        stdgo._internal.syscall.js.Js.Func_static_extension.release(c);
    }
    public static function _isNumber(_self__:Func):Bool {
        return stdgo._internal.syscall.js.Js.Func_static_extension._isNumber(_self__);
    }
    public static function _float(_self__:Func, p:String):StdTypes.Float {
        return stdgo._internal.syscall.js.Js.Func_static_extension._float(_self__, p);
    }
    public static function type(_self__:Func):stdgo._internal.syscall.js.Js.Type_ {
        return stdgo._internal.syscall.js.Js.Func_static_extension.type(_self__);
    }
    public static function truthy(_self__:Func):Bool {
        return stdgo._internal.syscall.js.Js.Func_static_extension.truthy(_self__);
    }
    public static function string(_self__:Func):String {
        return stdgo._internal.syscall.js.Js.Func_static_extension.string(_self__);
    }
    public static function setIndex(_self__:Func, i:StdTypes.Int, x:stdgo.AnyInterface) {
        stdgo._internal.syscall.js.Js.Func_static_extension.setIndex(_self__, i, x);
    }
    public static function set(_self__:Func, p:String, x:stdgo.AnyInterface) {
        stdgo._internal.syscall.js.Js.Func_static_extension.set(_self__, p, x);
    }
    public static function new_(_self__:Func, args:haxe.Rest<stdgo.AnyInterface>):stdgo._internal.syscall.js.Js.Value {
        return stdgo._internal.syscall.js.Js.Func_static_extension.new_(_self__, ...[for (i in args) i]);
    }
    public static function length_(_self__:Func):StdTypes.Int {
        return stdgo._internal.syscall.js.Js.Func_static_extension.length_(_self__);
    }
    public static function isUndefined(_self__:Func):Bool {
        return stdgo._internal.syscall.js.Js.Func_static_extension.isUndefined(_self__);
    }
    public static function isNull(_self__:Func):Bool {
        return stdgo._internal.syscall.js.Js.Func_static_extension.isNull(_self__);
    }
    public static function isNaN(_self__:Func):Bool {
        return stdgo._internal.syscall.js.Js.Func_static_extension.isNaN(_self__);
    }
    public static function invoke(_self__:Func, args:haxe.Rest<stdgo.AnyInterface>):stdgo._internal.syscall.js.Js.Value {
        return stdgo._internal.syscall.js.Js.Func_static_extension.invoke(_self__, ...[for (i in args) i]);
    }
    public static function int_(_self__:Func):StdTypes.Int {
        return stdgo._internal.syscall.js.Js.Func_static_extension.int_(_self__);
    }
    public static function instanceOf(_self__:Func, _0:stdgo._internal.syscall.js.Js.Value):Bool {
        return stdgo._internal.syscall.js.Js.Func_static_extension.instanceOf(_self__, _0);
    }
    public static function index(_self__:Func, i:StdTypes.Int):stdgo._internal.syscall.js.Js.Value {
        return stdgo._internal.syscall.js.Js.Func_static_extension.index(_self__, i);
    }
    public static function get(_self__:Func, p:String):stdgo._internal.syscall.js.Js.Value {
        return stdgo._internal.syscall.js.Js.Func_static_extension.get(_self__, p);
    }
    public static function float_(_self__:Func):StdTypes.Float {
        return stdgo._internal.syscall.js.Js.Func_static_extension.float_(_self__);
    }
    public static function equal(_self__:Func, _0:stdgo._internal.syscall.js.Js.Value):Bool {
        return stdgo._internal.syscall.js.Js.Func_static_extension.equal(_self__, _0);
    }
    public static function delete(_self__:Func, p:String) {
        stdgo._internal.syscall.js.Js.Func_static_extension.delete(_self__, p);
    }
    public static function call(_self__:Func, m:String, args:haxe.Rest<stdgo.AnyInterface>):stdgo._internal.syscall.js.Js.Value {
        return stdgo._internal.syscall.js.Js.Func_static_extension.call(_self__, m, ...[for (i in args) i]);
    }
    public static function bool_(_self__:Func):Bool {
        return stdgo._internal.syscall.js.Js.Func_static_extension.bool_(_self__);
    }
}
class Value_static_extension {
    static public function instanceOf(v:Value, t:Value):Bool {
        return stdgo._internal.syscall.js.Js.Value_static_extension.instanceOf(v, t);
    }
    static public function string(v:Value):String {
        return stdgo._internal.syscall.js.Js.Value_static_extension.string(v);
    }
    static public function truthy(v:Value):Bool {
        return stdgo._internal.syscall.js.Js.Value_static_extension.truthy(v);
    }
    static public function bool_(v:Value):Bool {
        return stdgo._internal.syscall.js.Js.Value_static_extension.bool_(v);
    }
    static public function int_(v:Value):StdTypes.Int {
        return stdgo._internal.syscall.js.Js.Value_static_extension.int_(v);
    }
    static public function float_(v:Value):StdTypes.Float {
        return stdgo._internal.syscall.js.Js.Value_static_extension.float_(v);
    }
    static public function _float(v:Value, method:String):StdTypes.Float {
        return stdgo._internal.syscall.js.Js.Value_static_extension._float(v, method);
    }
    static public function _isNumber(v:Value):Bool {
        return stdgo._internal.syscall.js.Js.Value_static_extension._isNumber(v);
    }
    static public function new_(v:Value, args:haxe.Rest<stdgo.AnyInterface>):Value {
        return stdgo._internal.syscall.js.Js.Value_static_extension.new_(v, ...[for (i in args) i]);
    }
    static public function invoke(v:Value, args:haxe.Rest<stdgo.AnyInterface>):Value {
        return stdgo._internal.syscall.js.Js.Value_static_extension.invoke(v, ...[for (i in args) i]);
    }
    static public function call(v:Value, m:String, args:haxe.Rest<stdgo.AnyInterface>):Value {
        return stdgo._internal.syscall.js.Js.Value_static_extension.call(v, m, ...[for (i in args) i]);
    }
    static public function length_(v:Value):StdTypes.Int {
        return stdgo._internal.syscall.js.Js.Value_static_extension.length_(v);
    }
    static public function setIndex(v:Value, i:StdTypes.Int, x:stdgo.AnyInterface):Void {
        stdgo._internal.syscall.js.Js.Value_static_extension.setIndex(v, i, x);
    }
    static public function index(v:Value, i:StdTypes.Int):Value {
        return stdgo._internal.syscall.js.Js.Value_static_extension.index(v, i);
    }
    static public function delete(v:Value, p:String):Void {
        stdgo._internal.syscall.js.Js.Value_static_extension.delete(v, p);
    }
    static public function set(v:Value, p:String, x:stdgo.AnyInterface):Void {
        stdgo._internal.syscall.js.Js.Value_static_extension.set(v, p, x);
    }
    static public function get(v:Value, p:String):Value {
        return stdgo._internal.syscall.js.Js.Value_static_extension.get(v, p);
    }
    static public function type(v:Value):Type_ {
        return stdgo._internal.syscall.js.Js.Value_static_extension.type(v);
    }
    static public function isNaN(v:Value):Bool {
        return stdgo._internal.syscall.js.Js.Value_static_extension.isNaN(v);
    }
    static public function isNull(v:Value):Bool {
        return stdgo._internal.syscall.js.Js.Value_static_extension.isNull(v);
    }
    static public function isUndefined(v:Value):Bool {
        return stdgo._internal.syscall.js.Js.Value_static_extension.isUndefined(v);
    }
    static public function equal(v:Value, w:Value):Bool {
        return stdgo._internal.syscall.js.Js.Value_static_extension.equal(v, w);
    }
}
class Error_static_extension {
    static public function error(e:Error):String {
        return stdgo._internal.syscall.js.Js.Error_static_extension.error(e);
    }
    public static function _isNumber(_self__:Error):Bool {
        return stdgo._internal.syscall.js.Js.Error_static_extension._isNumber(_self__);
    }
    public static function _float(_self__:Error, p:String):StdTypes.Float {
        return stdgo._internal.syscall.js.Js.Error_static_extension._float(_self__, p);
    }
    public static function type(_self__:Error):stdgo._internal.syscall.js.Js.Type_ {
        return stdgo._internal.syscall.js.Js.Error_static_extension.type(_self__);
    }
    public static function truthy(_self__:Error):Bool {
        return stdgo._internal.syscall.js.Js.Error_static_extension.truthy(_self__);
    }
    public static function string(_self__:Error):String {
        return stdgo._internal.syscall.js.Js.Error_static_extension.string(_self__);
    }
    public static function setIndex(_self__:Error, i:StdTypes.Int, x:stdgo.AnyInterface) {
        stdgo._internal.syscall.js.Js.Error_static_extension.setIndex(_self__, i, x);
    }
    public static function set(_self__:Error, p:String, x:stdgo.AnyInterface) {
        stdgo._internal.syscall.js.Js.Error_static_extension.set(_self__, p, x);
    }
    public static function new_(_self__:Error, args:haxe.Rest<stdgo.AnyInterface>):stdgo._internal.syscall.js.Js.Value {
        return stdgo._internal.syscall.js.Js.Error_static_extension.new_(_self__, ...[for (i in args) i]);
    }
    public static function length_(_self__:Error):StdTypes.Int {
        return stdgo._internal.syscall.js.Js.Error_static_extension.length_(_self__);
    }
    public static function isUndefined(_self__:Error):Bool {
        return stdgo._internal.syscall.js.Js.Error_static_extension.isUndefined(_self__);
    }
    public static function isNull(_self__:Error):Bool {
        return stdgo._internal.syscall.js.Js.Error_static_extension.isNull(_self__);
    }
    public static function isNaN(_self__:Error):Bool {
        return stdgo._internal.syscall.js.Js.Error_static_extension.isNaN(_self__);
    }
    public static function invoke(_self__:Error, args:haxe.Rest<stdgo.AnyInterface>):stdgo._internal.syscall.js.Js.Value {
        return stdgo._internal.syscall.js.Js.Error_static_extension.invoke(_self__, ...[for (i in args) i]);
    }
    public static function int_(_self__:Error):StdTypes.Int {
        return stdgo._internal.syscall.js.Js.Error_static_extension.int_(_self__);
    }
    public static function instanceOf(_self__:Error, _0:stdgo._internal.syscall.js.Js.Value):Bool {
        return stdgo._internal.syscall.js.Js.Error_static_extension.instanceOf(_self__, _0);
    }
    public static function index(_self__:Error, i:StdTypes.Int):stdgo._internal.syscall.js.Js.Value {
        return stdgo._internal.syscall.js.Js.Error_static_extension.index(_self__, i);
    }
    public static function get(_self__:Error, p:String):stdgo._internal.syscall.js.Js.Value {
        return stdgo._internal.syscall.js.Js.Error_static_extension.get(_self__, p);
    }
    public static function float_(_self__:Error):StdTypes.Float {
        return stdgo._internal.syscall.js.Js.Error_static_extension.float_(_self__);
    }
    public static function equal(_self__:Error, _0:stdgo._internal.syscall.js.Js.Value):Bool {
        return stdgo._internal.syscall.js.Js.Error_static_extension.equal(_self__, _0);
    }
    public static function delete(_self__:Error, p:String) {
        stdgo._internal.syscall.js.Js.Error_static_extension.delete(_self__, p);
    }
    public static function call(_self__:Error, m:String, args:haxe.Rest<stdgo.AnyInterface>):stdgo._internal.syscall.js.Js.Value {
        return stdgo._internal.syscall.js.Js.Error_static_extension.call(_self__, m, ...[for (i in args) i]);
    }
    public static function bool_(_self__:Error):Bool {
        return stdgo._internal.syscall.js.Js.Error_static_extension.bool_(_self__);
    }
}
class ValueError_static_extension {
    static public function error(e:ValueError):String {
        return stdgo._internal.syscall.js.Js.ValueError_static_extension.error(e);
    }
}
class Type__static_extension {
    static public function _isObject(t:Type_):Bool {
        return stdgo._internal.syscall.js.Js.Type__static_extension._isObject(t);
    }
    static public function string(t:Type_):String {
        return stdgo._internal.syscall.js.Js.Type__static_extension.string(t);
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
    static public function funcOf(fn:(_this:Value, _args:stdgo.Slice<Value>) -> stdgo.AnyInterface):Func {
        final fn = fn;
        return stdgo._internal.syscall.js.Js.funcOf(fn);
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
    static public function valueOf(x:stdgo.AnyInterface):Value {
        return stdgo._internal.syscall.js.Js.valueOf(x);
    }
    /**
        CopyBytesToGo copies bytes from src to dst.
        It panics if src is not a Uint8Array or Uint8ClampedArray.
        It returns the number of bytes copied, which will be the minimum of the lengths of src and dst.
    **/
    static public function copyBytesToGo(dst:Array<StdTypes.Int>, src:Value):StdTypes.Int {
        final dst = ([for (i in dst) i] : stdgo.Slice<stdgo.GoByte>);
        return stdgo._internal.syscall.js.Js.copyBytesToGo(dst, src);
    }
    /**
        CopyBytesToJS copies bytes from src to dst.
        It panics if dst is not a Uint8Array or Uint8ClampedArray.
        It returns the number of bytes copied, which will be the minimum of the lengths of src and dst.
    **/
    static public function copyBytesToJS(dst:Value, src:Array<StdTypes.Int>):StdTypes.Int {
        final src = ([for (i in src) i] : stdgo.Slice<stdgo.GoByte>);
        return stdgo._internal.syscall.js.Js.copyBytesToJS(dst, src);
    }
}
