package stdgo.syscall;
@:structInit @:using(stdgo.syscall.Syscall.Timeval_static_extension) abstract Timeval(stdgo._internal.syscall.Syscall_Timeval.Timeval) from stdgo._internal.syscall.Syscall_Timeval.Timeval to stdgo._internal.syscall.Syscall_Timeval.Timeval {
    public var sec(get, set) : haxe.Int64;
    function get_sec():haxe.Int64 return this.sec;
    function set_sec(v:haxe.Int64):haxe.Int64 {
        this.sec = (v : stdgo.GoInt64);
        return v;
    }
    public var usec(get, set) : haxe.Int64;
    function get_usec():haxe.Int64 return this.usec;
    function set_usec(v:haxe.Int64):haxe.Int64 {
        this.usec = (v : stdgo.GoInt64);
        return v;
    }
    public function new(?sec:haxe.Int64, ?usec:haxe.Int64) this = new stdgo._internal.syscall.Syscall_Timeval.Timeval((sec : stdgo.GoInt64), (usec : stdgo.GoInt64));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
