package stdgo.syscall.js;

import stdgo.Chan;
import stdgo.Error;
import stdgo.Go;
import stdgo.GoArray;
import stdgo.GoMap;
import stdgo.GoString;
import stdgo.Pointer;
import stdgo.Slice;
import stdgo.StdGoTypes;

typedef Wrapper = StructType & {
	public function jsvalue():Value;
};

@:structInit class Func {
	public function release():Void {
		var _c = this.__copy__();
		_funcsMu.lock();
		_funcs.remove(_c._id);
		_funcsMu.unlock();
	}

	@:embedded
	public var value:Value = ((null : Value));
	public var _id:GoUInt32 = ((0 : GoUInt32));

	public function new(?value:Value, ?_id:GoUInt32)
		stdgo.internal.Macro.initLocals();

	public function bool():Bool
		return value.bool();

	public function call(_m:GoString, _args:Slice<AnyInterface>):Value
		return null;

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

	public function invoke(_args:Slice<AnyInterface>):Value
		return null;

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

	public function new_(_args:Slice<AnyInterface>):Value
		return null;

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
		return new Func(value, _id);
	}

	public function __set__(__tmp__) {
		this.value = __tmp__.value;
		this._id = __tmp__._id;
		return this;
	}
}

@:named class T_ref {
	public var __t__:GoUInt64;

	public function new(?t:GoUInt64) {
		__t__ = t == null ? 0 : t;
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	@:implicit
	public function toString():GoString
		return Go.string(__t__);

	public function __copy__()
		return new T_ref(__t__);
}

@:structInit class Value {
	public function instanceOf(_t:Value):Bool {
		var _v = this.__copy__();
		var _r:Bool = _valueInstanceOf(_v._ref, _t._ref);
		stdgo.runtime.Runtime.keepAlive(Go.toInterface(_v));
		stdgo.runtime.Runtime.keepAlive(Go.toInterface(_t));
		return _r;
	}

	public function toString():GoString {
		return "<bad>";
	}

	public function truthy():Bool {
		var _v = this.__copy__();
		if (_v.type().__t__ == typeUndefined.__t__ || _v.type().__t__ == typeNull.__t__) {
			return false;
		} else if (_v.type().__t__ == typeBoolean.__t__) {
			return _v.bool();
		} else if (_v.type().__t__ == typeNumber.__t__) {
			return _v._ref.__t__ != _valueNaN._ref.__t__ && _v._ref.__t__ != _valueZero._ref.__t__;
		} else if (_v.type().__t__ == typeString.__t__) {
			return _v.toString() != (("" : GoString));
		} else if (_v.type().__t__ == typeSymbol.__t__ || _v.type().__t__ == typeFunction.__t__ || _v.type().__t__ == typeObject.__t__) {
			return true;
		} else {
			throw "bad type";
		};
	}

	public function bool():Bool {
		var _v = this.__copy__();
		if (_v._ref.__t__ == _valueTrue._ref.__t__) {
			return true;
		} else if (_v._ref.__t__ == _valueFalse._ref.__t__) {
			return false;
		} else {
			throw Go.pointer(new ValueError(@:invalid_compositelit null));
		};
	}

	public function int():GoInt {
		var _v = this.__copy__();
		return ((_v._float("Value.Int") : GoInt));
	}

	public function float():GoFloat64 {
		var _v = this.__copy__();
		return _v._float("Value.Float");
	}

	public function _float(_method:GoString):GoFloat64 {
		var _v = this.__copy__();
		if (!_v._isNumber()) {
			throw Go.pointer(new ValueError(@:invalid_compositelit null));
		};
		if (_v._ref.__t__ == _valueZero._ref.__t__) {
			return ((0 : GoFloat64));
		};
		return ((((Go.pointer(_v._ref) : stdgo.unsafe.Unsafe.Pointer_)) : Pointer<GoFloat64>)).value;
	}

	public function _isNumber():Bool {
		return false;
	}

	public function new_(_args:haxe.Rest<AnyInterface>):Value {
		var _v = this.__copy__();
		var _args = new Slice<AnyInterface>(..._args);
		var __tmp__ = _makeArgs(_args),
			_argVals:Slice<Value> = __tmp__._0,
			_argRefs:Slice<T_ref> = __tmp__._1;
		var __tmp__ = _valueNew(_v._ref, _argRefs),
			_res:T_ref = __tmp__._0,
			_ok:Bool = __tmp__._1;
		stdgo.runtime.Runtime.keepAlive(Go.toInterface(_v));
		stdgo.runtime.Runtime.keepAlive(Go.toInterface(_argVals));
		if (!_ok) {
			{
				var _vType:Type = _v.type();
				if (_vType.__t__ != typeFunction.__t__) {
					throw Go.pointer(new ValueError(@:invalid_compositelit null));
				};
			};
			throw new T_error(@:invalid_compositelit null);
		};
		return _makeValue(_res);
	}

	public function invoke(_args:haxe.Rest<AnyInterface>):Value {
		var _v = this.__copy__();
		var _args = new Slice<AnyInterface>(..._args);
		var __tmp__ = _makeArgs(_args),
			_argVals:Slice<Value> = __tmp__._0,
			_argRefs:Slice<T_ref> = __tmp__._1;
		var __tmp__ = _valueInvoke(_v._ref, _argRefs),
			_res:T_ref = __tmp__._0,
			_ok:Bool = __tmp__._1;
		stdgo.runtime.Runtime.keepAlive(Go.toInterface(_v));
		stdgo.runtime.Runtime.keepAlive(Go.toInterface(_argVals));
		if (!_ok) {
			{
				var _vType:Type = _v.type();
				if (_vType.__t__ != typeFunction.__t__) {
					throw Go.pointer(new ValueError(@:invalid_compositelit null));
				};
			};
			throw new T_error(@:invalid_compositelit null);
		};
		return _makeValue(_res);
	}

	public function call(_m:GoString, _args:haxe.Rest<AnyInterface>):Value {
		var _v = this.__copy__();
		var _args = new Slice<AnyInterface>(..._args);
		var __tmp__ = _makeArgs(_args),
			_argVals:Slice<Value> = __tmp__._0,
			_argRefs:Slice<T_ref> = __tmp__._1;
		var __tmp__ = _valueCall(_v._ref, _m, _argRefs),
			_res:T_ref = __tmp__._0,
			_ok:Bool = __tmp__._1;
		stdgo.runtime.Runtime.keepAlive(Go.toInterface(_v));
		stdgo.runtime.Runtime.keepAlive(Go.toInterface(_argVals));
		if (!_ok) {
			{
				var _vType:Type = _v.type();
				if (!_vType._isObject()) {
					throw Go.pointer(new ValueError(@:invalid_compositelit null));
				};
			};
			{
				var _propType:Type = _v.get(_m).type();
				if (_propType.__t__ != typeFunction.__t__) {
					throw(("syscall/js: Value.Call: property " : GoString))
						+ _m
						+ ((" is not a function, got " : GoString))
						+ _propType.toString();
				};
			};
			throw new T_error(@:invalid_compositelit null);
		};
		return _makeValue(_res);
	}

	public function length():GoInt {
		var _v = this.__copy__();
		{
			var _vType:Type = _v.type();
			if (!_vType._isObject()) {
				throw Go.pointer(new ValueError(@:invalid_compositelit null));
			};
		};
		var _r:GoInt = _valueLength(_v._ref);
		stdgo.runtime.Runtime.keepAlive(Go.toInterface(_v));
		return _r;
	}

	public function setIndex(_i:GoInt, _x:AnyInterface):Void {
		var _v = this.__copy__();
		{
			var _vType:Type = _v.type();
			if (!_vType._isObject()) {
				throw Go.pointer(new ValueError(@:invalid_compositelit null));
			};
		};
		var _xv:Value = valueOf(Go.toInterface(_x));
		_valueSetIndex(_v._ref, _i, _xv._ref);
		stdgo.runtime.Runtime.keepAlive(Go.toInterface(_v));
		stdgo.runtime.Runtime.keepAlive(Go.toInterface(_xv));
	}

	public function index(_i:GoInt):Value {
		var _v = this.__copy__();
		{
			var _vType:Type = _v.type();
			if (!_vType._isObject()) {
				throw Go.pointer(new ValueError(@:invalid_compositelit null));
			};
		};
		var _r:Value = _makeValue(_valueIndex(_v._ref, _i));
		stdgo.runtime.Runtime.keepAlive(Go.toInterface(_v));
		return _r;
	}

	public function delete(_p:GoString):Void {
		var _v = this.__copy__();
		{
			var _vType:Type = _v.type();
			if (!_vType._isObject()) {
				throw Go.pointer(new ValueError(@:invalid_compositelit null));
			};
		};
		_valueDelete(_v._ref, _p);
		stdgo.runtime.Runtime.keepAlive(Go.toInterface(_v));
	}

	public function set(_p:GoString, _x:AnyInterface):Void {
		var _v = this.__copy__();
		{
			var _vType:Type = _v.type();
			if (!_vType._isObject()) {
				throw Go.pointer(new ValueError(@:invalid_compositelit null));
			};
		};
		var _xv:Value = valueOf(Go.toInterface(_x));
		_valueSet(_v._ref, _p, _xv._ref);
		stdgo.runtime.Runtime.keepAlive(Go.toInterface(_v));
		stdgo.runtime.Runtime.keepAlive(Go.toInterface(_xv));
	}

	public function get(_p:GoString):Value {
		var _v = this.__copy__();
		{
			var _vType:Type = _v.type();
			if (!_vType._isObject()) {
				throw Go.pointer(new ValueError(@:invalid_compositelit null));
			};
		};
		var _r:Value = _makeValue(_valueGet(_v._ref, _p));
		stdgo.runtime.Runtime.keepAlive(Go.toInterface(_v));
		return _r;
	}

	public function type():Type {
		throw "bad type";
	}

	public function isNaN():Bool {
		var _v = this.__copy__();
		return _v._ref.__t__ == _valueNaN._ref.__t__;
	}

	public function isNull():Bool {
		var _v = this.__copy__();
		return _v._ref.__t__ == _valueNull._ref.__t__;
	}

	public function isUndefined():Bool {
		var _v = this.__copy__();
		return _v._ref.__t__ == _valueUndefined._ref.__t__;
	}

	public function equal(_w:Value):Bool {
		var _v = this.__copy__();
		return _v._ref.__t__ == _w._ref.__t__ && _v._ref.__t__ != _valueNaN._ref.__t__;
	}

	public function jsvalue():Value {
		var _v = this.__copy__();
		return _v;
	}

	public var ___blank__0:GoArray<() -> Void> = new GoArray<() -> Void>(...[for (i in 0...0) null]);
	public var _ref:T_ref = ((null : T_ref));
	public var _gcPtr:Pointer<T_ref> = new Pointer<T_ref>().nil();

	public function new(?___blank__0:GoArray<() -> Void>, ?_ref:T_ref, ?_gcPtr:Pointer<T_ref>)
		stdgo.internal.Macro.initLocals();

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new Value(___blank__0, _ref, _gcPtr);
	}

	public function __set__(__tmp__) {
		this.___blank__0 = __tmp__.___blank__0;
		this._ref = __tmp__._ref;
		this._gcPtr = __tmp__._gcPtr;
		return this;
	}
}

