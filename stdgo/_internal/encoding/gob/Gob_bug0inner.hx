package stdgo._internal.encoding.gob;
@:structInit @:using(stdgo._internal.encoding.gob.Gob_bug0inner_static_extension.Bug0Inner_static_extension) class Bug0Inner {
    public var a : stdgo.GoInt = 0;
    public function new(?a:stdgo.GoInt) {
        if (a != null) this.a = a;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Bug0Inner(a);
    }
}
