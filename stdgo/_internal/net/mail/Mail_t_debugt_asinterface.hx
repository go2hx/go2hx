package stdgo._internal.net.mail;
class T_debugT_asInterface {
    @:keep
    @:tdfield
    public dynamic function printf(_format:stdgo.GoString, _args:haxe.Rest<stdgo.AnyInterface>):Void @:_0 __self__.value.printf(_format, ..._args);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.net.mail.Mail_t_debugtpointer.T_debugTPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