@:structInit class T_error {
	public function error():GoString {
		var _e = this.__copy__();
		return (("JavaScript error: " : GoString)) + _e.get("message").toString();
	}

	@:embedded
	public var value:Value = ((null : Value));

	public function new(?value:Value)
		stdgo.internal.Macro.initLocals();

	public function bool():Bool
		return value.bool();

	public function call(_m:GoString, _args:Slice<AnyInterface>):Value
		return null;

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

	public function invoke(_args:Slice<AnyInterface>):Value
		return null;

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

	public function new_(_args:Slice<AnyInterface>):Value
		return null;

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
	public function _isObject():Bool {
		var _t = this.__copy__();
		return _t.__t__ == typeObject.__t__ || _t.__t__ == typeFunction.__t__;
	}

	public function toString():GoString {
		var _t = this.__copy__();
		if (_t.__t__ == typeUndefined.__t__) {
			return "undefined";
		} else if (_t.__t__ == typeNull.__t__) {
			return "null";
		} else if (_t.__t__ == typeBoolean.__t__) {
			return "boolean";
		} else if (_t.__t__ == typeNumber.__t__) {
			return "number";
		} else if (_t.__t__ == typeString.__t__) {
			return "string";
		} else if (_t.__t__ == typeSymbol.__t__) {
			return "symbol";
		} else if (_t.__t__ == typeObject.__t__) {
			return "object";
		} else if (_t.__t__ == typeFunction.__t__) {
			return "function";
		} else {
			throw "bad type";
		};
	}

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
	public function error():GoString {
		var _e = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		return (("syscall/js: call of " : GoString)) + _e.value.method + ((" on " : GoString)) + _e.value.type.toString();
	}

	public var method:GoString = (("" : GoString));
	public var type:Type = ((null : Type));

	public function new(?method:GoString, ?type:Type)
		stdgo.internal.Macro.initLocals();

	public function toString() {
		return '{' + Go.string(method) + " " + Go.string(type) + "}";
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

var _0:Wrapper = new Func(@:invalid_compositelit null);

final _typeFlagObject = (1 : GoUnTypedInt);

var _valueGlobal:Value = _predefValue(((5 : GoUInt32)), _typeFlagObject);
var _objectConstructor:Value = _valueGlobal.get("Object");
var _jsGo:Value = _predefValue(((6 : GoUInt32)), _typeFlagObject);
var _arrayConstructor:Value = _valueGlobal.get("Array");

var _funcs:GoMap<GoUInt32, (Value,
		Slice<Value>) -> AnyInterface> = new GoMap<GoUInt32, (Value,
			Slice<Value>) -> AnyInterface>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(uint32_kind),
			stdgo.reflect.Reflect.GoType.signature(false, [], [], stdgo.reflect.Reflect.GoType.invalidType))));

