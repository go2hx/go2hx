package stdgo._internal.encoding.json;
@:structInit class T_basicLatin7xTag {
    @:tag("`json:\"pqrstuvwxyz\"`")
    public var v : stdgo.GoString = "";
    public function new(?v:stdgo.GoString) {
        if (v != null) this.v = v;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_basicLatin7xTag(v);
    }
}
