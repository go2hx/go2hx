package stdgo._internal.syscall.js;
class Value_asInterface {
    @:keep
    @:tdfield
    public dynamic function instanceOf(_t:stdgo._internal.syscall.js.Js_value.Value):Bool return @:_0 __self__.value.instanceOf(_t);
    @:keep
    @:tdfield
    public dynamic function string():stdgo.GoString return @:_0 __self__.value.string();
    @:keep
    @:tdfield
    public dynamic function truthy():Bool return @:_0 __self__.value.truthy();
    @:keep
    @:tdfield
    public dynamic function bool_():Bool return @:_0 __self__.value.bool_();
    @:keep
    @:tdfield
    public dynamic function int_():stdgo.GoInt return @:_0 __self__.value.int_();
    @:keep
    @:tdfield
    public dynamic function float_():stdgo.GoFloat64 return @:_0 __self__.value.float_();
    @:keep
    @:tdfield
    public dynamic function _float(_method:stdgo.GoString):stdgo.GoFloat64 return @:_0 __self__.value._float(_method);
    @:keep
    @:tdfield
    public dynamic function _isNumber():Bool return @:_0 __self__.value._isNumber();
    @:keep
    @:tdfield
    public dynamic function new_(_args:haxe.Rest<stdgo.AnyInterface>):stdgo._internal.syscall.js.Js_value.Value return @:_0 __self__.value.new_(..._args);
    @:keep
    @:tdfield
    public dynamic function invoke(_args:haxe.Rest<stdgo.AnyInterface>):stdgo._internal.syscall.js.Js_value.Value return @:_0 __self__.value.invoke(..._args);
    @:keep
    @:tdfield
    public dynamic function call(_m:stdgo.GoString, _args:haxe.Rest<stdgo.AnyInterface>):stdgo._internal.syscall.js.Js_value.Value return @:_0 __self__.value.call(_m, ..._args);
    @:keep
    @:tdfield
    public dynamic function length_():stdgo.GoInt return @:_0 __self__.value.length_();
    @:keep
    @:tdfield
    public dynamic function setIndex(_i:stdgo.GoInt, _x:stdgo.AnyInterface):Void @:_0 __self__.value.setIndex(_i, _x);
    @:keep
    @:tdfield
    public dynamic function index(_i:stdgo.GoInt):stdgo._internal.syscall.js.Js_value.Value return @:_0 __self__.value.index(_i);
    @:keep
    @:tdfield
    public dynamic function delete(_p:stdgo.GoString):Void @:_0 __self__.value.delete(_p);
    @:keep
    @:tdfield
    public dynamic function set(_p:stdgo.GoString, _x:stdgo.AnyInterface):Void @:_0 __self__.value.set(_p, _x);
    @:keep
    @:tdfield
    public dynamic function get(_p:stdgo.GoString):stdgo._internal.syscall.js.Js_value.Value return @:_0 __self__.value.get(_p);
    @:keep
    @:tdfield
    public dynamic function type():stdgo._internal.syscall.js.Js_type_.Type_ return @:_0 __self__.value.type();
    @:keep
    @:tdfield
    public dynamic function isNaN():Bool return @:_0 __self__.value.isNaN();
    @:keep
    @:tdfield
    public dynamic function isNull():Bool return @:_0 __self__.value.isNull();
    @:keep
    @:tdfield
    public dynamic function isUndefined():Bool return @:_0 __self__.value.isUndefined();
    @:keep
    @:tdfield
    public dynamic function equal(_w:stdgo._internal.syscall.js.Js_value.Value):Bool return @:_0 __self__.value.equal(_w);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.syscall.js.Js_valuepointer.ValuePointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