final _nanHead:GoInt64 = ((2146959360 : GoUnTypedInt));
final typeFunction:Type = new Type((7 : GoUnTypedInt));
var _valueUndefined:Value = @:invalid_compositelit null;

final typeSymbol:Type = new Type((5 : GoUnTypedInt));

final typeNumber:Type = new Type((3 : GoUnTypedInt));
final _typeFlagString = (2 : GoUnTypedInt);
final _typeFlagSymbol = (3 : GoUnTypedInt);
final _typeFlagNone:GoUnTypedInt = (0 : GoUnTypedInt);
var _valueFalse:Value = _predefValue(((4 : GoUInt32)), _typeFlagNone);
var _nextFuncID:GoUInt32 = ((1 : GoUInt32));
final typeUndefined:Type = new Type((0 : GoUnTypedInt));
var _valueZero:Value = _predefValue(((1 : GoUInt32)), _typeFlagNone);
var _valueTrue:Value = _predefValue(((3 : GoUInt32)), _typeFlagNone);
final typeString:Type = new Type((4 : GoUnTypedInt));
final typeBoolean:Type = new Type((2 : GoUnTypedInt));
final typeNull:Type = new Type((1 : GoUnTypedInt));
final _typeFlagFunction = (4 : GoUnTypedInt);
final typeObject:Type = new Type((6 : GoUnTypedInt));
var _funcsMu:stdgo.sync.Sync.Mutex = new stdgo.sync.Sync.Mutex();
var _valueNull:Value = _predefValue(((2 : GoUInt32)), _typeFlagNone);
var _valueNaN:Value = _predefValue(((0 : GoUInt32)), _typeFlagNone);

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
function funcOf(_fn:(_this:Value, _args:Slice<Value>) -> AnyInterface):Func {
	_funcsMu.lock();
	var _id:GoUInt32 = _nextFuncID;
	_nextFuncID++;
	_funcs[_id] = _fn;
	_funcsMu.unlock();
	return @:invalid_compositelit null;

}

