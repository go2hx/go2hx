package stdgo._internal.syscall.js;
private var __go2hxdoc__package : Bool;
var _funcsMu : stdgo._internal.sync.Sync.Mutex = ({} : stdgo._internal.sync.Sync.Mutex);
final _nanHead : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
final _typeFlagNone : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
final _typeFlagObject = @:invalid_type null;
final _typeFlagString = @:invalid_type null;
final _typeFlagSymbol = @:invalid_type null;
final _typeFlagFunction = @:invalid_type null;
final typeUndefined : stdgo._internal.syscall.js.Js.Type_ = ((0 : stdgo.GoInt) : stdgo._internal.syscall.js.Js.Type_);
final typeNull = ((0 : stdgo.GoInt) : stdgo._internal.syscall.js.Js.Type_);
final typeBoolean = ((0 : stdgo.GoInt) : stdgo._internal.syscall.js.Js.Type_);
final typeNumber = ((0 : stdgo.GoInt) : stdgo._internal.syscall.js.Js.Type_);
final typeString = ((0 : stdgo.GoInt) : stdgo._internal.syscall.js.Js.Type_);
final typeSymbol = ((0 : stdgo.GoInt) : stdgo._internal.syscall.js.Js.Type_);
final typeObject = ((0 : stdgo.GoInt) : stdgo._internal.syscall.js.Js.Type_);
final typeFunction = ((0 : stdgo.GoInt) : stdgo._internal.syscall.js.Js.Type_);
var _funcs : stdgo.GoMap<stdgo.GoUInt32, (stdgo._internal.syscall.js.Js.Value, stdgo.Slice<stdgo._internal.syscall.js.Js.Value>) -> stdgo.AnyInterface> = (null : stdgo.GoMap<stdgo.GoUInt32, (stdgo._internal.syscall.js.Js.Value, stdgo.Slice<stdgo._internal.syscall.js.Js.Value>) -> stdgo.AnyInterface>);
var _nextFuncID : stdgo.GoUInt32 = (0 : stdgo.GoUInt32);
var _valueUndefined : stdgo._internal.syscall.js.Js.Value = ({} : stdgo._internal.syscall.js.Js.Value);
var _valueNaN : stdgo._internal.syscall.js.Js.Value = ({} : stdgo._internal.syscall.js.Js.Value);
var _valueZero : stdgo._internal.syscall.js.Js.Value = ({} : stdgo._internal.syscall.js.Js.Value);
var _valueNull : stdgo._internal.syscall.js.Js.Value = ({} : stdgo._internal.syscall.js.Js.Value);
var _valueTrue : stdgo._internal.syscall.js.Js.Value = ({} : stdgo._internal.syscall.js.Js.Value);
var _valueFalse : stdgo._internal.syscall.js.Js.Value = ({} : stdgo._internal.syscall.js.Js.Value);
var _valueGlobal : stdgo._internal.syscall.js.Js.Value = ({} : stdgo._internal.syscall.js.Js.Value);
var _jsGo : stdgo._internal.syscall.js.Js.Value = ({} : stdgo._internal.syscall.js.Js.Value);
var _objectConstructor : stdgo._internal.syscall.js.Js.Value = ({} : stdgo._internal.syscall.js.Js.Value);
var _arrayConstructor : stdgo._internal.syscall.js.Js.Value = ({} : stdgo._internal.syscall.js.Js.Value);
@:structInit @:using(stdgo._internal.syscall.js.Js.Func_static_extension) class Func {
    @:embedded
    public var value : stdgo._internal.syscall.js.Js.Value = ({} : stdgo._internal.syscall.js.Js.Value);
    public var _id : stdgo.GoUInt32 = 0;
    public function new(?value:stdgo._internal.syscall.js.Js.Value, ?_id:stdgo.GoUInt32) {
        if (value != null) this.value = value;
        if (_id != null) this._id = _id;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    @:embedded
    public function bool_():Bool return false;
    @:embedded
    public function call(_m:stdgo.GoString, _args:haxe.Rest<stdgo.AnyInterface>):stdgo._internal.syscall.js.Js.Value return ({} : stdgo._internal.syscall.js.Js.Value);
    @:embedded
    public function delete(_p:stdgo.GoString) @:typeType null;
    @:embedded
    public function equal(__0:stdgo._internal.syscall.js.Js.Value):Bool return false;
    @:embedded
    public function float_():stdgo.GoFloat64 return (0 : stdgo.GoFloat64);
    @:embedded
    public function get(_p:stdgo.GoString):stdgo._internal.syscall.js.Js.Value return ({} : stdgo._internal.syscall.js.Js.Value);
    @:embedded
    public function index(_i:stdgo.GoInt):stdgo._internal.syscall.js.Js.Value return ({} : stdgo._internal.syscall.js.Js.Value);
    @:embedded
    public function instanceOf(__0:stdgo._internal.syscall.js.Js.Value):Bool return false;
    @:embedded
    public function int_():stdgo.GoInt return (0 : stdgo.GoInt);
    @:embedded
    public function invoke(_args:haxe.Rest<stdgo.AnyInterface>):stdgo._internal.syscall.js.Js.Value return ({} : stdgo._internal.syscall.js.Js.Value);
    @:embedded
    public function isNaN():Bool return false;
    @:embedded
    public function isNull():Bool return false;
    @:embedded
    public function isUndefined():Bool return false;
    @:embedded
    public function length_():stdgo.GoInt return (0 : stdgo.GoInt);
    @:embedded
    public function new_(_args:haxe.Rest<stdgo.AnyInterface>):stdgo._internal.syscall.js.Js.Value return ({} : stdgo._internal.syscall.js.Js.Value);
    @:embedded
    public function set(_p:stdgo.GoString, _x:stdgo.AnyInterface) @:typeType null;
    @:embedded
    public function setIndex(_i:stdgo.GoInt, _x:stdgo.AnyInterface) @:typeType null;
    @:embedded
    public function string():stdgo.GoString return ("" : stdgo.GoString);
    @:embedded
    public function truthy():Bool return false;
    @:embedded
    public function type():stdgo._internal.syscall.js.Js.Type_ return ((0 : stdgo.GoInt) : stdgo._internal.syscall.js.Js.Type_);
    @:embedded
    public function _float(_p:stdgo.GoString):stdgo.GoFloat64 return (0 : stdgo.GoFloat64);
    @:embedded
    public function _isNumber():Bool return false;
    public function __copy__() {
        return new Func(value, _id);
    }
}
@:structInit @:using(stdgo._internal.syscall.js.Js.Value_static_extension) class Value {
    @:optional
    public var __32 : stdgo.GoArray<() -> Void> = new stdgo.GoArray<() -> Void>(0, 0);
    public var _ref : stdgo._internal.syscall.js.Js.T_ref = ((0 : stdgo.GoUInt64) : stdgo._internal.syscall.js.Js.T_ref);
    public var _gcPtr : stdgo.Pointer<stdgo._internal.syscall.js.Js.T_ref> = (null : stdgo.Pointer<stdgo._internal.syscall.js.Js.T_ref>);
    public function new(?__32:stdgo.GoArray<() -> Void>, ?_ref:stdgo._internal.syscall.js.Js.T_ref, ?_gcPtr:stdgo.Pointer<stdgo._internal.syscall.js.Js.T_ref>) {
        if (__32 != null) this.__32 = __32;
        if (_ref != null) this._ref = _ref;
        if (_gcPtr != null) this._gcPtr = _gcPtr;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Value(__32, _ref, _gcPtr);
    }
}
@:structInit @:using(stdgo._internal.syscall.js.Js.Error_static_extension) class Error {
    @:embedded
    public var value : stdgo._internal.syscall.js.Js.Value = ({} : stdgo._internal.syscall.js.Js.Value);
    public function new(?value:stdgo._internal.syscall.js.Js.Value) {
        if (value != null) this.value = value;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    @:embedded
    public function bool_():Bool return false;
    @:embedded
    public function call(_m:stdgo.GoString, _args:haxe.Rest<stdgo.AnyInterface>):stdgo._internal.syscall.js.Js.Value return ({} : stdgo._internal.syscall.js.Js.Value);
    @:embedded
    public function delete(_p:stdgo.GoString) @:typeType null;
    @:embedded
    public function equal(__0:stdgo._internal.syscall.js.Js.Value):Bool return false;
    @:embedded
    public function float_():stdgo.GoFloat64 return (0 : stdgo.GoFloat64);
    @:embedded
    public function get(_p:stdgo.GoString):stdgo._internal.syscall.js.Js.Value return ({} : stdgo._internal.syscall.js.Js.Value);
    @:embedded
    public function index(_i:stdgo.GoInt):stdgo._internal.syscall.js.Js.Value return ({} : stdgo._internal.syscall.js.Js.Value);
    @:embedded
    public function instanceOf(__0:stdgo._internal.syscall.js.Js.Value):Bool return false;
    @:embedded
    public function int_():stdgo.GoInt return (0 : stdgo.GoInt);
    @:embedded
    public function invoke(_args:haxe.Rest<stdgo.AnyInterface>):stdgo._internal.syscall.js.Js.Value return ({} : stdgo._internal.syscall.js.Js.Value);
    @:embedded
    public function isNaN():Bool return false;
    @:embedded
    public function isNull():Bool return false;
    @:embedded
    public function isUndefined():Bool return false;
    @:embedded
    public function length_():stdgo.GoInt return (0 : stdgo.GoInt);
    @:embedded
    public function new_(_args:haxe.Rest<stdgo.AnyInterface>):stdgo._internal.syscall.js.Js.Value return ({} : stdgo._internal.syscall.js.Js.Value);
    @:embedded
    public function set(_p:stdgo.GoString, _x:stdgo.AnyInterface) @:typeType null;
    @:embedded
    public function setIndex(_i:stdgo.GoInt, _x:stdgo.AnyInterface) @:typeType null;
    @:embedded
    public function string():stdgo.GoString return ("" : stdgo.GoString);
    @:embedded
    public function truthy():Bool return false;
    @:embedded
    public function type():stdgo._internal.syscall.js.Js.Type_ return ((0 : stdgo.GoInt) : stdgo._internal.syscall.js.Js.Type_);
    @:embedded
    public function _float(_p:stdgo.GoString):stdgo.GoFloat64 return (0 : stdgo.GoFloat64);
    @:embedded
    public function _isNumber():Bool return false;
    public function __copy__() {
        return new Error(value);
    }
}
@:structInit @:using(stdgo._internal.syscall.js.Js.ValueError_static_extension) class ValueError {
    public var method : stdgo.GoString = "";
    public var type : stdgo._internal.syscall.js.Js.Type_ = ((0 : stdgo.GoInt) : stdgo._internal.syscall.js.Js.Type_);
    public function new(?method:stdgo.GoString, ?type:stdgo._internal.syscall.js.Js.Type_) {
        if (method != null) this.method = method;
        if (type != null) this.type = type;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new ValueError(method, type);
    }
}
@:named typedef T_ref = stdgo.GoUInt64;
@:named @:using(stdgo._internal.syscall.js.Js.Type__static_extension) typedef Type_ = stdgo.GoInt;
function funcOf(_fn:(_this:Value, _args:stdgo.Slice<Value>) -> stdgo.AnyInterface):Func throw ":syscall.js.funcOf is not yet implemented";
function _setEventHandler(_fn:() -> Bool):Void throw ":syscall.js._setEventHandler is not yet implemented";
function _handleEvent():Bool throw ":syscall.js._handleEvent is not yet implemented";
function _makeValue(_r:T_ref):Value throw ":syscall.js._makeValue is not yet implemented";
function _finalizeRef(_r:T_ref):Void throw ":syscall.js._finalizeRef is not yet implemented";
function _predefValue(_id:stdgo.GoUInt32, _typeFlag:stdgo.GoByte):Value throw ":syscall.js._predefValue is not yet implemented";
function _floatValue(_f:stdgo.GoFloat64):Value throw ":syscall.js._floatValue is not yet implemented";
function undefined():Value throw ":syscall.js.undefined is not yet implemented";
function null_():Value throw ":syscall.js.null_ is not yet implemented";
function global():Value throw ":syscall.js.global is not yet implemented";
function valueOf(_x:stdgo.AnyInterface):Value throw ":syscall.js.valueOf is not yet implemented";
function _stringVal(_x:stdgo.GoString):T_ref throw ":syscall.js._stringVal is not yet implemented";
function _valueGet(_v:T_ref, _p:stdgo.GoString):T_ref throw ":syscall.js._valueGet is not yet implemented";
function _valueSet(_v:T_ref, _p:stdgo.GoString, _x:T_ref):Void throw ":syscall.js._valueSet is not yet implemented";
function _valueDelete(_v:T_ref, _p:stdgo.GoString):Void throw ":syscall.js._valueDelete is not yet implemented";
function _valueIndex(_v:T_ref, _i:stdgo.GoInt):T_ref throw ":syscall.js._valueIndex is not yet implemented";
function _valueSetIndex(_v:T_ref, _i:stdgo.GoInt, _x:T_ref):Void throw ":syscall.js._valueSetIndex is not yet implemented";
function _makeArgs(_args:stdgo.Slice<stdgo.AnyInterface>):{ var _0 : stdgo.Slice<Value>; var _1 : stdgo.Slice<T_ref>; } throw ":syscall.js._makeArgs is not yet implemented";
function _valueLength(_v:T_ref):stdgo.GoInt throw ":syscall.js._valueLength is not yet implemented";
function _valueCall(_v:T_ref, _m:stdgo.GoString, _args:stdgo.Slice<T_ref>):{ var _0 : T_ref; var _1 : Bool; } throw ":syscall.js._valueCall is not yet implemented";
function _valueInvoke(_v:T_ref, _args:stdgo.Slice<T_ref>):{ var _0 : T_ref; var _1 : Bool; } throw ":syscall.js._valueInvoke is not yet implemented";
function _valueNew(_v:T_ref, _args:stdgo.Slice<T_ref>):{ var _0 : T_ref; var _1 : Bool; } throw ":syscall.js._valueNew is not yet implemented";
function _jsString(_v:Value):stdgo.GoString throw ":syscall.js._jsString is not yet implemented";
function _valuePrepareString(_v:T_ref):{ var _0 : T_ref; var _1 : stdgo.GoInt; } throw ":syscall.js._valuePrepareString is not yet implemented";
function _valueLoadString(_v:T_ref, _b:stdgo.Slice<stdgo.GoByte>):Void throw ":syscall.js._valueLoadString is not yet implemented";
function _valueInstanceOf(_v:T_ref, _t:T_ref):Bool throw ":syscall.js._valueInstanceOf is not yet implemented";
function copyBytesToGo(_dst:stdgo.Slice<stdgo.GoByte>, _src:Value):stdgo.GoInt throw ":syscall.js.copyBytesToGo is not yet implemented";
function _copyBytesToGo(_dst:stdgo.Slice<stdgo.GoByte>, _src:T_ref):{ var _0 : stdgo.GoInt; var _1 : Bool; } throw ":syscall.js._copyBytesToGo is not yet implemented";
function copyBytesToJS(_dst:Value, _src:stdgo.Slice<stdgo.GoByte>):stdgo.GoInt throw ":syscall.js.copyBytesToJS is not yet implemented";
function _copyBytesToJS(_dst:T_ref, _src:stdgo.Slice<stdgo.GoByte>):{ var _0 : stdgo.GoInt; var _1 : Bool; } throw ":syscall.js._copyBytesToJS is not yet implemented";
class Func_asInterface {
    @:keep
    public dynamic function release():Void __self__.value.release();
    @:embedded
    public dynamic function _isNumber():Bool return __self__.value._isNumber();
    @:embedded
    public dynamic function _float(_p:stdgo.GoString):stdgo.GoFloat64 return __self__.value._float(_p);
    @:embedded
    public dynamic function type():stdgo._internal.syscall.js.Js.Type_ return __self__.value.type();
    @:embedded
    public dynamic function truthy():Bool return __self__.value.truthy();
    @:embedded
    public dynamic function string():stdgo.GoString return __self__.value.string();
    @:embedded
    public dynamic function setIndex(_i:stdgo.GoInt, _x:stdgo.AnyInterface):Void __self__.value.setIndex(_i, _x);
    @:embedded
    public dynamic function set(_p:stdgo.GoString, _x:stdgo.AnyInterface):Void __self__.value.set(_p, _x);
    @:embedded
    public dynamic function new_(_args:haxe.Rest<stdgo.AnyInterface>):stdgo._internal.syscall.js.Js.Value return __self__.value.new_(..._args);
    @:embedded
    public dynamic function length_():stdgo.GoInt return __self__.value.length_();
    @:embedded
    public dynamic function isUndefined():Bool return __self__.value.isUndefined();
    @:embedded
    public dynamic function isNull():Bool return __self__.value.isNull();
    @:embedded
    public dynamic function isNaN():Bool return __self__.value.isNaN();
    @:embedded
    public dynamic function invoke(_args:haxe.Rest<stdgo.AnyInterface>):stdgo._internal.syscall.js.Js.Value return __self__.value.invoke(..._args);
    @:embedded
    public dynamic function int_():stdgo.GoInt return __self__.value.int_();
    @:embedded
    public dynamic function instanceOf(__0:stdgo._internal.syscall.js.Js.Value):Bool return __self__.value.instanceOf(__0);
    @:embedded
    public dynamic function index(_i:stdgo.GoInt):stdgo._internal.syscall.js.Js.Value return __self__.value.index(_i);
    @:embedded
    public dynamic function get(_p:stdgo.GoString):stdgo._internal.syscall.js.Js.Value return __self__.value.get(_p);
    @:embedded
    public dynamic function float_():stdgo.GoFloat64 return __self__.value.float_();
    @:embedded
    public dynamic function equal(__0:stdgo._internal.syscall.js.Js.Value):Bool return __self__.value.equal(__0);
    @:embedded
    public dynamic function delete(_p:stdgo.GoString):Void __self__.value.delete(_p);
    @:embedded
    public dynamic function call(_m:stdgo.GoString, _args:haxe.Rest<stdgo.AnyInterface>):stdgo._internal.syscall.js.Js.Value return __self__.value.call(_m, ..._args);
    @:embedded
    public dynamic function bool_():Bool return __self__.value.bool_();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<Func>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.syscall.js.Js.Func_asInterface) class Func_static_extension {
    @:keep
    static public function release( _c:Func):Void throw "Func:syscall.js.release is not yet implemented";
    @:embedded
    public static function _isNumber( __self__:Func):Bool return __self__._isNumber();
    @:embedded
    public static function _float( __self__:Func, _p:stdgo.GoString):stdgo.GoFloat64 return __self__._float(_p);
    @:embedded
    public static function type( __self__:Func):stdgo._internal.syscall.js.Js.Type_ return __self__.type();
    @:embedded
    public static function truthy( __self__:Func):Bool return __self__.truthy();
    @:embedded
    public static function string( __self__:Func):stdgo.GoString return __self__.string();
    @:embedded
    public static function setIndex( __self__:Func, _i:stdgo.GoInt, _x:stdgo.AnyInterface) __self__.setIndex(_i, _x);
    @:embedded
    public static function set( __self__:Func, _p:stdgo.GoString, _x:stdgo.AnyInterface) __self__.set(_p, _x);
    @:embedded
    public static function new_( __self__:Func, _args:haxe.Rest<stdgo.AnyInterface>):stdgo._internal.syscall.js.Js.Value return __self__.new_(...[for (i in _args) i]);
    @:embedded
    public static function length_( __self__:Func):stdgo.GoInt return __self__.length_();
    @:embedded
    public static function isUndefined( __self__:Func):Bool return __self__.isUndefined();
    @:embedded
    public static function isNull( __self__:Func):Bool return __self__.isNull();
    @:embedded
    public static function isNaN( __self__:Func):Bool return __self__.isNaN();
    @:embedded
    public static function invoke( __self__:Func, _args:haxe.Rest<stdgo.AnyInterface>):stdgo._internal.syscall.js.Js.Value return __self__.invoke(...[for (i in _args) i]);
    @:embedded
    public static function int_( __self__:Func):stdgo.GoInt return __self__.int_();
    @:embedded
    public static function instanceOf( __self__:Func, __0:stdgo._internal.syscall.js.Js.Value):Bool return __self__.instanceOf(__0);
    @:embedded
    public static function index( __self__:Func, _i:stdgo.GoInt):stdgo._internal.syscall.js.Js.Value return __self__.index(_i);
    @:embedded
    public static function get( __self__:Func, _p:stdgo.GoString):stdgo._internal.syscall.js.Js.Value return __self__.get(_p);
    @:embedded
    public static function float_( __self__:Func):stdgo.GoFloat64 return __self__.float_();
    @:embedded
    public static function equal( __self__:Func, __0:stdgo._internal.syscall.js.Js.Value):Bool return __self__.equal(__0);
    @:embedded
    public static function delete( __self__:Func, _p:stdgo.GoString) __self__.delete(_p);
    @:embedded
    public static function call( __self__:Func, _m:stdgo.GoString, _args:haxe.Rest<stdgo.AnyInterface>):stdgo._internal.syscall.js.Js.Value return __self__.call(_m, ...[for (i in _args) i]);
    @:embedded
    public static function bool_( __self__:Func):Bool return __self__.bool_();
}
class Value_asInterface {
    @:keep
    public dynamic function instanceOf(_t:Value):Bool return __self__.value.instanceOf(_t);
    @:keep
    public dynamic function string():stdgo.GoString return __self__.value.string();
    @:keep
    public dynamic function truthy():Bool return __self__.value.truthy();
    @:keep
    public dynamic function bool_():Bool return __self__.value.bool_();
    @:keep
    public dynamic function int_():stdgo.GoInt return __self__.value.int_();
    @:keep
    public dynamic function float_():stdgo.GoFloat64 return __self__.value.float_();
    @:keep
    public dynamic function _float(_method:stdgo.GoString):stdgo.GoFloat64 return __self__.value._float(_method);
    @:keep
    public dynamic function _isNumber():Bool return __self__.value._isNumber();
    @:keep
    public dynamic function new_(_args:haxe.Rest<stdgo.AnyInterface>):Value return __self__.value.new_(..._args);
    @:keep
    public dynamic function invoke(_args:haxe.Rest<stdgo.AnyInterface>):Value return __self__.value.invoke(..._args);
    @:keep
    public dynamic function call(_m:stdgo.GoString, _args:haxe.Rest<stdgo.AnyInterface>):Value return __self__.value.call(_m, ..._args);
    @:keep
    public dynamic function length_():stdgo.GoInt return __self__.value.length_();
    @:keep
    public dynamic function setIndex(_i:stdgo.GoInt, _x:stdgo.AnyInterface):Void __self__.value.setIndex(_i, _x);
    @:keep
    public dynamic function index(_i:stdgo.GoInt):Value return __self__.value.index(_i);
    @:keep
    public dynamic function delete(_p:stdgo.GoString):Void __self__.value.delete(_p);
    @:keep
    public dynamic function set(_p:stdgo.GoString, _x:stdgo.AnyInterface):Void __self__.value.set(_p, _x);
    @:keep
    public dynamic function get(_p:stdgo.GoString):Value return __self__.value.get(_p);
    @:keep
    public dynamic function type():Type_ return __self__.value.type();
    @:keep
    public dynamic function isNaN():Bool return __self__.value.isNaN();
    @:keep
    public dynamic function isNull():Bool return __self__.value.isNull();
    @:keep
    public dynamic function isUndefined():Bool return __self__.value.isUndefined();
    @:keep
    public dynamic function equal(_w:Value):Bool return __self__.value.equal(_w);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<Value>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.syscall.js.Js.Value_asInterface) class Value_static_extension {
    @:keep
    static public function instanceOf( _v:Value, _t:Value):Bool throw "Value:syscall.js.instanceOf is not yet implemented";
    @:keep
    static public function string( _v:Value):stdgo.GoString throw "Value:syscall.js.string is not yet implemented";
    @:keep
    static public function truthy( _v:Value):Bool throw "Value:syscall.js.truthy is not yet implemented";
    @:keep
    static public function bool_( _v:Value):Bool throw "Value:syscall.js.bool_ is not yet implemented";
    @:keep
    static public function int_( _v:Value):stdgo.GoInt throw "Value:syscall.js.int_ is not yet implemented";
    @:keep
    static public function float_( _v:Value):stdgo.GoFloat64 throw "Value:syscall.js.float_ is not yet implemented";
    @:keep
    static public function _float( _v:Value, _method:stdgo.GoString):stdgo.GoFloat64 throw "Value:syscall.js._float is not yet implemented";
    @:keep
    static public function _isNumber( _v:Value):Bool throw "Value:syscall.js._isNumber is not yet implemented";
    @:keep
    static public function new_( _v:Value, _args:haxe.Rest<stdgo.AnyInterface>):Value throw "Value:syscall.js.new_ is not yet implemented";
    @:keep
    static public function invoke( _v:Value, _args:haxe.Rest<stdgo.AnyInterface>):Value throw "Value:syscall.js.invoke is not yet implemented";
    @:keep
    static public function call( _v:Value, _m:stdgo.GoString, _args:haxe.Rest<stdgo.AnyInterface>):Value throw "Value:syscall.js.call is not yet implemented";
    @:keep
    static public function length_( _v:Value):stdgo.GoInt throw "Value:syscall.js.length_ is not yet implemented";
    @:keep
    static public function setIndex( _v:Value, _i:stdgo.GoInt, _x:stdgo.AnyInterface):Void throw "Value:syscall.js.setIndex is not yet implemented";
    @:keep
    static public function index( _v:Value, _i:stdgo.GoInt):Value throw "Value:syscall.js.index is not yet implemented";
    @:keep
    static public function delete( _v:Value, _p:stdgo.GoString):Void throw "Value:syscall.js.delete is not yet implemented";
    @:keep
    static public function set( _v:Value, _p:stdgo.GoString, _x:stdgo.AnyInterface):Void throw "Value:syscall.js.set is not yet implemented";
    @:keep
    static public function get( _v:Value, _p:stdgo.GoString):Value throw "Value:syscall.js.get is not yet implemented";
    @:keep
    static public function type( _v:Value):Type_ throw "Value:syscall.js.type is not yet implemented";
    @:keep
    static public function isNaN( _v:Value):Bool throw "Value:syscall.js.isNaN is not yet implemented";
    @:keep
    static public function isNull( _v:Value):Bool throw "Value:syscall.js.isNull is not yet implemented";
    @:keep
    static public function isUndefined( _v:Value):Bool throw "Value:syscall.js.isUndefined is not yet implemented";
    @:keep
    static public function equal( _v:Value, _w:Value):Bool throw "Value:syscall.js.equal is not yet implemented";
}
class Error_asInterface {
    @:keep
    public dynamic function error():stdgo.GoString return __self__.value.error();
    @:embedded
    public dynamic function _isNumber():Bool return __self__.value._isNumber();
    @:embedded
    public dynamic function _float(_p:stdgo.GoString):stdgo.GoFloat64 return __self__.value._float(_p);
    @:embedded
    public dynamic function type():stdgo._internal.syscall.js.Js.Type_ return __self__.value.type();
    @:embedded
    public dynamic function truthy():Bool return __self__.value.truthy();
    @:embedded
    public dynamic function string():stdgo.GoString return __self__.value.string();
    @:embedded
    public dynamic function setIndex(_i:stdgo.GoInt, _x:stdgo.AnyInterface):Void __self__.value.setIndex(_i, _x);
    @:embedded
    public dynamic function set(_p:stdgo.GoString, _x:stdgo.AnyInterface):Void __self__.value.set(_p, _x);
    @:embedded
    public dynamic function new_(_args:haxe.Rest<stdgo.AnyInterface>):stdgo._internal.syscall.js.Js.Value return __self__.value.new_(..._args);
    @:embedded
    public dynamic function length_():stdgo.GoInt return __self__.value.length_();
    @:embedded
    public dynamic function isUndefined():Bool return __self__.value.isUndefined();
    @:embedded
    public dynamic function isNull():Bool return __self__.value.isNull();
    @:embedded
    public dynamic function isNaN():Bool return __self__.value.isNaN();
    @:embedded
    public dynamic function invoke(_args:haxe.Rest<stdgo.AnyInterface>):stdgo._internal.syscall.js.Js.Value return __self__.value.invoke(..._args);
    @:embedded
    public dynamic function int_():stdgo.GoInt return __self__.value.int_();
    @:embedded
    public dynamic function instanceOf(__0:stdgo._internal.syscall.js.Js.Value):Bool return __self__.value.instanceOf(__0);
    @:embedded
    public dynamic function index(_i:stdgo.GoInt):stdgo._internal.syscall.js.Js.Value return __self__.value.index(_i);
    @:embedded
    public dynamic function get(_p:stdgo.GoString):stdgo._internal.syscall.js.Js.Value return __self__.value.get(_p);
    @:embedded
    public dynamic function float_():stdgo.GoFloat64 return __self__.value.float_();
    @:embedded
    public dynamic function equal(__0:stdgo._internal.syscall.js.Js.Value):Bool return __self__.value.equal(__0);
    @:embedded
    public dynamic function delete(_p:stdgo.GoString):Void __self__.value.delete(_p);
    @:embedded
    public dynamic function call(_m:stdgo.GoString, _args:haxe.Rest<stdgo.AnyInterface>):stdgo._internal.syscall.js.Js.Value return __self__.value.call(_m, ..._args);
    @:embedded
    public dynamic function bool_():Bool return __self__.value.bool_();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<Error>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.syscall.js.Js.Error_asInterface) class Error_static_extension {
    @:keep
    static public function error( _e:Error):stdgo.GoString throw "Error:syscall.js.error is not yet implemented";
    @:embedded
    public static function _isNumber( __self__:Error):Bool return __self__._isNumber();
    @:embedded
    public static function _float( __self__:Error, _p:stdgo.GoString):stdgo.GoFloat64 return __self__._float(_p);
    @:embedded
    public static function type( __self__:Error):stdgo._internal.syscall.js.Js.Type_ return __self__.type();
    @:embedded
    public static function truthy( __self__:Error):Bool return __self__.truthy();
    @:embedded
    public static function string( __self__:Error):stdgo.GoString return __self__.string();
    @:embedded
    public static function setIndex( __self__:Error, _i:stdgo.GoInt, _x:stdgo.AnyInterface) __self__.setIndex(_i, _x);
    @:embedded
    public static function set( __self__:Error, _p:stdgo.GoString, _x:stdgo.AnyInterface) __self__.set(_p, _x);
    @:embedded
    public static function new_( __self__:Error, _args:haxe.Rest<stdgo.AnyInterface>):stdgo._internal.syscall.js.Js.Value return __self__.new_(...[for (i in _args) i]);
    @:embedded
    public static function length_( __self__:Error):stdgo.GoInt return __self__.length_();
    @:embedded
    public static function isUndefined( __self__:Error):Bool return __self__.isUndefined();
    @:embedded
    public static function isNull( __self__:Error):Bool return __self__.isNull();
    @:embedded
    public static function isNaN( __self__:Error):Bool return __self__.isNaN();
    @:embedded
    public static function invoke( __self__:Error, _args:haxe.Rest<stdgo.AnyInterface>):stdgo._internal.syscall.js.Js.Value return __self__.invoke(...[for (i in _args) i]);
    @:embedded
    public static function int_( __self__:Error):stdgo.GoInt return __self__.int_();
    @:embedded
    public static function instanceOf( __self__:Error, __0:stdgo._internal.syscall.js.Js.Value):Bool return __self__.instanceOf(__0);
    @:embedded
    public static function index( __self__:Error, _i:stdgo.GoInt):stdgo._internal.syscall.js.Js.Value return __self__.index(_i);
    @:embedded
    public static function get( __self__:Error, _p:stdgo.GoString):stdgo._internal.syscall.js.Js.Value return __self__.get(_p);
    @:embedded
    public static function float_( __self__:Error):stdgo.GoFloat64 return __self__.float_();
    @:embedded
    public static function equal( __self__:Error, __0:stdgo._internal.syscall.js.Js.Value):Bool return __self__.equal(__0);
    @:embedded
    public static function delete( __self__:Error, _p:stdgo.GoString) __self__.delete(_p);
    @:embedded
    public static function call( __self__:Error, _m:stdgo.GoString, _args:haxe.Rest<stdgo.AnyInterface>):stdgo._internal.syscall.js.Js.Value return __self__.call(_m, ...[for (i in _args) i]);
    @:embedded
    public static function bool_( __self__:Error):Bool return __self__.bool_();
}
class ValueError_asInterface {
    @:keep
    public dynamic function error():stdgo.GoString return __self__.value.error();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<ValueError>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.syscall.js.Js.ValueError_asInterface) class ValueError_static_extension {
    @:keep
    static public function error( _e:stdgo.Ref<ValueError>):stdgo.GoString throw "ValueError:syscall.js.error is not yet implemented";
}
class Type__asInterface {
    @:keep
    public dynamic function _isObject():Bool return __self__.value._isObject();
    @:keep
    public dynamic function string():stdgo.GoString return __self__.value.string();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<Type_>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.syscall.js.Js.Type__asInterface) class Type__static_extension {
    @:keep
    static public function _isObject( _t:Type_):Bool throw "Type_:syscall.js._isObject is not yet implemented";
    @:keep
    static public function string( _t:Type_):stdgo.GoString throw "Type_:syscall.js.string is not yet implemented";
}
