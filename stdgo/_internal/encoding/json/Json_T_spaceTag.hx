package stdgo._internal.encoding.json;
@:structInit class T_spaceTag {
    @:tag("`json:\"With space\"`")
    public var q : stdgo.GoString = "";
    public function new(?q:stdgo.GoString) {
        if (q != null) this.q = q;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_spaceTag(q);
    }
}
