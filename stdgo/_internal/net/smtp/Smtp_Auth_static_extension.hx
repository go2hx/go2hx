package stdgo._internal.net.smtp;
@:keep class Auth_static_extension {
    static public function next(t:Auth, _fromServer:stdgo.Slice<stdgo.GoUInt8>, _more:Bool):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } return t.next(_fromServer, _more);
    static public function start(t:Auth, _server:stdgo.Ref<stdgo._internal.net.smtp.Smtp_ServerInfo.ServerInfo>):{ var _0 : stdgo.GoString; var _1 : stdgo.Slice<stdgo.GoUInt8>; var _2 : stdgo.Error; } return t.start(_server);
}
