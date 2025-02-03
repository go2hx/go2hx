package stdgo.net.http;
@:structInit @:using(stdgo.net.http.Http.T_readTrackingBody_static_extension) abstract T_readTrackingBody(stdgo._internal.net.http.Http_T_readTrackingBody.T_readTrackingBody) from stdgo._internal.net.http.Http_T_readTrackingBody.T_readTrackingBody to stdgo._internal.net.http.Http_T_readTrackingBody.T_readTrackingBody {
    public var readCloser(get, set) : stdgo._internal.io.Io_ReadCloser.ReadCloser;
    function get_readCloser():stdgo._internal.io.Io_ReadCloser.ReadCloser return this.readCloser;
    function set_readCloser(v:stdgo._internal.io.Io_ReadCloser.ReadCloser):stdgo._internal.io.Io_ReadCloser.ReadCloser {
        this.readCloser = v;
        return v;
    }
    public function new(?readCloser:stdgo._internal.io.Io_ReadCloser.ReadCloser) this = new stdgo._internal.net.http.Http_T_readTrackingBody.T_readTrackingBody(readCloser);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
