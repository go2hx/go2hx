package stdgo._internal.crypto.tls;
@:keep @:allow(stdgo._internal.crypto.tls.Tls.Config_asInterface) class Config_static_extension {
    @:keep
    @:tdfield
    static public function decryptTicket( _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_config.Config>, _identity:stdgo.Slice<stdgo.GoUInt8>, _cs:stdgo._internal.crypto.tls.Tls_connectionstate.ConnectionState):{ var _0 : stdgo.Ref<stdgo._internal.crypto.tls.Tls_sessionstate.SessionState>; var _1 : stdgo.Error; } throw "Config:crypto.tls.decryptTicket is not yet implemented";
    @:keep
    @:tdfield
    static public function encryptTicket( _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_config.Config>, _cs:stdgo._internal.crypto.tls.Tls_connectionstate.ConnectionState, _ss:stdgo.Ref<stdgo._internal.crypto.tls.Tls_sessionstate.SessionState>):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } throw "Config:crypto.tls.encryptTicket is not yet implemented";
    @:keep
    @:tdfield
    static public function buildNameToCertificate( _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_config.Config>):Void throw "Config:crypto.tls.buildNameToCertificate is not yet implemented";
    @:keep
    @:tdfield
    static public function setSessionTicketKeys( _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_config.Config>, _keys:stdgo.Slice<stdgo.GoArray<stdgo.GoUInt8>>):Void throw "Config:crypto.tls.setSessionTicketKeys is not yet implemented";
    @:keep
    @:tdfield
    static public function clone( _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_config.Config>):stdgo.Ref<stdgo._internal.crypto.tls.Tls_config.Config> throw "Config:crypto.tls.clone is not yet implemented";
}
