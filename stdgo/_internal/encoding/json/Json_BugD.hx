package stdgo._internal.encoding.json;
@:structInit class BugD {
    @:tag("`json:\"S\"`")
    public var xxx : stdgo.GoString = "";
    public function new(?xxx:stdgo.GoString) {
        if (xxx != null) this.xxx = xxx;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new BugD(xxx);
    }
}
