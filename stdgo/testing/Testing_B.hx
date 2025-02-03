package stdgo.testing;
@:structInit @:using(stdgo.testing.Testing.B_static_extension) abstract B(stdgo._internal.testing.Testing_B.B) from stdgo._internal.testing.Testing_B.B to stdgo._internal.testing.Testing_B.B {
    public var _common(get, set) : T_common;
    function get__common():T_common return this._common;
    function set__common(v:T_common):T_common {
        this._common = v;
        return v;
    }
    public var _importPath(get, set) : String;
    function get__importPath():String return this._importPath;
    function set__importPath(v:String):String {
        this._importPath = (v : stdgo.GoString);
        return v;
    }
    public var _context(get, set) : T_benchContext;
    function get__context():T_benchContext return this._context;
    function set__context(v:T_benchContext):T_benchContext {
        this._context = (v : stdgo.Ref<stdgo._internal.testing.Testing_T_benchContext.T_benchContext>);
        return v;
    }
    public var n(get, set) : StdTypes.Int;
    function get_n():StdTypes.Int return this.n;
    function set_n(v:StdTypes.Int):StdTypes.Int {
        this.n = (v : stdgo.GoInt);
        return v;
    }
    public var _previousN(get, set) : StdTypes.Int;
    function get__previousN():StdTypes.Int return this._previousN;
    function set__previousN(v:StdTypes.Int):StdTypes.Int {
        this._previousN = (v : stdgo.GoInt);
        return v;
    }
    public var _previousDuration(get, set) : stdgo._internal.time.Time_Duration.Duration;
    function get__previousDuration():stdgo._internal.time.Time_Duration.Duration return this._previousDuration;
    function set__previousDuration(v:stdgo._internal.time.Time_Duration.Duration):stdgo._internal.time.Time_Duration.Duration {
        this._previousDuration = v;
        return v;
    }
    public var _benchFunc(get, set) : stdgo.Ref<stdgo._internal.testing.Testing_B.B> -> Void;
    function get__benchFunc():stdgo.Ref<stdgo._internal.testing.Testing_B.B> -> Void return _0 -> this._benchFunc(_0);
    function set__benchFunc(v:stdgo.Ref<stdgo._internal.testing.Testing_B.B> -> Void):stdgo.Ref<stdgo._internal.testing.Testing_B.B> -> Void {
        this._benchFunc = v;
        return v;
    }
    public var _benchTime(get, set) : T_durationOrCountFlag;
    function get__benchTime():T_durationOrCountFlag return this._benchTime;
    function set__benchTime(v:T_durationOrCountFlag):T_durationOrCountFlag {
        this._benchTime = v;
        return v;
    }
    public var _bytes(get, set) : haxe.Int64;
    function get__bytes():haxe.Int64 return this._bytes;
    function set__bytes(v:haxe.Int64):haxe.Int64 {
        this._bytes = (v : stdgo.GoInt64);
        return v;
    }
    public var _missingBytes(get, set) : Bool;
    function get__missingBytes():Bool return this._missingBytes;
    function set__missingBytes(v:Bool):Bool {
        this._missingBytes = v;
        return v;
    }
    public var _timerOn(get, set) : Bool;
    function get__timerOn():Bool return this._timerOn;
    function set__timerOn(v:Bool):Bool {
        this._timerOn = v;
        return v;
    }
    public var _showAllocResult(get, set) : Bool;
    function get__showAllocResult():Bool return this._showAllocResult;
    function set__showAllocResult(v:Bool):Bool {
        this._showAllocResult = v;
        return v;
    }
    public var _result(get, set) : BenchmarkResult;
    function get__result():BenchmarkResult return this._result;
    function set__result(v:BenchmarkResult):BenchmarkResult {
        this._result = v;
        return v;
    }
    public var _parallelism(get, set) : StdTypes.Int;
    function get__parallelism():StdTypes.Int return this._parallelism;
    function set__parallelism(v:StdTypes.Int):StdTypes.Int {
        this._parallelism = (v : stdgo.GoInt);
        return v;
    }
    public var _startAllocs(get, set) : haxe.UInt64;
    function get__startAllocs():haxe.UInt64 return this._startAllocs;
    function set__startAllocs(v:haxe.UInt64):haxe.UInt64 {
        this._startAllocs = (v : stdgo.GoUInt64);
        return v;
    }
    public var _startBytes(get, set) : haxe.UInt64;
    function get__startBytes():haxe.UInt64 return this._startBytes;
    function set__startBytes(v:haxe.UInt64):haxe.UInt64 {
        this._startBytes = (v : stdgo.GoUInt64);
        return v;
    }
    public var _netAllocs(get, set) : haxe.UInt64;
    function get__netAllocs():haxe.UInt64 return this._netAllocs;
    function set__netAllocs(v:haxe.UInt64):haxe.UInt64 {
        this._netAllocs = (v : stdgo.GoUInt64);
        return v;
    }
    public var _netBytes(get, set) : haxe.UInt64;
    function get__netBytes():haxe.UInt64 return this._netBytes;
    function set__netBytes(v:haxe.UInt64):haxe.UInt64 {
        this._netBytes = (v : stdgo.GoUInt64);
        return v;
    }
    public var _extra(get, set) : stdgo.GoMap<stdgo.GoString, stdgo.GoFloat64>;
    function get__extra():stdgo.GoMap<stdgo.GoString, stdgo.GoFloat64> return this._extra;
    function set__extra(v:stdgo.GoMap<stdgo.GoString, stdgo.GoFloat64>):stdgo.GoMap<stdgo.GoString, stdgo.GoFloat64> {
        this._extra = (v : stdgo.GoMap<stdgo.GoString, stdgo.GoFloat64>);
        return v;
    }
    public function new(?_common:T_common, ?_importPath:String, ?_context:T_benchContext, ?n:StdTypes.Int, ?_previousN:StdTypes.Int, ?_previousDuration:stdgo._internal.time.Time_Duration.Duration, ?_benchFunc:stdgo.Ref<stdgo._internal.testing.Testing_B.B> -> Void, ?_benchTime:T_durationOrCountFlag, ?_bytes:haxe.Int64, ?_missingBytes:Bool, ?_timerOn:Bool, ?_showAllocResult:Bool, ?_result:BenchmarkResult, ?_parallelism:StdTypes.Int, ?_startAllocs:haxe.UInt64, ?_startBytes:haxe.UInt64, ?_netAllocs:haxe.UInt64, ?_netBytes:haxe.UInt64, ?_extra:stdgo.GoMap<stdgo.GoString, stdgo.GoFloat64>) this = new stdgo._internal.testing.Testing_B.B(
_common,
(_importPath : stdgo.GoString),
(_context : stdgo.Ref<stdgo._internal.testing.Testing_T_benchContext.T_benchContext>),
(n : stdgo.GoInt),
(_previousN : stdgo.GoInt),
_previousDuration,
_benchFunc,
_benchTime,
(_bytes : stdgo.GoInt64),
_missingBytes,
_timerOn,
_showAllocResult,
_result,
(_parallelism : stdgo.GoInt),
(_startAllocs : stdgo.GoUInt64),
(_startBytes : stdgo.GoUInt64),
(_netAllocs : stdgo.GoUInt64),
(_netBytes : stdgo.GoUInt64),
(_extra : stdgo.GoMap<stdgo.GoString, stdgo.GoFloat64>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
