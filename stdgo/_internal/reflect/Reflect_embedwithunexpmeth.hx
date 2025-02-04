package stdgo._internal.reflect;
@:structInit @:using(stdgo._internal.reflect.Reflect_embedwithunexpmeth_static_extension.EmbedWithUnexpMeth_static_extension) class EmbedWithUnexpMeth {
    public function new() {}
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new EmbedWithUnexpMeth();
    }
}
