package stdgo._internal.syscall;
@:structInit @:using(stdgo._internal.syscall.Syscall_timeval_static_extension.Timeval_static_extension) class Timeval {
    public var sec : stdgo.GoInt64 = 0;
    public var usec : stdgo.GoInt64 = 0;
    public function new(?sec:stdgo.GoInt64, ?usec:stdgo.GoInt64) {
        if (sec != null) this.sec = sec;
        if (usec != null) this.usec = usec;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Timeval(sec, usec);
    }
}
