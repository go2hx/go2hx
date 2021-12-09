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

typedef Wrapper = StructType & {
	public function jsvalue():Value;
};

@:structInit class Func {
	public function release():Void
		return;

	@:embedded
	public var value:Value = ((null : Value));

	public function new(?value:Value) {
		if (value != null)
			this.value = value;
	}

	public function bool():Bool
		return value.bool();

	public function call(_m:GoString, _args:haxe.Rest<AnyInterface>):Value
		return value.call(_m, ..._args);

	public function delete(_p:GoString)
		value.delete(_p);

	public function equal(_w:Value):Bool
		return value.equal(_w);

	public function float():GoFloat64
		return value.float();

	public function get(_p:GoString):Value
		return value.get(_p);

	public function index(_i:GoInt):Value
		return value.index(_i);

	public function instanceOf(_t:Value):Bool
		return value.instanceOf(_t);

	public function int():GoInt
		return value.int();

	public function invoke(_args:haxe.Rest<AnyInterface>):Value
		return value.invoke(..._args);

	public function isNaN():Bool
		return value.isNaN();

	public function isNull():Bool
		return value.isNull();

	public function isUndefined():Bool
		return value.isUndefined();

	public function jsvalue():Value
		return value.jsvalue();

	public function length():GoInt
		return value.length();

	public function new_(_args:haxe.Rest<AnyInterface>):Value
		return value.new_(..._args);

	public function set(_p:GoString, _x:AnyInterface)
		value.set(_p, _x);

	public function setIndex(_i:GoInt, _x:AnyInterface)
		value.setIndex(_i, _x);

	public function toString():GoString
		return value.toString();

	public function truthy():Bool
		return value.truthy();

	public function type():Type
		return value.type();

	public function _float(_method:GoString):GoFloat64
		return value._float(_method);

	public function _isNumber():Bool
		return value._isNumber();

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new Func(value);
	}

	public function __set__(__tmp__) {
		this.value = __tmp__.value;
		return this;
	}
}

@:structInit class Value {
	public function instanceOf(_t:Value):Bool
		return false;

	public function toString():GoString
		return (("" : GoString));

	public function truthy():Bool
		return false;

	public function bool():Bool
		return false;

	public function int():GoInt
		return ((0 : GoInt));

	public function float():GoFloat64
		return ((0 : GoFloat64));

	public function new_(_args:haxe.Rest<AnyInterface>):Value
		return ((null : Value));

	public function invoke(_args:haxe.Rest<AnyInterface>):Value
		return ((null : Value));

	public function call(_m:GoString, _args:haxe.Rest<AnyInterface>):Value
		return ((null : Value));

	public function length():GoInt
		return ((0 : GoInt));

	public function setIndex(_i:GoInt, _x:AnyInterface):Void
		return;

	public function index(_i:GoInt):Value
		return ((null : Value));

	public function delete(_p:GoString):Void
		return;

	public function set(_p:GoString, _x:AnyInterface):Void
		return;

	public function get(_p:GoString):Value
		return ((null : Value));

	public function type():Type
		return ((null : Type));

	public function isNaN():Bool
		return false;

	public function isNull():Bool
		return false;

	public function isUndefined():Bool
		return false;

	public function equal(_w:Value):Bool
		return false;

	public function jsvalue():Value
		return ((null : Value));

	public function new() {}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new Value();
	}

	public function __set__(__tmp__) {
		return this;
	}
}

@:structInit class T_error {
	public function error():GoString
		return (("" : GoString));

	@:embedded
	public var value:Value = ((null : Value));

	public function new(?value:Value) {
		if (value != null)
			this.value = value;
	}

	public function bool():Bool
		return value.bool();

	public function call(_m:GoString, _args:haxe.Rest<AnyInterface>):Value
		return value.call(_m, ..._args);

	public function delete(_p:GoString)
		value.delete(_p);

	public function equal(_w:Value):Bool
		return value.equal(_w);

	public function float():GoFloat64
		return value.float();

	public function get(_p:GoString):Value
		return value.get(_p);

	public function index(_i:GoInt):Value
		return value.index(_i);

	public function instanceOf(_t:Value):Bool
		return value.instanceOf(_t);

	public function int():GoInt
		return value.int();

	public function invoke(_args:haxe.Rest<AnyInterface>):Value
		return value.invoke(..._args);

	public function isNaN():Bool
		return value.isNaN();

	public function isNull():Bool
		return value.isNull();

	public function isUndefined():Bool
		return value.isUndefined();

	public function jsvalue():Value
		return value.jsvalue();

	public function length():GoInt
		return value.length();

	public function new_(_args:haxe.Rest<AnyInterface>):Value
		return value.new_(..._args);

	public function set(_p:GoString, _x:AnyInterface)
		value.set(_p, _x);

	public function setIndex(_i:GoInt, _x:AnyInterface)
		value.setIndex(_i, _x);

	public function toString():GoString
		return value.toString();

	public function truthy():Bool
		return value.truthy();

	public function type():Type
		return value.type();

	public function _float(_method:GoString):GoFloat64
		return value._float(_method);

	public function _isNumber():Bool
		return value._isNumber();

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new T_error(value);
	}

	public function __set__(__tmp__) {
		this.value = __tmp__.value;
		return this;
	}
}

