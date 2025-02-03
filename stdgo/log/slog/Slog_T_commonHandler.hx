package stdgo.log.slog;
@:structInit @:using(stdgo.log.slog.Slog.T_commonHandler_static_extension) abstract T_commonHandler(stdgo._internal.log.slog.Slog_T_commonHandler.T_commonHandler) from stdgo._internal.log.slog.Slog_T_commonHandler.T_commonHandler to stdgo._internal.log.slog.Slog_T_commonHandler.T_commonHandler {
    public var _json(get, set) : Bool;
    function get__json():Bool return this._json;
    function set__json(v:Bool):Bool {
        this._json = v;
        return v;
    }
    public var _opts(get, set) : HandlerOptions;
    function get__opts():HandlerOptions return this._opts;
    function set__opts(v:HandlerOptions):HandlerOptions {
        this._opts = v;
        return v;
    }
    public var _preformattedAttrs(get, set) : Array<std.UInt>;
    function get__preformattedAttrs():Array<std.UInt> return [for (i in this._preformattedAttrs) i];
    function set__preformattedAttrs(v:Array<std.UInt>):Array<std.UInt> {
        this._preformattedAttrs = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public var _groupPrefix(get, set) : String;
    function get__groupPrefix():String return this._groupPrefix;
    function set__groupPrefix(v:String):String {
        this._groupPrefix = (v : stdgo.GoString);
        return v;
    }
    public var _groups(get, set) : Array<String>;
    function get__groups():Array<String> return [for (i in this._groups) i];
    function set__groups(v:Array<String>):Array<String> {
        this._groups = ([for (i in v) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>);
        return v;
    }
    public var _nOpenGroups(get, set) : StdTypes.Int;
    function get__nOpenGroups():StdTypes.Int return this._nOpenGroups;
    function set__nOpenGroups(v:StdTypes.Int):StdTypes.Int {
        this._nOpenGroups = (v : stdgo.GoInt);
        return v;
    }
    public var _mu(get, set) : stdgo._internal.sync.Sync_Mutex.Mutex;
    function get__mu():stdgo._internal.sync.Sync_Mutex.Mutex return this._mu;
    function set__mu(v:stdgo._internal.sync.Sync_Mutex.Mutex):stdgo._internal.sync.Sync_Mutex.Mutex {
        this._mu = (v : stdgo.Ref<stdgo._internal.sync.Sync_Mutex.Mutex>);
        return v;
    }
    public var _w(get, set) : stdgo._internal.io.Io_Writer.Writer;
    function get__w():stdgo._internal.io.Io_Writer.Writer return this._w;
    function set__w(v:stdgo._internal.io.Io_Writer.Writer):stdgo._internal.io.Io_Writer.Writer {
        this._w = v;
        return v;
    }
    public function new(?_json:Bool, ?_opts:HandlerOptions, ?_preformattedAttrs:Array<std.UInt>, ?_groupPrefix:String, ?_groups:Array<String>, ?_nOpenGroups:StdTypes.Int, ?_mu:stdgo._internal.sync.Sync_Mutex.Mutex, ?_w:stdgo._internal.io.Io_Writer.Writer) this = new stdgo._internal.log.slog.Slog_T_commonHandler.T_commonHandler(_json, _opts, ([for (i in _preformattedAttrs) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>), (_groupPrefix : stdgo.GoString), ([for (i in _groups) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>), (_nOpenGroups : stdgo.GoInt), (_mu : stdgo.Ref<stdgo._internal.sync.Sync_Mutex.Mutex>), _w);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
