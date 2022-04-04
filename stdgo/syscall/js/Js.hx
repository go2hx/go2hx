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
var _valueUndefined : Value = @:invalid_compositelit null;
var _valueNaN : Value = _predefValue(((0 : GoUInt32)), ((0 : GoUInt8)));
var _valueZero : Value = _predefValue(((1 : GoUInt32)), ((0 : GoUInt8)));
var _valueNull : Value = _predefValue(((2 : GoUInt32)), ((0 : GoUInt8)));
var _valueTrue : Value = _predefValue(((3 : GoUInt32)), ((0 : GoUInt8)));
var _valueFalse : Value = _predefValue(((4 : GoUInt32)), ((0 : GoUInt8)));
var _valueGlobal : Value = _predefValue(((5 : GoUInt32)), ((1 : GoUInt8)));
var _jsGo : Value = _predefValue(((6 : GoUInt32)), ((1 : GoUInt8)));
var _objectConstructor : Value = _valueGlobal.get(((("Object" : GoString))));
var _arrayConstructor : Value = _valueGlobal.get(((("Array" : GoString))));
var _funcsMu : stdgo.sync.Sync.Mutex = new stdgo.sync.Sync.Mutex();
@:structInit @:using(Js.Func_static_extension) class Func {
    public function release():Void {
        var _c = this;
        _c;
        _funcsMu.lock();
        _funcs.remove(_c._id);
        _funcsMu.unlock();
    }
    @:embedded
    public var value : Value = new Value();
    public var _id : GoUInt32 = ((0 : GoUInt32));
    public function new(?value:Value, ?_id:GoUInt32) {
        if (value != null) this.value = value;
        if (_id != null) this._id = _id;
    }
    public function bool():Bool return value.bool();
    public function call(_m:GoString, _args:haxe.Rest<AnyInterface>):Value return value.call(_m, ..._args);
    public function delete(_p:GoString) value.delete(_p);
    public function equal(_w:Value):Bool return value.equal(_w);
    public function float():GoFloat64 return value.float();
    public function get(_p:GoString):Value return value.get(_p);
    public function index(_i:GoInt):Value return value.index(_i);
    public function instanceOf(_t:Value):Bool return value.instanceOf(_t);
    public function int():GoInt return value.int();
    public function invoke(_args:haxe.Rest<AnyInterface>):Value return value.invoke(..._args);
    public function isNaN():Bool return value.isNaN();
    public function isNull():Bool return value.isNull();
    public function isUndefined():Bool return value.isUndefined();
    public function length():GoInt return value.length();
    public function new_(_args:haxe.Rest<AnyInterface>):Value return value.new_(..._args);
    public function set(_p:GoString, _x:AnyInterface) value.set(_p, _x);
    public function setIndex(_i:GoInt, _x:AnyInterface) value.setIndex(_i, _x);
    public function toString():GoString return value.toString();
    public function truthy():Bool return value.truthy();
    public function type():Type return value.type();
    public function _float(_method:GoString):GoFloat64 return value._float(_method);
    public function _isNumber():Bool return value._isNumber();
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new Func(value, _id);
    }
}
@:named typedef T_ref = GoUInt64;
@:structInit @:using(Js.Value_static_extension) class Value {
    public function instanceOf(_t:Value):Bool {
        var _v = this;
        _v;
        var _r:Bool = _valueInstanceOf(_v._ref, _t._ref);
        stdgo.runtime.Runtime.keepAlive(Go.toInterface(_v));
        stdgo.runtime.Runtime.keepAlive(Go.toInterface(_t));
        return _r;
    }
    public function toString():GoString {
        var _v = this;
        _v;
        if (_v.type() == ((4 : GoInt64))) {
            return _jsString(_v);
        } else if (_v.type() == ((0 : GoInt64))) {
            return ((("<undefined>" : GoString)));
        } else if (_v.type() == ((1 : GoInt64))) {
            return ((("<null>" : GoString)));
        } else if (_v.type() == ((2 : GoInt64))) {
            return (((("<boolean: " : GoString))) + _jsString(_v)) + (((">" : GoString)));
        } else if (_v.type() == ((3 : GoInt64))) {
            return (((("<number: " : GoString))) + _jsString(_v)) + (((">" : GoString)));
        } else if (_v.type() == ((5 : GoInt64))) {
            return ((("<symbol>" : GoString)));
        } else if (_v.type() == ((6 : GoInt64))) {
            return ((("<object>" : GoString)));
        } else if (_v.type() == ((7 : GoInt64))) {
            return ((("<function>" : GoString)));
        } else {
            throw Go.toInterface(((("bad type" : GoString))));
        };
    }
    public function truthy():Bool {
        var _v = this;
        _v;
        if (_v.type() == ((0 : GoInt64)) || _v.type() == ((1 : GoInt64))) {
            return false;
        } else if (_v.type() == ((2 : GoInt64))) {
            return _v.bool();
        } else if (_v.type() == ((3 : GoInt64))) {
            return (_v._ref != _valueNaN._ref) && (_v._ref != _valueZero._ref);
        } else if (_v.type() == ((4 : GoInt64))) {
            return ((_v.toString() : GoString)) != ("");
        } else if (_v.type() == ((5 : GoInt64)) || _v.type() == ((7 : GoInt64)) || _v.type() == ((6 : GoInt64))) {
            return true;
        } else {
            throw Go.toInterface(((("bad type" : GoString))));
        };
    }
    public function bool():Bool {
        var _v = this;
        _v;
        if (_v._ref == _valueTrue._ref) {
            return true;
        } else if (_v._ref == _valueFalse._ref) {
            return false;
        } else {
            throw Go.toInterface(@:invalid_compositelit null);
        };
    }
    public function int():GoInt {
        var _v = this;
        _v;
        return ((_v._float(((("Value.Int" : GoString)))) : GoInt));
    }
    public function float():GoFloat64 {
        var _v = this;
        _v;
        return _v._float(((("Value.Float" : GoString))));
    }
    public function _float(_method:GoString):GoFloat64 {
        var _v = this;
        _v;
        if (!_v._isNumber()) {
            throw Go.toInterface(@:invalid_compositelit null);
        };
        if (_v._ref == _valueZero._ref) {
            return ((0 : GoFloat64));
        };
        return ((((_v._ref : stdgo.unsafe.Unsafe.Pointer_)) : Pointer<GoFloat64>)).value;
    }
    public function _isNumber():Bool {
        var _v = this;
        _v;
        return ((_v._ref == _valueZero._ref) || (_v._ref == _valueNaN._ref)) || ((_v._ref != _valueUndefined._ref) && (((_v._ref >> ((32 : GoUnTypedInt))) & ((2146959360 : GoInt))) != ((2146959360 : GoInt))));
    }
    public function new_(_args:haxe.Rest<AnyInterface>):Value {
        var _v = this;
        _v;
        var _args = new Slice<AnyInterface>(..._args);
        var __tmp__ = _makeArgs(_args), _argVals:Slice<Value> = __tmp__._0, _argRefs:Slice<T_ref> = __tmp__._1;
        var __tmp__ = _valueNew(_v._ref, _argRefs), _res:T_ref = __tmp__._0, _ok:Bool = __tmp__._1;
        stdgo.runtime.Runtime.keepAlive(Go.toInterface(_v));
        stdgo.runtime.Runtime.keepAlive(Go.toInterface(_argVals));
        if (!_ok) {
            {
                var _vType:Type = _v.type();
                if (_vType != ((7 : GoInt))) {
                    throw Go.toInterface(@:invalid_compositelit null);
                };
            };
            throw Go.toInterface(@:invalid_compositelit null);
        };
        return _makeValue(_res);
    }
    public function invoke(_args:haxe.Rest<AnyInterface>):Value {
        var _v = this;
        _v;
        var _args = new Slice<AnyInterface>(..._args);
        var __tmp__ = _makeArgs(_args), _argVals:Slice<Value> = __tmp__._0, _argRefs:Slice<T_ref> = __tmp__._1;
        var __tmp__ = _valueInvoke(_v._ref, _argRefs), _res:T_ref = __tmp__._0, _ok:Bool = __tmp__._1;
        stdgo.runtime.Runtime.keepAlive(Go.toInterface(_v));
        stdgo.runtime.Runtime.keepAlive(Go.toInterface(_argVals));
        if (!_ok) {
            {
                var _vType:Type = _v.type();
                if (_vType != ((7 : GoInt))) {
                    throw Go.toInterface(@:invalid_compositelit null);
                };
            };
            throw Go.toInterface(@:invalid_compositelit null);
        };
        return _makeValue(_res);
    }
    public function call(_m:GoString, _args:haxe.Rest<AnyInterface>):Value {
        var _v = this;
        _v;
        var _args = new Slice<AnyInterface>(..._args);
        var __tmp__ = _makeArgs(_args), _argVals:Slice<Value> = __tmp__._0, _argRefs:Slice<T_ref> = __tmp__._1;
        var __tmp__ = _valueCall(_v._ref, _m, _argRefs), _res:T_ref = __tmp__._0, _ok:Bool = __tmp__._1;
        stdgo.runtime.Runtime.keepAlive(Go.toInterface(_v));
        stdgo.runtime.Runtime.keepAlive(Go.toInterface(_argVals));
        if (!_ok) {
            {
                var _vType:Type = _v.type();
                if (!_vType._isObject()) {
                    throw Go.toInterface(@:invalid_compositelit null);
                };
            };
            {
                var _propType:Type = _v.get(_m).type();
                if (_propType != ((7 : GoInt))) {
                    throw Go.toInterface(((((("syscall/js: Value.Call: property " : GoString))) + _m) + (((" is not a function, got " : GoString)))) + ((_propType.toString() : GoString)));
                };
            };
            throw Go.toInterface(@:invalid_compositelit null);
        };
        return _makeValue(_res);
    }
    public function length():GoInt {
        var _v = this;
        _v;
        {
            var _vType:Type = _v.type();
            if (!_vType._isObject()) {
                throw Go.toInterface(@:invalid_compositelit null);
            };
        };
        var _r:GoInt = _valueLength(_v._ref);
        stdgo.runtime.Runtime.keepAlive(Go.toInterface(_v));
        return _r;
    }
    public function setIndex(_i:GoInt, _x:AnyInterface):Void {
        var _v = this;
        _v;
        {
            var _vType:Type = _v.type();
            if (!_vType._isObject()) {
                throw Go.toInterface(@:invalid_compositelit null);
            };
        };
        var _xv:Value = valueOf(Go.toInterface(_x));
        _valueSetIndex(_v._ref, _i, _xv._ref);
        stdgo.runtime.Runtime.keepAlive(Go.toInterface(_v));
        stdgo.runtime.Runtime.keepAlive(Go.toInterface(_xv));
    }
    public function index(_i:GoInt):Value {
        var _v = this;
        _v;
        {
            var _vType:Type = _v.type();
            if (!_vType._isObject()) {
                throw Go.toInterface(@:invalid_compositelit null);
            };
        };
        var _r:Value = _makeValue(_valueIndex(_v._ref, _i));
        stdgo.runtime.Runtime.keepAlive(Go.toInterface(_v));
        return _r;
    }
    public function delete(_p:GoString):Void {
        var _v = this;
        _v;
        {
            var _vType:Type = _v.type();
            if (!_vType._isObject()) {
                throw Go.toInterface(@:invalid_compositelit null);
            };
        };
        _valueDelete(_v._ref, _p);
        stdgo.runtime.Runtime.keepAlive(Go.toInterface(_v));
    }
    public function set(_p:GoString, _x:AnyInterface):Void {
        var _v = this;
        _v;
        {
            var _vType:Type = _v.type();
            if (!_vType._isObject()) {
                throw Go.toInterface(@:invalid_compositelit null);
            };
        };
        var _xv:Value = valueOf(Go.toInterface(_x));
        _valueSet(_v._ref, _p, _xv._ref);
        stdgo.runtime.Runtime.keepAlive(Go.toInterface(_v));
        stdgo.runtime.Runtime.keepAlive(Go.toInterface(_xv));
    }
    public function get(_p:GoString):Value {
        var _v = this;
        _v;
        {
            var _vType:Type = _v.type();
            if (!_vType._isObject()) {
                ////throwGo.toInterface(@:invalid_compositelit null);
            };
        };
        var _r:Value = _makeValue(_valueGet(_v._ref, _p));
        stdgo.runtime.Runtime.keepAlive(Go.toInterface(_v));
        return _r;
    }
    public function type():Type {
        var _v = this;
        _v;
        if (_v._ref == _valueUndefined._ref) {
            return 0;
        } else if (_v._ref == _valueNull._ref) {
            return 1;
        } else if (_v._ref == _valueTrue._ref || _v._ref == _valueFalse._ref) {
            return 2;
        };
        if (_v._isNumber()) {
            return 3;
        };
        var _typeFlag:T_ref = (_v._ref >> ((32 : GoUnTypedInt))) & ((7 : GoInt));
        if (_typeFlag == ((1 : GoInt64))) {
            return 6;
        } else if (_typeFlag == ((2 : GoInt64))) {
            return 4;
        } else if (_typeFlag == ((3 : GoInt64))) {
            return 5;
        } else if (_typeFlag == ((4 : GoInt64))) {
            return 7;
        } else {
            throw Go.toInterface(((("bad type flag" : GoString))));
        };
    }
    public function isNaN():Bool {
        var _v = this;
        _v;
        return _v._ref == _valueNaN._ref;
    }
    public function isNull():Bool {
        var _v = this;
        _v;
        return _v._ref == _valueNull._ref;
    }
    public function isUndefined():Bool {
        var _v = this;
        _v;
        return _v._ref == _valueUndefined._ref;
    }
    public function equal(_w:Value):Bool {
        var _v = this;
        _v;
        return (_v._ref == _w._ref) && (_v._ref != _valueNaN._ref);
    }
    public var ___blank__0 : GoArray<() -> Void> = new GoArray<() -> Void>(...[for (i in 0 ... 0) null]);
    public var _ref : T_ref = new T_ref();
    public var _gcPtr : T_ref = ((null : T_ref));
    public function new(?___blank__0:GoArray<() -> Void>, ?_ref:T_ref, ?_gcPtr:T_ref) {
        if (___blank__0 != null) this.___blank__0 = ___blank__0;
        if (_ref != null) this._ref = _ref;
        if (_gcPtr != null) this._gcPtr = _gcPtr;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new Value(___blank__0, _ref, _gcPtr);
    }
}
@:structInit @:using(Js.T_error_static_extension) class T_error {
    public function error():GoString {
        var _e = this;
        _e;
        return ((("JavaScript error: " : GoString))) + ((_e.get(((("message" : GoString)))).toString() : GoString));
    }
    @:embedded
    public var value : Value = new Value();
    public function new(?value:Value) {
        if (value != null) this.value = value;
    }
    public function bool():Bool return value.bool();
    public function call(_m:GoString, _args:haxe.Rest<AnyInterface>):Value return value.call(_m, ..._args);
    public function delete(_p:GoString) value.delete(_p);
    public function equal(_w:Value):Bool return value.equal(_w);
    public function float():GoFloat64 return value.float();
    public function get(_p:GoString):Value return value.get(_p);
    public function index(_i:GoInt):Value return value.index(_i);
    public function instanceOf(_t:Value):Bool return value.instanceOf(_t);
    public function int():GoInt return value.int();
    public function invoke(_args:haxe.Rest<AnyInterface>):Value return value.invoke(..._args);
    public function isNaN():Bool return value.isNaN();
    public function isNull():Bool return value.isNull();
    public function isUndefined():Bool return value.isUndefined();
    public function length():GoInt return value.length();
    public function new_(_args:haxe.Rest<AnyInterface>):Value return value.new_(..._args);
    public function set(_p:GoString, _x:AnyInterface) value.set(_p, _x);
    public function setIndex(_i:GoInt, _x:AnyInterface) value.setIndex(_i, _x);
    public function toString():GoString return value.toString();
    public function truthy():Bool return value.truthy();
    public function type():Type return value.type();
    public function _float(_method:GoString):GoFloat64 return value._float(_method);
    public function _isNumber():Bool return value._isNumber();
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_error(value);
    }
}
@:named @:using(Js.Type_static_extension) typedef Type = GoInt;
@:structInit @:using(Js.ValueError_static_extension) class ValueError {
    public function error():GoString {
        var _e = this;
        _e;
        return ((((("syscall/js: call of " : GoString))) + _e.method) + (((" on " : GoString)))) + ((_e.type.toString() : GoString));
    }
    public var method : GoString = (("" : GoString));
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
        var _cb:Value = _jsGo.get(((("_pendingEvent" : GoString))));
        if (_cb.isNull()) {
            return;
        };
        _jsGo.set(((("_pendingEvent" : GoString))), Go.toInterface(null_()));
        var _id:GoUInt32 = ((_cb.get(((("id" : GoString)))).int() : GoUInt32));
        if (_id == ((0 : GoUInt32))) {
            @:null_select {};
        };
        _funcsMu.lock();
        var __tmp__ = _funcs.exists(_id) ? { value : _funcs[_id], ok : true } : { value : _funcs.defaultValue(), ok : false }, _f:(Value, Slice<Value>) -> AnyInterface = __tmp__.value, _ok:Bool = __tmp__.ok;
        _funcsMu.unlock();
        if (!_ok) {
            global().get(((("console" : GoString)))).call(((("error" : GoString))), Go.toInterface(((("call to released function" : GoString)))));
            return;
        };
        var _this:Value = _cb.get(((("this" : GoString))));
        var _argsObj:Value = _cb.get(((("args" : GoString))));
        var _args:Slice<Value> = new Slice<Value>(...[for (i in 0 ... ((_argsObj.length() : GoInt)).toBasic()) new Value()]);
        for (_i => _ in _args) {
            _args[_i] = _argsObj.index(_i);
        };
        var _result:AnyInterface = Go.toInterface(_f(_this, _args));
        _cb.set(((("result" : GoString))), Go.toInterface(_result));
    }
