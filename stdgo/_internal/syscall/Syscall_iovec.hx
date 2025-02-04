package stdgo._internal.syscall;
@:structInit @:using(stdgo._internal.syscall.Syscall_iovec_static_extension.Iovec_static_extension) class Iovec {
    public function new() {}
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Iovec();
    }
}
