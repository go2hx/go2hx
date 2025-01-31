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
@:structInit @:using(stdgo._internal.net.smtp.Smtp_T_cramMD5Auth_static_extension.T_cramMD5Auth_static_extension) class T_cramMD5Auth {
    public var _username : stdgo.GoString = "";
    public var _secret : stdgo.GoString = "";
    public function new(?_username:stdgo.GoString, ?_secret:stdgo.GoString) {
        if (_username != null) this._username = _username;
        if (_secret != null) this._secret = _secret;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_cramMD5Auth(_username, _secret);
    }
}
