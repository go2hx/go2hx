package stdgo._internal.net.http;
@:structInit @:using(stdgo._internal.net.http.Http_T_connReader_static_extension.T_connReader_static_extension) class T_connReader {
    public var _conn : stdgo.Ref<stdgo._internal.net.http.Http_T_conn.T_conn> = (null : stdgo.Ref<stdgo._internal.net.http.Http_T_conn.T_conn>);
    public var _mu : stdgo._internal.sync.Sync_Mutex.Mutex = ({} : stdgo._internal.sync.Sync_Mutex.Mutex);
    public var _hasByte : Bool = false;
    public var _byteBuf : stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(1, 1, ...[for (i in 0 ... 1) (0 : stdgo.GoUInt8)]);
    public var _cond : stdgo.Ref<stdgo._internal.sync.Sync_Cond.Cond> = (null : stdgo.Ref<stdgo._internal.sync.Sync_Cond.Cond>);
    public var _inRead : Bool = false;
    public var _aborted : Bool = false;
    public var _remain : stdgo.GoInt64 = 0;
    public function new(?_conn:stdgo.Ref<stdgo._internal.net.http.Http_T_conn.T_conn>, ?_mu:stdgo._internal.sync.Sync_Mutex.Mutex, ?_hasByte:Bool, ?_byteBuf:stdgo.GoArray<stdgo.GoUInt8>, ?_cond:stdgo.Ref<stdgo._internal.sync.Sync_Cond.Cond>, ?_inRead:Bool, ?_aborted:Bool, ?_remain:stdgo.GoInt64) {
        if (_conn != null) this._conn = _conn;
        if (_mu != null) this._mu = _mu;
        if (_hasByte != null) this._hasByte = _hasByte;
        if (_byteBuf != null) this._byteBuf = _byteBuf;
        if (_cond != null) this._cond = _cond;
        if (_inRead != null) this._inRead = _inRead;
        if (_aborted != null) this._aborted = _aborted;
        if (_remain != null) this._remain = _remain;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_connReader(_conn, _mu, _hasByte, _byteBuf, _cond, _inRead, _aborted, _remain);
    }
}
