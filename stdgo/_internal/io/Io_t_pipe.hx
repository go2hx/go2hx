package stdgo._internal.io;
@:structInit @:using(stdgo._internal.io.Io_t_pipe_static_extension.T_pipe_static_extension) class T_pipe {
    public var _wrMu : stdgo._internal.sync.Sync_mutex.Mutex = ({} : stdgo._internal.sync.Sync_mutex.Mutex);
    public var _wrCh : stdgo.Chan<stdgo.Slice<stdgo.GoUInt8>> = (null : stdgo.Chan<stdgo.Slice<stdgo.GoUInt8>>);
    public var _rdCh : stdgo.Chan<stdgo.GoInt> = (null : stdgo.Chan<stdgo.GoInt>);
    public var _once : stdgo._internal.sync.Sync_once.Once = ({} : stdgo._internal.sync.Sync_once.Once);
    public var _done : stdgo.Chan<stdgo._internal.io.Io_t_discard.T_discard> = (null : stdgo.Chan<stdgo._internal.io.Io_t_discard.T_discard>);
    public var _rerr : stdgo._internal.io.Io_t_onceerror.T_onceError = ({} : stdgo._internal.io.Io_t_onceerror.T_onceError);
    public var _werr : stdgo._internal.io.Io_t_onceerror.T_onceError = ({} : stdgo._internal.io.Io_t_onceerror.T_onceError);
    public function new(?_wrMu:stdgo._internal.sync.Sync_mutex.Mutex, ?_wrCh:stdgo.Chan<stdgo.Slice<stdgo.GoUInt8>>, ?_rdCh:stdgo.Chan<stdgo.GoInt>, ?_once:stdgo._internal.sync.Sync_once.Once, ?_done:stdgo.Chan<stdgo._internal.io.Io_t_discard.T_discard>, ?_rerr:stdgo._internal.io.Io_t_onceerror.T_onceError, ?_werr:stdgo._internal.io.Io_t_onceerror.T_onceError) {
        if (_wrMu != null) this._wrMu = _wrMu;
        if (_wrCh != null) this._wrCh = _wrCh;
        if (_rdCh != null) this._rdCh = _rdCh;
        if (_once != null) this._once = _once;
        if (_done != null) this._done = _done;
        if (_rerr != null) this._rerr = _rerr;
        if (_werr != null) this._werr = _werr;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_pipe(_wrMu, _wrCh, _rdCh, _once, _done, _rerr, _werr);
    }
}
