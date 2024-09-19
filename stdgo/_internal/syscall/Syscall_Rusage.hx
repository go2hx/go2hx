package stdgo._internal.syscall;
@:structInit class Rusage {
    public var utime : stdgo._internal.syscall.Syscall_Timeval.Timeval = ({} : stdgo._internal.syscall.Syscall_Timeval.Timeval);
    public var stime : stdgo._internal.syscall.Syscall_Timeval.Timeval = ({} : stdgo._internal.syscall.Syscall_Timeval.Timeval);
    public function new(?utime:stdgo._internal.syscall.Syscall_Timeval.Timeval, ?stime:stdgo._internal.syscall.Syscall_Timeval.Timeval) {
        if (utime != null) this.utime = utime;
        if (stime != null) this.stime = stime;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Rusage(utime, stime);
    }
}
