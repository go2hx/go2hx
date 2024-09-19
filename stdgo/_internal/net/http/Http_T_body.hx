package stdgo._internal.net.http;
@:structInit @:using(stdgo._internal.net.http.Http_T_body_static_extension.T_body_static_extension) class T_body {
    public var _src : stdgo._internal.io.Io_Reader.Reader = (null : stdgo._internal.io.Io_Reader.Reader);
    public var _hdr : stdgo.AnyInterface = (null : stdgo.AnyInterface);
    public var _r : stdgo.Ref<stdgo._internal.bufio.Bufio_Reader.Reader> = (null : stdgo.Ref<stdgo._internal.bufio.Bufio_Reader.Reader>);
    public var _closing : Bool = false;
    public var _doEarlyClose : Bool = false;
    public var _mu : stdgo._internal.sync.Sync_Mutex.Mutex = ({} : stdgo._internal.sync.Sync_Mutex.Mutex);
    public var _sawEOF : Bool = false;
    public var _closed : Bool = false;
    public var _earlyClose : Bool = false;
    public var _onHitEOF : () -> Void = null;
    public function new(?_src:stdgo._internal.io.Io_Reader.Reader, ?_hdr:stdgo.AnyInterface, ?_r:stdgo.Ref<stdgo._internal.bufio.Bufio_Reader.Reader>, ?_closing:Bool, ?_doEarlyClose:Bool, ?_mu:stdgo._internal.sync.Sync_Mutex.Mutex, ?_sawEOF:Bool, ?_closed:Bool, ?_earlyClose:Bool, ?_onHitEOF:() -> Void) {
        if (_src != null) this._src = _src;
        if (_hdr != null) this._hdr = _hdr;
        if (_r != null) this._r = _r;
        if (_closing != null) this._closing = _closing;
        if (_doEarlyClose != null) this._doEarlyClose = _doEarlyClose;
        if (_mu != null) this._mu = _mu;
        if (_sawEOF != null) this._sawEOF = _sawEOF;
        if (_closed != null) this._closed = _closed;
        if (_earlyClose != null) this._earlyClose = _earlyClose;
        if (_onHitEOF != null) this._onHitEOF = _onHitEOF;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_body(_src, _hdr, _r, _closing, _doEarlyClose, _mu, _sawEOF, _closed, _earlyClose, _onHitEOF);
    }
}
