package stdgo;
@:dox(hide) class T_mutatorRand_static_extension {
    static public function _restore(t:stdgo._internal.internal.fuzz.Fuzz_t_mutatorrand.T_mutatorRand, _randState:haxe.UInt64, _randInc:haxe.UInt64):Void {
        final _randState = (_randState : stdgo.GoUInt64);
        final _randInc = (_randInc : stdgo.GoUInt64);
        stdgo._internal.internal.fuzz.Fuzz_t_mutatorrand_static_extension.T_mutatorRand_static_extension._restore(t, _randState, _randInc);
    }
    static public function _save(t:stdgo._internal.internal.fuzz.Fuzz_t_mutatorrand.T_mutatorRand, _randState:stdgo.Pointer<haxe.UInt64>, _randInc:stdgo.Pointer<haxe.UInt64>):Void {
        stdgo._internal.internal.fuzz.Fuzz_t_mutatorrand_static_extension.T_mutatorRand_static_extension._save(t, _randState, _randInc);
    }
    static public function _bool(t:stdgo._internal.internal.fuzz.Fuzz_t_mutatorrand.T_mutatorRand):Bool {
        return stdgo._internal.internal.fuzz.Fuzz_t_mutatorrand_static_extension.T_mutatorRand_static_extension._bool(t);
    }
    static public function _exp2(t:stdgo._internal.internal.fuzz.Fuzz_t_mutatorrand.T_mutatorRand):StdTypes.Int {
        return stdgo._internal.internal.fuzz.Fuzz_t_mutatorrand_static_extension.T_mutatorRand_static_extension._exp2(t);
    }
    static public function _uint32n(t:stdgo._internal.internal.fuzz.Fuzz_t_mutatorrand.T_mutatorRand, _0:std.UInt):std.UInt {
        final _0 = (_0 : stdgo.GoUInt32);
        return stdgo._internal.internal.fuzz.Fuzz_t_mutatorrand_static_extension.T_mutatorRand_static_extension._uint32n(t, _0);
    }
    static public function _intn(t:stdgo._internal.internal.fuzz.Fuzz_t_mutatorrand.T_mutatorRand, _0:StdTypes.Int):StdTypes.Int {
        final _0 = (_0 : stdgo.GoInt);
        return stdgo._internal.internal.fuzz.Fuzz_t_mutatorrand_static_extension.T_mutatorRand_static_extension._intn(t, _0);
    }
    static public function _uint32(t:stdgo._internal.internal.fuzz.Fuzz_t_mutatorrand.T_mutatorRand):std.UInt {
        return stdgo._internal.internal.fuzz.Fuzz_t_mutatorrand_static_extension.T_mutatorRand_static_extension._uint32(t);
    }
}
@:dox(hide) @:forward abstract T_mutatorRand(stdgo._internal.internal.fuzz.Fuzz_t_mutatorrand.T_mutatorRand) from stdgo._internal.internal.fuzz.Fuzz_t_mutatorrand.T_mutatorRand to stdgo._internal.internal.fuzz.Fuzz_t_mutatorrand.T_mutatorRand {
    @:from
    static function fromHaxeInterface(x:{ function _uint32():std.UInt; function _intn(_0:StdTypes.Int):StdTypes.Int; function _uint32n(_0:std.UInt):std.UInt; function _exp2():StdTypes.Int; function _bool():Bool; function _save(_randState:stdgo.Pointer<haxe.UInt64>, _randInc:stdgo.Pointer<haxe.UInt64>):Void; function _restore(_randState:haxe.UInt64, _randInc:haxe.UInt64):Void; }):T_mutatorRand {
        var __f__:Void -> stdgo.AnyInterface = null;
        final y:T_mutatorRand = { _uint32 : () -> x._uint32(), _intn : _0 -> x._intn(_0), _uint32n : _0 -> x._uint32n(_0), _exp2 : () -> x._exp2(), _bool : () -> x._bool(), _save : (_0, _1) -> x._save(_0, _1), _restore : (_0, _1) -> x._restore(_0, _1), __underlying__ : () -> __f__() };
        __f__ = () -> stdgo.Go.toInterface(y);
        return y;
    }
}
@:structInit @:using(stdgo.internal.fuzz.Fuzz.CoordinateFuzzingOpts_static_extension) abstract CoordinateFuzzingOpts(stdgo._internal.internal.fuzz.Fuzz_coordinatefuzzingopts.CoordinateFuzzingOpts) from stdgo._internal.internal.fuzz.Fuzz_coordinatefuzzingopts.CoordinateFuzzingOpts to stdgo._internal.internal.fuzz.Fuzz_coordinatefuzzingopts.CoordinateFuzzingOpts {
    public var log(get, set) : stdgo._internal.io.Io_writer.Writer;
    function get_log():stdgo._internal.io.Io_writer.Writer return this.log;
    function set_log(v:stdgo._internal.io.Io_writer.Writer):stdgo._internal.io.Io_writer.Writer {
        this.log = v;
        return v;
    }
    public var timeout(get, set) : stdgo._internal.time.Time_duration.Duration;
    function get_timeout():stdgo._internal.time.Time_duration.Duration return this.timeout;
    function set_timeout(v:stdgo._internal.time.Time_duration.Duration):stdgo._internal.time.Time_duration.Duration {
        this.timeout = v;
        return v;
    }
    public var limit(get, set) : haxe.Int64;
    function get_limit():haxe.Int64 return this.limit;
    function set_limit(v:haxe.Int64):haxe.Int64 {
        this.limit = (v : stdgo.GoInt64);
        return v;
    }
    public var minimizeTimeout(get, set) : stdgo._internal.time.Time_duration.Duration;
    function get_minimizeTimeout():stdgo._internal.time.Time_duration.Duration return this.minimizeTimeout;
    function set_minimizeTimeout(v:stdgo._internal.time.Time_duration.Duration):stdgo._internal.time.Time_duration.Duration {
        this.minimizeTimeout = v;
        return v;
    }
    public var minimizeLimit(get, set) : haxe.Int64;
    function get_minimizeLimit():haxe.Int64 return this.minimizeLimit;
    function set_minimizeLimit(v:haxe.Int64):haxe.Int64 {
        this.minimizeLimit = (v : stdgo.GoInt64);
        return v;
    }
    public var parallel(get, set) : StdTypes.Int;
    function get_parallel():StdTypes.Int return this.parallel;
    function set_parallel(v:StdTypes.Int):StdTypes.Int {
        this.parallel = (v : stdgo.GoInt);
        return v;
    }
    public var seed(get, set) : Array<stdgo.Tuple.Tuple6<String, String, Array<std.UInt>, Array<stdgo.AnyInterface>, StdTypes.Int, Bool>>;
    function get_seed():Array<stdgo.Tuple.Tuple6<String, String, Array<std.UInt>, Array<stdgo.AnyInterface>, StdTypes.Int, Bool>> return [for (i in this.seed) {
        final obj = i;
        { parent : obj.parent, path : obj.path, data : [for (i in obj.data) i], values : [for (i in obj.values) i], generation : obj.generation, isSeed : obj.isSeed };
    }];
    function set_seed(v:Array<stdgo.Tuple.Tuple6<String, String, Array<std.UInt>, Array<stdgo.AnyInterface>, StdTypes.Int, Bool>>):Array<stdgo.Tuple.Tuple6<String, String, Array<std.UInt>, Array<stdgo.AnyInterface>, StdTypes.Int, Bool>> {
        this.seed = ([for (i in v) {
            final obj = i;
            { parent : (obj.parent : stdgo.GoString), path : (obj.path : stdgo.GoString), data : ([for (i in obj.data) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>), values : ([for (i in obj.values) (i : stdgo.AnyInterface)] : stdgo.Slice<stdgo.AnyInterface>), generation : (obj.generation : stdgo.GoInt), isSeed : obj.isSeed };
        }] : stdgo.Slice<{ var parent : stdgo.GoString; var path : stdgo.GoString; var data : stdgo.Slice<stdgo.GoUInt8>; var values : stdgo.Slice<stdgo.AnyInterface>; var generation : stdgo.GoInt; var isSeed : Bool; }>);
        return v;
    }
    public var types(get, set) : Array<stdgo._internal.reflect.Reflect_type_.Type_>;
    function get_types():Array<stdgo._internal.reflect.Reflect_type_.Type_> return [for (i in this.types) i];
    function set_types(v:Array<stdgo._internal.reflect.Reflect_type_.Type_>):Array<stdgo._internal.reflect.Reflect_type_.Type_> {
        this.types = ([for (i in v) i] : stdgo.Slice<stdgo._internal.reflect.Reflect_type_.Type_>);
        return v;
    }
    public var corpusDir(get, set) : String;
    function get_corpusDir():String return this.corpusDir;
    function set_corpusDir(v:String):String {
        this.corpusDir = (v : stdgo.GoString);
        return v;
    }
    public var cacheDir(get, set) : String;
    function get_cacheDir():String return this.cacheDir;
    function set_cacheDir(v:String):String {
        this.cacheDir = (v : stdgo.GoString);
        return v;
    }
    public function new(?log:stdgo._internal.io.Io_writer.Writer, ?timeout:stdgo._internal.time.Time_duration.Duration, ?limit:haxe.Int64, ?minimizeTimeout:stdgo._internal.time.Time_duration.Duration, ?minimizeLimit:haxe.Int64, ?parallel:StdTypes.Int, ?seed:Array<stdgo.Tuple.Tuple6<String, String, Array<std.UInt>, Array<stdgo.AnyInterface>, StdTypes.Int, Bool>>, ?types:Array<stdgo._internal.reflect.Reflect_type_.Type_>, ?corpusDir:String, ?cacheDir:String) this = new stdgo._internal.internal.fuzz.Fuzz_coordinatefuzzingopts.CoordinateFuzzingOpts(log, timeout, (limit : stdgo.GoInt64), minimizeTimeout, (minimizeLimit : stdgo.GoInt64), (parallel : stdgo.GoInt), ([for (i in seed) {
        final obj = i;
        { parent : (obj.parent : stdgo.GoString), path : (obj.path : stdgo.GoString), data : ([for (i in obj.data) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>), values : ([for (i in obj.values) (i : stdgo.AnyInterface)] : stdgo.Slice<stdgo.AnyInterface>), generation : (obj.generation : stdgo.GoInt), isSeed : obj.isSeed };
    }] : stdgo.Slice<{ var parent : stdgo.GoString; var path : stdgo.GoString; var data : stdgo.Slice<stdgo.GoUInt8>; var values : stdgo.Slice<stdgo.AnyInterface>; var generation : stdgo.GoInt; var isSeed : Bool; }>), ([for (i in types) i] : stdgo.Slice<stdgo._internal.reflect.Reflect_type_.Type_>), (corpusDir : stdgo.GoString), (cacheDir : stdgo.GoString));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.internal.fuzz.Fuzz.T_crashError_static_extension) @:dox(hide) abstract T_crashError(stdgo._internal.internal.fuzz.Fuzz_t_crasherror.T_crashError) from stdgo._internal.internal.fuzz.Fuzz_t_crasherror.T_crashError to stdgo._internal.internal.fuzz.Fuzz_t_crasherror.T_crashError {
    public var _path(get, set) : String;
    function get__path():String return this._path;
    function set__path(v:String):String {
        this._path = (v : stdgo.GoString);
        return v;
    }
    public var _err(get, set) : stdgo.Error;
    function get__err():stdgo.Error return this._err;
    function set__err(v:stdgo.Error):stdgo.Error {
        this._err = (v : stdgo.Error);
        return v;
    }
    public function new(?_path:String, ?_err:stdgo.Error) this = new stdgo._internal.internal.fuzz.Fuzz_t_crasherror.T_crashError((_path : stdgo.GoString), (_err : stdgo.Error));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.internal.fuzz.Fuzz.T_corpus_static_extension) @:dox(hide) abstract T_corpus(stdgo._internal.internal.fuzz.Fuzz_t_corpus.T_corpus) from stdgo._internal.internal.fuzz.Fuzz_t_corpus.T_corpus to stdgo._internal.internal.fuzz.Fuzz_t_corpus.T_corpus {
    public var _entries(get, set) : Array<stdgo.Tuple.Tuple6<String, String, Array<std.UInt>, Array<stdgo.AnyInterface>, StdTypes.Int, Bool>>;
    function get__entries():Array<stdgo.Tuple.Tuple6<String, String, Array<std.UInt>, Array<stdgo.AnyInterface>, StdTypes.Int, Bool>> return [for (i in this._entries) {
        final obj = i;
        { parent : obj.parent, path : obj.path, data : [for (i in obj.data) i], values : [for (i in obj.values) i], generation : obj.generation, isSeed : obj.isSeed };
    }];
    function set__entries(v:Array<stdgo.Tuple.Tuple6<String, String, Array<std.UInt>, Array<stdgo.AnyInterface>, StdTypes.Int, Bool>>):Array<stdgo.Tuple.Tuple6<String, String, Array<std.UInt>, Array<stdgo.AnyInterface>, StdTypes.Int, Bool>> {
        this._entries = ([for (i in v) {
            final obj = i;
            { parent : (obj.parent : stdgo.GoString), path : (obj.path : stdgo.GoString), data : ([for (i in obj.data) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>), values : ([for (i in obj.values) (i : stdgo.AnyInterface)] : stdgo.Slice<stdgo.AnyInterface>), generation : (obj.generation : stdgo.GoInt), isSeed : obj.isSeed };
        }] : stdgo.Slice<{ var parent : stdgo.GoString; var path : stdgo.GoString; var data : stdgo.Slice<stdgo.GoUInt8>; var values : stdgo.Slice<stdgo.AnyInterface>; var generation : stdgo.GoInt; var isSeed : Bool; }>);
        return v;
    }
    public var _hashes(get, set) : Map<haxe.ds.Vector<std.UInt>, Bool>;
    function get__hashes():Map<haxe.ds.Vector<std.UInt>, Bool> return {
        final __obj__:Map<haxe.ds.Vector<std.UInt>, Bool> = [];
        for (key => value in this._hashes) {
            __obj__[haxe.ds.Vector.fromArrayCopy([for (i in key) i])] = value;
        };
        __obj__;
    };
    function set__hashes(v:Map<haxe.ds.Vector<std.UInt>, Bool>):Map<haxe.ds.Vector<std.UInt>, Bool> {
        this._hashes = {
            final __obj__ = new stdgo.GoMap<stdgo.GoArray<stdgo.GoUInt8>, Bool>();
            for (key => value in v) {
                __obj__[([for (i in key) (i : stdgo.GoUInt8)] : stdgo.GoArray<stdgo.GoUInt8>)] = value;
            };
            __obj__;
        };
        return v;
    }
    public function new(?_entries:Array<stdgo.Tuple.Tuple6<String, String, Array<std.UInt>, Array<stdgo.AnyInterface>, StdTypes.Int, Bool>>, ?_hashes:Map<haxe.ds.Vector<std.UInt>, Bool>) this = new stdgo._internal.internal.fuzz.Fuzz_t_corpus.T_corpus(([for (i in _entries) {
        final obj = i;
        { parent : (obj.parent : stdgo.GoString), path : (obj.path : stdgo.GoString), data : ([for (i in obj.data) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>), values : ([for (i in obj.values) (i : stdgo.AnyInterface)] : stdgo.Slice<stdgo.AnyInterface>), generation : (obj.generation : stdgo.GoInt), isSeed : obj.isSeed };
    }] : stdgo.Slice<{ var parent : stdgo.GoString; var path : stdgo.GoString; var data : stdgo.Slice<stdgo.GoUInt8>; var values : stdgo.Slice<stdgo.AnyInterface>; var generation : stdgo.GoInt; var isSeed : Bool; }>), {
        final __obj__ = new stdgo.GoMap<stdgo.GoArray<stdgo.GoUInt8>, Bool>();
        for (key => value in _hashes) {
            __obj__[([for (i in key) (i : stdgo.GoUInt8)] : stdgo.GoArray<stdgo.GoUInt8>)] = value;
        };
        __obj__;
    });
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
typedef CorpusEntry = stdgo._internal.internal.fuzz.Fuzz_corpusentry.CorpusEntry;
@:structInit @:using(stdgo.internal.fuzz.Fuzz.T_fuzzInput_static_extension) @:dox(hide) abstract T_fuzzInput(stdgo._internal.internal.fuzz.Fuzz_t_fuzzinput.T_fuzzInput) from stdgo._internal.internal.fuzz.Fuzz_t_fuzzinput.T_fuzzInput to stdgo._internal.internal.fuzz.Fuzz_t_fuzzinput.T_fuzzInput {
    public var _entry(get, set) : stdgo._internal.internal.fuzz.Fuzz_corpusentry.CorpusEntry;
    function get__entry():stdgo._internal.internal.fuzz.Fuzz_corpusentry.CorpusEntry return this._entry;
    function set__entry(v:stdgo._internal.internal.fuzz.Fuzz_corpusentry.CorpusEntry):stdgo._internal.internal.fuzz.Fuzz_corpusentry.CorpusEntry {
        this._entry = v;
        return v;
    }
    public var _timeout(get, set) : stdgo._internal.time.Time_duration.Duration;
    function get__timeout():stdgo._internal.time.Time_duration.Duration return this._timeout;
    function set__timeout(v:stdgo._internal.time.Time_duration.Duration):stdgo._internal.time.Time_duration.Duration {
        this._timeout = v;
        return v;
    }
    public var _limit(get, set) : haxe.Int64;
    function get__limit():haxe.Int64 return this._limit;
    function set__limit(v:haxe.Int64):haxe.Int64 {
        this._limit = (v : stdgo.GoInt64);
        return v;
    }
    public var _warmup(get, set) : Bool;
    function get__warmup():Bool return this._warmup;
    function set__warmup(v:Bool):Bool {
        this._warmup = v;
        return v;
    }
    public var _coverageData(get, set) : Array<std.UInt>;
    function get__coverageData():Array<std.UInt> return [for (i in this._coverageData) i];
    function set__coverageData(v:Array<std.UInt>):Array<std.UInt> {
        this._coverageData = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public function new(?_entry:stdgo._internal.internal.fuzz.Fuzz_corpusentry.CorpusEntry, ?_timeout:stdgo._internal.time.Time_duration.Duration, ?_limit:haxe.Int64, ?_warmup:Bool, ?_coverageData:Array<std.UInt>) this = new stdgo._internal.internal.fuzz.Fuzz_t_fuzzinput.T_fuzzInput(_entry, _timeout, (_limit : stdgo.GoInt64), _warmup, ([for (i in _coverageData) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.internal.fuzz.Fuzz.T_fuzzResult_static_extension) @:dox(hide) abstract T_fuzzResult(stdgo._internal.internal.fuzz.Fuzz_t_fuzzresult.T_fuzzResult) from stdgo._internal.internal.fuzz.Fuzz_t_fuzzresult.T_fuzzResult to stdgo._internal.internal.fuzz.Fuzz_t_fuzzresult.T_fuzzResult {
    public var _entry(get, set) : stdgo._internal.internal.fuzz.Fuzz_corpusentry.CorpusEntry;
    function get__entry():stdgo._internal.internal.fuzz.Fuzz_corpusentry.CorpusEntry return this._entry;
    function set__entry(v:stdgo._internal.internal.fuzz.Fuzz_corpusentry.CorpusEntry):stdgo._internal.internal.fuzz.Fuzz_corpusentry.CorpusEntry {
        this._entry = v;
        return v;
    }
    public var _crasherMsg(get, set) : String;
    function get__crasherMsg():String return this._crasherMsg;
    function set__crasherMsg(v:String):String {
        this._crasherMsg = (v : stdgo.GoString);
        return v;
    }
    public var _canMinimize(get, set) : Bool;
    function get__canMinimize():Bool return this._canMinimize;
    function set__canMinimize(v:Bool):Bool {
        this._canMinimize = v;
        return v;
    }
    public var _coverageData(get, set) : Array<std.UInt>;
    function get__coverageData():Array<std.UInt> return [for (i in this._coverageData) i];
    function set__coverageData(v:Array<std.UInt>):Array<std.UInt> {
        this._coverageData = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public var _limit(get, set) : haxe.Int64;
    function get__limit():haxe.Int64 return this._limit;
    function set__limit(v:haxe.Int64):haxe.Int64 {
        this._limit = (v : stdgo.GoInt64);
        return v;
    }
    public var _count(get, set) : haxe.Int64;
    function get__count():haxe.Int64 return this._count;
    function set__count(v:haxe.Int64):haxe.Int64 {
        this._count = (v : stdgo.GoInt64);
        return v;
    }
    public var _totalDuration(get, set) : stdgo._internal.time.Time_duration.Duration;
    function get__totalDuration():stdgo._internal.time.Time_duration.Duration return this._totalDuration;
    function set__totalDuration(v:stdgo._internal.time.Time_duration.Duration):stdgo._internal.time.Time_duration.Duration {
        this._totalDuration = v;
        return v;
    }
    public var _entryDuration(get, set) : stdgo._internal.time.Time_duration.Duration;
    function get__entryDuration():stdgo._internal.time.Time_duration.Duration return this._entryDuration;
    function set__entryDuration(v:stdgo._internal.time.Time_duration.Duration):stdgo._internal.time.Time_duration.Duration {
        this._entryDuration = v;
        return v;
    }
    public function new(?_entry:stdgo._internal.internal.fuzz.Fuzz_corpusentry.CorpusEntry, ?_crasherMsg:String, ?_canMinimize:Bool, ?_coverageData:Array<std.UInt>, ?_limit:haxe.Int64, ?_count:haxe.Int64, ?_totalDuration:stdgo._internal.time.Time_duration.Duration, ?_entryDuration:stdgo._internal.time.Time_duration.Duration) this = new stdgo._internal.internal.fuzz.Fuzz_t_fuzzresult.T_fuzzResult(_entry, (_crasherMsg : stdgo.GoString), _canMinimize, ([for (i in _coverageData) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>), (_limit : stdgo.GoInt64), (_count : stdgo.GoInt64), _totalDuration, _entryDuration);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.internal.fuzz.Fuzz.T_fuzzMinimizeInput_static_extension) @:dox(hide) abstract T_fuzzMinimizeInput(stdgo._internal.internal.fuzz.Fuzz_t_fuzzminimizeinput.T_fuzzMinimizeInput) from stdgo._internal.internal.fuzz.Fuzz_t_fuzzminimizeinput.T_fuzzMinimizeInput to stdgo._internal.internal.fuzz.Fuzz_t_fuzzminimizeinput.T_fuzzMinimizeInput {
    public var _entry(get, set) : stdgo._internal.internal.fuzz.Fuzz_corpusentry.CorpusEntry;
    function get__entry():stdgo._internal.internal.fuzz.Fuzz_corpusentry.CorpusEntry return this._entry;
    function set__entry(v:stdgo._internal.internal.fuzz.Fuzz_corpusentry.CorpusEntry):stdgo._internal.internal.fuzz.Fuzz_corpusentry.CorpusEntry {
        this._entry = v;
        return v;
    }
    public var _crasherMsg(get, set) : String;
    function get__crasherMsg():String return this._crasherMsg;
    function set__crasherMsg(v:String):String {
        this._crasherMsg = (v : stdgo.GoString);
        return v;
    }
    public var _limit(get, set) : haxe.Int64;
    function get__limit():haxe.Int64 return this._limit;
    function set__limit(v:haxe.Int64):haxe.Int64 {
        this._limit = (v : stdgo.GoInt64);
        return v;
    }
    public var _timeout(get, set) : stdgo._internal.time.Time_duration.Duration;
    function get__timeout():stdgo._internal.time.Time_duration.Duration return this._timeout;
    function set__timeout(v:stdgo._internal.time.Time_duration.Duration):stdgo._internal.time.Time_duration.Duration {
        this._timeout = v;
        return v;
    }
    public var _keepCoverage(get, set) : Array<std.UInt>;
    function get__keepCoverage():Array<std.UInt> return [for (i in this._keepCoverage) i];
    function set__keepCoverage(v:Array<std.UInt>):Array<std.UInt> {
        this._keepCoverage = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public function new(?_entry:stdgo._internal.internal.fuzz.Fuzz_corpusentry.CorpusEntry, ?_crasherMsg:String, ?_limit:haxe.Int64, ?_timeout:stdgo._internal.time.Time_duration.Duration, ?_keepCoverage:Array<std.UInt>) this = new stdgo._internal.internal.fuzz.Fuzz_t_fuzzminimizeinput.T_fuzzMinimizeInput(_entry, (_crasherMsg : stdgo.GoString), (_limit : stdgo.GoInt64), _timeout, ([for (i in _keepCoverage) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.internal.fuzz.Fuzz.T_coordinator_static_extension) @:dox(hide) abstract T_coordinator(stdgo._internal.internal.fuzz.Fuzz_t_coordinator.T_coordinator) from stdgo._internal.internal.fuzz.Fuzz_t_coordinator.T_coordinator to stdgo._internal.internal.fuzz.Fuzz_t_coordinator.T_coordinator {
    public var _opts(get, set) : CoordinateFuzzingOpts;
    function get__opts():CoordinateFuzzingOpts return this._opts;
    function set__opts(v:CoordinateFuzzingOpts):CoordinateFuzzingOpts {
        this._opts = v;
        return v;
    }
    public var _startTime(get, set) : stdgo._internal.time.Time_time.Time;
    function get__startTime():stdgo._internal.time.Time_time.Time return this._startTime;
    function set__startTime(v:stdgo._internal.time.Time_time.Time):stdgo._internal.time.Time_time.Time {
        this._startTime = v;
        return v;
    }
    public var _inputC(get, set) : stdgo.Chan<stdgo._internal.internal.fuzz.Fuzz_t_fuzzinput.T_fuzzInput>;
    function get__inputC():stdgo.Chan<stdgo._internal.internal.fuzz.Fuzz_t_fuzzinput.T_fuzzInput> return this._inputC;
    function set__inputC(v:stdgo.Chan<stdgo._internal.internal.fuzz.Fuzz_t_fuzzinput.T_fuzzInput>):stdgo.Chan<stdgo._internal.internal.fuzz.Fuzz_t_fuzzinput.T_fuzzInput> {
        this._inputC = (v : stdgo.Chan<stdgo._internal.internal.fuzz.Fuzz_t_fuzzinput.T_fuzzInput>);
        return v;
    }
    public var _minimizeC(get, set) : stdgo.Chan<stdgo._internal.internal.fuzz.Fuzz_t_fuzzminimizeinput.T_fuzzMinimizeInput>;
    function get__minimizeC():stdgo.Chan<stdgo._internal.internal.fuzz.Fuzz_t_fuzzminimizeinput.T_fuzzMinimizeInput> return this._minimizeC;
    function set__minimizeC(v:stdgo.Chan<stdgo._internal.internal.fuzz.Fuzz_t_fuzzminimizeinput.T_fuzzMinimizeInput>):stdgo.Chan<stdgo._internal.internal.fuzz.Fuzz_t_fuzzminimizeinput.T_fuzzMinimizeInput> {
        this._minimizeC = (v : stdgo.Chan<stdgo._internal.internal.fuzz.Fuzz_t_fuzzminimizeinput.T_fuzzMinimizeInput>);
        return v;
    }
    public var _resultC(get, set) : stdgo.Chan<stdgo._internal.internal.fuzz.Fuzz_t_fuzzresult.T_fuzzResult>;
    function get__resultC():stdgo.Chan<stdgo._internal.internal.fuzz.Fuzz_t_fuzzresult.T_fuzzResult> return this._resultC;
    function set__resultC(v:stdgo.Chan<stdgo._internal.internal.fuzz.Fuzz_t_fuzzresult.T_fuzzResult>):stdgo.Chan<stdgo._internal.internal.fuzz.Fuzz_t_fuzzresult.T_fuzzResult> {
        this._resultC = (v : stdgo.Chan<stdgo._internal.internal.fuzz.Fuzz_t_fuzzresult.T_fuzzResult>);
        return v;
    }
    public var _count(get, set) : haxe.Int64;
    function get__count():haxe.Int64 return this._count;
    function set__count(v:haxe.Int64):haxe.Int64 {
        this._count = (v : stdgo.GoInt64);
        return v;
    }
    public var _countLastLog(get, set) : haxe.Int64;
    function get__countLastLog():haxe.Int64 return this._countLastLog;
    function set__countLastLog(v:haxe.Int64):haxe.Int64 {
        this._countLastLog = (v : stdgo.GoInt64);
        return v;
    }
    public var _timeLastLog(get, set) : stdgo._internal.time.Time_time.Time;
    function get__timeLastLog():stdgo._internal.time.Time_time.Time return this._timeLastLog;
    function set__timeLastLog(v:stdgo._internal.time.Time_time.Time):stdgo._internal.time.Time_time.Time {
        this._timeLastLog = v;
        return v;
    }
    public var _interestingCount(get, set) : StdTypes.Int;
    function get__interestingCount():StdTypes.Int return this._interestingCount;
    function set__interestingCount(v:StdTypes.Int):StdTypes.Int {
        this._interestingCount = (v : stdgo.GoInt);
        return v;
    }
    public var _warmupInputCount(get, set) : StdTypes.Int;
    function get__warmupInputCount():StdTypes.Int return this._warmupInputCount;
    function set__warmupInputCount(v:StdTypes.Int):StdTypes.Int {
        this._warmupInputCount = (v : stdgo.GoInt);
        return v;
    }
    public var _warmupInputLeft(get, set) : StdTypes.Int;
    function get__warmupInputLeft():StdTypes.Int return this._warmupInputLeft;
    function set__warmupInputLeft(v:StdTypes.Int):StdTypes.Int {
        this._warmupInputLeft = (v : stdgo.GoInt);
        return v;
    }
    public var _duration(get, set) : stdgo._internal.time.Time_duration.Duration;
    function get__duration():stdgo._internal.time.Time_duration.Duration return this._duration;
    function set__duration(v:stdgo._internal.time.Time_duration.Duration):stdgo._internal.time.Time_duration.Duration {
        this._duration = v;
        return v;
    }
    public var _countWaiting(get, set) : haxe.Int64;
    function get__countWaiting():haxe.Int64 return this._countWaiting;
    function set__countWaiting(v:haxe.Int64):haxe.Int64 {
        this._countWaiting = (v : stdgo.GoInt64);
        return v;
    }
    public var _corpus(get, set) : T_corpus;
    function get__corpus():T_corpus return this._corpus;
    function set__corpus(v:T_corpus):T_corpus {
        this._corpus = v;
        return v;
    }
    public var _minimizationAllowed(get, set) : Bool;
    function get__minimizationAllowed():Bool return this._minimizationAllowed;
    function set__minimizationAllowed(v:Bool):Bool {
        this._minimizationAllowed = v;
        return v;
    }
    public var _inputQueue(get, set) : T_queue;
    function get__inputQueue():T_queue return this._inputQueue;
    function set__inputQueue(v:T_queue):T_queue {
        this._inputQueue = v;
        return v;
    }
    public var _minimizeQueue(get, set) : T_queue;
    function get__minimizeQueue():T_queue return this._minimizeQueue;
    function set__minimizeQueue(v:T_queue):T_queue {
        this._minimizeQueue = v;
        return v;
    }
    public var _crashMinimizing(get, set) : T_fuzzResult;
    function get__crashMinimizing():T_fuzzResult return this._crashMinimizing;
    function set__crashMinimizing(v:T_fuzzResult):T_fuzzResult {
        this._crashMinimizing = (v : stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_fuzzresult.T_fuzzResult>);
        return v;
    }
    public var _coverageMask(get, set) : Array<std.UInt>;
    function get__coverageMask():Array<std.UInt> return [for (i in this._coverageMask) i];
    function set__coverageMask(v:Array<std.UInt>):Array<std.UInt> {
        this._coverageMask = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public function new(?_opts:CoordinateFuzzingOpts, ?_startTime:stdgo._internal.time.Time_time.Time, ?_inputC:stdgo.Chan<stdgo._internal.internal.fuzz.Fuzz_t_fuzzinput.T_fuzzInput>, ?_minimizeC:stdgo.Chan<stdgo._internal.internal.fuzz.Fuzz_t_fuzzminimizeinput.T_fuzzMinimizeInput>, ?_resultC:stdgo.Chan<stdgo._internal.internal.fuzz.Fuzz_t_fuzzresult.T_fuzzResult>, ?_count:haxe.Int64, ?_countLastLog:haxe.Int64, ?_timeLastLog:stdgo._internal.time.Time_time.Time, ?_interestingCount:StdTypes.Int, ?_warmupInputCount:StdTypes.Int, ?_warmupInputLeft:StdTypes.Int, ?_duration:stdgo._internal.time.Time_duration.Duration, ?_countWaiting:haxe.Int64, ?_corpus:T_corpus, ?_minimizationAllowed:Bool, ?_inputQueue:T_queue, ?_minimizeQueue:T_queue, ?_crashMinimizing:T_fuzzResult, ?_coverageMask:Array<std.UInt>) this = new stdgo._internal.internal.fuzz.Fuzz_t_coordinator.T_coordinator(
_opts,
_startTime,
(_inputC : stdgo.Chan<stdgo._internal.internal.fuzz.Fuzz_t_fuzzinput.T_fuzzInput>),
(_minimizeC : stdgo.Chan<stdgo._internal.internal.fuzz.Fuzz_t_fuzzminimizeinput.T_fuzzMinimizeInput>),
(_resultC : stdgo.Chan<stdgo._internal.internal.fuzz.Fuzz_t_fuzzresult.T_fuzzResult>),
(_count : stdgo.GoInt64),
(_countLastLog : stdgo.GoInt64),
_timeLastLog,
(_interestingCount : stdgo.GoInt),
(_warmupInputCount : stdgo.GoInt),
(_warmupInputLeft : stdgo.GoInt),
_duration,
(_countWaiting : stdgo.GoInt64),
_corpus,
_minimizationAllowed,
_inputQueue,
_minimizeQueue,
(_crashMinimizing : stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_fuzzresult.T_fuzzResult>),
([for (i in _coverageMask) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.internal.fuzz.Fuzz.MalformedCorpusError_static_extension) abstract MalformedCorpusError(stdgo._internal.internal.fuzz.Fuzz_malformedcorpuserror.MalformedCorpusError) from stdgo._internal.internal.fuzz.Fuzz_malformedcorpuserror.MalformedCorpusError to stdgo._internal.internal.fuzz.Fuzz_malformedcorpuserror.MalformedCorpusError {
    public var _errs(get, set) : Array<stdgo.Error>;
    function get__errs():Array<stdgo.Error> return [for (i in this._errs) i];
    function set__errs(v:Array<stdgo.Error>):Array<stdgo.Error> {
        this._errs = ([for (i in v) (i : stdgo.Error)] : stdgo.Slice<stdgo.Error>);
        return v;
    }
    public function new(?_errs:Array<stdgo.Error>) this = new stdgo._internal.internal.fuzz.Fuzz_malformedcorpuserror.MalformedCorpusError(([for (i in _errs) (i : stdgo.Error)] : stdgo.Slice<stdgo.Error>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.internal.fuzz.Fuzz.T_sharedMem_static_extension) @:dox(hide) abstract T_sharedMem(stdgo._internal.internal.fuzz.Fuzz_t_sharedmem.T_sharedMem) from stdgo._internal.internal.fuzz.Fuzz_t_sharedmem.T_sharedMem to stdgo._internal.internal.fuzz.Fuzz_t_sharedmem.T_sharedMem {
    public var _f(get, set) : stdgo._internal.os.Os_file.File;
    function get__f():stdgo._internal.os.Os_file.File return this._f;
    function set__f(v:stdgo._internal.os.Os_file.File):stdgo._internal.os.Os_file.File {
        this._f = (v : stdgo.Ref<stdgo._internal.os.Os_file.File>);
        return v;
    }
    public var _region(get, set) : Array<std.UInt>;
    function get__region():Array<std.UInt> return [for (i in this._region) i];
    function set__region(v:Array<std.UInt>):Array<std.UInt> {
        this._region = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public var _removeOnClose(get, set) : Bool;
    function get__removeOnClose():Bool return this._removeOnClose;
    function set__removeOnClose(v:Bool):Bool {
        this._removeOnClose = v;
        return v;
    }
    public var _sys(get, set) : T_sharedMemSys;
    function get__sys():T_sharedMemSys return this._sys;
    function set__sys(v:T_sharedMemSys):T_sharedMemSys {
        this._sys = v;
        return v;
    }
    public function new(?_f:stdgo._internal.os.Os_file.File, ?_region:Array<std.UInt>, ?_removeOnClose:Bool, ?_sys:T_sharedMemSys) this = new stdgo._internal.internal.fuzz.Fuzz_t_sharedmem.T_sharedMem((_f : stdgo.Ref<stdgo._internal.os.Os_file.File>), ([for (i in _region) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>), _removeOnClose, _sys);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.internal.fuzz.Fuzz.T_sharedMemHeader_static_extension) @:dox(hide) abstract T_sharedMemHeader(stdgo._internal.internal.fuzz.Fuzz_t_sharedmemheader.T_sharedMemHeader) from stdgo._internal.internal.fuzz.Fuzz_t_sharedmemheader.T_sharedMemHeader to stdgo._internal.internal.fuzz.Fuzz_t_sharedmemheader.T_sharedMemHeader {
    public var _count(get, set) : haxe.Int64;
    function get__count():haxe.Int64 return this._count;
    function set__count(v:haxe.Int64):haxe.Int64 {
        this._count = (v : stdgo.GoInt64);
        return v;
    }
    public var _valueLen(get, set) : StdTypes.Int;
    function get__valueLen():StdTypes.Int return this._valueLen;
    function set__valueLen(v:StdTypes.Int):StdTypes.Int {
        this._valueLen = (v : stdgo.GoInt);
        return v;
    }
    public var _randState(get, set) : haxe.UInt64;
    function get__randState():haxe.UInt64 return this._randState;
    function set__randState(v:haxe.UInt64):haxe.UInt64 {
        this._randState = (v : stdgo.GoUInt64);
        return v;
    }
    public var _randInc(get, set) : haxe.UInt64;
    function get__randInc():haxe.UInt64 return this._randInc;
    function set__randInc(v:haxe.UInt64):haxe.UInt64 {
        this._randInc = (v : stdgo.GoUInt64);
        return v;
    }
    public var _rawInMem(get, set) : Bool;
    function get__rawInMem():Bool return this._rawInMem;
    function set__rawInMem(v:Bool):Bool {
        this._rawInMem = v;
        return v;
    }
    public function new(?_count:haxe.Int64, ?_valueLen:StdTypes.Int, ?_randState:haxe.UInt64, ?_randInc:haxe.UInt64, ?_rawInMem:Bool) this = new stdgo._internal.internal.fuzz.Fuzz_t_sharedmemheader.T_sharedMemHeader((_count : stdgo.GoInt64), (_valueLen : stdgo.GoInt), (_randState : stdgo.GoUInt64), (_randInc : stdgo.GoUInt64), _rawInMem);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.internal.fuzz.Fuzz.T_mutator_static_extension) @:dox(hide) abstract T_mutator(stdgo._internal.internal.fuzz.Fuzz_t_mutator.T_mutator) from stdgo._internal.internal.fuzz.Fuzz_t_mutator.T_mutator to stdgo._internal.internal.fuzz.Fuzz_t_mutator.T_mutator {
    public var _r(get, set) : T_mutatorRand;
    function get__r():T_mutatorRand return this._r;
    function set__r(v:T_mutatorRand):T_mutatorRand {
        this._r = v;
        return v;
    }
    public var _scratch(get, set) : Array<std.UInt>;
    function get__scratch():Array<std.UInt> return [for (i in this._scratch) i];
    function set__scratch(v:Array<std.UInt>):Array<std.UInt> {
        this._scratch = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public function new(?_r:T_mutatorRand, ?_scratch:Array<std.UInt>) this = new stdgo._internal.internal.fuzz.Fuzz_t_mutator.T_mutator(_r, ([for (i in _scratch) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.internal.fuzz.Fuzz.T_pcgRand_static_extension) @:dox(hide) abstract T_pcgRand(stdgo._internal.internal.fuzz.Fuzz_t_pcgrand.T_pcgRand) from stdgo._internal.internal.fuzz.Fuzz_t_pcgrand.T_pcgRand to stdgo._internal.internal.fuzz.Fuzz_t_pcgrand.T_pcgRand {
    public var _noCopy(get, set) : T_noCopy;
    function get__noCopy():T_noCopy return this._noCopy;
    function set__noCopy(v:T_noCopy):T_noCopy {
        this._noCopy = v;
        return v;
    }
    public var _state(get, set) : haxe.UInt64;
    function get__state():haxe.UInt64 return this._state;
    function set__state(v:haxe.UInt64):haxe.UInt64 {
        this._state = (v : stdgo.GoUInt64);
        return v;
    }
    public var _inc(get, set) : haxe.UInt64;
    function get__inc():haxe.UInt64 return this._inc;
    function set__inc(v:haxe.UInt64):haxe.UInt64 {
        this._inc = (v : stdgo.GoUInt64);
        return v;
    }
    public function new(?_noCopy:T_noCopy, ?_state:haxe.UInt64, ?_inc:haxe.UInt64) this = new stdgo._internal.internal.fuzz.Fuzz_t_pcgrand.T_pcgRand(_noCopy, (_state : stdgo.GoUInt64), (_inc : stdgo.GoUInt64));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.internal.fuzz.Fuzz.T_noCopy_static_extension) @:dox(hide) abstract T_noCopy(stdgo._internal.internal.fuzz.Fuzz_t_nocopy.T_noCopy) from stdgo._internal.internal.fuzz.Fuzz_t_nocopy.T_noCopy to stdgo._internal.internal.fuzz.Fuzz_t_nocopy.T_noCopy {
    public function new() this = new stdgo._internal.internal.fuzz.Fuzz_t_nocopy.T_noCopy();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.internal.fuzz.Fuzz.T_queue_static_extension) @:dox(hide) abstract T_queue(stdgo._internal.internal.fuzz.Fuzz_t_queue.T_queue) from stdgo._internal.internal.fuzz.Fuzz_t_queue.T_queue to stdgo._internal.internal.fuzz.Fuzz_t_queue.T_queue {
    public var _elems(get, set) : Array<stdgo.AnyInterface>;
    function get__elems():Array<stdgo.AnyInterface> return [for (i in this._elems) i];
    function set__elems(v:Array<stdgo.AnyInterface>):Array<stdgo.AnyInterface> {
        this._elems = ([for (i in v) (i : stdgo.AnyInterface)] : stdgo.Slice<stdgo.AnyInterface>);
        return v;
    }
    public var _head(get, set) : StdTypes.Int;
    function get__head():StdTypes.Int return this._head;
    function set__head(v:StdTypes.Int):StdTypes.Int {
        this._head = (v : stdgo.GoInt);
        return v;
    }
    public var _len(get, set) : StdTypes.Int;
    function get__len():StdTypes.Int return this._len;
    function set__len(v:StdTypes.Int):StdTypes.Int {
        this._len = (v : stdgo.GoInt);
        return v;
    }
    public function new(?_elems:Array<stdgo.AnyInterface>, ?_head:StdTypes.Int, ?_len:StdTypes.Int) this = new stdgo._internal.internal.fuzz.Fuzz_t_queue.T_queue(([for (i in _elems) (i : stdgo.AnyInterface)] : stdgo.Slice<stdgo.AnyInterface>), (_head : stdgo.GoInt), (_len : stdgo.GoInt));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.internal.fuzz.Fuzz.T_sharedMemSys_static_extension) @:dox(hide) abstract T_sharedMemSys(stdgo._internal.internal.fuzz.Fuzz_t_sharedmemsys.T_sharedMemSys) from stdgo._internal.internal.fuzz.Fuzz_t_sharedmemsys.T_sharedMemSys to stdgo._internal.internal.fuzz.Fuzz_t_sharedmemsys.T_sharedMemSys {
    public function new() this = new stdgo._internal.internal.fuzz.Fuzz_t_sharedmemsys.T_sharedMemSys();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.internal.fuzz.Fuzz.T_worker_static_extension) @:dox(hide) abstract T_worker(stdgo._internal.internal.fuzz.Fuzz_t_worker.T_worker) from stdgo._internal.internal.fuzz.Fuzz_t_worker.T_worker to stdgo._internal.internal.fuzz.Fuzz_t_worker.T_worker {
    public var _dir(get, set) : String;
    function get__dir():String return this._dir;
    function set__dir(v:String):String {
        this._dir = (v : stdgo.GoString);
        return v;
    }
    public var _binPath(get, set) : String;
    function get__binPath():String return this._binPath;
    function set__binPath(v:String):String {
        this._binPath = (v : stdgo.GoString);
        return v;
    }
    public var _args(get, set) : Array<String>;
    function get__args():Array<String> return [for (i in this._args) i];
    function set__args(v:Array<String>):Array<String> {
        this._args = ([for (i in v) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>);
        return v;
    }
    public var _env(get, set) : Array<String>;
    function get__env():Array<String> return [for (i in this._env) i];
    function set__env(v:Array<String>):Array<String> {
        this._env = ([for (i in v) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>);
        return v;
    }
    public var _coordinator(get, set) : T_coordinator;
    function get__coordinator():T_coordinator return this._coordinator;
    function set__coordinator(v:T_coordinator):T_coordinator {
        this._coordinator = (v : stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_coordinator.T_coordinator>);
        return v;
    }
    public var _memMu(get, set) : stdgo.Chan<stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_sharedmem.T_sharedMem>>;
    function get__memMu():stdgo.Chan<stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_sharedmem.T_sharedMem>> return this._memMu;
    function set__memMu(v:stdgo.Chan<stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_sharedmem.T_sharedMem>>):stdgo.Chan<stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_sharedmem.T_sharedMem>> {
        this._memMu = (v : stdgo.Chan<stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_sharedmem.T_sharedMem>>);
        return v;
    }
    public var _cmd(get, set) : stdgo._internal.os.exec.Exec_cmd.Cmd;
    function get__cmd():stdgo._internal.os.exec.Exec_cmd.Cmd return this._cmd;
    function set__cmd(v:stdgo._internal.os.exec.Exec_cmd.Cmd):stdgo._internal.os.exec.Exec_cmd.Cmd {
        this._cmd = (v : stdgo.Ref<stdgo._internal.os.exec.Exec_cmd.Cmd>);
        return v;
    }
    public var _client(get, set) : T_workerClient;
    function get__client():T_workerClient return this._client;
    function set__client(v:T_workerClient):T_workerClient {
        this._client = (v : stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_workerclient.T_workerClient>);
        return v;
    }
    public var _waitErr(get, set) : stdgo.Error;
    function get__waitErr():stdgo.Error return this._waitErr;
    function set__waitErr(v:stdgo.Error):stdgo.Error {
        this._waitErr = (v : stdgo.Error);
        return v;
    }
    public var _interrupted(get, set) : Bool;
    function get__interrupted():Bool return this._interrupted;
    function set__interrupted(v:Bool):Bool {
        this._interrupted = v;
        return v;
    }
    public var _termC(get, set) : stdgo.Chan<stdgo._internal.internal.fuzz.Fuzz_t_nocopy.T_noCopy>;
    function get__termC():stdgo.Chan<stdgo._internal.internal.fuzz.Fuzz_t_nocopy.T_noCopy> return this._termC;
    function set__termC(v:stdgo.Chan<stdgo._internal.internal.fuzz.Fuzz_t_nocopy.T_noCopy>):stdgo.Chan<stdgo._internal.internal.fuzz.Fuzz_t_nocopy.T_noCopy> {
        this._termC = (v : stdgo.Chan<stdgo._internal.internal.fuzz.Fuzz_t_nocopy.T_noCopy>);
        return v;
    }
    public function new(?_dir:String, ?_binPath:String, ?_args:Array<String>, ?_env:Array<String>, ?_coordinator:T_coordinator, ?_memMu:stdgo.Chan<stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_sharedmem.T_sharedMem>>, ?_cmd:stdgo._internal.os.exec.Exec_cmd.Cmd, ?_client:T_workerClient, ?_waitErr:stdgo.Error, ?_interrupted:Bool, ?_termC:stdgo.Chan<stdgo._internal.internal.fuzz.Fuzz_t_nocopy.T_noCopy>) this = new stdgo._internal.internal.fuzz.Fuzz_t_worker.T_worker(
(_dir : stdgo.GoString),
(_binPath : stdgo.GoString),
([for (i in _args) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>),
([for (i in _env) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>),
(_coordinator : stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_coordinator.T_coordinator>),
(_memMu : stdgo.Chan<stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_sharedmem.T_sharedMem>>),
(_cmd : stdgo.Ref<stdgo._internal.os.exec.Exec_cmd.Cmd>),
(_client : stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_workerclient.T_workerClient>),
(_waitErr : stdgo.Error),
_interrupted,
(_termC : stdgo.Chan<stdgo._internal.internal.fuzz.Fuzz_t_nocopy.T_noCopy>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.internal.fuzz.Fuzz.T_call_static_extension) @:dox(hide) abstract T_call(stdgo._internal.internal.fuzz.Fuzz_t_call.T_call) from stdgo._internal.internal.fuzz.Fuzz_t_call.T_call to stdgo._internal.internal.fuzz.Fuzz_t_call.T_call {
    public var ping(get, set) : T_pingArgs;
    function get_ping():T_pingArgs return this.ping;
    function set_ping(v:T_pingArgs):T_pingArgs {
        this.ping = (v : stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_pingargs.T_pingArgs>);
        return v;
    }
    public var fuzz(get, set) : T_fuzzArgs;
    function get_fuzz():T_fuzzArgs return this.fuzz;
    function set_fuzz(v:T_fuzzArgs):T_fuzzArgs {
        this.fuzz = (v : stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_fuzzargs.T_fuzzArgs>);
        return v;
    }
    public var minimize(get, set) : T_minimizeArgs;
    function get_minimize():T_minimizeArgs return this.minimize;
    function set_minimize(v:T_minimizeArgs):T_minimizeArgs {
        this.minimize = (v : stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_minimizeargs.T_minimizeArgs>);
        return v;
    }
    public function new(?ping:T_pingArgs, ?fuzz:T_fuzzArgs, ?minimize:T_minimizeArgs) this = new stdgo._internal.internal.fuzz.Fuzz_t_call.T_call((ping : stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_pingargs.T_pingArgs>), (fuzz : stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_fuzzargs.T_fuzzArgs>), (minimize : stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_minimizeargs.T_minimizeArgs>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.internal.fuzz.Fuzz.T_minimizeArgs_static_extension) @:dox(hide) abstract T_minimizeArgs(stdgo._internal.internal.fuzz.Fuzz_t_minimizeargs.T_minimizeArgs) from stdgo._internal.internal.fuzz.Fuzz_t_minimizeargs.T_minimizeArgs to stdgo._internal.internal.fuzz.Fuzz_t_minimizeargs.T_minimizeArgs {
    public var timeout(get, set) : stdgo._internal.time.Time_duration.Duration;
    function get_timeout():stdgo._internal.time.Time_duration.Duration return this.timeout;
    function set_timeout(v:stdgo._internal.time.Time_duration.Duration):stdgo._internal.time.Time_duration.Duration {
        this.timeout = v;
        return v;
    }
    public var limit(get, set) : haxe.Int64;
    function get_limit():haxe.Int64 return this.limit;
    function set_limit(v:haxe.Int64):haxe.Int64 {
        this.limit = (v : stdgo.GoInt64);
        return v;
    }
    public var keepCoverage(get, set) : Array<std.UInt>;
    function get_keepCoverage():Array<std.UInt> return [for (i in this.keepCoverage) i];
    function set_keepCoverage(v:Array<std.UInt>):Array<std.UInt> {
        this.keepCoverage = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public var index(get, set) : StdTypes.Int;
    function get_index():StdTypes.Int return this.index;
    function set_index(v:StdTypes.Int):StdTypes.Int {
        this.index = (v : stdgo.GoInt);
        return v;
    }
    public function new(?timeout:stdgo._internal.time.Time_duration.Duration, ?limit:haxe.Int64, ?keepCoverage:Array<std.UInt>, ?index:StdTypes.Int) this = new stdgo._internal.internal.fuzz.Fuzz_t_minimizeargs.T_minimizeArgs(timeout, (limit : stdgo.GoInt64), ([for (i in keepCoverage) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>), (index : stdgo.GoInt));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.internal.fuzz.Fuzz.T_minimizeResponse_static_extension) @:dox(hide) abstract T_minimizeResponse(stdgo._internal.internal.fuzz.Fuzz_t_minimizeresponse.T_minimizeResponse) from stdgo._internal.internal.fuzz.Fuzz_t_minimizeresponse.T_minimizeResponse to stdgo._internal.internal.fuzz.Fuzz_t_minimizeresponse.T_minimizeResponse {
    public var wroteToMem(get, set) : Bool;
    function get_wroteToMem():Bool return this.wroteToMem;
    function set_wroteToMem(v:Bool):Bool {
        this.wroteToMem = v;
        return v;
    }
    public var err(get, set) : String;
    function get_err():String return this.err;
    function set_err(v:String):String {
        this.err = (v : stdgo.GoString);
        return v;
    }
    public var coverageData(get, set) : Array<std.UInt>;
    function get_coverageData():Array<std.UInt> return [for (i in this.coverageData) i];
    function set_coverageData(v:Array<std.UInt>):Array<std.UInt> {
        this.coverageData = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public var duration(get, set) : stdgo._internal.time.Time_duration.Duration;
    function get_duration():stdgo._internal.time.Time_duration.Duration return this.duration;
    function set_duration(v:stdgo._internal.time.Time_duration.Duration):stdgo._internal.time.Time_duration.Duration {
        this.duration = v;
        return v;
    }
    public var count(get, set) : haxe.Int64;
    function get_count():haxe.Int64 return this.count;
    function set_count(v:haxe.Int64):haxe.Int64 {
        this.count = (v : stdgo.GoInt64);
        return v;
    }
    public function new(?wroteToMem:Bool, ?err:String, ?coverageData:Array<std.UInt>, ?duration:stdgo._internal.time.Time_duration.Duration, ?count:haxe.Int64) this = new stdgo._internal.internal.fuzz.Fuzz_t_minimizeresponse.T_minimizeResponse(wroteToMem, (err : stdgo.GoString), ([for (i in coverageData) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>), duration, (count : stdgo.GoInt64));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.internal.fuzz.Fuzz.T_fuzzArgs_static_extension) @:dox(hide) abstract T_fuzzArgs(stdgo._internal.internal.fuzz.Fuzz_t_fuzzargs.T_fuzzArgs) from stdgo._internal.internal.fuzz.Fuzz_t_fuzzargs.T_fuzzArgs to stdgo._internal.internal.fuzz.Fuzz_t_fuzzargs.T_fuzzArgs {
    public var timeout(get, set) : stdgo._internal.time.Time_duration.Duration;
    function get_timeout():stdgo._internal.time.Time_duration.Duration return this.timeout;
    function set_timeout(v:stdgo._internal.time.Time_duration.Duration):stdgo._internal.time.Time_duration.Duration {
        this.timeout = v;
        return v;
    }
    public var limit(get, set) : haxe.Int64;
    function get_limit():haxe.Int64 return this.limit;
    function set_limit(v:haxe.Int64):haxe.Int64 {
        this.limit = (v : stdgo.GoInt64);
        return v;
    }
    public var warmup(get, set) : Bool;
    function get_warmup():Bool return this.warmup;
    function set_warmup(v:Bool):Bool {
        this.warmup = v;
        return v;
    }
    public var coverageData(get, set) : Array<std.UInt>;
    function get_coverageData():Array<std.UInt> return [for (i in this.coverageData) i];
    function set_coverageData(v:Array<std.UInt>):Array<std.UInt> {
        this.coverageData = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public function new(?timeout:stdgo._internal.time.Time_duration.Duration, ?limit:haxe.Int64, ?warmup:Bool, ?coverageData:Array<std.UInt>) this = new stdgo._internal.internal.fuzz.Fuzz_t_fuzzargs.T_fuzzArgs(timeout, (limit : stdgo.GoInt64), warmup, ([for (i in coverageData) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.internal.fuzz.Fuzz.T_fuzzResponse_static_extension) @:dox(hide) abstract T_fuzzResponse(stdgo._internal.internal.fuzz.Fuzz_t_fuzzresponse.T_fuzzResponse) from stdgo._internal.internal.fuzz.Fuzz_t_fuzzresponse.T_fuzzResponse to stdgo._internal.internal.fuzz.Fuzz_t_fuzzresponse.T_fuzzResponse {
    public var totalDuration(get, set) : stdgo._internal.time.Time_duration.Duration;
    function get_totalDuration():stdgo._internal.time.Time_duration.Duration return this.totalDuration;
    function set_totalDuration(v:stdgo._internal.time.Time_duration.Duration):stdgo._internal.time.Time_duration.Duration {
        this.totalDuration = v;
        return v;
    }
    public var interestingDuration(get, set) : stdgo._internal.time.Time_duration.Duration;
    function get_interestingDuration():stdgo._internal.time.Time_duration.Duration return this.interestingDuration;
    function set_interestingDuration(v:stdgo._internal.time.Time_duration.Duration):stdgo._internal.time.Time_duration.Duration {
        this.interestingDuration = v;
        return v;
    }
    public var count(get, set) : haxe.Int64;
    function get_count():haxe.Int64 return this.count;
    function set_count(v:haxe.Int64):haxe.Int64 {
        this.count = (v : stdgo.GoInt64);
        return v;
    }
    public var coverageData(get, set) : Array<std.UInt>;
    function get_coverageData():Array<std.UInt> return [for (i in this.coverageData) i];
    function set_coverageData(v:Array<std.UInt>):Array<std.UInt> {
        this.coverageData = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public var err(get, set) : String;
    function get_err():String return this.err;
    function set_err(v:String):String {
        this.err = (v : stdgo.GoString);
        return v;
    }
    public var internalErr(get, set) : String;
    function get_internalErr():String return this.internalErr;
    function set_internalErr(v:String):String {
        this.internalErr = (v : stdgo.GoString);
        return v;
    }
    public function new(?totalDuration:stdgo._internal.time.Time_duration.Duration, ?interestingDuration:stdgo._internal.time.Time_duration.Duration, ?count:haxe.Int64, ?coverageData:Array<std.UInt>, ?err:String, ?internalErr:String) this = new stdgo._internal.internal.fuzz.Fuzz_t_fuzzresponse.T_fuzzResponse(totalDuration, interestingDuration, (count : stdgo.GoInt64), ([for (i in coverageData) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>), (err : stdgo.GoString), (internalErr : stdgo.GoString));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.internal.fuzz.Fuzz.T_pingArgs_static_extension) @:dox(hide) abstract T_pingArgs(stdgo._internal.internal.fuzz.Fuzz_t_pingargs.T_pingArgs) from stdgo._internal.internal.fuzz.Fuzz_t_pingargs.T_pingArgs to stdgo._internal.internal.fuzz.Fuzz_t_pingargs.T_pingArgs {
    public function new() this = new stdgo._internal.internal.fuzz.Fuzz_t_pingargs.T_pingArgs();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.internal.fuzz.Fuzz.T_pingResponse_static_extension) @:dox(hide) abstract T_pingResponse(stdgo._internal.internal.fuzz.Fuzz_t_pingresponse.T_pingResponse) from stdgo._internal.internal.fuzz.Fuzz_t_pingresponse.T_pingResponse to stdgo._internal.internal.fuzz.Fuzz_t_pingresponse.T_pingResponse {
    public function new() this = new stdgo._internal.internal.fuzz.Fuzz_t_pingresponse.T_pingResponse();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.internal.fuzz.Fuzz.T_workerComm_static_extension) @:dox(hide) abstract T_workerComm(stdgo._internal.internal.fuzz.Fuzz_t_workercomm.T_workerComm) from stdgo._internal.internal.fuzz.Fuzz_t_workercomm.T_workerComm to stdgo._internal.internal.fuzz.Fuzz_t_workercomm.T_workerComm {
    public var _fuzzIn(get, set) : stdgo._internal.os.Os_file.File;
    function get__fuzzIn():stdgo._internal.os.Os_file.File return this._fuzzIn;
    function set__fuzzIn(v:stdgo._internal.os.Os_file.File):stdgo._internal.os.Os_file.File {
        this._fuzzIn = (v : stdgo.Ref<stdgo._internal.os.Os_file.File>);
        return v;
    }
    public var _fuzzOut(get, set) : stdgo._internal.os.Os_file.File;
    function get__fuzzOut():stdgo._internal.os.Os_file.File return this._fuzzOut;
    function set__fuzzOut(v:stdgo._internal.os.Os_file.File):stdgo._internal.os.Os_file.File {
        this._fuzzOut = (v : stdgo.Ref<stdgo._internal.os.Os_file.File>);
        return v;
    }
    public var _memMu(get, set) : stdgo.Chan<stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_sharedmem.T_sharedMem>>;
    function get__memMu():stdgo.Chan<stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_sharedmem.T_sharedMem>> return this._memMu;
    function set__memMu(v:stdgo.Chan<stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_sharedmem.T_sharedMem>>):stdgo.Chan<stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_sharedmem.T_sharedMem>> {
        this._memMu = (v : stdgo.Chan<stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_sharedmem.T_sharedMem>>);
        return v;
    }
    public function new(?_fuzzIn:stdgo._internal.os.Os_file.File, ?_fuzzOut:stdgo._internal.os.Os_file.File, ?_memMu:stdgo.Chan<stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_sharedmem.T_sharedMem>>) this = new stdgo._internal.internal.fuzz.Fuzz_t_workercomm.T_workerComm((_fuzzIn : stdgo.Ref<stdgo._internal.os.Os_file.File>), (_fuzzOut : stdgo.Ref<stdgo._internal.os.Os_file.File>), (_memMu : stdgo.Chan<stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_sharedmem.T_sharedMem>>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.internal.fuzz.Fuzz.T_workerServer_static_extension) @:dox(hide) abstract T_workerServer(stdgo._internal.internal.fuzz.Fuzz_t_workerserver.T_workerServer) from stdgo._internal.internal.fuzz.Fuzz_t_workerserver.T_workerServer to stdgo._internal.internal.fuzz.Fuzz_t_workerserver.T_workerServer {
    public var _workerComm(get, set) : T_workerComm;
    function get__workerComm():T_workerComm return this._workerComm;
    function set__workerComm(v:T_workerComm):T_workerComm {
        this._workerComm = v;
        return v;
    }
    public var _m(get, set) : T_mutator;
    function get__m():T_mutator return this._m;
    function set__m(v:T_mutator):T_mutator {
        this._m = (v : stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_mutator.T_mutator>);
        return v;
    }
    public var _coverageMask(get, set) : Array<std.UInt>;
    function get__coverageMask():Array<std.UInt> return [for (i in this._coverageMask) i];
    function set__coverageMask(v:Array<std.UInt>):Array<std.UInt> {
        this._coverageMask = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public var _fuzzFn(get, set) : stdgo._internal.internal.fuzz.Fuzz_corpusentry.CorpusEntry -> stdgo.Tuple<stdgo._internal.time.Time_duration.Duration, stdgo.Error>;
    function get__fuzzFn():stdgo._internal.internal.fuzz.Fuzz_corpusentry.CorpusEntry -> stdgo.Tuple<stdgo._internal.time.Time_duration.Duration, stdgo.Error> return _0 -> this._fuzzFn(_0);
    function set__fuzzFn(v:stdgo._internal.internal.fuzz.Fuzz_corpusentry.CorpusEntry -> stdgo.Tuple<stdgo._internal.time.Time_duration.Duration, stdgo.Error>):stdgo._internal.internal.fuzz.Fuzz_corpusentry.CorpusEntry -> stdgo.Tuple<stdgo._internal.time.Time_duration.Duration, stdgo.Error> {
        this._fuzzFn = v;
        return v;
    }
    public function new(?_workerComm:T_workerComm, ?_m:T_mutator, ?_coverageMask:Array<std.UInt>, ?_fuzzFn:stdgo._internal.internal.fuzz.Fuzz_corpusentry.CorpusEntry -> stdgo.Tuple<stdgo._internal.time.Time_duration.Duration, stdgo.Error>) this = new stdgo._internal.internal.fuzz.Fuzz_t_workerserver.T_workerServer(_workerComm, (_m : stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_mutator.T_mutator>), ([for (i in _coverageMask) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>), _fuzzFn);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.internal.fuzz.Fuzz.T_workerClient_static_extension) @:dox(hide) abstract T_workerClient(stdgo._internal.internal.fuzz.Fuzz_t_workerclient.T_workerClient) from stdgo._internal.internal.fuzz.Fuzz_t_workerclient.T_workerClient to stdgo._internal.internal.fuzz.Fuzz_t_workerclient.T_workerClient {
    public var _workerComm(get, set) : T_workerComm;
    function get__workerComm():T_workerComm return this._workerComm;
    function set__workerComm(v:T_workerComm):T_workerComm {
        this._workerComm = v;
        return v;
    }
    public var _m(get, set) : T_mutator;
    function get__m():T_mutator return this._m;
    function set__m(v:T_mutator):T_mutator {
        this._m = (v : stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_mutator.T_mutator>);
        return v;
    }
    public var _mu(get, set) : stdgo._internal.sync.Sync_mutex.Mutex;
    function get__mu():stdgo._internal.sync.Sync_mutex.Mutex return this._mu;
    function set__mu(v:stdgo._internal.sync.Sync_mutex.Mutex):stdgo._internal.sync.Sync_mutex.Mutex {
        this._mu = v;
        return v;
    }
    public function new(?_workerComm:T_workerComm, ?_m:T_mutator, ?_mu:stdgo._internal.sync.Sync_mutex.Mutex) this = new stdgo._internal.internal.fuzz.Fuzz_t_workerclient.T_workerClient(_workerComm, (_m : stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_mutator.T_mutator>), _mu);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.internal.fuzz.Fuzz.T_contextReader_static_extension) @:dox(hide) abstract T_contextReader(stdgo._internal.internal.fuzz.Fuzz_t_contextreader.T_contextReader) from stdgo._internal.internal.fuzz.Fuzz_t_contextreader.T_contextReader to stdgo._internal.internal.fuzz.Fuzz_t_contextreader.T_contextReader {
    public var _ctx(get, set) : stdgo._internal.context.Context_context.Context;
    function get__ctx():stdgo._internal.context.Context_context.Context return this._ctx;
    function set__ctx(v:stdgo._internal.context.Context_context.Context):stdgo._internal.context.Context_context.Context {
        this._ctx = v;
        return v;
    }
    public var _r(get, set) : stdgo._internal.io.Io_reader.Reader;
    function get__r():stdgo._internal.io.Io_reader.Reader return this._r;
    function set__r(v:stdgo._internal.io.Io_reader.Reader):stdgo._internal.io.Io_reader.Reader {
        this._r = v;
        return v;
    }
    public function new(?_ctx:stdgo._internal.context.Context_context.Context, ?_r:stdgo._internal.io.Io_reader.Reader) this = new stdgo._internal.internal.fuzz.Fuzz_t_contextreader.T_contextReader(_ctx, _r);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:dox(hide) typedef T__struct_0Pointer = stdgo._internal.internal.fuzz.Fuzz_t__struct_0pointer.T__struct_0Pointer;
@:dox(hide) class T__struct_0_static_extension {

}
@:dox(hide) typedef T__struct_0 = stdgo._internal.internal.fuzz.Fuzz_t__struct_0.T__struct_0;
@:dox(hide) typedef T_byteSliceMutator = stdgo._internal.internal.fuzz.Fuzz_t_byteslicemutator.T_byteSliceMutator;
typedef CoordinateFuzzingOptsPointer = stdgo._internal.internal.fuzz.Fuzz_coordinatefuzzingoptspointer.CoordinateFuzzingOptsPointer;
class CoordinateFuzzingOpts_static_extension {

}
@:dox(hide) typedef T_crashErrorPointer = stdgo._internal.internal.fuzz.Fuzz_t_crasherrorpointer.T_crashErrorPointer;
@:dox(hide) class T_crashError_static_extension {
    static public function crashPath(_e:T_crashError):String {
        final _e = (_e : stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_crasherror.T_crashError>);
        return stdgo._internal.internal.fuzz.Fuzz_t_crasherror_static_extension.T_crashError_static_extension.crashPath(_e);
    }
    static public function unwrap(_e:T_crashError):stdgo.Error {
        final _e = (_e : stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_crasherror.T_crashError>);
        return stdgo._internal.internal.fuzz.Fuzz_t_crasherror_static_extension.T_crashError_static_extension.unwrap(_e);
    }
    static public function error(_e:T_crashError):String {
        final _e = (_e : stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_crasherror.T_crashError>);
        return stdgo._internal.internal.fuzz.Fuzz_t_crasherror_static_extension.T_crashError_static_extension.error(_e);
    }
}
@:dox(hide) typedef T_corpusPointer = stdgo._internal.internal.fuzz.Fuzz_t_corpuspointer.T_corpusPointer;
@:dox(hide) class T_corpus_static_extension {

}
typedef CorpusEntryPointer = stdgo._internal.internal.fuzz.Fuzz_corpusentrypointer.CorpusEntryPointer;
class CorpusEntry_static_extension {

}
@:dox(hide) typedef T_fuzzInputPointer = stdgo._internal.internal.fuzz.Fuzz_t_fuzzinputpointer.T_fuzzInputPointer;
@:dox(hide) class T_fuzzInput_static_extension {

}
@:dox(hide) typedef T_fuzzResultPointer = stdgo._internal.internal.fuzz.Fuzz_t_fuzzresultpointer.T_fuzzResultPointer;
@:dox(hide) class T_fuzzResult_static_extension {

}
@:dox(hide) typedef T_fuzzMinimizeInputPointer = stdgo._internal.internal.fuzz.Fuzz_t_fuzzminimizeinputpointer.T_fuzzMinimizeInputPointer;
@:dox(hide) class T_fuzzMinimizeInput_static_extension {

}
@:dox(hide) typedef T_coordinatorPointer = stdgo._internal.internal.fuzz.Fuzz_t_coordinatorpointer.T_coordinatorPointer;
@:dox(hide) class T_coordinator_static_extension {
    static public function _debugLogf(_c:T_coordinator, _format:String, _args:haxe.Rest<stdgo.AnyInterface>):Void {
        final _c = (_c : stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_coordinator.T_coordinator>);
        final _format = (_format : stdgo.GoString);
        stdgo._internal.internal.fuzz.Fuzz_t_coordinator_static_extension.T_coordinator_static_extension._debugLogf(_c, _format, ...[for (i in _args) i]);
    }
    static public function _readCache(_c:T_coordinator):stdgo.Error {
        final _c = (_c : stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_coordinator.T_coordinator>);
        return stdgo._internal.internal.fuzz.Fuzz_t_coordinator_static_extension.T_coordinator_static_extension._readCache(_c);
    }
    static public function _elapsed(_c:T_coordinator):stdgo._internal.time.Time_duration.Duration {
        final _c = (_c : stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_coordinator.T_coordinator>);
        return stdgo._internal.internal.fuzz.Fuzz_t_coordinator_static_extension.T_coordinator_static_extension._elapsed(_c);
    }
    static public function _canMinimize(_c:T_coordinator):Bool {
        final _c = (_c : stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_coordinator.T_coordinator>);
        return stdgo._internal.internal.fuzz.Fuzz_t_coordinator_static_extension.T_coordinator_static_extension._canMinimize(_c);
    }
    static public function _updateCoverage(_c:T_coordinator, _newCoverage:Array<std.UInt>):StdTypes.Int {
        final _c = (_c : stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_coordinator.T_coordinator>);
        final _newCoverage = ([for (i in _newCoverage) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.internal.fuzz.Fuzz_t_coordinator_static_extension.T_coordinator_static_extension._updateCoverage(_c, _newCoverage);
    }
    static public function _warmupRun(_c:T_coordinator):Bool {
        final _c = (_c : stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_coordinator.T_coordinator>);
        return stdgo._internal.internal.fuzz.Fuzz_t_coordinator_static_extension.T_coordinator_static_extension._warmupRun(_c);
    }
    static public function _sentMinimizeInput(_c:T_coordinator, _input:T_fuzzMinimizeInput):Void {
        final _c = (_c : stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_coordinator.T_coordinator>);
        stdgo._internal.internal.fuzz.Fuzz_t_coordinator_static_extension.T_coordinator_static_extension._sentMinimizeInput(_c, _input);
    }
    static public function _peekMinimizeInput(_c:T_coordinator):stdgo.Tuple<T_fuzzMinimizeInput, Bool> {
        final _c = (_c : stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_coordinator.T_coordinator>);
        return {
            final obj = stdgo._internal.internal.fuzz.Fuzz_t_coordinator_static_extension.T_coordinator_static_extension._peekMinimizeInput(_c);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _queueForMinimization(_c:T_coordinator, _result:T_fuzzResult, _keepCoverage:Array<std.UInt>):Void {
        final _c = (_c : stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_coordinator.T_coordinator>);
        final _keepCoverage = ([for (i in _keepCoverage) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        stdgo._internal.internal.fuzz.Fuzz_t_coordinator_static_extension.T_coordinator_static_extension._queueForMinimization(_c, _result, _keepCoverage);
    }
    static public function _refillInputQueue(_c:T_coordinator):Void {
        final _c = (_c : stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_coordinator.T_coordinator>);
        stdgo._internal.internal.fuzz.Fuzz_t_coordinator_static_extension.T_coordinator_static_extension._refillInputQueue(_c);
    }
    static public function _sentInput(_c:T_coordinator, _input:T_fuzzInput):Void {
        final _c = (_c : stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_coordinator.T_coordinator>);
        stdgo._internal.internal.fuzz.Fuzz_t_coordinator_static_extension.T_coordinator_static_extension._sentInput(_c, _input);
    }
    static public function _peekInput(_c:T_coordinator):stdgo.Tuple<T_fuzzInput, Bool> {
        final _c = (_c : stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_coordinator.T_coordinator>);
        return {
            final obj = stdgo._internal.internal.fuzz.Fuzz_t_coordinator_static_extension.T_coordinator_static_extension._peekInput(_c);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _logStats(_c:T_coordinator):Void {
        final _c = (_c : stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_coordinator.T_coordinator>);
        stdgo._internal.internal.fuzz.Fuzz_t_coordinator_static_extension.T_coordinator_static_extension._logStats(_c);
    }
    static public function _updateStats(_c:T_coordinator, _result:T_fuzzResult):Void {
        final _c = (_c : stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_coordinator.T_coordinator>);
        stdgo._internal.internal.fuzz.Fuzz_t_coordinator_static_extension.T_coordinator_static_extension._updateStats(_c, _result);
    }
    static public function _addCorpusEntries(_c:T_coordinator, _addToCache:Bool, _entries:haxe.Rest<stdgo._internal.internal.fuzz.Fuzz_corpusentry.CorpusEntry>):stdgo.Tuple<Bool, stdgo.Error> {
        final _c = (_c : stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_coordinator.T_coordinator>);
        return {
            final obj = stdgo._internal.internal.fuzz.Fuzz_t_coordinator_static_extension.T_coordinator_static_extension._addCorpusEntries(_c, _addToCache, ...[for (i in _entries) i]);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
typedef MalformedCorpusErrorPointer = stdgo._internal.internal.fuzz.Fuzz_malformedcorpuserrorpointer.MalformedCorpusErrorPointer;
class MalformedCorpusError_static_extension {
    static public function error(_e:MalformedCorpusError):String {
        final _e = (_e : stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_malformedcorpuserror.MalformedCorpusError>);
        return stdgo._internal.internal.fuzz.Fuzz_malformedcorpuserror_static_extension.MalformedCorpusError_static_extension.error(_e);
    }
}
@:dox(hide) typedef T_sharedMemPointer = stdgo._internal.internal.fuzz.Fuzz_t_sharedmempointer.T_sharedMemPointer;
@:dox(hide) class T_sharedMem_static_extension {
    static public function close(_m:T_sharedMem):stdgo.Error {
        final _m = (_m : stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_sharedmem.T_sharedMem>);
        return stdgo._internal.internal.fuzz.Fuzz_t_sharedmem_static_extension.T_sharedMem_static_extension.close(_m);
    }
    static public function _setValueLen(_m:T_sharedMem, _n:StdTypes.Int):Void {
        final _m = (_m : stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_sharedmem.T_sharedMem>);
        final _n = (_n : stdgo.GoInt);
        stdgo._internal.internal.fuzz.Fuzz_t_sharedmem_static_extension.T_sharedMem_static_extension._setValueLen(_m, _n);
    }
    static public function _setValue(_m:T_sharedMem, _b:Array<std.UInt>):Void {
        final _m = (_m : stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_sharedmem.T_sharedMem>);
        final _b = ([for (i in _b) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        stdgo._internal.internal.fuzz.Fuzz_t_sharedmem_static_extension.T_sharedMem_static_extension._setValue(_m, _b);
    }
    static public function _valueCopy(_m:T_sharedMem):Array<std.UInt> {
        final _m = (_m : stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_sharedmem.T_sharedMem>);
        return [for (i in stdgo._internal.internal.fuzz.Fuzz_t_sharedmem_static_extension.T_sharedMem_static_extension._valueCopy(_m)) i];
    }
    static public function _valueRef(_m:T_sharedMem):Array<std.UInt> {
        final _m = (_m : stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_sharedmem.T_sharedMem>);
        return [for (i in stdgo._internal.internal.fuzz.Fuzz_t_sharedmem_static_extension.T_sharedMem_static_extension._valueRef(_m)) i];
    }
    static public function _header(_m:T_sharedMem):T_sharedMemHeader {
        final _m = (_m : stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_sharedmem.T_sharedMem>);
        return stdgo._internal.internal.fuzz.Fuzz_t_sharedmem_static_extension.T_sharedMem_static_extension._header(_m);
    }
}
@:dox(hide) typedef T_sharedMemHeaderPointer = stdgo._internal.internal.fuzz.Fuzz_t_sharedmemheaderpointer.T_sharedMemHeaderPointer;
@:dox(hide) class T_sharedMemHeader_static_extension {

}
@:dox(hide) typedef T_mutatorPointer = stdgo._internal.internal.fuzz.Fuzz_t_mutatorpointer.T_mutatorPointer;
@:dox(hide) class T_mutator_static_extension {
    static public function _mutateBytes(_m:T_mutator, _ptrB:Array<std.UInt>):Void {
        final _m = (_m : stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_mutator.T_mutator>);
        final _ptrB = (_ptrB : stdgo.Ref<stdgo.Slice<stdgo.GoUInt8>>);
        stdgo._internal.internal.fuzz.Fuzz_t_mutator_static_extension.T_mutator_static_extension._mutateBytes(_m, _ptrB);
    }
    static public function _mutateFloat(_m:T_mutator, _v:StdTypes.Float, _maxValue:StdTypes.Float):StdTypes.Float {
        final _m = (_m : stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_mutator.T_mutator>);
        final _v = (_v : stdgo.GoFloat64);
        final _maxValue = (_maxValue : stdgo.GoFloat64);
        return stdgo._internal.internal.fuzz.Fuzz_t_mutator_static_extension.T_mutator_static_extension._mutateFloat(_m, _v, _maxValue);
    }
    static public function _mutateUInt(_m:T_mutator, _v:haxe.UInt64, _maxValue:haxe.UInt64):haxe.UInt64 {
        final _m = (_m : stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_mutator.T_mutator>);
        final _v = (_v : stdgo.GoUInt64);
        final _maxValue = (_maxValue : stdgo.GoUInt64);
        return stdgo._internal.internal.fuzz.Fuzz_t_mutator_static_extension.T_mutator_static_extension._mutateUInt(_m, _v, _maxValue);
    }
    static public function _mutateInt(_m:T_mutator, _v:haxe.Int64, _maxValue:haxe.Int64):haxe.Int64 {
        final _m = (_m : stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_mutator.T_mutator>);
        final _v = (_v : stdgo.GoInt64);
        final _maxValue = (_maxValue : stdgo.GoInt64);
        return stdgo._internal.internal.fuzz.Fuzz_t_mutator_static_extension.T_mutator_static_extension._mutateInt(_m, _v, _maxValue);
    }
    static public function _mutate(_m:T_mutator, _vals:Array<stdgo.AnyInterface>, _maxBytes:StdTypes.Int):Void {
        final _m = (_m : stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_mutator.T_mutator>);
        final _vals = ([for (i in _vals) (i : stdgo.AnyInterface)] : stdgo.Slice<stdgo.AnyInterface>);
        final _maxBytes = (_maxBytes : stdgo.GoInt);
        stdgo._internal.internal.fuzz.Fuzz_t_mutator_static_extension.T_mutator_static_extension._mutate(_m, _vals, _maxBytes);
    }
    static public function _chooseLen(_m:T_mutator, _n:StdTypes.Int):StdTypes.Int {
        final _m = (_m : stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_mutator.T_mutator>);
        final _n = (_n : stdgo.GoInt);
        return stdgo._internal.internal.fuzz.Fuzz_t_mutator_static_extension.T_mutator_static_extension._chooseLen(_m, _n);
    }
    static public function _randByteOrder(_m:T_mutator):stdgo._internal.encoding.binary.Binary_byteorder.ByteOrder {
        final _m = (_m : stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_mutator.T_mutator>);
        return stdgo._internal.internal.fuzz.Fuzz_t_mutator_static_extension.T_mutator_static_extension._randByteOrder(_m);
    }
    static public function _rand(_m:T_mutator, _n:StdTypes.Int):StdTypes.Int {
        final _m = (_m : stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_mutator.T_mutator>);
        final _n = (_n : stdgo.GoInt);
        return stdgo._internal.internal.fuzz.Fuzz_t_mutator_static_extension.T_mutator_static_extension._rand(_m, _n);
    }
}
@:dox(hide) typedef T_pcgRandPointer = stdgo._internal.internal.fuzz.Fuzz_t_pcgrandpointer.T_pcgRandPointer;
@:dox(hide) class T_pcgRand_static_extension {
    static public function _bool(_r:T_pcgRand):Bool {
        final _r = (_r : stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_pcgrand.T_pcgRand>);
        return stdgo._internal.internal.fuzz.Fuzz_t_pcgrand_static_extension.T_pcgRand_static_extension._bool(_r);
    }
    static public function _exp2(_r:T_pcgRand):StdTypes.Int {
        final _r = (_r : stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_pcgrand.T_pcgRand>);
        return stdgo._internal.internal.fuzz.Fuzz_t_pcgrand_static_extension.T_pcgRand_static_extension._exp2(_r);
    }
    static public function _uint32n(_r:T_pcgRand, _n:std.UInt):std.UInt {
        final _r = (_r : stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_pcgrand.T_pcgRand>);
        final _n = (_n : stdgo.GoUInt32);
        return stdgo._internal.internal.fuzz.Fuzz_t_pcgrand_static_extension.T_pcgRand_static_extension._uint32n(_r, _n);
    }
    static public function _intn(_r:T_pcgRand, _n:StdTypes.Int):StdTypes.Int {
        final _r = (_r : stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_pcgrand.T_pcgRand>);
        final _n = (_n : stdgo.GoInt);
        return stdgo._internal.internal.fuzz.Fuzz_t_pcgrand_static_extension.T_pcgRand_static_extension._intn(_r, _n);
    }
    static public function _uint32(_r:T_pcgRand):std.UInt {
        final _r = (_r : stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_pcgrand.T_pcgRand>);
        return stdgo._internal.internal.fuzz.Fuzz_t_pcgrand_static_extension.T_pcgRand_static_extension._uint32(_r);
    }
    static public function _restore(_r:T_pcgRand, _randState:haxe.UInt64, _randInc:haxe.UInt64):Void {
        final _r = (_r : stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_pcgrand.T_pcgRand>);
        final _randState = (_randState : stdgo.GoUInt64);
        final _randInc = (_randInc : stdgo.GoUInt64);
        stdgo._internal.internal.fuzz.Fuzz_t_pcgrand_static_extension.T_pcgRand_static_extension._restore(_r, _randState, _randInc);
    }
    static public function _save(_r:T_pcgRand, _randState:stdgo.Pointer<haxe.UInt64>, _randInc:stdgo.Pointer<haxe.UInt64>):Void {
        final _r = (_r : stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_pcgrand.T_pcgRand>);
        stdgo._internal.internal.fuzz.Fuzz_t_pcgrand_static_extension.T_pcgRand_static_extension._save(_r, _randState, _randInc);
    }
    static public function _step(_r:T_pcgRand):Void {
        final _r = (_r : stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_pcgrand.T_pcgRand>);
        stdgo._internal.internal.fuzz.Fuzz_t_pcgrand_static_extension.T_pcgRand_static_extension._step(_r);
    }
}
@:dox(hide) typedef T_noCopyPointer = stdgo._internal.internal.fuzz.Fuzz_t_nocopypointer.T_noCopyPointer;
@:dox(hide) class T_noCopy_static_extension {
    static public function _unlock(_:T_noCopy):Void {
        final _ = (_ : stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_nocopy.T_noCopy>);
        stdgo._internal.internal.fuzz.Fuzz_t_nocopy_static_extension.T_noCopy_static_extension._unlock(_);
    }
    static public function _lock(_:T_noCopy):Void {
        final _ = (_ : stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_nocopy.T_noCopy>);
        stdgo._internal.internal.fuzz.Fuzz_t_nocopy_static_extension.T_noCopy_static_extension._lock(_);
    }
}
@:dox(hide) typedef T_queuePointer = stdgo._internal.internal.fuzz.Fuzz_t_queuepointer.T_queuePointer;
@:dox(hide) class T_queue_static_extension {
    static public function _clear(_q:T_queue):Void {
        final _q = (_q : stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_queue.T_queue>);
        stdgo._internal.internal.fuzz.Fuzz_t_queue_static_extension.T_queue_static_extension._clear(_q);
    }
    static public function _peek(_q:T_queue):stdgo.Tuple<stdgo.AnyInterface, Bool> {
        final _q = (_q : stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_queue.T_queue>);
        return {
            final obj = stdgo._internal.internal.fuzz.Fuzz_t_queue_static_extension.T_queue_static_extension._peek(_q);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _dequeue(_q:T_queue):stdgo.Tuple<stdgo.AnyInterface, Bool> {
        final _q = (_q : stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_queue.T_queue>);
        return {
            final obj = stdgo._internal.internal.fuzz.Fuzz_t_queue_static_extension.T_queue_static_extension._dequeue(_q);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _enqueue(_q:T_queue, _e:stdgo.AnyInterface):Void {
        final _q = (_q : stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_queue.T_queue>);
        final _e = (_e : stdgo.AnyInterface);
        stdgo._internal.internal.fuzz.Fuzz_t_queue_static_extension.T_queue_static_extension._enqueue(_q, _e);
    }
    static public function _grow(_q:T_queue):Void {
        final _q = (_q : stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_queue.T_queue>);
        stdgo._internal.internal.fuzz.Fuzz_t_queue_static_extension.T_queue_static_extension._grow(_q);
    }
    static public function _cap(_q:T_queue):StdTypes.Int {
        final _q = (_q : stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_queue.T_queue>);
        return stdgo._internal.internal.fuzz.Fuzz_t_queue_static_extension.T_queue_static_extension._cap(_q);
    }
}
@:dox(hide) typedef T_sharedMemSysPointer = stdgo._internal.internal.fuzz.Fuzz_t_sharedmemsyspointer.T_sharedMemSysPointer;
@:dox(hide) class T_sharedMemSys_static_extension {

}
@:dox(hide) typedef T_workerPointer = stdgo._internal.internal.fuzz.Fuzz_t_workerpointer.T_workerPointer;
@:dox(hide) class T_worker_static_extension {
    static public function _stop(_w:T_worker):stdgo.Error {
        final _w = (_w : stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_worker.T_worker>);
        return stdgo._internal.internal.fuzz.Fuzz_t_worker_static_extension.T_worker_static_extension._stop(_w);
    }
    static public function _start(_w:T_worker):stdgo.Error {
        final _w = (_w : stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_worker.T_worker>);
        return stdgo._internal.internal.fuzz.Fuzz_t_worker_static_extension.T_worker_static_extension._start(_w);
    }
    static public function _startAndPing(_w:T_worker, _ctx:stdgo._internal.context.Context_context.Context):stdgo.Error {
        final _w = (_w : stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_worker.T_worker>);
        return stdgo._internal.internal.fuzz.Fuzz_t_worker_static_extension.T_worker_static_extension._startAndPing(_w, _ctx);
    }
    static public function _isRunning(_w:T_worker):Bool {
        final _w = (_w : stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_worker.T_worker>);
        return stdgo._internal.internal.fuzz.Fuzz_t_worker_static_extension.T_worker_static_extension._isRunning(_w);
    }
    static public function _minimize(_w:T_worker, _ctx:stdgo._internal.context.Context_context.Context, _input:T_fuzzMinimizeInput):stdgo.Tuple<T_fuzzResult, stdgo.Error> {
        final _w = (_w : stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_worker.T_worker>);
        return {
            final obj = stdgo._internal.internal.fuzz.Fuzz_t_worker_static_extension.T_worker_static_extension._minimize(_w, _ctx, _input);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _coordinate(_w:T_worker, _ctx:stdgo._internal.context.Context_context.Context):stdgo.Error {
        final _w = (_w : stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_worker.T_worker>);
        return stdgo._internal.internal.fuzz.Fuzz_t_worker_static_extension.T_worker_static_extension._coordinate(_w, _ctx);
    }
    static public function _cleanup(_w:T_worker):stdgo.Error {
        final _w = (_w : stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_worker.T_worker>);
        return stdgo._internal.internal.fuzz.Fuzz_t_worker_static_extension.T_worker_static_extension._cleanup(_w);
    }
}
@:dox(hide) typedef T_callPointer = stdgo._internal.internal.fuzz.Fuzz_t_callpointer.T_callPointer;
@:dox(hide) class T_call_static_extension {

}
@:dox(hide) typedef T_minimizeArgsPointer = stdgo._internal.internal.fuzz.Fuzz_t_minimizeargspointer.T_minimizeArgsPointer;
@:dox(hide) class T_minimizeArgs_static_extension {

}
@:dox(hide) typedef T_minimizeResponsePointer = stdgo._internal.internal.fuzz.Fuzz_t_minimizeresponsepointer.T_minimizeResponsePointer;
@:dox(hide) class T_minimizeResponse_static_extension {

}
@:dox(hide) typedef T_fuzzArgsPointer = stdgo._internal.internal.fuzz.Fuzz_t_fuzzargspointer.T_fuzzArgsPointer;
@:dox(hide) class T_fuzzArgs_static_extension {

}
@:dox(hide) typedef T_fuzzResponsePointer = stdgo._internal.internal.fuzz.Fuzz_t_fuzzresponsepointer.T_fuzzResponsePointer;
@:dox(hide) class T_fuzzResponse_static_extension {

}
@:dox(hide) typedef T_pingArgsPointer = stdgo._internal.internal.fuzz.Fuzz_t_pingargspointer.T_pingArgsPointer;
@:dox(hide) class T_pingArgs_static_extension {

}
@:dox(hide) typedef T_pingResponsePointer = stdgo._internal.internal.fuzz.Fuzz_t_pingresponsepointer.T_pingResponsePointer;
@:dox(hide) class T_pingResponse_static_extension {

}
@:dox(hide) typedef T_workerCommPointer = stdgo._internal.internal.fuzz.Fuzz_t_workercommpointer.T_workerCommPointer;
@:dox(hide) class T_workerComm_static_extension {

}
@:dox(hide) typedef T_workerServerPointer = stdgo._internal.internal.fuzz.Fuzz_t_workerserverpointer.T_workerServerPointer;
@:dox(hide) class T_workerServer_static_extension {
    static public function _ping(_ws:T_workerServer, _ctx:stdgo._internal.context.Context_context.Context, _args:T_pingArgs):T_pingResponse {
        final _ws = (_ws : stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_workerserver.T_workerServer>);
        return stdgo._internal.internal.fuzz.Fuzz_t_workerserver_static_extension.T_workerServer_static_extension._ping(_ws, _ctx, _args);
    }
    static public function _minimizeInput(_ws:T_workerServer, _ctx:stdgo._internal.context.Context_context.Context, _vals:Array<stdgo.AnyInterface>, _mem:T_sharedMem, _args:T_minimizeArgs):stdgo.Tuple<Bool, stdgo.Error> {
        final _ws = (_ws : stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_workerserver.T_workerServer>);
        final _vals = ([for (i in _vals) (i : stdgo.AnyInterface)] : stdgo.Slice<stdgo.AnyInterface>);
        final _mem = (_mem : stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_sharedmem.T_sharedMem>);
        return {
            final obj = stdgo._internal.internal.fuzz.Fuzz_t_workerserver_static_extension.T_workerServer_static_extension._minimizeInput(_ws, _ctx, _vals, _mem, _args);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _minimize(_ws:T_workerServer, _ctx:stdgo._internal.context.Context_context.Context, _args:T_minimizeArgs):T_minimizeResponse {
        final _ws = (_ws : stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_workerserver.T_workerServer>);
        return stdgo._internal.internal.fuzz.Fuzz_t_workerserver_static_extension.T_workerServer_static_extension._minimize(_ws, _ctx, _args);
    }
    static public function _fuzz(_ws:T_workerServer, _ctx:stdgo._internal.context.Context_context.Context, _args:T_fuzzArgs):T_fuzzResponse {
        final _ws = (_ws : stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_workerserver.T_workerServer>);
        return stdgo._internal.internal.fuzz.Fuzz_t_workerserver_static_extension.T_workerServer_static_extension._fuzz(_ws, _ctx, _args);
    }
    static public function _serve(_ws:T_workerServer, _ctx:stdgo._internal.context.Context_context.Context):stdgo.Error {
        final _ws = (_ws : stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_workerserver.T_workerServer>);
        return stdgo._internal.internal.fuzz.Fuzz_t_workerserver_static_extension.T_workerServer_static_extension._serve(_ws, _ctx);
    }
}
@:dox(hide) typedef T_workerClientPointer = stdgo._internal.internal.fuzz.Fuzz_t_workerclientpointer.T_workerClientPointer;
@:dox(hide) class T_workerClient_static_extension {
    static public function _callLocked(_wc:T_workerClient, _ctx:stdgo._internal.context.Context_context.Context, _c:T_call, _resp:stdgo.AnyInterface):stdgo.Error {
        final _wc = (_wc : stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_workerclient.T_workerClient>);
        final _resp = (_resp : stdgo.AnyInterface);
        return stdgo._internal.internal.fuzz.Fuzz_t_workerclient_static_extension.T_workerClient_static_extension._callLocked(_wc, _ctx, _c, _resp);
    }
    static public function _ping(_wc:T_workerClient, _ctx:stdgo._internal.context.Context_context.Context):stdgo.Error {
        final _wc = (_wc : stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_workerclient.T_workerClient>);
        return stdgo._internal.internal.fuzz.Fuzz_t_workerclient_static_extension.T_workerClient_static_extension._ping(_wc, _ctx);
    }
    static public function _fuzz(_wc:T_workerClient, _ctx:stdgo._internal.context.Context_context.Context, _entryIn:stdgo._internal.internal.fuzz.Fuzz_corpusentry.CorpusEntry, _args:T_fuzzArgs):stdgo.Tuple.Tuple4<stdgo._internal.internal.fuzz.Fuzz_corpusentry.CorpusEntry, T_fuzzResponse, Bool, stdgo.Error> {
        final _wc = (_wc : stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_workerclient.T_workerClient>);
        return {
            final obj = stdgo._internal.internal.fuzz.Fuzz_t_workerclient_static_extension.T_workerClient_static_extension._fuzz(_wc, _ctx, _entryIn, _args);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2, _3 : obj._3 };
        };
    }
    static public function _minimize(_wc:T_workerClient, _ctx:stdgo._internal.context.Context_context.Context, _entryIn:stdgo._internal.internal.fuzz.Fuzz_corpusentry.CorpusEntry, _args:T_minimizeArgs):stdgo.Tuple.Tuple3<stdgo._internal.internal.fuzz.Fuzz_corpusentry.CorpusEntry, T_minimizeResponse, stdgo.Error> {
        final _wc = (_wc : stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_workerclient.T_workerClient>);
        return {
            final obj = stdgo._internal.internal.fuzz.Fuzz_t_workerclient_static_extension.T_workerClient_static_extension._minimize(_wc, _ctx, _entryIn, _args);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2 };
        };
    }
    static public function close(_wc:T_workerClient):stdgo.Error {
        final _wc = (_wc : stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_workerclient.T_workerClient>);
        return stdgo._internal.internal.fuzz.Fuzz_t_workerclient_static_extension.T_workerClient_static_extension.close(_wc);
    }
}
@:dox(hide) typedef T_contextReaderPointer = stdgo._internal.internal.fuzz.Fuzz_t_contextreaderpointer.T_contextReaderPointer;
@:dox(hide) class T_contextReader_static_extension {
    static public function read(_cr:T_contextReader, _b:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _cr = (_cr : stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_contextreader.T_contextReader>);
        final _b = ([for (i in _b) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.internal.fuzz.Fuzz_t_contextreader_static_extension.T_contextReader_static_extension.read(_cr, _b);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
@:dox(hide) typedef T__struct_0PointerPointer = stdgo._internal.internal.fuzz.Fuzz_t__struct_0pointerpointer.T__struct_0PointerPointer;
@:dox(hide) class T__struct_0Pointer_static_extension {

}
@:dox(hide) typedef T_byteSliceMutatorPointer = stdgo._internal.internal.fuzz.Fuzz_t_byteslicemutatorpointer.T_byteSliceMutatorPointer;
@:dox(hide) class T_byteSliceMutator_static_extension {

}
/**
    * Package fuzz provides common fuzzing functionality for tests built with
    * "go test" and for programs that use fuzzing functionality in the testing
    * package.
**/
class Fuzz {
    /**
        * ResetCoverage sets all of the counters for each edge of the instrumented
        * source code to 0.
    **/
    static public inline function resetCoverage():Void {
        stdgo._internal.internal.fuzz.Fuzz_resetcoverage.resetCoverage();
    }
    /**
        * SnapshotCoverage copies the current counter values into coverageSnapshot,
        * preserving them for later inspection. SnapshotCoverage also rounds each
        * counter down to the nearest power of two. This lets the coordinator store
        * multiple values for each counter by OR'ing them together.
    **/
    static public inline function snapshotCoverage():Void {
        stdgo._internal.internal.fuzz.Fuzz_snapshotcoverage.snapshotCoverage();
    }
    /**
        * CoordinateFuzzing creates several worker processes and communicates with
        * them to test random inputs that could trigger crashes and expose bugs.
        * The worker processes run the same binary in the same directory with the
        * same environment variables as the coordinator process. Workers also run
        * with the same arguments as the coordinator, except with the -test.fuzzworker
        * flag prepended to the argument list.
        * 
        * If a crash occurs, the function will return an error containing information
        * about the crash, which can be reported to the user.
    **/
    static public inline function coordinateFuzzing(_ctx:stdgo._internal.context.Context_context.Context, _opts:CoordinateFuzzingOpts):stdgo.Error {
        return stdgo._internal.internal.fuzz.Fuzz_coordinatefuzzing.coordinateFuzzing(_ctx, _opts);
    }
    /**
        * ReadCorpus reads the corpus from the provided dir. The returned corpus
        * entries are guaranteed to match the given types. Any malformed files will
        * be saved in a MalformedCorpusError and returned, along with the most recent
        * error.
    **/
    static public inline function readCorpus(_dir:String, _types:Array<stdgo._internal.reflect.Reflect_type_.Type_>):stdgo.Tuple<Array<stdgo._internal.internal.fuzz.Fuzz_corpusentry.CorpusEntry>, stdgo.Error> {
        final _dir = (_dir : stdgo.GoString);
        final _types = ([for (i in _types) i] : stdgo.Slice<stdgo._internal.reflect.Reflect_type_.Type_>);
        return {
            final obj = stdgo._internal.internal.fuzz.Fuzz_readcorpus.readCorpus(_dir, _types);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    /**
        * CheckCorpus verifies that the types in vals match the expected types
        * provided.
    **/
    static public inline function checkCorpus(_vals:Array<stdgo.AnyInterface>, _types:Array<stdgo._internal.reflect.Reflect_type_.Type_>):stdgo.Error {
        final _vals = ([for (i in _vals) (i : stdgo.AnyInterface)] : stdgo.Slice<stdgo.AnyInterface>);
        final _types = ([for (i in _types) i] : stdgo.Slice<stdgo._internal.reflect.Reflect_type_.Type_>);
        return stdgo._internal.internal.fuzz.Fuzz_checkcorpus.checkCorpus(_vals, _types);
    }
    /**
        * RunFuzzWorker is called in a worker process to communicate with the
        * coordinator process in order to fuzz random inputs. RunFuzzWorker loops
        * until the coordinator tells it to stop.
        * 
        * fn is a wrapper on the fuzz function. It may return an error to indicate
        * a given input "crashed". The coordinator will also record a crasher if
        * the function times out or terminates the process.
        * 
        * RunFuzzWorker returns an error if it could not communicate with the
        * coordinator process.
    **/
    static public inline function runFuzzWorker(_ctx:stdgo._internal.context.Context_context.Context, _fn:stdgo._internal.internal.fuzz.Fuzz_corpusentry.CorpusEntry -> stdgo.Error):stdgo.Error {
        final _fn = _fn;
        return stdgo._internal.internal.fuzz.Fuzz_runfuzzworker.runFuzzWorker(_ctx, _fn);
    }
}
