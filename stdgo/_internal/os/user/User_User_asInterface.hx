package stdgo._internal.os.user;
class User_asInterface {
    @:keep
    @:tdfield
    public dynamic function groupIds():{ var _0 : stdgo.Slice<stdgo.GoString>; var _1 : stdgo.Error; } return @:_0 __self__.value.groupIds();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.os.user.User_UserPointer.UserPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
