package stdgo.io;
@:structInit @:using(stdgo.io.Io.T_pipe_static_extension) abstract T_pipe(stdgo._internal.io.Io_T_pipe.T_pipe) from stdgo._internal.io.Io_T_pipe.T_pipe to stdgo._internal.io.Io_T_pipe.T_pipe {
    public var _wrMu(get, set) : stdgo._internal.sync.Sync_Mutex.Mutex;
    function get__wrMu():stdgo._internal.sync.Sync_Mutex.Mutex return this._wrMu;
    function set__wrMu(v:stdgo._internal.sync.Sync_Mutex.Mutex):stdgo._internal.sync.Sync_Mutex.Mutex {
        this._wrMu = v;
        return v;
    }
    public var _wrCh(get, set) : stdgo.Chan<stdgo.Slice<stdgo.GoUInt8>>;
    function get__wrCh():stdgo.Chan<stdgo.Slice<stdgo.GoUInt8>> return this._wrCh;
    function set__wrCh(v:stdgo.Chan<stdgo.Slice<stdgo.GoUInt8>>):stdgo.Chan<stdgo.Slice<stdgo.GoUInt8>> {
        this._wrCh = (v : stdgo.Chan<stdgo.Slice<stdgo.GoUInt8>>);
        return v;
    }
    public var _rdCh(get, set) : stdgo.Chan<stdgo.GoInt>;
    function get__rdCh():stdgo.Chan<stdgo.GoInt> return this._rdCh;
    function set__rdCh(v:stdgo.Chan<stdgo.GoInt>):stdgo.Chan<stdgo.GoInt> {
        this._rdCh = (v : stdgo.Chan<stdgo.GoInt>);
        return v;
    }
    public var _once(get, set) : stdgo._internal.sync.Sync_Once.Once;
    function get__once():stdgo._internal.sync.Sync_Once.Once return this._once;
    function set__once(v:stdgo._internal.sync.Sync_Once.Once):stdgo._internal.sync.Sync_Once.Once {
        this._once = v;
        return v;
    }
    public var _done(get, set) : stdgo.Chan<stdgo._internal.io.Io_T_discard.T_discard>;
    function get__done():stdgo.Chan<stdgo._internal.io.Io_T_discard.T_discard> return this._done;
    function set__done(v:stdgo.Chan<stdgo._internal.io.Io_T_discard.T_discard>):stdgo.Chan<stdgo._internal.io.Io_T_discard.T_discard> {
        this._done = (v : stdgo.Chan<stdgo._internal.io.Io_T_discard.T_discard>);
        return v;
    }
    public var _rerr(get, set) : T_onceError;
    function get__rerr():T_onceError return this._rerr;
    function set__rerr(v:T_onceError):T_onceError {
        this._rerr = v;
        return v;
    }
    public var _werr(get, set) : T_onceError;
    function get__werr():T_onceError return this._werr;
    function set__werr(v:T_onceError):T_onceError {
        this._werr = v;
        return v;
    }
    public function new(?_wrMu:stdgo._internal.sync.Sync_Mutex.Mutex, ?_wrCh:stdgo.Chan<stdgo.Slice<stdgo.GoUInt8>>, ?_rdCh:stdgo.Chan<stdgo.GoInt>, ?_once:stdgo._internal.sync.Sync_Once.Once, ?_done:stdgo.Chan<stdgo._internal.io.Io_T_discard.T_discard>, ?_rerr:T_onceError, ?_werr:T_onceError) this = new stdgo._internal.io.Io_T_pipe.T_pipe(_wrMu, (_wrCh : stdgo.Chan<stdgo.Slice<stdgo.GoUInt8>>), (_rdCh : stdgo.Chan<stdgo.GoInt>), _once, (_done : stdgo.Chan<stdgo._internal.io.Io_T_discard.T_discard>), _rerr, _werr);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
