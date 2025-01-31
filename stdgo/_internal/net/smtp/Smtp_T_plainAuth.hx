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
@:structInit @:using(stdgo._internal.net.smtp.Smtp_T_plainAuth_static_extension.T_plainAuth_static_extension) class T_plainAuth {
    public var _identity : stdgo.GoString = "";
    public var _username : stdgo.GoString = "";
    public var _password : stdgo.GoString = "";
    public var _host : stdgo.GoString = "";
    public function new(?_identity:stdgo.GoString, ?_username:stdgo.GoString, ?_password:stdgo.GoString, ?_host:stdgo.GoString) {
        if (_identity != null) this._identity = _identity;
        if (_username != null) this._username = _username;
        if (_password != null) this._password = _password;
        if (_host != null) this._host = _host;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_plainAuth(_identity, _username, _password, _host);
    }
}
