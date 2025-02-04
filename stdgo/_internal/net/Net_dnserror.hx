package stdgo._internal.net;
@:structInit @:using(stdgo._internal.net.Net_dnserror_static_extension.DNSError_static_extension) class DNSError {
    public var err : stdgo.GoString = "";
    public var name : stdgo.GoString = "";
    public var server : stdgo.GoString = "";
    public var isTimeout : Bool = false;
    public var isTemporary : Bool = false;
    public var isNotFound : Bool = false;
    public function new(?err:stdgo.GoString, ?name:stdgo.GoString, ?server:stdgo.GoString, ?isTimeout:Bool, ?isTemporary:Bool, ?isNotFound:Bool) {
        if (err != null) this.err = err;
        if (name != null) this.name = name;
        if (server != null) this.server = server;
        if (isTimeout != null) this.isTimeout = isTimeout;
        if (isTemporary != null) this.isTemporary = isTemporary;
        if (isNotFound != null) this.isNotFound = isNotFound;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new DNSError(err, name, server, isTimeout, isTemporary, isNotFound);
    }
}
