package stdgo.syscall;
@:structInit @:using(stdgo.syscall.Syscall.SockaddrUnix_static_extension) abstract SockaddrUnix(stdgo._internal.syscall.Syscall_SockaddrUnix.SockaddrUnix) from stdgo._internal.syscall.Syscall_SockaddrUnix.SockaddrUnix to stdgo._internal.syscall.Syscall_SockaddrUnix.SockaddrUnix {
    public var name(get, set) : String;
    function get_name():String return this.name;
    function set_name(v:String):String {
        this.name = (v : stdgo.GoString);
        return v;
    }
    public function new(?name:String) this = new stdgo._internal.syscall.Syscall_SockaddrUnix.SockaddrUnix((name : stdgo.GoString));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
