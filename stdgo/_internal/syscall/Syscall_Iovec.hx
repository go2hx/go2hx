package stdgo._internal.syscall;
@:structInit class Iovec {
    public function new() {}
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Iovec();
    }
}
