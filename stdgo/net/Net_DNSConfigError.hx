package stdgo.net;
@:structInit @:using(stdgo.net.Net.DNSConfigError_static_extension) abstract DNSConfigError(stdgo._internal.net.Net_DNSConfigError.DNSConfigError) from stdgo._internal.net.Net_DNSConfigError.DNSConfigError to stdgo._internal.net.Net_DNSConfigError.DNSConfigError {
    public var err(get, set) : stdgo.Error;
    function get_err():stdgo.Error return this.err;
    function set_err(v:stdgo.Error):stdgo.Error {
        this.err = (v : stdgo.Error);
        return v;
    }
    public function new(?err:stdgo.Error) this = new stdgo._internal.net.Net_DNSConfigError.DNSConfigError((err : stdgo.Error));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
