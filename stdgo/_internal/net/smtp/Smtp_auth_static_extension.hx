package stdgo._internal.net.smtp;
@:keep class Auth_static_extension {
    @:interfacetypeffun
    static public function next(t:stdgo._internal.net.smtp.Smtp_auth.Auth, _fromServer:stdgo.Slice<stdgo.GoUInt8>, _more:Bool):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } return t.next(_fromServer, _more);
    @:interfacetypeffun
    static public function start(t:stdgo._internal.net.smtp.Smtp_auth.Auth, _server:stdgo.Ref<stdgo._internal.net.smtp.Smtp_serverinfo.ServerInfo>):{ var _0 : stdgo.GoString; var _1 : stdgo.Slice<stdgo.GoUInt8>; var _2 : stdgo.Error; } return t.start(_server);
}
