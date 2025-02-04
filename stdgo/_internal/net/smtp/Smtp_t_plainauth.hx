package stdgo._internal.net.smtp;
@:structInit @:using(stdgo._internal.net.smtp.Smtp_t_plainauth_static_extension.T_plainAuth_static_extension) class T_plainAuth {
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
