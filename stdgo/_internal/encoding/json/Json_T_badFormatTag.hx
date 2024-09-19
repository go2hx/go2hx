package stdgo._internal.encoding.json;
@:structInit class T_badFormatTag {
    @:tag("`:\"BadFormat\"`")
    public var y : stdgo.GoString = "";
    public function new(?y:stdgo.GoString) {
        if (y != null) this.y = y;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_badFormatTag(y);
    }
}
