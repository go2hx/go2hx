package stdgo._internal.encoding.json;
@:structInit class T_percentSlashTag {
    @:tag("`json:\"text/html%\"`")
    public var v : stdgo.GoString = "";
    public function new(?v:stdgo.GoString) {
        if (v != null) this.v = v;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_percentSlashTag(v);
    }
}
