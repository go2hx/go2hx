package stdgo._internal.encoding.gob;
@:structInit class NewType0 {
    public var s : stdgo.GoString = "";
    public function new(?s:stdgo.GoString) {
        if (s != null) this.s = s;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new NewType0(s);
    }
}
