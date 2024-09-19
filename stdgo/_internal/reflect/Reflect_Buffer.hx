package stdgo._internal.reflect;
@:structInit class Buffer {
    public function new() {}
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Buffer();
    }
}