/**
	// setEventHandler is defined in the runtime package.
**/
function _setEventHandler(_fn:() -> Void):Void {}

function _handleEvent():Void {
	var _cb:Value = _jsGo.get("_pendingEvent");
	if (_cb.isNull()) {
		return;
	};
	_jsGo.set("_pendingEvent", Go.toInterface(null_()));
	var _id:GoUInt32 = ((_cb.get("id").int() : GoUInt32));
	if (_id == ((0 : GoUInt32))) {
		{};
	};
	_funcsMu.lock();
	var __tmp__ = _funcs.exists(_id) ? {value: _funcs[_id], ok: true} : {value: _funcs.defaultValue(), ok: false},
		_f:(Value, Slice<Value>) -> AnyInterface = __tmp__.value,
		_ok:Bool = __tmp__.ok;
	_funcsMu.unlock();
	if (!_ok) {
		global().get("console").call("error", Go.toInterface("call to released function"));
		return;
	};
	var _this:Value = _cb.get("this");
	var _argsObj:Value = _cb.get("args");
	var _args:Slice<Value> = new Slice<Value>(...[for (i in 0...((_argsObj.length() : GoInt)).toBasic()) ((null : Value))]);
	{
		var _i;
		for (_obj in _args.keyValueIterator()) {
			_i = _obj.key;
			_args[_i] = _argsObj.index(_i);
		};
	};
	var _result:AnyInterface = Go.toInterface(_f(_this, _args));
	_cb.set("result", Go.toInterface(_result));
}

