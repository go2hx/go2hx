package stdgo.syscall;
@:structInit @:using(stdgo.syscall.Syscall.Iovec_static_extension) abstract Iovec(stdgo._internal.syscall.Syscall_Iovec.Iovec) from stdgo._internal.syscall.Syscall_Iovec.Iovec to stdgo._internal.syscall.Syscall_Iovec.Iovec {
    public function new() this = new stdgo._internal.syscall.Syscall_Iovec.Iovec();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
