package stdgo._internal.syscall.js;
class Func_asInterface {
    @:keep
    public dynamic function release():Void __self__.value.release();
    @:embedded
    public dynamic function _isNumber():Bool return __self__.value._isNumber();
    @:embedded
    public dynamic function _float(_p:stdgo.GoString):stdgo.GoFloat64 return __self__.value._float(_p);
    @:embedded
    public dynamic function type():stdgo._internal.syscall.js.Js_Type_.Type_ return __self__.value.type();
    @:embedded
    public dynamic function truthy():Bool return __self__.value.truthy();
    @:embedded
    public dynamic function string():stdgo.GoString return __self__.value.string();
    @:embedded
    public dynamic function setIndex(_i:stdgo.GoInt, _x:stdgo.AnyInterface):Void __self__.value.setIndex(_i, _x);
    @:embedded
    public dynamic function set(_p:stdgo.GoString, _x:stdgo.AnyInterface):Void __self__.value.set(_p, _x);
    @:embedded
    public dynamic function new_(_args:haxe.Rest<stdgo.AnyInterface>):stdgo._internal.syscall.js.Js_Value.Value return __self__.value.new_(..._args);
    @:embedded
    public dynamic function length_():stdgo.GoInt return __self__.value.length_();
    @:embedded
    public dynamic function isUndefined():Bool return __self__.value.isUndefined();
    @:embedded
    public dynamic function isNull():Bool return __self__.value.isNull();
    @:embedded
    public dynamic function isNaN():Bool return __self__.value.isNaN();
    @:embedded
    public dynamic function invoke(_args:haxe.Rest<stdgo.AnyInterface>):stdgo._internal.syscall.js.Js_Value.Value return __self__.value.invoke(..._args);
    @:embedded
    public dynamic function int_():stdgo.GoInt return __self__.value.int_();
    @:embedded
    public dynamic function instanceOf(__0:stdgo._internal.syscall.js.Js_Value.Value):Bool return __self__.value.instanceOf(__0);
    @:embedded
    public dynamic function index(_i:stdgo.GoInt):stdgo._internal.syscall.js.Js_Value.Value return __self__.value.index(_i);
    @:embedded
    public dynamic function get(_p:stdgo.GoString):stdgo._internal.syscall.js.Js_Value.Value return __self__.value.get(_p);
    @:embedded
    public dynamic function float_():stdgo.GoFloat64 return __self__.value.float_();
    @:embedded
    public dynamic function equal(__0:stdgo._internal.syscall.js.Js_Value.Value):Bool return __self__.value.equal(__0);
    @:embedded
    public dynamic function delete(_p:stdgo.GoString):Void __self__.value.delete(_p);
    @:embedded
    public dynamic function call(_m:stdgo.GoString, _args:haxe.Rest<stdgo.AnyInterface>):stdgo._internal.syscall.js.Js_Value.Value return __self__.value.call(_m, ..._args);
    @:embedded
    public dynamic function bool_():Bool return __self__.value.bool_();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<stdgo._internal.syscall.js.Js_Func.Func>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
