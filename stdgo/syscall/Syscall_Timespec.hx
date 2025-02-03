package stdgo.syscall;
@:structInit @:using(stdgo.syscall.Syscall.Timespec_static_extension) abstract Timespec(stdgo._internal.syscall.Syscall_Timespec.Timespec) from stdgo._internal.syscall.Syscall_Timespec.Timespec to stdgo._internal.syscall.Syscall_Timespec.Timespec {
    public var sec(get, set) : haxe.Int64;
    function get_sec():haxe.Int64 return this.sec;
    function set_sec(v:haxe.Int64):haxe.Int64 {
        this.sec = (v : stdgo.GoInt64);
        return v;
    }
    public var nsec(get, set) : haxe.Int64;
    function get_nsec():haxe.Int64 return this.nsec;
    function set_nsec(v:haxe.Int64):haxe.Int64 {
        this.nsec = (v : stdgo.GoInt64);
        return v;
    }
    public function new(?sec:haxe.Int64, ?nsec:haxe.Int64) this = new stdgo._internal.syscall.Syscall_Timespec.Timespec((sec : stdgo.GoInt64), (nsec : stdgo.GoInt64));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
