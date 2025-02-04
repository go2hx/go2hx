package stdgo._internal.net.http.httputil;
@:structInit @:using(stdgo._internal.net.http.httputil.Httputil_t_delegatereader_static_extension.T_delegateReader_static_extension) class T_delegateReader {
    public var _c : stdgo.Chan<stdgo._internal.io.Io_reader.Reader> = (null : stdgo.Chan<stdgo._internal.io.Io_reader.Reader>);
    public var _err : stdgo.Error = (null : stdgo.Error);
    public var _r : stdgo._internal.io.Io_reader.Reader = (null : stdgo._internal.io.Io_reader.Reader);
    public function new(?_c:stdgo.Chan<stdgo._internal.io.Io_reader.Reader>, ?_err:stdgo.Error, ?_r:stdgo._internal.io.Io_reader.Reader) {
        if (_c != null) this._c = _c;
        if (_err != null) this._err = _err;
        if (_r != null) this._r = _r;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_delegateReader(_c, _err, _r);
    }
}