function _makeValue(_r:T_ref):Value {
	return null;
}

function _finalizeRef(_r:T_ref):Void {}

function _predefValue(_id:GoUInt32, _typeFlag:GoByte):Value {
	return null;
}

function _floatValue(_f:GoFloat64):Value {
	return null;
}

/**
	// Undefined returns the JavaScript value "undefined".
**/
function undefined():Value {
	return _valueUndefined;
}

/**
	// Null returns the JavaScript value "null".
**/
function null_():Value {
	return _valueNull;
}

/**
	// Global returns the JavaScript global object, usually "window" or "global".
**/
function global():Value {
	return _valueGlobal;
}

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
function valueOf(_x:AnyInterface):Value {
	if (Go.assertable(((_x : Value)))) {
		var _x:Value = _x == null ? null : _x.__underlying__() == null ? null : _x == null ? null : _x.__underlying__().value;
		return _x;
	} else if (Go.assertable(((_x : Wrapper)))) {
		var _x:Wrapper = _x == null ? null : _x.__underlying__() == null ? null : _x == null ? null : _x.__underlying__().value;
		return _x.jsvalue();
	} else if (_x == null) {
		var _x:AnyInterface = _x == null ? null : _x.__underlying__();
		return _valueNull;
	} else if (Go.assertable(((_x : Bool)))) {
		var _x:Bool = _x == null ? null : _x.__underlying__() == null ? null : _x == null ? null : _x.__underlying__().value;
		if (_x) {
			return _valueTrue;
		} else {
			return _valueFalse;
		};
	} else if (Go.assertable(((_x : GoInt)))) {
		var _x:GoInt = _x == null ? null : _x.__underlying__() == null ? null : _x == null ? null : _x.__underlying__().value;
		return _floatValue(((_x : GoFloat64)));
	} else if (Go.assertable(((_x : GoInt8)))) {
		var _x:GoInt8 = _x == null ? null : _x.__underlying__() == null ? null : _x == null ? null : _x.__underlying__().value;
		return _floatValue(((_x : GoFloat64)));
	} else if (Go.assertable(((_x : GoInt16)))) {
		var _x:GoInt16 = _x == null ? null : _x.__underlying__() == null ? null : _x == null ? null : _x.__underlying__().value;
		return _floatValue(((_x : GoFloat64)));
	} else if (Go.assertable(((_x : GoInt32)))) {
		var _x:GoInt32 = _x == null ? null : _x.__underlying__() == null ? null : _x == null ? null : _x.__underlying__().value;
		return _floatValue(((_x : GoFloat64)));
	} else if (Go.assertable(((_x : GoInt64)))) {
		var _x:GoInt64 = _x == null ? null : _x.__underlying__() == null ? null : _x == null ? null : _x.__underlying__().value;
		return _floatValue(((_x : GoFloat64)));
	} else if (Go.assertable(((_x : GoUInt)))) {
		var _x:GoUInt = _x == null ? null : _x.__underlying__() == null ? null : _x == null ? null : _x.__underlying__().value;
		return _floatValue(((_x : GoFloat64)));
	} else if (Go.assertable(((_x : GoUInt8)))) {
		var _x:GoUInt8 = _x == null ? null : _x.__underlying__() == null ? null : _x == null ? null : _x.__underlying__().value;
		return _floatValue(((_x : GoFloat64)));
	} else if (Go.assertable(((_x : GoUInt16)))) {
		var _x:GoUInt16 = _x == null ? null : _x.__underlying__() == null ? null : _x == null ? null : _x.__underlying__().value;
		return _floatValue(((_x : GoFloat64)));
	} else if (Go.assertable(((_x : GoUInt32)))) {
		var _x:GoUInt32 = _x == null ? null : _x.__underlying__() == null ? null : _x == null ? null : _x.__underlying__().value;
		return _floatValue(((_x : GoFloat64)));
	} else if (Go.assertable(((_x : GoUInt64)))) {
		var _x:GoUInt64 = _x == null ? null : _x.__underlying__() == null ? null : _x == null ? null : _x.__underlying__().value;
		return _floatValue(((_x : GoFloat64)));
	} else if (Go.assertable(((_x : GoUIntptr)))) {
		var _x:GoUIntptr = _x == null ? null : _x.__underlying__() == null ? null : _x == null ? null : _x.__underlying__().value;
		return _floatValue(((_x : GoFloat64)));
	} else if (Go.assertable(((_x : stdgo.unsafe.Unsafe.Pointer_)))) {
		var _x:stdgo.unsafe.Unsafe.UnsafePointer = _x == null ? null : _x.__underlying__() == null ? null : _x == null ? null : _x.__underlying__().value;
		return _floatValue(((((_x : GoUIntptr)) : GoFloat64)));
	} else if (Go.assertable(((_x : GoFloat32)))) {
		var _x:GoFloat32 = _x == null ? null : _x.__underlying__() == null ? null : _x == null ? null : _x.__underlying__().value;
		return _floatValue(((_x : GoFloat64)));
	} else if (Go.assertable(((_x : GoFloat64)))) {
		var _x:GoFloat64 = _x == null ? null : _x.__underlying__() == null ? null : _x == null ? null : _x.__underlying__().value;
		return _floatValue(_x);
	} else if (Go.assertable(((_x : GoString)))) {
		var _x:GoString = _x == null ? null : _x.__underlying__() == null ? null : _x == null ? null : _x.__underlying__().value;
		return _makeValue(_stringVal(_x));
	} else if (Go.assertable(((_x : Slice<AnyInterface>)))) {
		var _x:Slice<AnyInterface> = _x == null ? null : _x.__underlying__() == null ? null : _x == null ? null : _x.__underlying__().value;
		var _a:Value = _arrayConstructor.new_(Go.toInterface(_x.length));
		{
			var _i;
			var _s;
			for (_obj in _x.keyValueIterator()) {
				_i = _obj.key;
				_s = _obj.value;
				_a.setIndex(_i, Go.toInterface(_s));
			};
		};
		return _a;
	} else if (Go.assertable(((_x : GoMap<GoString, AnyInterface>)))) {
		var _x:GoMap<GoString, AnyInterface> = _x == null ? null : _x.__underlying__() == null ? null : _x == null ? null : _x.__underlying__().value;
		var _o:Value = _objectConstructor.new_();
		{
			var _k;
			var _v;
			for (_obj in _x.keyValueIterator()) {
				_k = _obj.key;
				_v = _obj.value;
				_o.set(_k, Go.toInterface(_v));
			};
		};
		return _o;
	} else {
		var _x:AnyInterface = _x == null ? null : _x.__underlying__();
		throw "ValueOf: invalid value";
	};
}

