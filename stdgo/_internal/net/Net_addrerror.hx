package stdgo._internal.net;
@:structInit @:using(stdgo._internal.net.Net_addrerror_static_extension.AddrError_static_extension) class AddrError {
    public var err : stdgo.GoString = "";
    public var addr : stdgo.GoString = "";
    public function new(?err:stdgo.GoString, ?addr:stdgo.GoString) {
        if (err != null) this.err = err;
        if (addr != null) this.addr = addr;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new AddrError(err, addr);
    }
}
