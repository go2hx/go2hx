package stdgo;
@:structInit @:using(stdgo.internal.intern.Intern.Value_static_extension) abstract Value(stdgo._internal.internal.intern.Intern_value.Value) from stdgo._internal.internal.intern.Intern_value.Value to stdgo._internal.internal.intern.Intern_value.Value {
    public var __1(get, set) : haxe.ds.Vector<() -> Void>;
    function get___1():haxe.ds.Vector<() -> Void> return haxe.ds.Vector.fromArrayCopy([for (i in this.__1) () -> i()]);
    function set___1(v:haxe.ds.Vector<() -> Void>):haxe.ds.Vector<() -> Void> {
        this.__1 = ([for (i in v) i] : stdgo.GoArray<() -> Void>);
        return v;
    }
    public var _cmpVal(get, set) : stdgo.AnyInterface;
    function get__cmpVal():stdgo.AnyInterface return this._cmpVal;
    function set__cmpVal(v:stdgo.AnyInterface):stdgo.AnyInterface {
        this._cmpVal = (v : stdgo.AnyInterface);
        return v;
    }
    public var _resurrected(get, set) : Bool;
    function get__resurrected():Bool return this._resurrected;
    function set__resurrected(v:Bool):Bool {
        this._resurrected = v;
        return v;
    }
    public function new(?__1:haxe.ds.Vector<() -> Void>, ?_cmpVal:stdgo.AnyInterface, ?_resurrected:Bool) this = new stdgo._internal.internal.intern.Intern_value.Value(([for (i in __1) i] : stdgo.GoArray<() -> Void>), (_cmpVal : stdgo.AnyInterface), _resurrected);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.internal.intern.Intern.T_key_static_extension) @:dox(hide) abstract T_key(stdgo._internal.internal.intern.Intern_t_key.T_key) from stdgo._internal.internal.intern.Intern_t_key.T_key to stdgo._internal.internal.intern.Intern_t_key.T_key {
    public var _s(get, set) : String;
    function get__s():String return this._s;
    function set__s(v:String):String {
        this._s = (v : stdgo.GoString);
        return v;
    }
    public var _cmpVal(get, set) : stdgo.AnyInterface;
    function get__cmpVal():stdgo.AnyInterface return this._cmpVal;
    function set__cmpVal(v:stdgo.AnyInterface):stdgo.AnyInterface {
        this._cmpVal = (v : stdgo.AnyInterface);
        return v;
    }
    public var _isString(get, set) : Bool;
    function get__isString():Bool return this._isString;
    function set__isString(v:Bool):Bool {
        this._isString = v;
        return v;
    }
    public function new(?_s:String, ?_cmpVal:stdgo.AnyInterface, ?_isString:Bool) this = new stdgo._internal.internal.intern.Intern_t_key.T_key((_s : stdgo.GoString), (_cmpVal : stdgo.AnyInterface), _isString);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
typedef ValuePointer = stdgo._internal.internal.intern.Intern_valuepointer.ValuePointer;
class Value_static_extension {
    static public function get(_v:Value):stdgo.AnyInterface {
        final _v = (_v : stdgo.Ref<stdgo._internal.internal.intern.Intern_value.Value>);
        return stdgo._internal.internal.intern.Intern_value_static_extension.Value_static_extension.get(_v);
    }
}
@:dox(hide) typedef T_keyPointer = stdgo._internal.internal.intern.Intern_t_keypointer.T_keyPointer;
@:dox(hide) class T_key_static_extension {
    static public function value(_k:T_key):Value {
        return stdgo._internal.internal.intern.Intern_t_key_static_extension.T_key_static_extension.value(_k);
    }
}
/**
    * Package intern lets you make smaller comparable values by boxing
    * a larger comparable value (such as a 16 byte string header) down
    * into a globally unique 8 byte pointer.
    * 
    * The globally unique pointers are garbage collected with weak
    * references and finalizers. This package hides that.
**/
class Intern {
    /**
        * Get returns a pointer representing the comparable value cmpVal.
        * 
        * The returned pointer will be the same for Get(v) and Get(v2)
        * if and only if v == v2, and can be used as a map key.
    **/
    static public inline function get(_cmpVal:stdgo.AnyInterface):Value {
        final _cmpVal = (_cmpVal : stdgo.AnyInterface);
        return stdgo._internal.internal.intern.Intern_get.get(_cmpVal);
    }
    /**
        * GetByString is identical to Get, except that it is specialized for strings.
        * This avoids an allocation from putting a string into an interface{}
        * to pass as an argument to Get.
    **/
    static public inline function getByString(_s:String):Value {
        final _s = (_s : stdgo.GoString);
        return stdgo._internal.internal.intern.Intern_getbystring.getByString(_s);
    }
}
