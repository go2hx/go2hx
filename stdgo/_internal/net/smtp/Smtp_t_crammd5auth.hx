package stdgo._internal.net.smtp;
@:structInit @:using(stdgo._internal.net.smtp.Smtp_t_crammd5auth_static_extension.T_cramMD5Auth_static_extension) class T_cramMD5Auth {
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
