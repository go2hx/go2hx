package stdgo.net.http;
@:structInit @:using(stdgo.net.http.Http.T_readWriteCloserBody_static_extension) abstract T_readWriteCloserBody(stdgo._internal.net.http.Http_T_readWriteCloserBody.T_readWriteCloserBody) from stdgo._internal.net.http.Http_T_readWriteCloserBody.T_readWriteCloserBody to stdgo._internal.net.http.Http_T_readWriteCloserBody.T_readWriteCloserBody {
    public var readWriteCloser(get, set) : stdgo._internal.io.Io_ReadWriteCloser.ReadWriteCloser;
    function get_readWriteCloser():stdgo._internal.io.Io_ReadWriteCloser.ReadWriteCloser return this.readWriteCloser;
    function set_readWriteCloser(v:stdgo._internal.io.Io_ReadWriteCloser.ReadWriteCloser):stdgo._internal.io.Io_ReadWriteCloser.ReadWriteCloser {
        this.readWriteCloser = v;
        return v;
    }
    public function new(?readWriteCloser:stdgo._internal.io.Io_ReadWriteCloser.ReadWriteCloser) this = new stdgo._internal.net.http.Http_T_readWriteCloserBody.T_readWriteCloserBody(readWriteCloser);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
