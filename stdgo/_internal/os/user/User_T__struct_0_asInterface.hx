package stdgo._internal.os.user;
class T__struct_0_asInterface {
    @:embedded
    public dynamic function _doSlow(_f:() -> Void):Void __self__.value._doSlow(_f);
    @:embedded
    public dynamic function do_(_f:() -> Void):Void __self__.value.do_(_f);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<stdgo._internal.os.user.User_T__struct_0.T__struct_0>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}