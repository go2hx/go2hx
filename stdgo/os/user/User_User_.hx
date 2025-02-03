package stdgo.os.user;
@:structInit @:using(stdgo.os.user.User.User_static_extension) abstract User_(stdgo._internal.os.user.User_User.User) from stdgo._internal.os.user.User_User.User to stdgo._internal.os.user.User_User.User {
    public var uid(get, set) : String;
    function get_uid():String return this.uid;
    function set_uid(v:String):String {
        this.uid = (v : stdgo.GoString);
        return v;
    }
    public var gid(get, set) : String;
    function get_gid():String return this.gid;
    function set_gid(v:String):String {
        this.gid = (v : stdgo.GoString);
        return v;
    }
    public var username(get, set) : String;
    function get_username():String return this.username;
    function set_username(v:String):String {
        this.username = (v : stdgo.GoString);
        return v;
    }
    public var name(get, set) : String;
    function get_name():String return this.name;
    function set_name(v:String):String {
        this.name = (v : stdgo.GoString);
        return v;
    }
    public var homeDir(get, set) : String;
    function get_homeDir():String return this.homeDir;
    function set_homeDir(v:String):String {
        this.homeDir = (v : stdgo.GoString);
        return v;
    }
    public function new(?uid:String, ?gid:String, ?username:String, ?name:String, ?homeDir:String) this = new stdgo._internal.os.user.User_User.User((uid : stdgo.GoString), (gid : stdgo.GoString), (username : stdgo.GoString), (name : stdgo.GoString), (homeDir : stdgo.GoString));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
