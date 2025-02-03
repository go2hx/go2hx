package stdgo.net.http;
@:structInit @:using(stdgo.net.http.Http.T_socksUsernamePassword_static_extension) abstract T_socksUsernamePassword(stdgo._internal.net.http.Http_T_socksUsernamePassword.T_socksUsernamePassword) from stdgo._internal.net.http.Http_T_socksUsernamePassword.T_socksUsernamePassword to stdgo._internal.net.http.Http_T_socksUsernamePassword.T_socksUsernamePassword {
    public var username(get, set) : String;
    function get_username():String return this.username;
    function set_username(v:String):String {
        this.username = (v : stdgo.GoString);
        return v;
    }
    public var password(get, set) : String;
    function get_password():String return this.password;
    function set_password(v:String):String {
        this.password = (v : stdgo.GoString);
        return v;
    }
    public function new(?username:String, ?password:String) this = new stdgo._internal.net.http.Http_T_socksUsernamePassword.T_socksUsernamePassword((username : stdgo.GoString), (password : stdgo.GoString));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
