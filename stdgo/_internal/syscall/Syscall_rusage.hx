package stdgo._internal.syscall;
@:structInit @:using(stdgo._internal.syscall.Syscall_rusage_static_extension.Rusage_static_extension) class Rusage {
    public var utime : stdgo._internal.syscall.Syscall_timeval.Timeval = ({} : stdgo._internal.syscall.Syscall_timeval.Timeval);
    public var stime : stdgo._internal.syscall.Syscall_timeval.Timeval = ({} : stdgo._internal.syscall.Syscall_timeval.Timeval);
    public function new(?utime:stdgo._internal.syscall.Syscall_timeval.Timeval, ?stime:stdgo._internal.syscall.Syscall_timeval.Timeval) {
        if (utime != null) this.utime = utime;
        if (stime != null) this.stime = stime;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Rusage(utime, stime);
    }
}
