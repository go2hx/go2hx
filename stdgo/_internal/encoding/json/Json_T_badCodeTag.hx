package stdgo._internal.encoding.json;
@:structInit class T_badCodeTag {
    @:tag("`json:\" !\\\"#&\'()*+,.\"`")
    public var z : stdgo.GoString = "";
    public function new(?z:stdgo.GoString) {
        if (z != null) this.z = z;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_badCodeTag(z);
    }
}
