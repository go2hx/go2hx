package stdgo._internal.syscall.js;
class Value_asInterface {
    @:keep
    public dynamic function instanceOf(_t:stdgo._internal.syscall.js.Js_Value.Value):Bool return __self__.value.instanceOf(_t);
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
    public dynamic function new_(_args:haxe.Rest<stdgo.AnyInterface>):stdgo._internal.syscall.js.Js_Value.Value return __self__.value.new_(..._args);
    @:keep
    public dynamic function invoke(_args:haxe.Rest<stdgo.AnyInterface>):stdgo._internal.syscall.js.Js_Value.Value return __self__.value.invoke(..._args);
    @:keep
    public dynamic function call(_m:stdgo.GoString, _args:haxe.Rest<stdgo.AnyInterface>):stdgo._internal.syscall.js.Js_Value.Value return __self__.value.call(_m, ..._args);
    @:keep
    public dynamic function length_():stdgo.GoInt return __self__.value.length_();
    @:keep
    public dynamic function setIndex(_i:stdgo.GoInt, _x:stdgo.AnyInterface):Void __self__.value.setIndex(_i, _x);
    @:keep
    public dynamic function index(_i:stdgo.GoInt):stdgo._internal.syscall.js.Js_Value.Value return __self__.value.index(_i);
    @:keep
    public dynamic function delete(_p:stdgo.GoString):Void __self__.value.delete(_p);
    @:keep
    public dynamic function set(_p:stdgo.GoString, _x:stdgo.AnyInterface):Void __self__.value.set(_p, _x);
    @:keep
    public dynamic function get(_p:stdgo.GoString):stdgo._internal.syscall.js.Js_Value.Value return __self__.value.get(_p);
    @:keep
    public dynamic function type():stdgo._internal.syscall.js.Js_Type_.Type_ return __self__.value.type();
    @:keep
    public dynamic function isNaN():Bool return __self__.value.isNaN();
    @:keep
    public dynamic function isNull():Bool return __self__.value.isNull();
    @:keep
    public dynamic function isUndefined():Bool return __self__.value.isUndefined();
    @:keep
    public dynamic function equal(_w:stdgo._internal.syscall.js.Js_Value.Value):Bool return __self__.value.equal(_w);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<stdgo._internal.syscall.js.Js_Value.Value>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
