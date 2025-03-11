package stdgo._internal.syscall;
@:structInit @:using(stdgo._internal.syscall.Syscall_sockaddrinet4_static_extension.SockaddrInet4_static_extension) class SockaddrInet4 {
    public var port : stdgo.GoInt = 0;
    public var addr : stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(4, 4).__setNumber32__();
    public function new(?port:stdgo.GoInt, ?addr:stdgo.GoArray<stdgo.GoUInt8>) {
        if (port != null) this.port = port;
        if (addr != null) this.addr = addr;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new SockaddrInet4(port, addr);
    }
}