function _makeValue(_r:T_ref):Value {
        var _gcPtr:T_ref = ((null : T_ref));
        var _typeFlag:T_ref = (_r >> ((32 : GoUnTypedInt))) & ((7 : GoInt));
        if ((((_r >> ((32 : GoUnTypedInt))) & ((2146959360 : GoInt))) == ((2146959360 : GoInt))) && (_typeFlag != ((0 : GoInt)))) {
            _gcPtr = Go.pointer(new T_ref());
            _gcPtr = _r;
            stdgo.runtime.Runtime.setFinalizer(Go.toInterface(_gcPtr), Go.toInterface(function(_p:T_ref):Void {
                _finalizeRef(_p);
            }));
        };
        return @:invalid_compositelit null;
    }
function _finalizeRef(_r:T_ref):Void {}
function _predefValue(_id:GoUInt32, _typeFlag:GoByte):Value {
        return @:invalid_compositelit null;
    }
function _floatValue(_f:GoFloat64):Value {
        if (_f == ((0 : GoFloat64))) {
            return _valueZero;
        };
        if (_f != _f) {
            return _valueNaN;
        };
        return @:invalid_compositelit null;
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
        } else if (Go.assertable(((_x : Func)))) {
            var _x:Func = _x == null ? null : _x.__underlying__() == null ? null : _x == null ? null : _x.__underlying__().value;
            return _x.value;
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
            for (_i => _s in _x) {
                _a.setIndex(_i, Go.toInterface(_s));
            };
            return _a;
        } else if (Go.assertable(((_x : GoMap<GoString, AnyInterface>)))) {
            var _x:GoMap<GoString, AnyInterface> = _x == null ? null : _x.__underlying__() == null ? null : _x == null ? null : _x.__underlying__().value;
            var _o:Value = _objectConstructor.new_();
            for (_k => _v in _x) {
                _o.set(_k, Go.toInterface(_v));
            };
            return _o;
        } else {
            var _x:AnyInterface = _x == null ? null : _x.__underlying__();
            throw Go.toInterface(((("ValueOf: invalid value" : GoString))));
        };
    }
