package stdgo._internal.encoding.json;
@:structInit class BugC {
    public var s : stdgo.GoString = "";
    public function new(?s:stdgo.GoString) {
        if (s != null) this.s = s;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new BugC(s);
    }
}
