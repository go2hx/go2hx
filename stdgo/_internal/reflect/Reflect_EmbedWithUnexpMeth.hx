package stdgo._internal.reflect;
@:structInit class EmbedWithUnexpMeth {
    public function new() {}
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new EmbedWithUnexpMeth();
    }
}
