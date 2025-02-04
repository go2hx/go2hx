package stdgo._internal.net.smtp;
class T_cramMD5Auth_asInterface {
    @:keep
    @:tdfield
    public dynamic function next(_fromServer:stdgo.Slice<stdgo.GoUInt8>, _more:Bool):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } return @:_0 __self__.value.next(_fromServer, _more);
    @:keep
    @:tdfield
    public dynamic function start(_server:stdgo.Ref<stdgo._internal.net.smtp.Smtp_serverinfo.ServerInfo>):{ var _0 : stdgo.GoString; var _1 : stdgo.Slice<stdgo.GoUInt8>; var _2 : stdgo.Error; } return @:_0 __self__.value.start(_server);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.net.smtp.Smtp_t_crammd5authpointer.T_cramMD5AuthPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
