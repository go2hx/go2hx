package stdgo._internal.encoding.json;
@:structInit class BugD {
    @:tag("`json:\"S\"`")
    public var xXX : stdgo.GoString = "";
    public function new(?xXX:stdgo.GoString) {
        if (xXX != null) this.xXX = xXX;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new BugD(xXX);
    }
}
