package stdgo._internal.encoding.json;
@:structInit class T_basicLatin5xTag {
    @:tag("`json:\"PQRSTUVWXYZ_\"`")
    public var v : stdgo.GoString = "";
    public function new(?v:stdgo.GoString) {
        if (v != null) this.v = v;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_basicLatin5xTag(v);
    }
}
