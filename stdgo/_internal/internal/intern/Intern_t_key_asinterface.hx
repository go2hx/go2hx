package stdgo._internal.internal.intern;
class T_key_asInterface {
    @:keep
    @:tdfield
    public dynamic function value():stdgo.Ref<stdgo._internal.internal.intern.Intern_value.Value> return @:_0 __self__.value.value();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.internal.intern.Intern_t_keypointer.T_keyPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
