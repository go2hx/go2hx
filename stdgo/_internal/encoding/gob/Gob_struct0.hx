package stdgo._internal.encoding.gob;
@:structInit @:using(stdgo._internal.encoding.gob.Gob_struct0_static_extension.Struct0_static_extension) class Struct0 {
    public var i : stdgo.AnyInterface = (null : stdgo.AnyInterface);
    public function new(?i:stdgo.AnyInterface) {
        if (i != null) this.i = i;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Struct0(i);
    }
}
