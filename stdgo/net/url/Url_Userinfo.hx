package stdgo.net.url;
@:structInit @:using(stdgo.net.url.Url.Userinfo_static_extension) abstract Userinfo(stdgo._internal.net.url.Url_Userinfo.Userinfo) from stdgo._internal.net.url.Url_Userinfo.Userinfo to stdgo._internal.net.url.Url_Userinfo.Userinfo {
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
    public var _passwordSet(get, set) : Bool;
    function get__passwordSet():Bool return this._passwordSet;
    function set__passwordSet(v:Bool):Bool {
        this._passwordSet = v;
        return v;
    }
    public function new(?_username:String, ?_password:String, ?_passwordSet:Bool) this = new stdgo._internal.net.url.Url_Userinfo.Userinfo((_username : stdgo.GoString), (_password : stdgo.GoString), _passwordSet);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
