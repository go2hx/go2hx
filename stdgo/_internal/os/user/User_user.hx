package stdgo._internal.os.user;
@:structInit @:using(stdgo._internal.os.user.User_user_static_extension.User_static_extension) class User {
    public var uid : stdgo.GoString = "";
    public var gid : stdgo.GoString = "";
    public var username : stdgo.GoString = "";
    public var name : stdgo.GoString = "";
    public var homeDir : stdgo.GoString = "";
    public function new(?uid:stdgo.GoString, ?gid:stdgo.GoString, ?username:stdgo.GoString, ?name:stdgo.GoString, ?homeDir:stdgo.GoString) {
        if (uid != null) this.uid = uid;
        if (gid != null) this.gid = gid;
        if (username != null) this.username = username;
        if (name != null) this.name = name;
        if (homeDir != null) this.homeDir = homeDir;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new User(uid, gid, username, name, homeDir);
    }
}
