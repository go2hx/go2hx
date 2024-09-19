package stdgo._internal.testing;
@:structInit @:using(stdgo._internal.testing.Testing_T_chattyPrinter_static_extension.T_chattyPrinter_static_extension) class T_chattyPrinter {
    public var _w : stdgo._internal.io.Io_Writer.Writer = (null : stdgo._internal.io.Io_Writer.Writer);
    public var _lastNameMu : stdgo._internal.sync.Sync_Mutex.Mutex = ({} : stdgo._internal.sync.Sync_Mutex.Mutex);
    public var _lastName : stdgo.GoString = "";
    public var _json : Bool = false;
    public function new(?_w:stdgo._internal.io.Io_Writer.Writer, ?_lastNameMu:stdgo._internal.sync.Sync_Mutex.Mutex, ?_lastName:stdgo.GoString, ?_json:Bool) {
        if (_w != null) this._w = _w;
        if (_lastNameMu != null) this._lastNameMu = _lastNameMu;
        if (_lastName != null) this._lastName = _lastName;
        if (_json != null) this._json = _json;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_chattyPrinter(_w, _lastNameMu, _lastName, _json);
    }
}