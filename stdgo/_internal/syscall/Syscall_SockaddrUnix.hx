package stdgo._internal.syscall;
@:structInit class SockaddrUnix {
    public var name : stdgo.GoString = "";
    public function new(?name:stdgo.GoString) {
        if (name != null) this.name = name;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new SockaddrUnix(name);
    }
}
