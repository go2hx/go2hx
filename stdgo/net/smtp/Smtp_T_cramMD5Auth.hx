package stdgo.net.smtp;
@:structInit @:using(stdgo.net.smtp.Smtp.T_cramMD5Auth_static_extension) abstract T_cramMD5Auth(stdgo._internal.net.smtp.Smtp_T_cramMD5Auth.T_cramMD5Auth) from stdgo._internal.net.smtp.Smtp_T_cramMD5Auth.T_cramMD5Auth to stdgo._internal.net.smtp.Smtp_T_cramMD5Auth.T_cramMD5Auth {
    public var _username(get, set) : String;
    function get__username():String return this._username;
    function set__username(v:String):String {
        this._username = (v : stdgo.GoString);
        return v;
    }
    public var _secret(get, set) : String;
    function get__secret():String return this._secret;
    function set__secret(v:String):String {
        this._secret = (v : stdgo.GoString);
        return v;
    }
    public function new(?_username:String, ?_secret:String) this = new stdgo._internal.net.smtp.Smtp_T_cramMD5Auth.T_cramMD5Auth((_username : stdgo.GoString), (_secret : stdgo.GoString));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
