package stdgo._internal.net.smtp;
import stdgo._internal.net.Net;
import stdgo._internal.net.textproto.Textproto;
import stdgo._internal.errors.Errors;
import stdgo._internal.strings.Strings;
import stdgo._internal.crypto.hmac.Hmac;
import stdgo._internal.crypto.md5.Md5;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.crypto.tls.Tls;
import stdgo._internal.encoding.base64.Base64;
@:keep class Auth_static_extension {
    @:interfacetypeffun
    static public function next(t:stdgo._internal.net.smtp.Smtp_Auth.Auth, _fromServer:stdgo.Slice<stdgo.GoUInt8>, _more:Bool):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } return t.next(_fromServer, _more);
    @:interfacetypeffun
    static public function start(t:stdgo._internal.net.smtp.Smtp_Auth.Auth, _server:stdgo.Ref<stdgo._internal.net.smtp.Smtp_ServerInfo.ServerInfo>):{ var _0 : stdgo.GoString; var _1 : stdgo.Slice<stdgo.GoUInt8>; var _2 : stdgo.Error; } return t.start(_server);
}