function _stringVal(_x:GoString):T_ref
	throw "not implemeneted";

function _valueGet(_v:T_ref, _p:GoString):T_ref
	throw "not implemeneted";

function _valueSet(_v:T_ref, _p:GoString, _x:T_ref):Void {}
function _valueDelete(_v:T_ref, _p:GoString):Void {}

function _valueIndex(_v:T_ref, _i:GoInt):T_ref
	throw "not implemeneted";

function _valueSetIndex(_v:T_ref, _i:GoInt, _x:T_ref):Void {}

function _makeArgs(_args:Slice<AnyInterface>):{var _0:Slice<Value>; var _1:Slice<T_ref>;} {
	var _argVals:Slice<Value> = new Slice<Value>(...[for (i in 0...((_args.length : GoInt)).toBasic()) ((null : Value))]);
	var _argRefs:Slice<T_ref> = new Slice<T_ref>(...[for (i in 0...((_args.length : GoInt)).toBasic()) ((null : T_ref))]);
	{
		var _i;
		var _arg;
		for (_obj in _args.keyValueIterator()) {
			_i = _obj.key;
			_arg = _obj.value;
			var _v:Value = valueOf(Go.toInterface(_arg));
			_argVals[_i] = _v;
			_argRefs[_i] = _v._ref;
		};
	};
	return {_0: _argVals, _1: _argRefs};
}