function _stringVal(_x:GoString):T_ref throw "not implemeneted";
function _valueGet(_v:T_ref, _p:GoString):T_ref throw "not implemeneted";
function _valueSet(_v:T_ref, _p:GoString, _x:T_ref):Void {}
function _valueDelete(_v:T_ref, _p:GoString):Void {}
function _valueIndex(_v:T_ref, _i:GoInt):T_ref throw "not implemeneted";
function _valueSetIndex(_v:T_ref, _i:GoInt, _x:T_ref):Void {}
function _makeArgs(_args:Slice<AnyInterface>):{ var _0 : Slice<Value>; var _1 : Slice<T_ref>; } {
        var _argVals:Slice<Value> = new Slice<Value>(...[for (i in 0 ... ((_args.length : GoInt)).toBasic()) new Value()]);
        var _argRefs:Slice<T_ref> = new Slice<T_ref>(...[for (i in 0 ... ((_args.length : GoInt)).toBasic()) new T_ref()]);
        for (_i => _arg in _args) {
            var _v:Value = valueOf(Go.toInterface(_arg));
            _argVals[_i] = _v;
            _argRefs[_i] = _v._ref;
        };
        return { _0 : _argVals, _1 : _argRefs };
    }
function _valueLength(_v:T_ref):GoInt throw "not implemeneted";
function _valueCall(_v:T_ref, _m:GoString, _args:Slice<T_ref>):{ var _0 : T_ref; var _1 : Bool; } throw "not implemeneted";
function _valueInvoke(_v:T_ref, _args:Slice<T_ref>):{ var _0 : T_ref; var _1 : Bool; } throw "not implemeneted";
function _valueNew(_v:T_ref, _args:Slice<T_ref>):{ var _0 : T_ref; var _1 : Bool; } throw "not implemeneted";
function _jsString(_v:Value):GoString {
        var __tmp__ = _valuePrepareString(_v._ref), _str:T_ref = __tmp__._0, _length:GoInt = __tmp__._1;
        stdgo.runtime.Runtime.keepAlive(Go.toInterface(_v));
        var _b:Slice<GoUInt8> = new Slice<GoUInt8>(...[for (i in 0 ... ((_length : GoInt)).toBasic()) ((0 : GoUInt8))]);
        _valueLoadString(_str, _b);
        _finalizeRef(_str);
        return ((_b : GoString));
    }