@:named class Type {
	public function toString():GoString
		return (("" : GoString));

	public var __t__:GoInt;

	public function new(?t:GoInt) {
		__t__ = t == null ? 0 : t;
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__()
		return new Type(__t__);
}

@:structInit class ValueError {
	public function error():GoString
		return (("" : GoString));

	public var method:GoString = (("" : GoString));
	public var type:Type = ((null : Type));

	public function new(?method:GoString, ?type:Type) {
		if (method != null)
			this.method = method;
		if (type != null)
			this.type = type;
	}

	public function toString() {
		return "{" + Go.string(method) + " " + Go.string(type) + "}";
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new ValueError(method, type);
	}

	public function __set__(__tmp__) {
		this.method = __tmp__.method;
		this.type = __tmp__.type;
		return this;
	}
}

final typeBoolean:Type = new Type((2 : GoUnTypedInt));
final typeFunction:Type = new Type((7 : GoUnTypedInt));
final typeObject:Type = new Type((6 : GoUnTypedInt));
final typeNull:Type = new Type((1 : GoUnTypedInt));
final typeUndefined:Type = new Type((0 : GoUnTypedInt));
final typeSymbol:Type = new Type((5 : GoUnTypedInt));
final typeString:Type = new Type((4 : GoUnTypedInt));
final typeNumber:Type = new Type((3 : GoUnTypedInt));

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
function funcOf(_fn:(_this:Value, _args:Slice<Value>) -> AnyInterface):Func
	return ((null : Func));

/**
	// Undefined returns the JavaScript value "undefined".
**/
function undefined():Value
	return ((null : Value));

/**
	// Null returns the JavaScript value "null".
**/
function null_():Value
	return ((null : Value));

/**
	// Global returns the JavaScript global object, usually "window" or "global".
**/
function global():Value
	return ((null : Value));

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
function valueOf(_x:AnyInterface):Value
	return ((null : Value));

/**
	// CopyBytesToGo copies bytes from src to dst.
	// It panics if src is not an Uint8Array or Uint8ClampedArray.
	// It returns the number of bytes copied, which will be the minimum of the lengths of src and dst.
**/
function copyBytesToGo(_dst:Slice<GoByte>, _src:Value):GoInt
	return ((0 : GoInt));

/**
	// CopyBytesToJS copies bytes from src to dst.
	// It panics if dst is not an Uint8Array or Uint8ClampedArray.
	// It returns the number of bytes copied, which will be the minimum of the lengths of src and dst.
**/
function copyBytesToJS(_dst:Value, _src:Slice<GoByte>):GoInt
	return ((0 : GoInt));

class Func_extension_fields {
	public function release(__tmp__):Void
		__tmp__.release();
}

class Value_extension_fields {
	public function jsvalue(__tmp__):Value
		return __tmp__.jsvalue();

	public function equal(__tmp__, _w:Value):Bool
		return __tmp__.equal(_w);

	public function isUndefined(__tmp__):Bool
		return __tmp__.isUndefined();

	public function isNull(__tmp__):Bool
		return __tmp__.isNull();

	public function isNaN(__tmp__):Bool
		return __tmp__.isNaN();

	public function type(__tmp__):Type
		return __tmp__.type();

	public function get(__tmp__, _p:GoString):Value
		return __tmp__.get(_p);

	public function set(__tmp__, _p:GoString, _x:AnyInterface):Void
		__tmp__.set(_p, _x);

	public function delete(__tmp__, _p:GoString):Void
		__tmp__.delete(_p);

	public function index(__tmp__, _i:GoInt):Value
		return __tmp__.index(_i);

	public function setIndex(__tmp__, _i:GoInt, _x:AnyInterface):Void
		__tmp__.setIndex(_i, _x);

	public function length(__tmp__):GoInt
		return __tmp__.length();

	public function call(__tmp__, _m:GoString, _args:haxe.Rest<AnyInterface>):Value
		return __tmp__.call(_m, _args);

	public function invoke(__tmp__, _args:haxe.Rest<AnyInterface>):Value
		return __tmp__.invoke(_args);

	public function new_(__tmp__, _args:haxe.Rest<AnyInterface>):Value
		return __tmp__.new_(_args);

	public function float(__tmp__):GoFloat64
		return __tmp__.float();

	public function int(__tmp__):GoInt
		return __tmp__.int();

	public function bool(__tmp__):Bool
		return __tmp__.bool();

	public function truthy(__tmp__):Bool
		return __tmp__.truthy();

	public function toString(__tmp__):GoString
		return __tmp__.toString();

	public function instanceOf(__tmp__, _t:Value):Bool
		return __tmp__.instanceOf(_t);
}

class T_error_extension_fields {
	public function error(__tmp__):GoString
		return __tmp__.error();
}

class Type_extension_fields {
	public function toString(__tmp__):GoString
		return __tmp__.toString();
}

class ValueError_extension_fields {
	public function error(__tmp__):GoString
		return __tmp__.error();
}
