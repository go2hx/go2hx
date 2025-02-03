package stdgo.syscall;
@:structInit @:using(stdgo.syscall.Syscall.Rusage_static_extension) abstract Rusage(stdgo._internal.syscall.Syscall_Rusage.Rusage) from stdgo._internal.syscall.Syscall_Rusage.Rusage to stdgo._internal.syscall.Syscall_Rusage.Rusage {
    public var utime(get, set) : Timeval;
    function get_utime():Timeval return this.utime;
    function set_utime(v:Timeval):Timeval {
        this.utime = v;
        return v;
    }
    public var stime(get, set) : Timeval;
    function get_stime():Timeval return this.stime;
    function set_stime(v:Timeval):Timeval {
        this.stime = v;
        return v;
    }
    public function new(?utime:Timeval, ?stime:Timeval) this = new stdgo._internal.syscall.Syscall_Rusage.Rusage(utime, stime);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
