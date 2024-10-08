package stdgo._internal.os.user;
@:structInit class Group {
    public var gid : stdgo.GoString = "";
    public var name : stdgo.GoString = "";
    public function new(?gid:stdgo.GoString, ?name:stdgo.GoString) {
        if (gid != null) this.gid = gid;
        if (name != null) this.name = name;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Group(gid, name);
    }
}