function _valuePrepareString(_v:T_ref):{ var _0 : T_ref; var _1 : GoInt; } throw "not implemeneted";
function _valueLoadString(_v:T_ref, _b:Slice<GoByte>):Void {}
function _valueInstanceOf(_v:T_ref, _t:T_ref):Bool throw "not implemeneted";
/**
    // CopyBytesToGo copies bytes from src to dst.
    // It panics if src is not an Uint8Array or Uint8ClampedArray.
    // It returns the number of bytes copied, which will be the minimum of the lengths of src and dst.
**/
function copyBytesToGo(_dst:Slice<GoByte>, _src:Value):GoInt {
        var __tmp__ = _copyBytesToGo(_dst, _src._ref), _n:GoInt = __tmp__._0, _ok:Bool = __tmp__._1;
        stdgo.runtime.Runtime.keepAlive(Go.toInterface(_src));
        if (!_ok) {
            throw Go.toInterface(((("syscall/js: CopyBytesToGo: expected src to be an Uint8Array or Uint8ClampedArray" : GoString))));
        };
        return _n;
    }
function _copyBytesToGo(_dst:Slice<GoByte>, _src:T_ref):{ var _0 : GoInt; var _1 : Bool; } throw "not implemeneted";
/**
    // CopyBytesToJS copies bytes from src to dst.
    // It panics if dst is not an Uint8Array or Uint8ClampedArray.
    // It returns the number of bytes copied, which will be the minimum of the lengths of src and dst.
**/
function copyBytesToJS(_dst:Value, _src:Slice<GoByte>):GoInt {
        var __tmp__ = _copyBytesToJS(_dst._ref, _src), _n:GoInt = __tmp__._0, _ok:Bool = __tmp__._1;
        stdgo.runtime.Runtime.keepAlive(Go.toInterface(_dst));
        if (!_ok) {
            throw Go.toInterface(((("syscall/js: CopyBytesToJS: expected dst to be an Uint8Array or Uint8ClampedArray" : GoString))));
        };
        return _n;
    }
