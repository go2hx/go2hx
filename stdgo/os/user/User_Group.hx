package stdgo.os.user;
@:structInit @:using(stdgo.os.user.User.Group_static_extension) abstract Group(stdgo._internal.os.user.User_Group.Group) from stdgo._internal.os.user.User_Group.Group to stdgo._internal.os.user.User_Group.Group {
    public var gid(get, set) : String;
    function get_gid():String return this.gid;
    function set_gid(v:String):String {
        this.gid = (v : stdgo.GoString);
        return v;
    }
    public var name(get, set) : String;
    function get_name():String return this.name;
    function set_name(v:String):String {
        this.name = (v : stdgo.GoString);
        return v;
    }
    public function new(?gid:String, ?name:String) this = new stdgo._internal.os.user.User_Group.Group((gid : stdgo.GoString), (name : stdgo.GoString));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
