package stdgo._internal.net.http;
@:structInit @:using(stdgo._internal.net.http.Http_t_socksusernamepassword_static_extension.T_socksUsernamePassword_static_extension) class T_socksUsernamePassword {
    public var username : stdgo.GoString = "";
    public var password : stdgo.GoString = "";
    public function new(?username:stdgo.GoString, ?password:stdgo.GoString) {
        if (username != null) this.username = username;
        if (password != null) this.password = password;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_socksUsernamePassword(username, password);
    }
}
