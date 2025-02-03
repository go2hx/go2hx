package stdgo.net.smtp;
@:structInit @:using(stdgo.net.smtp.Smtp.T_plainAuth_static_extension) abstract T_plainAuth(stdgo._internal.net.smtp.Smtp_T_plainAuth.T_plainAuth) from stdgo._internal.net.smtp.Smtp_T_plainAuth.T_plainAuth to stdgo._internal.net.smtp.Smtp_T_plainAuth.T_plainAuth {
    public var _identity(get, set) : String;
    function get__identity():String return this._identity;
    function set__identity(v:String):String {
        this._identity = (v : stdgo.GoString);
        return v;
    }
    public var _username(get, set) : String;
    function get__username():String return this._username;
    function set__username(v:String):String {
        this._username = (v : stdgo.GoString);
        return v;
    }
    public var _password(get, set) : String;
    function get__password():String return this._password;
    function set__password(v:String):String {
        this._password = (v : stdgo.GoString);
        return v;
    }
    public var _host(get, set) : String;
    function get__host():String return this._host;
    function set__host(v:String):String {
        this._host = (v : stdgo.GoString);
        return v;
    }
    public function new(?_identity:String, ?_username:String, ?_password:String, ?_host:String) this = new stdgo._internal.net.smtp.Smtp_T_plainAuth.T_plainAuth((_identity : stdgo.GoString), (_username : stdgo.GoString), (_password : stdgo.GoString), (_host : stdgo.GoString));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
