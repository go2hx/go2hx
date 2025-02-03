package stdgo.net.http.httputil;
@:structInit @:using(stdgo.net.http.httputil.Httputil.T_delegateReader_static_extension) abstract T_delegateReader(stdgo._internal.net.http.httputil.Httputil_T_delegateReader.T_delegateReader) from stdgo._internal.net.http.httputil.Httputil_T_delegateReader.T_delegateReader to stdgo._internal.net.http.httputil.Httputil_T_delegateReader.T_delegateReader {
    public var _c(get, set) : stdgo.Chan<stdgo._internal.io.Io_Reader.Reader>;
    function get__c():stdgo.Chan<stdgo._internal.io.Io_Reader.Reader> return this._c;
    function set__c(v:stdgo.Chan<stdgo._internal.io.Io_Reader.Reader>):stdgo.Chan<stdgo._internal.io.Io_Reader.Reader> {
        this._c = (v : stdgo.Chan<stdgo._internal.io.Io_Reader.Reader>);
        return v;
    }
    public var _err(get, set) : stdgo.Error;
    function get__err():stdgo.Error return this._err;
    function set__err(v:stdgo.Error):stdgo.Error {
        this._err = (v : stdgo.Error);
        return v;
    }
    public var _r(get, set) : stdgo._internal.io.Io_Reader.Reader;
    function get__r():stdgo._internal.io.Io_Reader.Reader return this._r;
    function set__r(v:stdgo._internal.io.Io_Reader.Reader):stdgo._internal.io.Io_Reader.Reader {
        this._r = v;
        return v;
    }
    public function new(?_c:stdgo.Chan<stdgo._internal.io.Io_Reader.Reader>, ?_err:stdgo.Error, ?_r:stdgo._internal.io.Io_Reader.Reader) this = new stdgo._internal.net.http.httputil.Httputil_T_delegateReader.T_delegateReader((_c : stdgo.Chan<stdgo._internal.io.Io_Reader.Reader>), (_err : stdgo.Error), _r);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
