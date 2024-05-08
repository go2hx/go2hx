package stdgo.syscall;
/**
    Package js gives access to the WebAssembly host environment when using the js/wasm architecture.
    Its API is based on JavaScript semantics.
    
    This package is EXPERIMENTAL. Its current scope is only to allow tests to run, but not yet to provide a
    comprehensive API for users. It is exempt from the Go compatibility promise.
**/
private var __go2hxdoc__package : Bool;
final typeUndefined : stdgo._internal.syscall.js.Js.Type_ = stdgo._internal.syscall.js.Js.typeUndefined;
final typeNull = stdgo._internal.syscall.js.Js.typeNull;
final typeBoolean = stdgo._internal.syscall.js.Js.typeBoolean;
final typeNumber = stdgo._internal.syscall.js.Js.typeNumber;
final typeString = stdgo._internal.syscall.js.Js.typeString;
final typeSymbol = stdgo._internal.syscall.js.Js.typeSymbol;
final typeObject = stdgo._internal.syscall.js.Js.typeObject;
final typeFunction = stdgo._internal.syscall.js.Js.typeFunction;
abstract Func(stdgo._internal.syscall.js.Js.Func) from stdgo._internal.syscall.js.Js.Func to stdgo._internal.syscall.js.Js.Func {
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
abstract Value(stdgo._internal.syscall.js.Js.Value) from stdgo._internal.syscall.js.Js.Value to stdgo._internal.syscall.js.Js.Value {
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
abstract Error(stdgo._internal.syscall.js.Js.Error) from stdgo._internal.syscall.js.Js.Error to stdgo._internal.syscall.js.Js.Error {
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
abstract ValueError(stdgo._internal.syscall.js.Js.ValueError) from stdgo._internal.syscall.js.Js.ValueError to stdgo._internal.syscall.js.Js.ValueError {
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
