package stdgo._internal.runtime;
class UserArena_asInterface {
    @:keep
    @:tdfield
    public dynamic function free():Void @:_0 __self__.value.free();
    @:keep
    @:tdfield
    public dynamic function slice(_sl:stdgo.AnyInterface, _cap:stdgo.GoInt):Void @:_0 __self__.value.slice(_sl, _cap);
    @:keep
    @:tdfield
    public dynamic function new_(_out:stdgo.Ref<stdgo.AnyInterface>):Void @:_0 __self__.value.new_(_out);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.runtime.Runtime_userarenapointer.UserArenaPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
