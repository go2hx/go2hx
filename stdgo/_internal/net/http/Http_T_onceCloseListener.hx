package stdgo._internal.net.http;
@:structInit @:using(stdgo._internal.net.http.Http_T_onceCloseListener_static_extension.T_onceCloseListener_static_extension) class T_onceCloseListener {
    @:embedded
    public var listener : stdgo._internal.net.Net_Listener.Listener = (null : stdgo._internal.net.Net_Listener.Listener);
    public var _once : stdgo._internal.sync.Sync_Once.Once = ({} : stdgo._internal.sync.Sync_Once.Once);
    public var _closeErr : stdgo.Error = (null : stdgo.Error);
    public function new(?listener:stdgo._internal.net.Net_Listener.Listener, ?_once:stdgo._internal.sync.Sync_Once.Once, ?_closeErr:stdgo.Error) {
        if (listener != null) this.listener = listener;
        if (_once != null) this._once = _once;
        if (_closeErr != null) this._closeErr = _closeErr;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public var accept(get, never) : () -> { var _0 : stdgo._internal.net.Net_Conn.Conn; var _1 : stdgo.Error; };
    @:embedded
    @:embeddededffieldsffun
    public function get_accept():() -> { var _0 : stdgo._internal.net.Net_Conn.Conn; var _1 : stdgo.Error; } return @:check31 (this.listener ?? throw "null pointer dereference").accept;
    public var addr(get, never) : () -> stdgo._internal.net.Net_Addr.Addr;
    @:embedded
    @:embeddededffieldsffun
    public function get_addr():() -> stdgo._internal.net.Net_Addr.Addr return @:check31 (this.listener ?? throw "null pointer dereference").addr;
    public function __copy__() {
        return new T_onceCloseListener(listener, _once, _closeErr);
    }
}
