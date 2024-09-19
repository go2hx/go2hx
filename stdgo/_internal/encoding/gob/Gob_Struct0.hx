package stdgo._internal.encoding.gob;
@:structInit class Struct0 {
    public var i : stdgo.AnyInterface = (null : stdgo.AnyInterface);
    public function new(?i:stdgo.AnyInterface) {
        if (i != null) this.i = i;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Struct0(i);
    }
}