function _copyBytesToJS(_dst:T_ref, _src:Slice<GoByte>):{ var _0 : GoInt; var _1 : Bool; } throw "not implemeneted";
@:keep var _ = {
        try {
            _setEventHandler(_handleEvent);
        } catch(__exception__) if (__exception__.message != "__return__") throw __exception__;
        true;
    };
@:build(stdgo.internal.Macro.wrapper(Func)) class Func_static_extension {

}
@:build(stdgo.internal.Macro.wrapper(Value)) class Value_static_extension {

}
@:build(stdgo.internal.Macro.wrapper(T_error)) class T_error_static_extension {

}
@:build(stdgo.internal.Macro.wrapper(Type)) class Type_static_extension {
    public static function _isObject(_t:Type):Bool {
        _t;
        return (_t == ((6 : GoInt))) || (_t == ((7 : GoInt)));
    }
    public static function toString(_t:Type):GoString {
        _t;
        if (_t == ((0 : GoInt64))) {
            return ((("undefined" : GoString)));
        } else if (_t == ((1 : GoInt64))) {
            return ((("null" : GoString)));
        } else if (_t == ((2 : GoInt64))) {
            return ((("boolean" : GoString)));
        } else if (_t == ((3 : GoInt64))) {
            return ((("number" : GoString)));
        } else if (_t == ((4 : GoInt64))) {
            return ((("string" : GoString)));
        } else if (_t == ((5 : GoInt64))) {
            return ((("symbol" : GoString)));
        } else if (_t == ((6 : GoInt64))) {
            return ((("object" : GoString)));
        } else if (_t == ((7 : GoInt64))) {
            return ((("function" : GoString)));
        } else {
            throw Go.toInterface(((("bad type" : GoString))));
        };
    }
}
@:build(stdgo.internal.Macro.wrapper(ValueError)) class ValueError_static_extension {

}
