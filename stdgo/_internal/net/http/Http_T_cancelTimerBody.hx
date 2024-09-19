package stdgo._internal.net.http;
@:structInit @:using(stdgo._internal.net.http.Http_T_cancelTimerBody_static_extension.T_cancelTimerBody_static_extension) class T_cancelTimerBody {
    public var _stop : () -> Void = null;
    public var _rc : stdgo._internal.io.Io_ReadCloser.ReadCloser = (null : stdgo._internal.io.Io_ReadCloser.ReadCloser);
    public var _reqDidTimeout : () -> Bool = null;
    public function new(?_stop:() -> Void, ?_rc:stdgo._internal.io.Io_ReadCloser.ReadCloser, ?_reqDidTimeout:() -> Bool) {
        if (_stop != null) this._stop = _stop;
        if (_rc != null) this._rc = _rc;
        if (_reqDidTimeout != null) this._reqDidTimeout = _reqDidTimeout;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_cancelTimerBody(_stop, _rc, _reqDidTimeout);
    }
}
