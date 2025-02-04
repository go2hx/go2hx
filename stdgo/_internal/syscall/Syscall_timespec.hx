package stdgo._internal.syscall;
@:structInit @:using(stdgo._internal.syscall.Syscall_timespec_static_extension.Timespec_static_extension) class Timespec {
    public var sec : stdgo.GoInt64 = 0;
    public var nsec : stdgo.GoInt64 = 0;
    public function new(?sec:stdgo.GoInt64, ?nsec:stdgo.GoInt64) {
        if (sec != null) this.sec = sec;
        if (nsec != null) this.nsec = nsec;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Timespec(sec, nsec);
    }
}
