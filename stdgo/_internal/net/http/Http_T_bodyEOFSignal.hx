package stdgo._internal.net.http;
@:structInit @:using(stdgo._internal.net.http.Http_T_bodyEOFSignal_static_extension.T_bodyEOFSignal_static_extension) class T_bodyEOFSignal {
    public var _body : stdgo._internal.io.Io_ReadCloser.ReadCloser = (null : stdgo._internal.io.Io_ReadCloser.ReadCloser);
    public var _mu : stdgo._internal.sync.Sync_Mutex.Mutex = ({} : stdgo._internal.sync.Sync_Mutex.Mutex);
    public var _closed : Bool = false;
    public var _rerr : stdgo.Error = (null : stdgo.Error);
    public var _fn : stdgo.Error -> stdgo.Error = null;
    public var _earlyCloseFn : () -> stdgo.Error = null;
    public function new(?_body:stdgo._internal.io.Io_ReadCloser.ReadCloser, ?_mu:stdgo._internal.sync.Sync_Mutex.Mutex, ?_closed:Bool, ?_rerr:stdgo.Error, ?_fn:stdgo.Error -> stdgo.Error, ?_earlyCloseFn:() -> stdgo.Error) {
        if (_body != null) this._body = _body;
        if (_mu != null) this._mu = _mu;
        if (_closed != null) this._closed = _closed;
        if (_rerr != null) this._rerr = _rerr;
        if (_fn != null) this._fn = _fn;
        if (_earlyCloseFn != null) this._earlyCloseFn = _earlyCloseFn;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_bodyEOFSignal(_body, _mu, _closed, _rerr, _fn, _earlyCloseFn);
    }
}
