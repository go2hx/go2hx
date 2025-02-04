package stdgo._internal.net;
@:structInit @:using(stdgo._internal.net.Net_dnsconfigerror_static_extension.DNSConfigError_static_extension) class DNSConfigError {
    public var err : stdgo.Error = (null : stdgo.Error);
    public function new(?err:stdgo.Error) {
        if (err != null) this.err = err;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new DNSConfigError(err);
    }
}
