package stdgo._internal.encoding.gob;
@:structInit @:using(stdgo._internal.encoding.gob.Gob_bar_static_extension.Bar_static_extension) class Bar {
    public var x : stdgo.GoString = "";
    public function new(?x:stdgo.GoString) {
        if (x != null) this.x = x;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Bar(x);
    }
}
