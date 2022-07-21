package stdgo.syscall.js;
import stdgo.StdGoTypes;
import stdgo.Error;
import stdgo.Go;
import stdgo.GoString;
import stdgo.Pointer;
import stdgo.Slice;
import stdgo.GoArray;
import stdgo.GoMap;
import stdgo.Chan;
var _funcs : GoMap<GoUInt32, (Value, Slice<Value>) -> AnyInterface> = new Map<Int, (Value, Slice<Value>) -> AnyInterface>();
var _nextFuncID : GoUInt32 = ((1 : GoUInt32));
var _valueUndefined : Value = (({ _ref : ((0 : T_ref)), _1 : new GoArray<() -> Void>(...[for (i in 0 ... 0) null]), _gcPtr : null } : Value));
var _valueNaN : Value = _predefValue(((0 : GoUInt32)), ((0 : GoUInt8)));
var _valueZero : Value = _predefValue(((1 : GoUInt32)), ((0 : GoUInt8)));
var _valueNull : Value = _predefValue(((2 : GoUInt32)), ((0 : GoUInt8)));
var _valueTrue : Value = _predefValue(((3 : GoUInt32)), ((0 : GoUInt8)));
var _valueFalse : Value = _predefValue(((4 : GoUInt32)), ((0 : GoUInt8)));
var _valueGlobal : Value = _predefValue(((5 : GoUInt32)), ((1 : GoUInt8)));
var _jsGo : Value = _predefValue(((6 : GoUInt32)), ((1 : GoUInt8)));
var _objectConstructor : Value = _valueGlobal.get(((((("Object" : GoString))) : GoString)));
var _arrayConstructor : Value = _valueGlobal.get(((((("Array" : GoString))) : GoString)));
var _funcsMu : stdgo.sync.Sync.Mutex = new stdgo.sync.Sync.Mutex();
@:structInit @:using(stdgo.syscall.js.Js.Func_static_extension) class Func {
    @:embedded
    public var value : Value = new Value();
    public var _id : GoUInt32 = 0;
    public function new(?value:Value, ?_id:GoUInt32) {
        if (value != null) this.value = value;
        if (_id != null) this._id = _id;
    }
    @:embedded
    public function bool():Bool return false;
    @:embedded
    public function call(_m:GoString, _args:haxe.Rest<AnyInterface>):Value return new Value();
    @:embedded
    public function delete(_p:GoString) null;
    @:embedded
    public function equal(_w:Value):Bool return false;
    @:embedded
    public function float():GoFloat64 return ((0 : GoFloat64));
    @:embedded
    public function get(_p:GoString):Value return new Value();
    @:embedded
    public function index(_i:GoInt):Value return new Value();
    @:embedded
    public function instanceOf(_t:Value):Bool return false;
    @:embedded
    public function int():GoInt return ((0 : GoInt));
    @:embedded
    public function invoke(_args:haxe.Rest<AnyInterface>):Value return new Value();
    @:embedded
    public function isNaN():Bool return false;
    @:embedded
    public function isNull():Bool return false;
    @:embedded
    public function isUndefined():Bool return false;
    @:embedded
    public function length():GoInt return ((0 : GoInt));
    @:embedded
    public function new_(_args:haxe.Rest<AnyInterface>):Value return new Value();
    @:embedded
    public function set(_p:GoString, _x:AnyInterface) null;
    @:embedded
    public function setIndex(_i:GoInt, _x:AnyInterface) null;
    @:embedded
    public function toString():GoString return (("" : GoString));
    @:embedded
    public function truthy():Bool return false;
    @:embedded
    public function type():Type return new Type();
    @:embedded
    public function _float(_method:GoString):GoFloat64 return ((0 : GoFloat64));
    @:embedded
    public function _isNumber():Bool return false;
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new Func(value, _id);
    }
}
@:structInit @:using(stdgo.syscall.js.Js.Value_static_extension) class Value {
    public var _0 : GoArray<() -> Void> = new GoArray<() -> Void>(...[for (i in 0 ... 0) null]);
    public var _ref : T_ref = new T_ref();
    public var _gcPtr : Ref<T_ref> = null;
    public function new(?_0:GoArray<() -> Void>, ?_ref:T_ref, ?_gcPtr:Ref<T_ref>) {
        if (_0 != null) this._0 = _0;
        if (_ref != null) this._ref = _ref;
        if (_gcPtr != null) this._gcPtr = _gcPtr;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new Value(_0, _ref, _gcPtr);
    }
}
@:structInit @:using(stdgo.syscall.js.Js.T_error_static_extension) class T_error {
    @:embedded
    public var value : Value = new Value();
    public function new(?value:Value) {
        if (value != null) this.value = value;
    }
    @:embedded
    public function bool():Bool return false;
    @:embedded
    public function call(_m:GoString, _args:haxe.Rest<AnyInterface>):Value return new Value();
    @:embedded
    public function delete(_p:GoString) null;
    @:embedded
    public function equal(_w:Value):Bool return false;
    @:embedded
    public function float():GoFloat64 return ((0 : GoFloat64));
    @:embedded
    public function get(_p:GoString):Value return new Value();
    @:embedded
    public function index(_i:GoInt):Value return new Value();
    @:embedded
    public function instanceOf(_t:Value):Bool return false;
    @:embedded
    public function int():GoInt return ((0 : GoInt));
    @:embedded
    public function invoke(_args:haxe.Rest<AnyInterface>):Value return new Value();
    @:embedded
    public function isNaN():Bool return false;
    @:embedded
    public function isNull():Bool return false;
    @:embedded
    public function isUndefined():Bool return false;
    @:embedded
    public function length():GoInt return ((0 : GoInt));
    @:embedded
    public function new_(_args:haxe.Rest<AnyInterface>):Value return new Value();
    @:embedded
    public function set(_p:GoString, _x:AnyInterface) null;
    @:embedded
    public function setIndex(_i:GoInt, _x:AnyInterface) null;
    @:embedded
    public function toString():GoString return (("" : GoString));
    @:embedded
    public function truthy():Bool return false;
    @:embedded
    public function type():Type return new Type();
    @:embedded
    public function _float(_method:GoString):GoFloat64 return ((0 : GoFloat64));
    @:embedded
    public function _isNumber():Bool return false;
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_error(value);
    }
}
@:structInit @:using(stdgo.syscall.js.Js.ValueError_static_extension) class ValueError {
    public var method : GoString = "";
    public var type : Type = new Type();
    public function new(?method:GoString, ?type:Type) {
        if (method != null) this.method = method;
        if (type != null) this.type = type;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new ValueError(method, type);
    }
}
@:named typedef T_ref = GoUInt64;
@:named @:using(stdgo.syscall.js.Js.Type_static_extension) typedef Type = GoInt;
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
function funcOf(_fn:(_this:Value, _args:Slice<Value>) -> AnyInterface):Func return new Func();
/**
    // setEventHandler is defined in the runtime package.
**/
function _setEventHandler(_fn:() -> Void):Void return;
function _handleEvent():Void return;
function _makeValue(_r:T_ref):Value return new Value();
function _finalizeRef(_r:T_ref):Void return;
function _predefValue(_id:GoUInt32, _typeFlag:GoByte):Value return new Value();
function _floatValue(_f:GoFloat64):Value return new Value();
/**
    // Undefined returns the JavaScript value "undefined".
**/
function undefined():Value return new Value();
/**
    // Null returns the JavaScript value "null".
**/
function null_():Value return new Value();
/**
    // Global returns the JavaScript global object, usually "window" or "global".
**/
function global():Value return new Value();
/**
    // ValueOf returns x as a JavaScript value:
    //
    //  | Go                     | JavaScript             |
    //  | ---------------------- | ---------------------- |
    //  | js.Value               | [its value]            |
    //  | js.Func                | function               |
    //  | nil                    | null                   |
    //  | bool                   | boolean                |
    //  | integers and floats    | number                 |
    //  | string                 | string                 |
    //  | []interface{}          | new array              |
    //  | map[string]interface{} | new object             |
    //
    // Panics if x is not one of the expected types.
**/
function valueOf(_x:AnyInterface):Value return new Value();
function _stringVal(_x:GoString):T_ref return new T_ref();
function _valueGet(_v:T_ref, _p:GoString):T_ref return new T_ref();
function _valueSet(_v:T_ref, _p:GoString, _x:T_ref):Void return;
function _valueDelete(_v:T_ref, _p:GoString):Void return;
function _valueIndex(_v:T_ref, _i:GoInt):T_ref return new T_ref();
function _valueSetIndex(_v:T_ref, _i:GoInt, _x:T_ref):Void return;
function _makeArgs(_args:Slice<AnyInterface>):{ var _0 : Slice<Value>; var _1 : Slice<T_ref>; } return { _0 : ((null : Slice<Value>)), _1 : ((null : Slice<T_ref>)) };
function _valueLength(_v:T_ref):GoInt return ((0 : GoInt));
function _valueCall(_v:T_ref, _m:GoString, _args:Slice<T_ref>):{ var _0 : T_ref; var _1 : Bool; } return { _0 : new T_ref(), _1 : false };
function _valueInvoke(_v:T_ref, _args:Slice<T_ref>):{ var _0 : T_ref; var _1 : Bool; } return { _0 : new T_ref(), _1 : false };
function _valueNew(_v:T_ref, _args:Slice<T_ref>):{ var _0 : T_ref; var _1 : Bool; } return { _0 : new T_ref(), _1 : false };
function _jsString(_v:Value):GoString return (("" : GoString));
function _valuePrepareString(_v:T_ref):{ var _0 : T_ref; var _1 : GoInt; } return { _0 : new T_ref(), _1 : ((0 : GoInt)) };
function _valueLoadString(_v:T_ref, _b:Slice<GoByte>):Void return;
function _valueInstanceOf(_v:T_ref, _t:T_ref):Bool return false;
/**
    // CopyBytesToGo copies bytes from src to dst.
    // It panics if src is not an Uint8Array or Uint8ClampedArray.
    // It returns the number of bytes copied, which will be the minimum of the lengths of src and dst.
**/
function copyBytesToGo(_dst:Slice<GoByte>, _src:Value):GoInt return ((0 : GoInt));
function _copyBytesToGo(_dst:Slice<GoByte>, _src:T_ref):{ var _0 : GoInt; var _1 : Bool; } return { _0 : ((0 : GoInt)), _1 : false };
/**
    // CopyBytesToJS copies bytes from src to dst.
    // It panics if dst is not an Uint8Array or Uint8ClampedArray.
    // It returns the number of bytes copied, which will be the minimum of the lengths of src and dst.
**/
function copyBytesToJS(_dst:Value, _src:Slice<GoByte>):GoInt return ((0 : GoInt));
function _copyBytesToJS(_dst:T_ref, _src:Slice<GoByte>):{ var _0 : GoInt; var _1 : Bool; } return { _0 : ((0 : GoInt)), _1 : false };
@:keep class Func_static_extension {
    /**
        // Release frees up resources allocated for the function.
        // The function must not be invoked after calling Release.
        // It is allowed to call Release while the function is still running.
    **/
    @:keep
    static public function release( _c:Func):Void return;
    @:embedded
    public static function _isNumber( __self__:Func):Bool return __self__._isNumber();
    @:embedded
    public static function _float( __self__:Func, _method:GoString):GoFloat64 return __self__._float(_method);
    @:embedded
    public static function type( __self__:Func):Type return __self__.type();
    @:embedded
    public static function truthy( __self__:Func):Bool return __self__.truthy();
    @:embedded
    public static function toString( __self__:Func):GoString return __self__.toString();
    @:embedded
    public static function setIndex( __self__:Func, _i:GoInt, _x:AnyInterface) __self__.setIndex(_i, _x);
    @:embedded
    public static function set( __self__:Func, _p:GoString, _x:AnyInterface) __self__.set(_p, _x);
    @:embedded
    public static function new_( __self__:Func, _args:haxe.Rest<AnyInterface>):Value return __self__.new_(_args);
    @:embedded
    public static function length( __self__:Func):GoInt return __self__.length();
    @:embedded
    public static function isUndefined( __self__:Func):Bool return __self__.isUndefined();
    @:embedded
    public static function isNull( __self__:Func):Bool return __self__.isNull();
    @:embedded
    public static function isNaN( __self__:Func):Bool return __self__.isNaN();
    @:embedded
    public static function invoke( __self__:Func, _args:haxe.Rest<AnyInterface>):Value return __self__.invoke(_args);
    @:embedded
    public static function int( __self__:Func):GoInt return __self__.int();
    @:embedded
    public static function instanceOf( __self__:Func, _t:Value):Bool return __self__.instanceOf(_t);
    @:embedded
    public static function index( __self__:Func, _i:GoInt):Value return __self__.index(_i);
    @:embedded
    public static function get( __self__:Func, _p:GoString):Value return __self__.get(_p);
    @:embedded
    public static function float( __self__:Func):GoFloat64 return __self__.float();
    @:embedded
    public static function equal( __self__:Func, _w:Value):Bool return __self__.equal(_w);
    @:embedded
    public static function delete( __self__:Func, _p:GoString) __self__.delete(_p);
    @:embedded
    public static function call( __self__:Func, _m:GoString, _args:haxe.Rest<AnyInterface>):Value return __self__.call(_m, _args);
    @:embedded
    public static function bool( __self__:Func):Bool return __self__.bool();
}
class Func_wrapper {
    /**
        // Release frees up resources allocated for the function.
        // The function must not be invoked after calling Release.
        // It is allowed to call Release while the function is still running.
    **/
    @:keep
    public var release : () -> Void = null;
    @:embedded
    public var _isNumber : () -> Bool = null;
    @:embedded
    public var _float : GoString -> GoFloat64 = null;
    @:embedded
    public var type : () -> Type = null;
    @:embedded
    public var truthy : () -> Bool = null;
    @:embedded
    public var toString : () -> GoString = null;
    @:embedded
    public var setIndex : (GoInt, AnyInterface) -> Void = null;
    @:embedded
    public var set : (GoString, AnyInterface) -> Void = null;
    @:embedded
    public var new_ : haxe.Rest<AnyInterface> -> Value = null;
    @:embedded
    public var length : () -> GoInt = null;
    @:embedded
    public var isUndefined : () -> Bool = null;
    @:embedded
    public var isNull : () -> Bool = null;
    @:embedded
    public var isNaN : () -> Bool = null;
    @:embedded
    public var invoke : haxe.Rest<AnyInterface> -> Value = null;
    @:embedded
    public var int : () -> GoInt = null;
    @:embedded
    public var instanceOf : Value -> Bool = null;
    @:embedded
    public var index : GoInt -> Value = null;
    @:embedded
    public var get : GoString -> Value = null;
    @:embedded
    public var float : () -> GoFloat64 = null;
    @:embedded
    public var equal : Value -> Bool = null;
    @:embedded
    public var delete : GoString -> Void = null;
    @:embedded
    public var call : (GoString, haxe.Rest<AnyInterface>) -> Value = null;
    @:embedded
    public var bool : () -> Bool = null;
    public function new(__self__) this.__self__ = __self__;
    public function __underlying__() return Go.toInterface(__self__);
    var __self__ : Func;
}
@:keep class Value_static_extension {
    /**
        // InstanceOf reports whether v is an instance of type t according to JavaScript's instanceof operator.
    **/
    @:keep
    static public function instanceOf( _v:Value, _t:Value):Bool return false;
    /**
        // String returns the value v as a string.
        // String is a special case because of Go's String method convention. Unlike the other getters,
        // it does not panic if v's Type is not TypeString. Instead, it returns a string of the form "<T>"
        // or "<T: V>" where T is v's type and V is a string representation of v's value.
    **/
    @:keep
    static public function toString( _v:Value):GoString return (("" : GoString));
    /**
        // Truthy returns the JavaScript "truthiness" of the value v. In JavaScript,
        // false, 0, "", null, undefined, and NaN are "falsy", and everything else is
        // "truthy". See https://developer.mozilla.org/en-US/docs/Glossary/Truthy.
    **/
    @:keep
    static public function truthy( _v:Value):Bool return false;
    /**
        // Bool returns the value v as a bool.
        // It panics if v is not a JavaScript boolean.
    **/
    @:keep
    static public function bool( _v:Value):Bool return false;
    /**
        // Int returns the value v truncated to an int.
        // It panics if v is not a JavaScript number.
    **/
    @:keep
    static public function int( _v:Value):GoInt return ((0 : GoInt));
    /**
        // Float returns the value v as a float64.
        // It panics if v is not a JavaScript number.
    **/
    @:keep
    static public function float( _v:Value):GoFloat64 return ((0 : GoFloat64));
    @:keep
    static public function _float( _v:Value, _method:GoString):GoFloat64 return ((0 : GoFloat64));
    @:keep
    static public function _isNumber( _v:Value):Bool return false;
    /**
        // New uses JavaScript's "new" operator with value v as constructor and the given arguments.
        // It panics if v is not a JavaScript function.
        // The arguments get mapped to JavaScript values according to the ValueOf function.
    **/
    @:keep
    static public function new_( _v:Value, _args:haxe.Rest<AnyInterface>):Value return new Value();
    /**
        // Invoke does a JavaScript call of the value v with the given arguments.
        // It panics if v is not a JavaScript function.
        // The arguments get mapped to JavaScript values according to the ValueOf function.
    **/
    @:keep
    static public function invoke( _v:Value, _args:haxe.Rest<AnyInterface>):Value return new Value();
    /**
        // Call does a JavaScript call to the method m of value v with the given arguments.
        // It panics if v has no method m.
        // The arguments get mapped to JavaScript values according to the ValueOf function.
    **/
    @:keep
    static public function call( _v:Value, _m:GoString, _args:haxe.Rest<AnyInterface>):Value return new Value();
    /**
        // Length returns the JavaScript property "length" of v.
        // It panics if v is not a JavaScript object.
    **/
    @:keep
    static public function length( _v:Value):GoInt return ((0 : GoInt));
    /**
        // SetIndex sets the JavaScript index i of value v to ValueOf(x).
        // It panics if v is not a JavaScript object.
    **/
    @:keep
    static public function setIndex( _v:Value, _i:GoInt, _x:AnyInterface):Void return;
    /**
        // Index returns JavaScript index i of value v.
        // It panics if v is not a JavaScript object.
    **/
    @:keep
    static public function index( _v:Value, _i:GoInt):Value return new Value();
    /**
        // Delete deletes the JavaScript property p of value v.
        // It panics if v is not a JavaScript object.
    **/
    @:keep
    static public function delete( _v:Value, _p:GoString):Void return;
    /**
        // Set sets the JavaScript property p of value v to ValueOf(x).
        // It panics if v is not a JavaScript object.
    **/
    @:keep
    static public function set( _v:Value, _p:GoString, _x:AnyInterface):Void return;
    /**
        // Get returns the JavaScript property p of value v.
        // It panics if v is not a JavaScript object.
    **/
    @:keep
    static public function get( _v:Value, _p:GoString):Value return new Value();
    /**
        // Type returns the JavaScript type of the value v. It is similar to JavaScript's typeof operator,
        // except that it returns TypeNull instead of TypeObject for null.
    **/
    @:keep
    static public function type( _v:Value):Type return new Type();
    /**
        // IsNaN reports whether v is the JavaScript value "NaN".
    **/
    @:keep
    static public function isNaN( _v:Value):Bool return false;
    /**
        // IsNull reports whether v is the JavaScript value "null".
    **/
    @:keep
    static public function isNull( _v:Value):Bool return false;
    /**
        // IsUndefined reports whether v is the JavaScript value "undefined".
    **/
    @:keep
    static public function isUndefined( _v:Value):Bool return false;
    /**
        // Equal reports whether v and w are equal according to JavaScript's === operator.
    **/
    @:keep
    static public function equal( _v:Value, _w:Value):Bool return false;
}
class Value_wrapper {
    /**
        // InstanceOf reports whether v is an instance of type t according to JavaScript's instanceof operator.
    **/
    @:keep
    public var instanceOf : Value -> Bool = null;
    /**
        // String returns the value v as a string.
        // String is a special case because of Go's String method convention. Unlike the other getters,
        // it does not panic if v's Type is not TypeString. Instead, it returns a string of the form "<T>"
        // or "<T: V>" where T is v's type and V is a string representation of v's value.
    **/
    @:keep
    public var toString : () -> GoString = null;
    /**
        // Truthy returns the JavaScript "truthiness" of the value v. In JavaScript,
        // false, 0, "", null, undefined, and NaN are "falsy", and everything else is
        // "truthy". See https://developer.mozilla.org/en-US/docs/Glossary/Truthy.
    **/
    @:keep
    public var truthy : () -> Bool = null;
    /**
        // Bool returns the value v as a bool.
        // It panics if v is not a JavaScript boolean.
    **/
    @:keep
    public var bool : () -> Bool = null;
    /**
        // Int returns the value v truncated to an int.
        // It panics if v is not a JavaScript number.
    **/
    @:keep
    public var int : () -> GoInt = null;
    /**
        // Float returns the value v as a float64.
        // It panics if v is not a JavaScript number.
    **/
    @:keep
    public var float : () -> GoFloat64 = null;
    @:keep
    public var _float : GoString -> GoFloat64 = null;
    @:keep
    public var _isNumber : () -> Bool = null;
    /**
        // New uses JavaScript's "new" operator with value v as constructor and the given arguments.
        // It panics if v is not a JavaScript function.
        // The arguments get mapped to JavaScript values according to the ValueOf function.
    **/
    @:keep
    public var new_ : haxe.Rest<AnyInterface> -> Value = null;
    /**
        // Invoke does a JavaScript call of the value v with the given arguments.
        // It panics if v is not a JavaScript function.
        // The arguments get mapped to JavaScript values according to the ValueOf function.
    **/
    @:keep
    public var invoke : haxe.Rest<AnyInterface> -> Value = null;
    /**
        // Call does a JavaScript call to the method m of value v with the given arguments.
        // It panics if v has no method m.
        // The arguments get mapped to JavaScript values according to the ValueOf function.
    **/
    @:keep
    public var call : (GoString, haxe.Rest<AnyInterface>) -> Value = null;
    /**
        // Length returns the JavaScript property "length" of v.
        // It panics if v is not a JavaScript object.
    **/
    @:keep
    public var length : () -> GoInt = null;
    /**
        // SetIndex sets the JavaScript index i of value v to ValueOf(x).
        // It panics if v is not a JavaScript object.
    **/
    @:keep
    public var setIndex : (GoInt, AnyInterface) -> Void = null;
    /**
        // Index returns JavaScript index i of value v.
        // It panics if v is not a JavaScript object.
    **/
    @:keep
    public var index : GoInt -> Value = null;
    /**
        // Delete deletes the JavaScript property p of value v.
        // It panics if v is not a JavaScript object.
    **/
    @:keep
    public var delete : GoString -> Void = null;
    /**
        // Set sets the JavaScript property p of value v to ValueOf(x).
        // It panics if v is not a JavaScript object.
    **/
    @:keep
    public var set : (GoString, AnyInterface) -> Void = null;
    /**
        // Get returns the JavaScript property p of value v.
        // It panics if v is not a JavaScript object.
    **/
    @:keep
    public var get : GoString -> Value = null;
    /**
        // Type returns the JavaScript type of the value v. It is similar to JavaScript's typeof operator,
        // except that it returns TypeNull instead of TypeObject for null.
    **/
    @:keep
    public var type : () -> Type = null;
    /**
        // IsNaN reports whether v is the JavaScript value "NaN".
    **/
    @:keep
    public var isNaN : () -> Bool = null;
    /**
        // IsNull reports whether v is the JavaScript value "null".
    **/
    @:keep
    public var isNull : () -> Bool = null;
    /**
        // IsUndefined reports whether v is the JavaScript value "undefined".
    **/
    @:keep
    public var isUndefined : () -> Bool = null;
    /**
        // Equal reports whether v and w are equal according to JavaScript's === operator.
    **/
    @:keep
    public var equal : Value -> Bool = null;
    public function new(__self__) this.__self__ = __self__;
    public function __underlying__() return Go.toInterface(__self__);
    var __self__ : Value;
}
@:keep class T_error_static_extension {
    /**
        // Error implements the error interface.
    **/
    @:keep
    static public function error( _e:T_error):GoString return (("" : GoString));
    @:embedded
    public static function _isNumber( __self__:T_error):Bool return __self__._isNumber();
    @:embedded
    public static function _float( __self__:T_error, _method:GoString):GoFloat64 return __self__._float(_method);
    @:embedded
    public static function type( __self__:T_error):Type return __self__.type();
    @:embedded
    public static function truthy( __self__:T_error):Bool return __self__.truthy();
    @:embedded
    public static function toString( __self__:T_error):GoString return __self__.toString();
    @:embedded
    public static function setIndex( __self__:T_error, _i:GoInt, _x:AnyInterface) __self__.setIndex(_i, _x);
    @:embedded
    public static function set( __self__:T_error, _p:GoString, _x:AnyInterface) __self__.set(_p, _x);
    @:embedded
    public static function new_( __self__:T_error, _args:haxe.Rest<AnyInterface>):Value return __self__.new_(_args);
    @:embedded
    public static function length( __self__:T_error):GoInt return __self__.length();
    @:embedded
    public static function isUndefined( __self__:T_error):Bool return __self__.isUndefined();
    @:embedded
    public static function isNull( __self__:T_error):Bool return __self__.isNull();
    @:embedded
    public static function isNaN( __self__:T_error):Bool return __self__.isNaN();
    @:embedded
    public static function invoke( __self__:T_error, _args:haxe.Rest<AnyInterface>):Value return __self__.invoke(_args);
    @:embedded
    public static function int( __self__:T_error):GoInt return __self__.int();
    @:embedded
    public static function instanceOf( __self__:T_error, _t:Value):Bool return __self__.instanceOf(_t);
    @:embedded
    public static function index( __self__:T_error, _i:GoInt):Value return __self__.index(_i);
    @:embedded
    public static function get( __self__:T_error, _p:GoString):Value return __self__.get(_p);
    @:embedded
    public static function float( __self__:T_error):GoFloat64 return __self__.float();
    @:embedded
    public static function equal( __self__:T_error, _w:Value):Bool return __self__.equal(_w);
    @:embedded
    public static function delete( __self__:T_error, _p:GoString) __self__.delete(_p);
    @:embedded
    public static function call( __self__:T_error, _m:GoString, _args:haxe.Rest<AnyInterface>):Value return __self__.call(_m, _args);
    @:embedded
    public static function bool( __self__:T_error):Bool return __self__.bool();
}
class T_error_wrapper {
    /**
        // Error implements the error interface.
    **/
    @:keep
    public var error : () -> GoString = null;
    @:embedded
    public var _isNumber : () -> Bool = null;
    @:embedded
    public var _float : GoString -> GoFloat64 = null;
    @:embedded
    public var type : () -> Type = null;
    @:embedded
    public var truthy : () -> Bool = null;
    @:embedded
    public var toString : () -> GoString = null;
    @:embedded
    public var setIndex : (GoInt, AnyInterface) -> Void = null;
    @:embedded
    public var set : (GoString, AnyInterface) -> Void = null;
    @:embedded
    public var new_ : haxe.Rest<AnyInterface> -> Value = null;
    @:embedded
    public var length : () -> GoInt = null;
    @:embedded
    public var isUndefined : () -> Bool = null;
    @:embedded
    public var isNull : () -> Bool = null;
    @:embedded
    public var isNaN : () -> Bool = null;
    @:embedded
    public var invoke : haxe.Rest<AnyInterface> -> Value = null;
    @:embedded
    public var int : () -> GoInt = null;
    @:embedded
    public var instanceOf : Value -> Bool = null;
    @:embedded
    public var index : GoInt -> Value = null;
    @:embedded
    public var get : GoString -> Value = null;
    @:embedded
    public var float : () -> GoFloat64 = null;
    @:embedded
    public var equal : Value -> Bool = null;
    @:embedded
    public var delete : GoString -> Void = null;
    @:embedded
    public var call : (GoString, haxe.Rest<AnyInterface>) -> Value = null;
    @:embedded
    public var bool : () -> Bool = null;
    public function new(__self__) this.__self__ = __self__;
    public function __underlying__() return Go.toInterface(__self__);
    var __self__ : T_error;
}
@:keep class ValueError_static_extension {
    @:keep
    static public function error( _e:ValueError):GoString return (("" : GoString));
}
class ValueError_wrapper {
    @:keep
    public var error : () -> GoString = null;
    public function new(__self__) this.__self__ = __self__;
    public function __underlying__() return Go.toInterface(__self__);
    var __self__ : ValueError;
}
@:keep class Type_static_extension {
    @:keep
    static public function _isObject( _t:Type):Bool return false;
    @:keep
    static public function toString( _t:Type):GoString return (("" : GoString));
}
class Type_wrapper {
    @:keep
    public var _isObject : () -> Bool = null;
    @:keep
    public var toString : () -> GoString = null;
    public function new(__self__) this.__self__ = __self__;
    public function __underlying__() return Go.toInterface(__self__);
    var __self__ : Type;
}
