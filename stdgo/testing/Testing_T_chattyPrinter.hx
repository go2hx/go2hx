package stdgo.testing;
@:structInit @:using(stdgo.testing.Testing.T_chattyPrinter_static_extension) abstract T_chattyPrinter(stdgo._internal.testing.Testing_T_chattyPrinter.T_chattyPrinter) from stdgo._internal.testing.Testing_T_chattyPrinter.T_chattyPrinter to stdgo._internal.testing.Testing_T_chattyPrinter.T_chattyPrinter {
    public var _w(get, set) : stdgo._internal.io.Io_Writer.Writer;
    function get__w():stdgo._internal.io.Io_Writer.Writer return this._w;
    function set__w(v:stdgo._internal.io.Io_Writer.Writer):stdgo._internal.io.Io_Writer.Writer {
        this._w = v;
        return v;
    }
    public var _lastNameMu(get, set) : stdgo._internal.sync.Sync_Mutex.Mutex;
    function get__lastNameMu():stdgo._internal.sync.Sync_Mutex.Mutex return this._lastNameMu;
    function set__lastNameMu(v:stdgo._internal.sync.Sync_Mutex.Mutex):stdgo._internal.sync.Sync_Mutex.Mutex {
        this._lastNameMu = v;
        return v;
    }
    public var _lastName(get, set) : String;
    function get__lastName():String return this._lastName;
    function set__lastName(v:String):String {
        this._lastName = (v : stdgo.GoString);
        return v;
    }
    public var _json(get, set) : Bool;
    function get__json():Bool return this._json;
    function set__json(v:Bool):Bool {
        this._json = v;
        return v;
    }
    public function new(?_w:stdgo._internal.io.Io_Writer.Writer, ?_lastNameMu:stdgo._internal.sync.Sync_Mutex.Mutex, ?_lastName:String, ?_json:Bool) this = new stdgo._internal.testing.Testing_T_chattyPrinter.T_chattyPrinter(_w, _lastNameMu, (_lastName : stdgo.GoString), _json);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
