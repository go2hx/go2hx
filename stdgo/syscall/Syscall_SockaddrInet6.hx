package stdgo.syscall;
@:structInit @:using(stdgo.syscall.Syscall.SockaddrInet6_static_extension) abstract SockaddrInet6(stdgo._internal.syscall.Syscall_SockaddrInet6.SockaddrInet6) from stdgo._internal.syscall.Syscall_SockaddrInet6.SockaddrInet6 to stdgo._internal.syscall.Syscall_SockaddrInet6.SockaddrInet6 {
    public var port(get, set) : StdTypes.Int;
    function get_port():StdTypes.Int return this.port;
    function set_port(v:StdTypes.Int):StdTypes.Int {
        this.port = (v : stdgo.GoInt);
        return v;
    }
    public var zoneId(get, set) : std.UInt;
    function get_zoneId():std.UInt return this.zoneId;
    function set_zoneId(v:std.UInt):std.UInt {
        this.zoneId = (v : stdgo.GoUInt32);
        return v;
    }
    public var addr(get, set) : haxe.ds.Vector<std.UInt>;
    function get_addr():haxe.ds.Vector<std.UInt> return haxe.ds.Vector.fromArrayCopy([for (i in this.addr) i]);
    function set_addr(v:haxe.ds.Vector<std.UInt>):haxe.ds.Vector<std.UInt> {
        this.addr = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.GoArray<stdgo.GoUInt8>);
        return v;
    }
    public function new(?port:StdTypes.Int, ?zoneId:std.UInt, ?addr:haxe.ds.Vector<std.UInt>) this = new stdgo._internal.syscall.Syscall_SockaddrInet6.SockaddrInet6((port : stdgo.GoInt), (zoneId : stdgo.GoUInt32), ([for (i in addr) (i : stdgo.GoUInt8)] : stdgo.GoArray<stdgo.GoUInt8>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
