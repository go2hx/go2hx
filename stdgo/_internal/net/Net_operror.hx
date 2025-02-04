package stdgo._internal.net;
@:structInit @:using(stdgo._internal.net.Net_operror_static_extension.OpError_static_extension) class OpError {
    public var op : stdgo.GoString = "";
    public var net : stdgo.GoString = "";
    public var source : stdgo._internal.net.Net_addr.Addr = (null : stdgo._internal.net.Net_addr.Addr);
    public var addr : stdgo._internal.net.Net_addr.Addr = (null : stdgo._internal.net.Net_addr.Addr);
    public var err : stdgo.Error = (null : stdgo.Error);
    public function new(?op:stdgo.GoString, ?net:stdgo.GoString, ?source:stdgo._internal.net.Net_addr.Addr, ?addr:stdgo._internal.net.Net_addr.Addr, ?err:stdgo.Error) {
        if (op != null) this.op = op;
        if (net != null) this.net = net;
        if (source != null) this.source = source;
        if (addr != null) this.addr = addr;
        if (err != null) this.err = err;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new OpError(op, net, source, addr, err);
    }
}
