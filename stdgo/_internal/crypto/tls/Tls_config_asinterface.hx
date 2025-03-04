package stdgo._internal.crypto.tls;
class Config_asInterface {
    @:keep
    @:tdfield
    public dynamic function decryptTicket(_identity:stdgo.Slice<stdgo.GoUInt8>, _cs:stdgo._internal.crypto.tls.Tls_connectionstate.ConnectionState):{ var _0 : stdgo.Ref<stdgo._internal.crypto.tls.Tls_sessionstate.SessionState>; var _1 : stdgo.Error; } return @:_0 __self__.value.decryptTicket(_identity, _cs);
    @:keep
    @:tdfield
    public dynamic function encryptTicket(_cs:stdgo._internal.crypto.tls.Tls_connectionstate.ConnectionState, _ss:stdgo.Ref<stdgo._internal.crypto.tls.Tls_sessionstate.SessionState>):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } return @:_0 __self__.value.encryptTicket(_cs, _ss);
    @:keep
    @:tdfield
    public dynamic function buildNameToCertificate():Void @:_0 __self__.value.buildNameToCertificate();
    @:keep
    @:tdfield
    public dynamic function setSessionTicketKeys(_keys:stdgo.Slice<stdgo.GoArray<stdgo.GoUInt8>>):Void @:_0 __self__.value.setSessionTicketKeys(_keys);
    @:keep
    @:tdfield
    public dynamic function clone():stdgo.Ref<stdgo._internal.crypto.tls.Tls_config.Config> return @:_0 __self__.value.clone();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.crypto.tls.Tls_configpointer.ConfigPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