function _valueLength(_v:T_ref):GoInt
	throw "not implemeneted";

function _valueCall(_v:T_ref, _m:GoString, _args:Slice<T_ref>):{var _0:T_ref; var _1:Bool;}
	throw "not implemeneted";

function _valueInvoke(_v:T_ref, _args:Slice<T_ref>):{var _0:T_ref; var _1:Bool;}
	throw "not implemeneted";

function _valueNew(_v:T_ref, _args:Slice<T_ref>):{var _0:T_ref; var _1:Bool;}
	throw "not implemeneted";

function _jsString(_v:Value):GoString {
	var __tmp__ = _valuePrepareString(_v._ref),
		_str:T_ref = __tmp__._0,
		_length:GoInt = __tmp__._1;
	stdgo.runtime.Runtime.keepAlive(Go.toInterface(_v));
	var _b:Slice<GoUInt8> = new Slice<GoUInt8>(...[for (i in 0...((_length : GoInt)).toBasic()) ((0 : GoUInt8))]);
	_valueLoadString(_str, _b);
	_finalizeRef(_str);
	return ((_b : GoString));
}

function _valuePrepareString(_v:T_ref):{var _0:T_ref; var _1:GoInt;}
	throw "not implemeneted";

function _valueLoadString(_v:T_ref, _b:Slice<GoByte>):Void {}

function _valueInstanceOf(_v:T_ref, _t:T_ref):Bool
	throw "not implemeneted";

/**
	// CopyBytesToGo copies bytes from src to dst.
	// It panics if src is not an Uint8Array or Uint8ClampedArray.
	// It returns the number of bytes copied, which will be the minimum of the lengths of src and dst.
**/
function copyBytesToGo(_dst:Slice<GoByte>, _src:Value):GoInt {
	var __tmp__ = _copyBytesToGo(_dst, _src._ref),
		_n:GoInt = __tmp__._0,
		_ok:Bool = __tmp__._1;
	stdgo.runtime.Runtime.keepAlive(Go.toInterface(_src));
	if (!_ok) {
		throw "syscall/js: CopyBytesToGo: expected src to be an Uint8Array or Uint8ClampedArray";
	};
	return _n;
}

function _copyBytesToGo(_dst:Slice<GoByte>, _src:T_ref):{var _0:GoInt; var _1:Bool;}
	throw "not implemeneted";

/**
	// CopyBytesToJS copies bytes from src to dst.
	// It panics if dst is not an Uint8Array or Uint8ClampedArray.
	// It returns the number of bytes copied, which will be the minimum of the lengths of src and dst.
**/
function copyBytesToJS(_dst:Value, _src:Slice<GoByte>):GoInt {
	var __tmp__ = _copyBytesToJS(_dst._ref, _src),
		_n:GoInt = __tmp__._0,
		_ok:Bool = __tmp__._1;
	stdgo.runtime.Runtime.keepAlive(Go.toInterface(_dst));
	if (!_ok) {
		throw "syscall/js: CopyBytesToJS: expected dst to be an Uint8Array or Uint8ClampedArray";
	};
	return _n;
}

function _copyBytesToJS(_dst:T_ref, _src:Slice<GoByte>):{var _0:GoInt; var _1:Bool;}
	throw "not implemeneted";

@:keep var _ = {
	try {
		_setEventHandler(_handleEvent);
	} catch (e)
		if (e.message != "__return__")
			throw e;
	true;
};

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

	public function _isNumber(__tmp__):Bool
		return __tmp__._isNumber();

	public function _float(__tmp__, _method:GoString):GoFloat64
		return __tmp__._float(_method);

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

	public function _isObject(__tmp__):Bool
		return __tmp__._isObject();
}

class ValueError_extension_fields {
	public function error(__tmp__):GoString
		return __tmp__.error();
}
