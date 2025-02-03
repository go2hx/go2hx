package stdgo.runtime.pprof;
@:structInit @:using(stdgo.runtime.pprof.Pprof.T_profileBuilder_static_extension) abstract T_profileBuilder(stdgo._internal.runtime.pprof.Pprof_T_profileBuilder.T_profileBuilder) from stdgo._internal.runtime.pprof.Pprof_T_profileBuilder.T_profileBuilder to stdgo._internal.runtime.pprof.Pprof_T_profileBuilder.T_profileBuilder {
    public var _start(get, set) : stdgo._internal.time.Time_Time.Time;
    function get__start():stdgo._internal.time.Time_Time.Time return this._start;
    function set__start(v:stdgo._internal.time.Time_Time.Time):stdgo._internal.time.Time_Time.Time {
        this._start = v;
        return v;
    }
    public var _end(get, set) : stdgo._internal.time.Time_Time.Time;
    function get__end():stdgo._internal.time.Time_Time.Time return this._end;
    function set__end(v:stdgo._internal.time.Time_Time.Time):stdgo._internal.time.Time_Time.Time {
        this._end = v;
        return v;
    }
    public var _havePeriod(get, set) : Bool;
    function get__havePeriod():Bool return this._havePeriod;
    function set__havePeriod(v:Bool):Bool {
        this._havePeriod = v;
        return v;
    }
    public var _period(get, set) : haxe.Int64;
    function get__period():haxe.Int64 return this._period;
    function set__period(v:haxe.Int64):haxe.Int64 {
        this._period = (v : stdgo.GoInt64);
        return v;
    }
    public var _m(get, set) : T_profMap;
    function get__m():T_profMap return this._m;
    function set__m(v:T_profMap):T_profMap {
        this._m = v;
        return v;
    }
    public var _w(get, set) : stdgo._internal.io.Io_Writer.Writer;
    function get__w():stdgo._internal.io.Io_Writer.Writer return this._w;
    function set__w(v:stdgo._internal.io.Io_Writer.Writer):stdgo._internal.io.Io_Writer.Writer {
        this._w = v;
        return v;
    }
    public var _zw(get, set) : stdgo._internal.compress.gzip.Gzip_Writer.Writer;
    function get__zw():stdgo._internal.compress.gzip.Gzip_Writer.Writer return this._zw;
    function set__zw(v:stdgo._internal.compress.gzip.Gzip_Writer.Writer):stdgo._internal.compress.gzip.Gzip_Writer.Writer {
        this._zw = (v : stdgo.Ref<stdgo._internal.compress.gzip.Gzip_Writer.Writer>);
        return v;
    }
    public var _pb(get, set) : T_protobuf;
    function get__pb():T_protobuf return this._pb;
    function set__pb(v:T_protobuf):T_protobuf {
        this._pb = v;
        return v;
    }
    public var _strings(get, set) : Array<String>;
    function get__strings():Array<String> return [for (i in this._strings) i];
    function set__strings(v:Array<String>):Array<String> {
        this._strings = ([for (i in v) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>);
        return v;
    }
    public var _stringMap(get, set) : stdgo.GoMap<stdgo.GoString, stdgo.GoInt>;
    function get__stringMap():stdgo.GoMap<stdgo.GoString, stdgo.GoInt> return this._stringMap;
    function set__stringMap(v:stdgo.GoMap<stdgo.GoString, stdgo.GoInt>):stdgo.GoMap<stdgo.GoString, stdgo.GoInt> {
        this._stringMap = (v : stdgo.GoMap<stdgo.GoString, stdgo.GoInt>);
        return v;
    }
    public var _locs(get, set) : stdgo.GoMap<stdgo.GoUIntptr, stdgo._internal.runtime.pprof.Pprof_T_locInfo.T_locInfo>;
    function get__locs():stdgo.GoMap<stdgo.GoUIntptr, stdgo._internal.runtime.pprof.Pprof_T_locInfo.T_locInfo> return this._locs;
    function set__locs(v:stdgo.GoMap<stdgo.GoUIntptr, stdgo._internal.runtime.pprof.Pprof_T_locInfo.T_locInfo>):stdgo.GoMap<stdgo.GoUIntptr, stdgo._internal.runtime.pprof.Pprof_T_locInfo.T_locInfo> {
        this._locs = (v : stdgo.GoMap<stdgo.GoUIntptr, stdgo._internal.runtime.pprof.Pprof_T_locInfo.T_locInfo>);
        return v;
    }
    public var _funcs(get, set) : stdgo.GoMap<stdgo.GoString, stdgo.GoInt>;
    function get__funcs():stdgo.GoMap<stdgo.GoString, stdgo.GoInt> return this._funcs;
    function set__funcs(v:stdgo.GoMap<stdgo.GoString, stdgo.GoInt>):stdgo.GoMap<stdgo.GoString, stdgo.GoInt> {
        this._funcs = (v : stdgo.GoMap<stdgo.GoString, stdgo.GoInt>);
        return v;
    }
    public var _mem(get, set) : Array<T_memMap>;
    function get__mem():Array<T_memMap> return [for (i in this._mem) i];
    function set__mem(v:Array<T_memMap>):Array<T_memMap> {
        this._mem = ([for (i in v) i] : stdgo.Slice<stdgo._internal.runtime.pprof.Pprof_T_memMap.T_memMap>);
        return v;
    }
    public var _deck(get, set) : T_pcDeck;
    function get__deck():T_pcDeck return this._deck;
    function set__deck(v:T_pcDeck):T_pcDeck {
        this._deck = v;
        return v;
    }
    public function new(?_start:stdgo._internal.time.Time_Time.Time, ?_end:stdgo._internal.time.Time_Time.Time, ?_havePeriod:Bool, ?_period:haxe.Int64, ?_m:T_profMap, ?_w:stdgo._internal.io.Io_Writer.Writer, ?_zw:stdgo._internal.compress.gzip.Gzip_Writer.Writer, ?_pb:T_protobuf, ?_strings:Array<String>, ?_stringMap:stdgo.GoMap<stdgo.GoString, stdgo.GoInt>, ?_locs:stdgo.GoMap<stdgo.GoUIntptr, stdgo._internal.runtime.pprof.Pprof_T_locInfo.T_locInfo>, ?_funcs:stdgo.GoMap<stdgo.GoString, stdgo.GoInt>, ?_mem:Array<T_memMap>, ?_deck:T_pcDeck) this = new stdgo._internal.runtime.pprof.Pprof_T_profileBuilder.T_profileBuilder(
_start,
_end,
_havePeriod,
(_period : stdgo.GoInt64),
_m,
_w,
(_zw : stdgo.Ref<stdgo._internal.compress.gzip.Gzip_Writer.Writer>),
_pb,
([for (i in _strings) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>),
(_stringMap : stdgo.GoMap<stdgo.GoString, stdgo.GoInt>),
(_locs : stdgo.GoMap<stdgo.GoUIntptr, stdgo._internal.runtime.pprof.Pprof_T_locInfo.T_locInfo>),
(_funcs : stdgo.GoMap<stdgo.GoString, stdgo.GoInt>),
([for (i in _mem) i] : stdgo.Slice<stdgo._internal.runtime.pprof.Pprof_T_memMap.T_memMap>),
_deck);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
