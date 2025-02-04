package stdgo._internal.os;
@:structInit @:using(stdgo._internal.os.Os_syscallerror_static_extension.SyscallError_static_extension) class SyscallError {
    public var syscall : stdgo.GoString = "";
    public var err : stdgo.Error = (null : stdgo.Error);
    public function new(?syscall:stdgo.GoString, ?err:stdgo.Error) {
        if (syscall != null) this.syscall = syscall;
        if (err != null) this.err = err;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new SyscallError(syscall, err);
    }
}
