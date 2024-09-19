package stdgo._internal.net.smtp;
class T_plainAuth_asInterface {
    @:keep
    public dynamic function next(_fromServer:stdgo.Slice<stdgo.GoUInt8>, _more:Bool):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } return __self__.value.next(_fromServer, _more);
    @:keep
    public dynamic function start(_server:stdgo.Ref<stdgo._internal.net.smtp.Smtp_ServerInfo.ServerInfo>):{ var _0 : stdgo.GoString; var _1 : stdgo.Slice<stdgo.GoUInt8>; var _2 : stdgo.Error; } return __self__.value.start(_server);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<stdgo._internal.net.smtp.Smtp_T_plainAuth.T_plainAuth>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
