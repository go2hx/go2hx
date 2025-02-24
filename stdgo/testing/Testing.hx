package stdgo.testing;
@:dox(hide) class T_fuzzCrashError_static_extension {
    static public function crashPath(t:stdgo._internal.testing.Testing_t_fuzzcrasherror.T_fuzzCrashError):String {
        return stdgo._internal.testing.Testing_t_fuzzcrasherror_static_extension.T_fuzzCrashError_static_extension.crashPath(t);
    }
    static public function unwrap(t:stdgo._internal.testing.Testing_t_fuzzcrasherror.T_fuzzCrashError):stdgo.Error {
        return stdgo._internal.testing.Testing_t_fuzzcrasherror_static_extension.T_fuzzCrashError_static_extension.unwrap(t);
    }
}
@:interface @:dox(hide) @:forward abstract T_fuzzCrashError(stdgo._internal.testing.Testing_t_fuzzcrasherror.T_fuzzCrashError) from stdgo._internal.testing.Testing_t_fuzzcrasherror.T_fuzzCrashError to stdgo._internal.testing.Testing_t_fuzzcrasherror.T_fuzzCrashError {
    @:from
    static function fromHaxeInterface(x:{ function unwrap():stdgo.Error; function crashPath():String; function error():String; }):T_fuzzCrashError {
        var __f__:Void -> stdgo.AnyInterface = null;
        final y:T_fuzzCrashError = { unwrap : () -> x.unwrap(), crashPath : () -> x.crashPath(), error : () -> x.error(), __underlying__ : () -> __f__() };
        __f__ = () -> stdgo.Go.toInterface(y);
        return y;
    }
}
@:dox(hide) class T_filterMatch_static_extension {
    static public function _verify(t:stdgo._internal.testing.Testing_t_filtermatch.T_filterMatch, _name:String, _matchString:(String, String) -> stdgo.Tuple<Bool, stdgo.Error>):stdgo.Error {
        final _name = (_name : stdgo.GoString);
        final _matchString = (_0, _1) -> _matchString((_0 : stdgo.GoString), (_1 : stdgo.GoString));
        return stdgo._internal.testing.Testing_t_filtermatch_static_extension.T_filterMatch_static_extension._verify(t, _name, _matchString);
    }
    static public function _matches(t:stdgo._internal.testing.Testing_t_filtermatch.T_filterMatch, _name:Array<String>, _matchString:(String, String) -> stdgo.Tuple<Bool, stdgo.Error>):stdgo.Tuple<Bool, Bool> {
        final _name = ([for (i in _name) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>);
        final _matchString = (_0, _1) -> _matchString((_0 : stdgo.GoString), (_1 : stdgo.GoString));
        return {
            final obj = stdgo._internal.testing.Testing_t_filtermatch_static_extension.T_filterMatch_static_extension._matches(t, _name, _matchString);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
@:interface @:dox(hide) @:forward abstract T_filterMatch(stdgo._internal.testing.Testing_t_filtermatch.T_filterMatch) from stdgo._internal.testing.Testing_t_filtermatch.T_filterMatch to stdgo._internal.testing.Testing_t_filtermatch.T_filterMatch {
    @:from
    static function fromHaxeInterface(x:{ function _matches(_name:Array<String>, _matchString:(String, String) -> stdgo.Tuple<Bool, stdgo.Error>):stdgo.Tuple<Bool, Bool>; function _verify(_name:String, _matchString:(String, String) -> stdgo.Tuple<Bool, stdgo.Error>):stdgo.Error; }):T_filterMatch {
        var __f__:Void -> stdgo.AnyInterface = null;
        final y:T_filterMatch = { _matches : (_0, _1) -> x._matches([for (i in _0) i], (_0, _1) -> _1(_0, _1)), _verify : (_0, _1) -> x._verify(_0, (_0, _1) -> _1(_0, _1)), __underlying__ : () -> __f__() };
        __f__ = () -> stdgo.Go.toInterface(y);
        return y;
    }
}
class TB_static_extension {
    static public function _private(t:stdgo._internal.testing.Testing_tb.TB):Void {
        stdgo._internal.testing.Testing_tb_static_extension.TB_static_extension._private(t);
    }
    static public function tempDir(t:stdgo._internal.testing.Testing_tb.TB):String {
        return stdgo._internal.testing.Testing_tb_static_extension.TB_static_extension.tempDir(t);
    }
    static public function skipped(t:stdgo._internal.testing.Testing_tb.TB):Bool {
        return stdgo._internal.testing.Testing_tb_static_extension.TB_static_extension.skipped(t);
    }
    static public function skipf(t:stdgo._internal.testing.Testing_tb.TB, _format:String, _args:haxe.Rest<stdgo.AnyInterface>):Void {
        final _format = (_format : stdgo.GoString);
        stdgo._internal.testing.Testing_tb_static_extension.TB_static_extension.skipf(t, _format, ...[for (i in _args) i]);
    }
    static public function skipNow(t:stdgo._internal.testing.Testing_tb.TB):Void {
        stdgo._internal.testing.Testing_tb_static_extension.TB_static_extension.skipNow(t);
    }
    static public function skip(t:stdgo._internal.testing.Testing_tb.TB, _args:haxe.Rest<stdgo.AnyInterface>):Void {
        stdgo._internal.testing.Testing_tb_static_extension.TB_static_extension.skip(t, ...[for (i in _args) i]);
    }
    static public function setenv(t:stdgo._internal.testing.Testing_tb.TB, _key:String, _value:String):Void {
        final _key = (_key : stdgo.GoString);
        final _value = (_value : stdgo.GoString);
        stdgo._internal.testing.Testing_tb_static_extension.TB_static_extension.setenv(t, _key, _value);
    }
    static public function name(t:stdgo._internal.testing.Testing_tb.TB):String {
        return stdgo._internal.testing.Testing_tb_static_extension.TB_static_extension.name(t);
    }
    static public function logf(t:stdgo._internal.testing.Testing_tb.TB, _format:String, _args:haxe.Rest<stdgo.AnyInterface>):Void {
        final _format = (_format : stdgo.GoString);
        stdgo._internal.testing.Testing_tb_static_extension.TB_static_extension.logf(t, _format, ...[for (i in _args) i]);
    }
    static public function log(t:stdgo._internal.testing.Testing_tb.TB, _args:haxe.Rest<stdgo.AnyInterface>):Void {
        stdgo._internal.testing.Testing_tb_static_extension.TB_static_extension.log(t, ...[for (i in _args) i]);
    }
    static public function helper(t:stdgo._internal.testing.Testing_tb.TB):Void {
        stdgo._internal.testing.Testing_tb_static_extension.TB_static_extension.helper(t);
    }
    static public function fatalf(t:stdgo._internal.testing.Testing_tb.TB, _format:String, _args:haxe.Rest<stdgo.AnyInterface>):Void {
        final _format = (_format : stdgo.GoString);
        stdgo._internal.testing.Testing_tb_static_extension.TB_static_extension.fatalf(t, _format, ...[for (i in _args) i]);
    }
    static public function fatal(t:stdgo._internal.testing.Testing_tb.TB, _args:haxe.Rest<stdgo.AnyInterface>):Void {
        stdgo._internal.testing.Testing_tb_static_extension.TB_static_extension.fatal(t, ...[for (i in _args) i]);
    }
    static public function failed(t:stdgo._internal.testing.Testing_tb.TB):Bool {
        return stdgo._internal.testing.Testing_tb_static_extension.TB_static_extension.failed(t);
    }
    static public function failNow(t:stdgo._internal.testing.Testing_tb.TB):Void {
        stdgo._internal.testing.Testing_tb_static_extension.TB_static_extension.failNow(t);
    }
    static public function fail(t:stdgo._internal.testing.Testing_tb.TB):Void {
        stdgo._internal.testing.Testing_tb_static_extension.TB_static_extension.fail(t);
    }
    static public function errorf(t:stdgo._internal.testing.Testing_tb.TB, _format:String, _args:haxe.Rest<stdgo.AnyInterface>):Void {
        final _format = (_format : stdgo.GoString);
        stdgo._internal.testing.Testing_tb_static_extension.TB_static_extension.errorf(t, _format, ...[for (i in _args) i]);
    }
    static public function error(t:stdgo._internal.testing.Testing_tb.TB, _args:haxe.Rest<stdgo.AnyInterface>):Void {
        stdgo._internal.testing.Testing_tb_static_extension.TB_static_extension.error(t, ...[for (i in _args) i]);
    }
    static public function cleanup(t:stdgo._internal.testing.Testing_tb.TB, _0:() -> Void):Void {
        final _0 = () -> _0();
        stdgo._internal.testing.Testing_tb_static_extension.TB_static_extension.cleanup(t, _0);
    }
}
@:interface @:forward abstract TB(stdgo._internal.testing.Testing_tb.TB) from stdgo._internal.testing.Testing_tb.TB to stdgo._internal.testing.Testing_tb.TB {
    @:from
    static function fromHaxeInterface(x:{ function cleanup(_0:() -> Void):Void; function error(_args:haxe.Rest<stdgo.AnyInterface>):Void; function errorf(_format:String, _args:haxe.Rest<stdgo.AnyInterface>):Void; function fail():Void; function failNow():Void; function failed():Bool; function fatal(_args:haxe.Rest<stdgo.AnyInterface>):Void; function fatalf(_format:String, _args:haxe.Rest<stdgo.AnyInterface>):Void; function helper():Void; function log(_args:haxe.Rest<stdgo.AnyInterface>):Void; function logf(_format:String, _args:haxe.Rest<stdgo.AnyInterface>):Void; function name():String; function setenv(_key:String, _value:String):Void; function skip(_args:haxe.Rest<stdgo.AnyInterface>):Void; function skipNow():Void; function skipf(_format:String, _args:haxe.Rest<stdgo.AnyInterface>):Void; function skipped():Bool; function tempDir():String; function _private():Void; }):TB {
        var __f__:Void -> stdgo.AnyInterface = null;
        final y:TB = { cleanup : _0 -> x.cleanup(() -> _0()), error : _0 -> x.error(_0), errorf : (_0, _1) -> x.errorf(_0, _1), fail : () -> x.fail(), failNow : () -> x.failNow(), failed : () -> x.failed(), fatal : _0 -> x.fatal(_0), fatalf : (_0, _1) -> x.fatalf(_0, _1), helper : () -> x.helper(), log : _0 -> x.log(_0), logf : (_0, _1) -> x.logf(_0, _1), name : () -> x.name(), setenv : (_0, _1) -> x.setenv(_0, _1), skip : _0 -> x.skip(_0), skipNow : () -> x.skipNow(), skipf : (_0, _1) -> x.skipf(_0, _1), skipped : () -> x.skipped(), tempDir : () -> x.tempDir(), _private : () -> x._private(), __underlying__ : () -> __f__() };
        __f__ = () -> stdgo.Go.toInterface(y);
        return y;
    }
}
@:dox(hide) class T_testDeps_static_extension {
    static public function snapshotCoverage(t:stdgo._internal.testing.Testing_t_testdeps.T_testDeps):Void {
        stdgo._internal.testing.Testing_t_testdeps_static_extension.T_testDeps_static_extension.snapshotCoverage(t);
    }
    static public function resetCoverage(t:stdgo._internal.testing.Testing_t_testdeps.T_testDeps):Void {
        stdgo._internal.testing.Testing_t_testdeps_static_extension.T_testDeps_static_extension.resetCoverage(t);
    }
    static public function checkCorpus(t:stdgo._internal.testing.Testing_t_testdeps.T_testDeps, _0:Array<stdgo.AnyInterface>, _1:Array<stdgo._internal.reflect.Reflect_type_.Type_>):stdgo.Error {
        final _0 = ([for (i in _0) (i : stdgo.AnyInterface)] : stdgo.Slice<stdgo.AnyInterface>);
        final _1 = ([for (i in _1) i] : stdgo.Slice<stdgo._internal.reflect.Reflect_type_.Type_>);
        return stdgo._internal.testing.Testing_t_testdeps_static_extension.T_testDeps_static_extension.checkCorpus(t, _0, _1);
    }
    static public function readCorpus(t:stdgo._internal.testing.Testing_t_testdeps.T_testDeps, _0:String, _1:Array<stdgo._internal.reflect.Reflect_type_.Type_>):stdgo.Tuple<Array<{ var parent : String; var path : String; var data : Array<std.UInt>; var values : Array<stdgo.AnyInterface>; var generation : StdTypes.Int; var isSeed : Bool; }>, stdgo.Error> {
        final _0 = (_0 : stdgo.GoString);
        final _1 = ([for (i in _1) i] : stdgo.Slice<stdgo._internal.reflect.Reflect_type_.Type_>);
        return {
            final obj = stdgo._internal.testing.Testing_t_testdeps_static_extension.T_testDeps_static_extension.readCorpus(t, _0, _1);
            { _0 : [for (i in obj._0) {
                final obj = i;
                { parent : obj.parent, path : obj.path, data : [for (i in obj.data) i], values : [for (i in obj.values) i], generation : obj.generation, isSeed : obj.isSeed };
            }], _1 : obj._1 };
        };
    }
    static public function runFuzzWorker(t:stdgo._internal.testing.Testing_t_testdeps.T_testDeps, _0:({ var parent : String; var path : String; var data : Array<std.UInt>; var values : Array<stdgo.AnyInterface>; var generation : StdTypes.Int; var isSeed : Bool; }) -> stdgo.Error):stdgo.Error {
        final _0 = _0 -> _0({
            final obj = _0;
            { parent : (obj.parent : stdgo.GoString), path : (obj.path : stdgo.GoString), data : ([for (i in obj.data) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>), values : ([for (i in obj.values) (i : stdgo.AnyInterface)] : stdgo.Slice<stdgo.AnyInterface>), generation : (obj.generation : stdgo.GoInt), isSeed : obj.isSeed };
        });
        return stdgo._internal.testing.Testing_t_testdeps_static_extension.T_testDeps_static_extension.runFuzzWorker(t, _0);
    }
    static public function coordinateFuzzing(t:stdgo._internal.testing.Testing_t_testdeps.T_testDeps, _0:stdgo._internal.time.Time_duration.Duration, _1:haxe.Int64, _2:stdgo._internal.time.Time_duration.Duration, _3:haxe.Int64, _4:StdTypes.Int, _5:Array<{ var parent : String; var path : String; var data : Array<std.UInt>; var values : Array<stdgo.AnyInterface>; var generation : StdTypes.Int; var isSeed : Bool; }>, _6:Array<stdgo._internal.reflect.Reflect_type_.Type_>, _7:String, _8:String):stdgo.Error {
        final _1 = (_1 : stdgo.GoInt64);
        final _3 = (_3 : stdgo.GoInt64);
        final _4 = (_4 : stdgo.GoInt);
        final _5 = ([for (i in _5) {
            final obj = i;
            { parent : (obj.parent : stdgo.GoString), path : (obj.path : stdgo.GoString), data : ([for (i in obj.data) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>), values : ([for (i in obj.values) (i : stdgo.AnyInterface)] : stdgo.Slice<stdgo.AnyInterface>), generation : (obj.generation : stdgo.GoInt), isSeed : obj.isSeed };
        }] : stdgo.Slice<{ var parent : stdgo.GoString; var path : stdgo.GoString; var data : stdgo.Slice<stdgo.GoUInt8>; var values : stdgo.Slice<stdgo.AnyInterface>; var generation : stdgo.GoInt; var isSeed : Bool; }>);
        final _6 = ([for (i in _6) i] : stdgo.Slice<stdgo._internal.reflect.Reflect_type_.Type_>);
        final _7 = (_7 : stdgo.GoString);
        final _8 = (_8 : stdgo.GoString);
        return stdgo._internal.testing.Testing_t_testdeps_static_extension.T_testDeps_static_extension.coordinateFuzzing(t, _0, _1, _2, _3, _4, _5, _6, _7, _8);
    }
    static public function writeProfileTo(t:stdgo._internal.testing.Testing_t_testdeps.T_testDeps, _0:String, _1:stdgo._internal.io.Io_writer.Writer, _2:StdTypes.Int):stdgo.Error {
        final _0 = (_0 : stdgo.GoString);
        final _2 = (_2 : stdgo.GoInt);
        return stdgo._internal.testing.Testing_t_testdeps_static_extension.T_testDeps_static_extension.writeProfileTo(t, _0, _1, _2);
    }
    static public function stopTestLog(t:stdgo._internal.testing.Testing_t_testdeps.T_testDeps):stdgo.Error {
        return stdgo._internal.testing.Testing_t_testdeps_static_extension.T_testDeps_static_extension.stopTestLog(t);
    }
    static public function startTestLog(t:stdgo._internal.testing.Testing_t_testdeps.T_testDeps, _0:stdgo._internal.io.Io_writer.Writer):Void {
        stdgo._internal.testing.Testing_t_testdeps_static_extension.T_testDeps_static_extension.startTestLog(t, _0);
    }
    static public function stopCPUProfile(t:stdgo._internal.testing.Testing_t_testdeps.T_testDeps):Void {
        stdgo._internal.testing.Testing_t_testdeps_static_extension.T_testDeps_static_extension.stopCPUProfile(t);
    }
    static public function startCPUProfile(t:stdgo._internal.testing.Testing_t_testdeps.T_testDeps, _0:stdgo._internal.io.Io_writer.Writer):stdgo.Error {
        return stdgo._internal.testing.Testing_t_testdeps_static_extension.T_testDeps_static_extension.startCPUProfile(t, _0);
    }
    static public function setPanicOnExit0(t:stdgo._internal.testing.Testing_t_testdeps.T_testDeps, _0:Bool):Void {
        stdgo._internal.testing.Testing_t_testdeps_static_extension.T_testDeps_static_extension.setPanicOnExit0(t, _0);
    }
    static public function matchString(t:stdgo._internal.testing.Testing_t_testdeps.T_testDeps, _pat:String, _str:String):stdgo.Tuple<Bool, stdgo.Error> {
        final _pat = (_pat : stdgo.GoString);
        final _str = (_str : stdgo.GoString);
        return {
            final obj = stdgo._internal.testing.Testing_t_testdeps_static_extension.T_testDeps_static_extension.matchString(t, _pat, _str);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function importPath(t:stdgo._internal.testing.Testing_t_testdeps.T_testDeps):String {
        return stdgo._internal.testing.Testing_t_testdeps_static_extension.T_testDeps_static_extension.importPath(t);
    }
}
@:interface @:dox(hide) @:forward abstract T_testDeps(stdgo._internal.testing.Testing_t_testdeps.T_testDeps) from stdgo._internal.testing.Testing_t_testdeps.T_testDeps to stdgo._internal.testing.Testing_t_testdeps.T_testDeps {
    @:from
    static function fromHaxeInterface(x:{ function importPath():String; function matchString(_pat:String, _str:String):stdgo.Tuple<Bool, stdgo.Error>; function setPanicOnExit0(_0:Bool):Void; function startCPUProfile(_0:stdgo._internal.io.Io_writer.Writer):stdgo.Error; function stopCPUProfile():Void; function startTestLog(_0:stdgo._internal.io.Io_writer.Writer):Void; function stopTestLog():stdgo.Error; function writeProfileTo(_0:String, _1:stdgo._internal.io.Io_writer.Writer, _2:StdTypes.Int):stdgo.Error; function coordinateFuzzing(_0:stdgo._internal.time.Time_duration.Duration, _1:haxe.Int64, _2:stdgo._internal.time.Time_duration.Duration, _3:haxe.Int64, _4:StdTypes.Int, _5:Array<{ var parent : String; var path : String; var data : Array<std.UInt>; var values : Array<stdgo.AnyInterface>; var generation : StdTypes.Int; var isSeed : Bool; }>, _6:Array<stdgo._internal.reflect.Reflect_type_.Type_>, _7:String, _8:String):stdgo.Error; function runFuzzWorker(_0:({ var parent : String; var path : String; var data : Array<std.UInt>; var values : Array<stdgo.AnyInterface>; var generation : StdTypes.Int; var isSeed : Bool; }) -> stdgo.Error):stdgo.Error; function readCorpus(_0:String, _1:Array<stdgo._internal.reflect.Reflect_type_.Type_>):stdgo.Tuple<Array<{ var parent : String; var path : String; var data : Array<std.UInt>; var values : Array<stdgo.AnyInterface>; var generation : StdTypes.Int; var isSeed : Bool; }>, stdgo.Error>; function checkCorpus(_0:Array<stdgo.AnyInterface>, _1:Array<stdgo._internal.reflect.Reflect_type_.Type_>):stdgo.Error; function resetCoverage():Void; function snapshotCoverage():Void; }):T_testDeps {
        var __f__:Void -> stdgo.AnyInterface = null;
        final y:T_testDeps = { importPath : () -> x.importPath(), matchString : (_0, _1) -> x.matchString(_0, _1), setPanicOnExit0 : _0 -> x.setPanicOnExit0(_0), startCPUProfile : _0 -> x.startCPUProfile(_0), stopCPUProfile : () -> x.stopCPUProfile(), startTestLog : _0 -> x.startTestLog(_0), stopTestLog : () -> x.stopTestLog(), writeProfileTo : (_0, _1, _2) -> x.writeProfileTo(_0, _1, _2), coordinateFuzzing : (_0, _1, _2, _3, _4, _5, _6, _7, _8) -> x.coordinateFuzzing(_0, _1, _2, _3, _4, [for (i in _5) {
            final obj = i;
            { parent : obj.parent, path : obj.path, data : [for (i in obj.data) i], values : [for (i in obj.values) i], generation : obj.generation, isSeed : obj.isSeed };
        }], [for (i in _6) i], _7, _8), runFuzzWorker : _0 -> x.runFuzzWorker(_0 -> _0({
            final obj = _0;
            { parent : obj.parent, path : obj.path, data : [for (i in obj.data) i], values : [for (i in obj.values) i], generation : obj.generation, isSeed : obj.isSeed };
        })), readCorpus : (_0, _1) -> x.readCorpus(_0, [for (i in _1) i]), checkCorpus : (_0, _1) -> x.checkCorpus([for (i in _0) i], [for (i in _1) i]), resetCoverage : () -> x.resetCoverage(), snapshotCoverage : () -> x.snapshotCoverage(), __underlying__ : () -> __f__() };
        __f__ = () -> stdgo.Go.toInterface(y);
        return y;
    }
}
@:structInit @:using(stdgo.testing.Testing.T_durationOrCountFlag_static_extension) @:dox(hide) abstract T_durationOrCountFlag(stdgo._internal.testing.Testing_t_durationorcountflag.T_durationOrCountFlag) from stdgo._internal.testing.Testing_t_durationorcountflag.T_durationOrCountFlag to stdgo._internal.testing.Testing_t_durationorcountflag.T_durationOrCountFlag {
    public var _d(get, set) : stdgo._internal.time.Time_duration.Duration;
    function get__d():stdgo._internal.time.Time_duration.Duration return this._d;
    function set__d(v:stdgo._internal.time.Time_duration.Duration):stdgo._internal.time.Time_duration.Duration {
        this._d = v;
        return v;
    }
    public var _n(get, set) : StdTypes.Int;
    function get__n():StdTypes.Int return this._n;
    function set__n(v:StdTypes.Int):StdTypes.Int {
        this._n = (v : stdgo.GoInt);
        return v;
    }
    public var _allowZero(get, set) : Bool;
    function get__allowZero():Bool return this._allowZero;
    function set__allowZero(v:Bool):Bool {
        this._allowZero = v;
        return v;
    }
    public function new(?_d:stdgo._internal.time.Time_duration.Duration, ?_n:StdTypes.Int, ?_allowZero:Bool) this = new stdgo._internal.testing.Testing_t_durationorcountflag.T_durationOrCountFlag(_d, (_n : stdgo.GoInt), _allowZero);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.testing.Testing.InternalBenchmark_static_extension) abstract InternalBenchmark(stdgo._internal.testing.Testing_internalbenchmark.InternalBenchmark) from stdgo._internal.testing.Testing_internalbenchmark.InternalBenchmark to stdgo._internal.testing.Testing_internalbenchmark.InternalBenchmark {
    public var name(get, set) : String;
    function get_name():String return this.name;
    function set_name(v:String):String {
        this.name = (v : stdgo.GoString);
        return v;
    }
    public var f(get, set) : B -> Void;
    function get_f():B -> Void return _0 -> this.f(_0);
    function set_f(v:B -> Void):B -> Void {
        this.f = _0 -> v((_0 : stdgo.Ref<stdgo._internal.testing.Testing_b.B>));
        return v;
    }
    public function new(?name:String, ?f:B -> Void) this = new stdgo._internal.testing.Testing_internalbenchmark.InternalBenchmark((name : stdgo.GoString), _0 -> f((_0 : stdgo.Ref<stdgo._internal.testing.Testing_b.B>)));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.testing.Testing.B_static_extension) abstract B(stdgo._internal.testing.Testing_b.B) from stdgo._internal.testing.Testing_b.B to stdgo._internal.testing.Testing_b.B {
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
        this._context = (v : stdgo.Ref<stdgo._internal.testing.Testing_t_benchcontext.T_benchContext>);
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
    public var _previousDuration(get, set) : stdgo._internal.time.Time_duration.Duration;
    function get__previousDuration():stdgo._internal.time.Time_duration.Duration return this._previousDuration;
    function set__previousDuration(v:stdgo._internal.time.Time_duration.Duration):stdgo._internal.time.Time_duration.Duration {
        this._previousDuration = v;
        return v;
    }
    public var _benchFunc(get, set) : B -> Void;
    function get__benchFunc():B -> Void return _0 -> this._benchFunc(_0);
    function set__benchFunc(v:B -> Void):B -> Void {
        this._benchFunc = _0 -> v((_0 : stdgo.Ref<stdgo._internal.testing.Testing_b.B>));
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
    public var _extra(get, set) : Map<String, StdTypes.Float>;
    function get__extra():Map<String, StdTypes.Float> return {
        final __obj__:Map<String, StdTypes.Float> = [];
        for (key => value in this._extra) {
            __obj__[key] = value;
        };
        __obj__;
    };
    function set__extra(v:Map<String, StdTypes.Float>):Map<String, StdTypes.Float> {
        this._extra = {
            final __obj__ = new stdgo.GoMap<stdgo.GoString, stdgo.GoFloat64>();
            for (key => value in v) {
                __obj__[(key : stdgo.GoString)] = (value : stdgo.GoFloat64);
            };
            __obj__;
        };
        return v;
    }
    public function new(?_common:T_common, ?_importPath:String, ?_context:T_benchContext, ?n:StdTypes.Int, ?_previousN:StdTypes.Int, ?_previousDuration:stdgo._internal.time.Time_duration.Duration, ?_benchFunc:B -> Void, ?_benchTime:T_durationOrCountFlag, ?_bytes:haxe.Int64, ?_missingBytes:Bool, ?_timerOn:Bool, ?_showAllocResult:Bool, ?_result:BenchmarkResult, ?_parallelism:StdTypes.Int, ?_startAllocs:haxe.UInt64, ?_startBytes:haxe.UInt64, ?_netAllocs:haxe.UInt64, ?_netBytes:haxe.UInt64, ?_extra:Map<String, StdTypes.Float>) this = new stdgo._internal.testing.Testing_b.B(
_common,
(_importPath : stdgo.GoString),
(_context : stdgo.Ref<stdgo._internal.testing.Testing_t_benchcontext.T_benchContext>),
(n : stdgo.GoInt),
(_previousN : stdgo.GoInt),
_previousDuration,
_0 -> _benchFunc((_0 : stdgo.Ref<stdgo._internal.testing.Testing_b.B>)),
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
{
        final __obj__ = new stdgo.GoMap<stdgo.GoString, stdgo.GoFloat64>();
        for (key => value in _extra) {
            __obj__[(key : stdgo.GoString)] = (value : stdgo.GoFloat64);
        };
        __obj__;
    });
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.testing.Testing.BenchmarkResult_static_extension) abstract BenchmarkResult(stdgo._internal.testing.Testing_benchmarkresult.BenchmarkResult) from stdgo._internal.testing.Testing_benchmarkresult.BenchmarkResult to stdgo._internal.testing.Testing_benchmarkresult.BenchmarkResult {
    public var n(get, set) : StdTypes.Int;
    function get_n():StdTypes.Int return this.n;
    function set_n(v:StdTypes.Int):StdTypes.Int {
        this.n = (v : stdgo.GoInt);
        return v;
    }
    public var t(get, set) : stdgo._internal.time.Time_duration.Duration;
    function get_t():stdgo._internal.time.Time_duration.Duration return this.t;
    function set_t(v:stdgo._internal.time.Time_duration.Duration):stdgo._internal.time.Time_duration.Duration {
        this.t = v;
        return v;
    }
    public var bytes(get, set) : haxe.Int64;
    function get_bytes():haxe.Int64 return this.bytes;
    function set_bytes(v:haxe.Int64):haxe.Int64 {
        this.bytes = (v : stdgo.GoInt64);
        return v;
    }
    public var memAllocs(get, set) : haxe.UInt64;
    function get_memAllocs():haxe.UInt64 return this.memAllocs;
    function set_memAllocs(v:haxe.UInt64):haxe.UInt64 {
        this.memAllocs = (v : stdgo.GoUInt64);
        return v;
    }
    public var memBytes(get, set) : haxe.UInt64;
    function get_memBytes():haxe.UInt64 return this.memBytes;
    function set_memBytes(v:haxe.UInt64):haxe.UInt64 {
        this.memBytes = (v : stdgo.GoUInt64);
        return v;
    }
    public var extra(get, set) : Map<String, StdTypes.Float>;
    function get_extra():Map<String, StdTypes.Float> return {
        final __obj__:Map<String, StdTypes.Float> = [];
        for (key => value in this.extra) {
            __obj__[key] = value;
        };
        __obj__;
    };
    function set_extra(v:Map<String, StdTypes.Float>):Map<String, StdTypes.Float> {
        this.extra = {
            final __obj__ = new stdgo.GoMap<stdgo.GoString, stdgo.GoFloat64>();
            for (key => value in v) {
                __obj__[(key : stdgo.GoString)] = (value : stdgo.GoFloat64);
            };
            __obj__;
        };
        return v;
    }
    public function new(?n:StdTypes.Int, ?t:stdgo._internal.time.Time_duration.Duration, ?bytes:haxe.Int64, ?memAllocs:haxe.UInt64, ?memBytes:haxe.UInt64, ?extra:Map<String, StdTypes.Float>) this = new stdgo._internal.testing.Testing_benchmarkresult.BenchmarkResult((n : stdgo.GoInt), t, (bytes : stdgo.GoInt64), (memAllocs : stdgo.GoUInt64), (memBytes : stdgo.GoUInt64), {
        final __obj__ = new stdgo.GoMap<stdgo.GoString, stdgo.GoFloat64>();
        for (key => value in extra) {
            __obj__[(key : stdgo.GoString)] = (value : stdgo.GoFloat64);
        };
        __obj__;
    });
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.testing.Testing.T_benchContext_static_extension) @:dox(hide) abstract T_benchContext(stdgo._internal.testing.Testing_t_benchcontext.T_benchContext) from stdgo._internal.testing.Testing_t_benchcontext.T_benchContext to stdgo._internal.testing.Testing_t_benchcontext.T_benchContext {
    public var _match(get, set) : T_matcher;
    function get__match():T_matcher return this._match;
    function set__match(v:T_matcher):T_matcher {
        this._match = (v : stdgo.Ref<stdgo._internal.testing.Testing_t_matcher.T_matcher>);
        return v;
    }
    public var _maxLen(get, set) : StdTypes.Int;
    function get__maxLen():StdTypes.Int return this._maxLen;
    function set__maxLen(v:StdTypes.Int):StdTypes.Int {
        this._maxLen = (v : stdgo.GoInt);
        return v;
    }
    public var _extLen(get, set) : StdTypes.Int;
    function get__extLen():StdTypes.Int return this._extLen;
    function set__extLen(v:StdTypes.Int):StdTypes.Int {
        this._extLen = (v : stdgo.GoInt);
        return v;
    }
    public function new(?_match:T_matcher, ?_maxLen:StdTypes.Int, ?_extLen:StdTypes.Int) this = new stdgo._internal.testing.Testing_t_benchcontext.T_benchContext((_match : stdgo.Ref<stdgo._internal.testing.Testing_t_matcher.T_matcher>), (_maxLen : stdgo.GoInt), (_extLen : stdgo.GoInt));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.testing.Testing.PB_static_extension) abstract PB(stdgo._internal.testing.Testing_pb.PB) from stdgo._internal.testing.Testing_pb.PB to stdgo._internal.testing.Testing_pb.PB {
    public var _globalN(get, set) : stdgo.Pointer<haxe.UInt64>;
    function get__globalN():stdgo.Pointer<haxe.UInt64> return this._globalN;
    function set__globalN(v:stdgo.Pointer<haxe.UInt64>):stdgo.Pointer<haxe.UInt64> {
        this._globalN = v;
        return v;
    }
    public var _grain(get, set) : haxe.UInt64;
    function get__grain():haxe.UInt64 return this._grain;
    function set__grain(v:haxe.UInt64):haxe.UInt64 {
        this._grain = (v : stdgo.GoUInt64);
        return v;
    }
    public var _cache(get, set) : haxe.UInt64;
    function get__cache():haxe.UInt64 return this._cache;
    function set__cache(v:haxe.UInt64):haxe.UInt64 {
        this._cache = (v : stdgo.GoUInt64);
        return v;
    }
    public var _bN(get, set) : haxe.UInt64;
    function get__bN():haxe.UInt64 return this._bN;
    function set__bN(v:haxe.UInt64):haxe.UInt64 {
        this._bN = (v : stdgo.GoUInt64);
        return v;
    }
    public function new(?_globalN:stdgo.Pointer<haxe.UInt64>, ?_grain:haxe.UInt64, ?_cache:haxe.UInt64, ?_bN:haxe.UInt64) this = new stdgo._internal.testing.Testing_pb.PB(_globalN, (_grain : stdgo.GoUInt64), (_cache : stdgo.GoUInt64), (_bN : stdgo.GoUInt64));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.testing.Testing.T_discard_static_extension) @:dox(hide) abstract T_discard(stdgo._internal.testing.Testing_t_discard.T_discard) from stdgo._internal.testing.Testing_t_discard.T_discard to stdgo._internal.testing.Testing_t_discard.T_discard {
    public function new() this = new stdgo._internal.testing.Testing_t_discard.T_discard();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.testing.Testing.CoverBlock_static_extension) abstract CoverBlock(stdgo._internal.testing.Testing_coverblock.CoverBlock) from stdgo._internal.testing.Testing_coverblock.CoverBlock to stdgo._internal.testing.Testing_coverblock.CoverBlock {
    public var line0(get, set) : std.UInt;
    function get_line0():std.UInt return this.line0;
    function set_line0(v:std.UInt):std.UInt {
        this.line0 = (v : stdgo.GoUInt32);
        return v;
    }
    public var col0(get, set) : std.UInt;
    function get_col0():std.UInt return this.col0;
    function set_col0(v:std.UInt):std.UInt {
        this.col0 = (v : stdgo.GoUInt16);
        return v;
    }
    public var line1(get, set) : std.UInt;
    function get_line1():std.UInt return this.line1;
    function set_line1(v:std.UInt):std.UInt {
        this.line1 = (v : stdgo.GoUInt32);
        return v;
    }
    public var col1(get, set) : std.UInt;
    function get_col1():std.UInt return this.col1;
    function set_col1(v:std.UInt):std.UInt {
        this.col1 = (v : stdgo.GoUInt16);
        return v;
    }
    public var stmts(get, set) : std.UInt;
    function get_stmts():std.UInt return this.stmts;
    function set_stmts(v:std.UInt):std.UInt {
        this.stmts = (v : stdgo.GoUInt16);
        return v;
    }
    public function new(?line0:std.UInt, ?col0:std.UInt, ?line1:std.UInt, ?col1:std.UInt, ?stmts:std.UInt) this = new stdgo._internal.testing.Testing_coverblock.CoverBlock((line0 : stdgo.GoUInt32), (col0 : stdgo.GoUInt16), (line1 : stdgo.GoUInt32), (col1 : stdgo.GoUInt16), (stmts : stdgo.GoUInt16));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.testing.Testing.Cover_static_extension) abstract Cover(stdgo._internal.testing.Testing_cover.Cover) from stdgo._internal.testing.Testing_cover.Cover to stdgo._internal.testing.Testing_cover.Cover {
    public var mode(get, set) : String;
    function get_mode():String return this.mode;
    function set_mode(v:String):String {
        this.mode = (v : stdgo.GoString);
        return v;
    }
    public var counters(get, set) : Map<String, Array<std.UInt>>;
    function get_counters():Map<String, Array<std.UInt>> return {
        final __obj__:Map<String, Array<std.UInt>> = [];
        for (key => value in this.counters) {
            __obj__[key] = [for (i in value) i];
        };
        __obj__;
    };
    function set_counters(v:Map<String, Array<std.UInt>>):Map<String, Array<std.UInt>> {
        this.counters = {
            final __obj__ = new stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo.GoUInt32>>();
            for (key => value in v) {
                __obj__[(key : stdgo.GoString)] = ([for (i in value) (i : stdgo.GoUInt32)] : stdgo.Slice<stdgo.GoUInt32>);
            };
            __obj__;
        };
        return v;
    }
    public var blocks(get, set) : Map<String, Array<CoverBlock>>;
    function get_blocks():Map<String, Array<CoverBlock>> return {
        final __obj__:Map<String, Array<CoverBlock>> = [];
        for (key => value in this.blocks) {
            __obj__[key] = [for (i in value) i];
        };
        __obj__;
    };
    function set_blocks(v:Map<String, Array<CoverBlock>>):Map<String, Array<CoverBlock>> {
        this.blocks = {
            final __obj__ = new stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo._internal.testing.Testing_coverblock.CoverBlock>>();
            for (key => value in v) {
                __obj__[(key : stdgo.GoString)] = ([for (i in value) i] : stdgo.Slice<stdgo._internal.testing.Testing_coverblock.CoverBlock>);
            };
            __obj__;
        };
        return v;
    }
    public var coveredPackages(get, set) : String;
    function get_coveredPackages():String return this.coveredPackages;
    function set_coveredPackages(v:String):String {
        this.coveredPackages = (v : stdgo.GoString);
        return v;
    }
    public function new(?mode:String, ?counters:Map<String, Array<std.UInt>>, ?blocks:Map<String, Array<CoverBlock>>, ?coveredPackages:String) this = new stdgo._internal.testing.Testing_cover.Cover((mode : stdgo.GoString), {
        final __obj__ = new stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo.GoUInt32>>();
        for (key => value in counters) {
            __obj__[(key : stdgo.GoString)] = ([for (i in value) (i : stdgo.GoUInt32)] : stdgo.Slice<stdgo.GoUInt32>);
        };
        __obj__;
    }, {
        final __obj__ = new stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo._internal.testing.Testing_coverblock.CoverBlock>>();
        for (key => value in blocks) {
            __obj__[(key : stdgo.GoString)] = ([for (i in value) i] : stdgo.Slice<stdgo._internal.testing.Testing_coverblock.CoverBlock>);
        };
        __obj__;
    }, (coveredPackages : stdgo.GoString));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.testing.Testing.InternalExample_static_extension) abstract InternalExample(stdgo._internal.testing.Testing_internalexample.InternalExample) from stdgo._internal.testing.Testing_internalexample.InternalExample to stdgo._internal.testing.Testing_internalexample.InternalExample {
    public var name(get, set) : String;
    function get_name():String return this.name;
    function set_name(v:String):String {
        this.name = (v : stdgo.GoString);
        return v;
    }
    public var f(get, set) : () -> Void;
    function get_f():() -> Void return () -> this.f();
    function set_f(v:() -> Void):() -> Void {
        this.f = () -> v();
        return v;
    }
    public var output(get, set) : String;
    function get_output():String return this.output;
    function set_output(v:String):String {
        this.output = (v : stdgo.GoString);
        return v;
    }
    public var unordered(get, set) : Bool;
    function get_unordered():Bool return this.unordered;
    function set_unordered(v:Bool):Bool {
        this.unordered = v;
        return v;
    }
    public function new(?name:String, ?f:() -> Void, ?output:String, ?unordered:Bool) this = new stdgo._internal.testing.Testing_internalexample.InternalExample((name : stdgo.GoString), () -> f(), (output : stdgo.GoString), unordered);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.testing.Testing.InternalFuzzTarget_static_extension) abstract InternalFuzzTarget(stdgo._internal.testing.Testing_internalfuzztarget.InternalFuzzTarget) from stdgo._internal.testing.Testing_internalfuzztarget.InternalFuzzTarget to stdgo._internal.testing.Testing_internalfuzztarget.InternalFuzzTarget {
    public var name(get, set) : String;
    function get_name():String return this.name;
    function set_name(v:String):String {
        this.name = (v : stdgo.GoString);
        return v;
    }
    public var fn(get, set) : F -> Void;
    function get_fn():F -> Void return _0 -> this.fn(_0);
    function set_fn(v:F -> Void):F -> Void {
        this.fn = _0 -> v((_0 : stdgo.Ref<stdgo._internal.testing.Testing_f.F>));
        return v;
    }
    public function new(?name:String, ?fn:F -> Void) this = new stdgo._internal.testing.Testing_internalfuzztarget.InternalFuzzTarget((name : stdgo.GoString), _0 -> fn((_0 : stdgo.Ref<stdgo._internal.testing.Testing_f.F>)));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.testing.Testing.F_static_extension) abstract F(stdgo._internal.testing.Testing_f.F) from stdgo._internal.testing.Testing_f.F to stdgo._internal.testing.Testing_f.F {
    public var _common(get, set) : T_common;
    function get__common():T_common return this._common;
    function set__common(v:T_common):T_common {
        this._common = v;
        return v;
    }
    public var _fuzzContext(get, set) : T_fuzzContext;
    function get__fuzzContext():T_fuzzContext return this._fuzzContext;
    function set__fuzzContext(v:T_fuzzContext):T_fuzzContext {
        this._fuzzContext = (v : stdgo.Ref<stdgo._internal.testing.Testing_t_fuzzcontext.T_fuzzContext>);
        return v;
    }
    public var _testContext(get, set) : T_testContext;
    function get__testContext():T_testContext return this._testContext;
    function set__testContext(v:T_testContext):T_testContext {
        this._testContext = (v : stdgo.Ref<stdgo._internal.testing.Testing_t_testcontext.T_testContext>);
        return v;
    }
    public var _inFuzzFn(get, set) : Bool;
    function get__inFuzzFn():Bool return this._inFuzzFn;
    function set__inFuzzFn(v:Bool):Bool {
        this._inFuzzFn = v;
        return v;
    }
    public var _corpus(get, set) : Array<{ var parent : String; var path : String; var data : Array<std.UInt>; var values : Array<stdgo.AnyInterface>; var generation : StdTypes.Int; var isSeed : Bool; }>;
    function get__corpus():Array<{ var parent : String; var path : String; var data : Array<std.UInt>; var values : Array<stdgo.AnyInterface>; var generation : StdTypes.Int; var isSeed : Bool; }> return [for (i in this._corpus) {
        final obj = i;
        { parent : obj.parent, path : obj.path, data : [for (i in obj.data) i], values : [for (i in obj.values) i], generation : obj.generation, isSeed : obj.isSeed };
    }];
    function set__corpus(v:Array<{ var parent : String; var path : String; var data : Array<std.UInt>; var values : Array<stdgo.AnyInterface>; var generation : StdTypes.Int; var isSeed : Bool; }>):Array<{ var parent : String; var path : String; var data : Array<std.UInt>; var values : Array<stdgo.AnyInterface>; var generation : StdTypes.Int; var isSeed : Bool; }> {
        this._corpus = ([for (i in v) {
            final obj = i;
            { parent : (obj.parent : stdgo.GoString), path : (obj.path : stdgo.GoString), data : ([for (i in obj.data) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>), values : ([for (i in obj.values) (i : stdgo.AnyInterface)] : stdgo.Slice<stdgo.AnyInterface>), generation : (obj.generation : stdgo.GoInt), isSeed : obj.isSeed };
        }] : stdgo.Slice<{ var parent : stdgo.GoString; var path : stdgo.GoString; var data : stdgo.Slice<stdgo.GoUInt8>; var values : stdgo.Slice<stdgo.AnyInterface>; var generation : stdgo.GoInt; var isSeed : Bool; }>);
        return v;
    }
    public var _result(get, set) : T_fuzzResult;
    function get__result():T_fuzzResult return this._result;
    function set__result(v:T_fuzzResult):T_fuzzResult {
        this._result = v;
        return v;
    }
    public var _fuzzCalled(get, set) : Bool;
    function get__fuzzCalled():Bool return this._fuzzCalled;
    function set__fuzzCalled(v:Bool):Bool {
        this._fuzzCalled = v;
        return v;
    }
    public function new(?_common:T_common, ?_fuzzContext:T_fuzzContext, ?_testContext:T_testContext, ?_inFuzzFn:Bool, ?_corpus:Array<{ var parent : String; var path : String; var data : Array<std.UInt>; var values : Array<stdgo.AnyInterface>; var generation : StdTypes.Int; var isSeed : Bool; }>, ?_result:T_fuzzResult, ?_fuzzCalled:Bool) this = new stdgo._internal.testing.Testing_f.F(_common, (_fuzzContext : stdgo.Ref<stdgo._internal.testing.Testing_t_fuzzcontext.T_fuzzContext>), (_testContext : stdgo.Ref<stdgo._internal.testing.Testing_t_testcontext.T_testContext>), _inFuzzFn, ([for (i in _corpus) {
        final obj = i;
        { parent : (obj.parent : stdgo.GoString), path : (obj.path : stdgo.GoString), data : ([for (i in obj.data) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>), values : ([for (i in obj.values) (i : stdgo.AnyInterface)] : stdgo.Slice<stdgo.AnyInterface>), generation : (obj.generation : stdgo.GoInt), isSeed : obj.isSeed };
    }] : stdgo.Slice<{ var parent : stdgo.GoString; var path : stdgo.GoString; var data : stdgo.Slice<stdgo.GoUInt8>; var values : stdgo.Slice<stdgo.AnyInterface>; var generation : stdgo.GoInt; var isSeed : Bool; }>), _result, _fuzzCalled);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:dox(hide) typedef T_corpusEntry = stdgo._internal.testing.Testing_t_corpusentry.T_corpusEntry;
@:structInit @:using(stdgo.testing.Testing.T_fuzzResult_static_extension) @:dox(hide) abstract T_fuzzResult(stdgo._internal.testing.Testing_t_fuzzresult.T_fuzzResult) from stdgo._internal.testing.Testing_t_fuzzresult.T_fuzzResult to stdgo._internal.testing.Testing_t_fuzzresult.T_fuzzResult {
    public var n(get, set) : StdTypes.Int;
    function get_n():StdTypes.Int return this.n;
    function set_n(v:StdTypes.Int):StdTypes.Int {
        this.n = (v : stdgo.GoInt);
        return v;
    }
    public var t(get, set) : stdgo._internal.time.Time_duration.Duration;
    function get_t():stdgo._internal.time.Time_duration.Duration return this.t;
    function set_t(v:stdgo._internal.time.Time_duration.Duration):stdgo._internal.time.Time_duration.Duration {
        this.t = v;
        return v;
    }
    public var error(get, set) : stdgo.Error;
    function get_error():stdgo.Error return this.error;
    function set_error(v:stdgo.Error):stdgo.Error {
        this.error = (v : stdgo.Error);
        return v;
    }
    public function new(?n:StdTypes.Int, ?t:stdgo._internal.time.Time_duration.Duration, ?error:stdgo.Error) this = new stdgo._internal.testing.Testing_t_fuzzresult.T_fuzzResult((n : stdgo.GoInt), t, (error : stdgo.Error));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.testing.Testing.T_fuzzContext_static_extension) @:dox(hide) abstract T_fuzzContext(stdgo._internal.testing.Testing_t_fuzzcontext.T_fuzzContext) from stdgo._internal.testing.Testing_t_fuzzcontext.T_fuzzContext to stdgo._internal.testing.Testing_t_fuzzcontext.T_fuzzContext {
    public var _deps(get, set) : T_testDeps;
    function get__deps():T_testDeps return this._deps;
    function set__deps(v:T_testDeps):T_testDeps {
        this._deps = v;
        return v;
    }
    public var _mode(get, set) : T_fuzzMode;
    function get__mode():T_fuzzMode return this._mode;
    function set__mode(v:T_fuzzMode):T_fuzzMode {
        this._mode = v;
        return v;
    }
    public function new(?_deps:T_testDeps, ?_mode:T_fuzzMode) this = new stdgo._internal.testing.Testing_t_fuzzcontext.T_fuzzContext(_deps, _mode);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.testing.Testing.T_matcher_static_extension) @:dox(hide) abstract T_matcher(stdgo._internal.testing.Testing_t_matcher.T_matcher) from stdgo._internal.testing.Testing_t_matcher.T_matcher to stdgo._internal.testing.Testing_t_matcher.T_matcher {
    public var _filter(get, set) : T_filterMatch;
    function get__filter():T_filterMatch return this._filter;
    function set__filter(v:T_filterMatch):T_filterMatch {
        this._filter = v;
        return v;
    }
    public var _skip(get, set) : T_filterMatch;
    function get__skip():T_filterMatch return this._skip;
    function set__skip(v:T_filterMatch):T_filterMatch {
        this._skip = v;
        return v;
    }
    public var _matchFunc(get, set) : (String, String) -> stdgo.Tuple<Bool, stdgo.Error>;
    function get__matchFunc():(String, String) -> stdgo.Tuple<Bool, stdgo.Error> return (_0, _1) -> this._matchFunc(_0, _1);
    function set__matchFunc(v:(String, String) -> stdgo.Tuple<Bool, stdgo.Error>):(String, String) -> stdgo.Tuple<Bool, stdgo.Error> {
        this._matchFunc = (_0, _1) -> v((_0 : stdgo.GoString), (_1 : stdgo.GoString));
        return v;
    }
    public var _mu(get, set) : stdgo._internal.sync.Sync_mutex.Mutex;
    function get__mu():stdgo._internal.sync.Sync_mutex.Mutex return this._mu;
    function set__mu(v:stdgo._internal.sync.Sync_mutex.Mutex):stdgo._internal.sync.Sync_mutex.Mutex {
        this._mu = v;
        return v;
    }
    public var _subNames(get, set) : Map<String, StdTypes.Int>;
    function get__subNames():Map<String, StdTypes.Int> return {
        final __obj__:Map<String, StdTypes.Int> = [];
        for (key => value in this._subNames) {
            __obj__[key] = value;
        };
        __obj__;
    };
    function set__subNames(v:Map<String, StdTypes.Int>):Map<String, StdTypes.Int> {
        this._subNames = {
            final __obj__ = new stdgo.GoMap<stdgo.GoString, stdgo.GoInt32>();
            for (key => value in v) {
                __obj__[(key : stdgo.GoString)] = (value : stdgo.GoInt32);
            };
            __obj__;
        };
        return v;
    }
    public function new(?_filter:T_filterMatch, ?_skip:T_filterMatch, ?_matchFunc:(String, String) -> stdgo.Tuple<Bool, stdgo.Error>, ?_mu:stdgo._internal.sync.Sync_mutex.Mutex, ?_subNames:Map<String, StdTypes.Int>) this = new stdgo._internal.testing.Testing_t_matcher.T_matcher(_filter, _skip, (_0, _1) -> _matchFunc((_0 : stdgo.GoString), (_1 : stdgo.GoString)), _mu, {
        final __obj__ = new stdgo.GoMap<stdgo.GoString, stdgo.GoInt32>();
        for (key => value in _subNames) {
            __obj__[(key : stdgo.GoString)] = (value : stdgo.GoInt32);
        };
        __obj__;
    });
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.testing.Testing.T_chattyFlag_static_extension) @:dox(hide) abstract T_chattyFlag(stdgo._internal.testing.Testing_t_chattyflag.T_chattyFlag) from stdgo._internal.testing.Testing_t_chattyflag.T_chattyFlag to stdgo._internal.testing.Testing_t_chattyflag.T_chattyFlag {
    public var _on(get, set) : Bool;
    function get__on():Bool return this._on;
    function set__on(v:Bool):Bool {
        this._on = v;
        return v;
    }
    public var _json(get, set) : Bool;
    function get__json():Bool return this._json;
    function set__json(v:Bool):Bool {
        this._json = v;
        return v;
    }
    public function new(?_on:Bool, ?_json:Bool) this = new stdgo._internal.testing.Testing_t_chattyflag.T_chattyFlag(_on, _json);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.testing.Testing.T_chattyPrinter_static_extension) @:dox(hide) abstract T_chattyPrinter(stdgo._internal.testing.Testing_t_chattyprinter.T_chattyPrinter) from stdgo._internal.testing.Testing_t_chattyprinter.T_chattyPrinter to stdgo._internal.testing.Testing_t_chattyprinter.T_chattyPrinter {
    public var _w(get, set) : stdgo._internal.io.Io_writer.Writer;
    function get__w():stdgo._internal.io.Io_writer.Writer return this._w;
    function set__w(v:stdgo._internal.io.Io_writer.Writer):stdgo._internal.io.Io_writer.Writer {
        this._w = v;
        return v;
    }
    public var _lastNameMu(get, set) : stdgo._internal.sync.Sync_mutex.Mutex;
    function get__lastNameMu():stdgo._internal.sync.Sync_mutex.Mutex return this._lastNameMu;
    function set__lastNameMu(v:stdgo._internal.sync.Sync_mutex.Mutex):stdgo._internal.sync.Sync_mutex.Mutex {
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
    public function new(?_w:stdgo._internal.io.Io_writer.Writer, ?_lastNameMu:stdgo._internal.sync.Sync_mutex.Mutex, ?_lastName:String, ?_json:Bool) this = new stdgo._internal.testing.Testing_t_chattyprinter.T_chattyPrinter(_w, _lastNameMu, (_lastName : stdgo.GoString), _json);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.testing.Testing.T_common_static_extension) @:dox(hide) abstract T_common(stdgo._internal.testing.Testing_t_common.T_common) from stdgo._internal.testing.Testing_t_common.T_common to stdgo._internal.testing.Testing_t_common.T_common {
    public var _mu(get, set) : stdgo._internal.sync.Sync_rwmutex.RWMutex;
    function get__mu():stdgo._internal.sync.Sync_rwmutex.RWMutex return this._mu;
    function set__mu(v:stdgo._internal.sync.Sync_rwmutex.RWMutex):stdgo._internal.sync.Sync_rwmutex.RWMutex {
        this._mu = v;
        return v;
    }
    public var _output(get, set) : Array<std.UInt>;
    function get__output():Array<std.UInt> return [for (i in this._output) i];
    function set__output(v:Array<std.UInt>):Array<std.UInt> {
        this._output = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public var _w(get, set) : stdgo._internal.io.Io_writer.Writer;
    function get__w():stdgo._internal.io.Io_writer.Writer return this._w;
    function set__w(v:stdgo._internal.io.Io_writer.Writer):stdgo._internal.io.Io_writer.Writer {
        this._w = v;
        return v;
    }
    public var _ran(get, set) : Bool;
    function get__ran():Bool return this._ran;
    function set__ran(v:Bool):Bool {
        this._ran = v;
        return v;
    }
    public var _failed(get, set) : Bool;
    function get__failed():Bool return this._failed;
    function set__failed(v:Bool):Bool {
        this._failed = v;
        return v;
    }
    public var _skipped(get, set) : Bool;
    function get__skipped():Bool return this._skipped;
    function set__skipped(v:Bool):Bool {
        this._skipped = v;
        return v;
    }
    public var _done(get, set) : Bool;
    function get__done():Bool return this._done;
    function set__done(v:Bool):Bool {
        this._done = v;
        return v;
    }
    public var _helperPCs(get, set) : Map<stdgo.GoUIntptr, stdgo._internal.testing.Testing_t_discard.T_discard>;
    function get__helperPCs():Map<stdgo.GoUIntptr, stdgo._internal.testing.Testing_t_discard.T_discard> return {
        final __obj__:Map<stdgo.GoUIntptr, stdgo._internal.testing.Testing_t_discard.T_discard> = [];
        for (key => value in this._helperPCs) {
            __obj__[key] = value;
        };
        __obj__;
    };
    function set__helperPCs(v:Map<stdgo.GoUIntptr, stdgo._internal.testing.Testing_t_discard.T_discard>):Map<stdgo.GoUIntptr, stdgo._internal.testing.Testing_t_discard.T_discard> {
        this._helperPCs = {
            final __obj__ = new stdgo.GoMap<stdgo.GoUIntptr, stdgo._internal.testing.Testing_t_discard.T_discard>();
            for (key => value in v) {
                __obj__[(key : stdgo.GoUIntptr)] = value;
            };
            __obj__;
        };
        return v;
    }
    public var _helperNames(get, set) : Map<String, stdgo._internal.testing.Testing_t_discard.T_discard>;
    function get__helperNames():Map<String, stdgo._internal.testing.Testing_t_discard.T_discard> return {
        final __obj__:Map<String, stdgo._internal.testing.Testing_t_discard.T_discard> = [];
        for (key => value in this._helperNames) {
            __obj__[key] = value;
        };
        __obj__;
    };
    function set__helperNames(v:Map<String, stdgo._internal.testing.Testing_t_discard.T_discard>):Map<String, stdgo._internal.testing.Testing_t_discard.T_discard> {
        this._helperNames = {
            final __obj__ = new stdgo.GoMap<stdgo.GoString, stdgo._internal.testing.Testing_t_discard.T_discard>();
            for (key => value in v) {
                __obj__[(key : stdgo.GoString)] = value;
            };
            __obj__;
        };
        return v;
    }
    public var _cleanups(get, set) : Array<() -> Void>;
    function get__cleanups():Array<() -> Void> return [for (i in this._cleanups) () -> i()];
    function set__cleanups(v:Array<() -> Void>):Array<() -> Void> {
        this._cleanups = ([for (i in v) () -> i()] : stdgo.Slice<() -> Void>);
        return v;
    }
    public var _cleanupName(get, set) : String;
    function get__cleanupName():String return this._cleanupName;
    function set__cleanupName(v:String):String {
        this._cleanupName = (v : stdgo.GoString);
        return v;
    }
    public var _cleanupPc(get, set) : Array<stdgo.GoUIntptr>;
    function get__cleanupPc():Array<stdgo.GoUIntptr> return [for (i in this._cleanupPc) i];
    function set__cleanupPc(v:Array<stdgo.GoUIntptr>):Array<stdgo.GoUIntptr> {
        this._cleanupPc = ([for (i in v) (i : stdgo.GoUIntptr)] : stdgo.Slice<stdgo.GoUIntptr>);
        return v;
    }
    public var _finished(get, set) : Bool;
    function get__finished():Bool return this._finished;
    function set__finished(v:Bool):Bool {
        this._finished = v;
        return v;
    }
    public var _inFuzzFn(get, set) : Bool;
    function get__inFuzzFn():Bool return this._inFuzzFn;
    function set__inFuzzFn(v:Bool):Bool {
        this._inFuzzFn = v;
        return v;
    }
    public var _chatty(get, set) : T_chattyPrinter;
    function get__chatty():T_chattyPrinter return this._chatty;
    function set__chatty(v:T_chattyPrinter):T_chattyPrinter {
        this._chatty = (v : stdgo.Ref<stdgo._internal.testing.Testing_t_chattyprinter.T_chattyPrinter>);
        return v;
    }
    public var _bench(get, set) : Bool;
    function get__bench():Bool return this._bench;
    function set__bench(v:Bool):Bool {
        this._bench = v;
        return v;
    }
    public var _hasSub(get, set) : stdgo._internal.sync.atomic_.Atomic__bool_.Bool_;
    function get__hasSub():stdgo._internal.sync.atomic_.Atomic__bool_.Bool_ return this._hasSub;
    function set__hasSub(v:stdgo._internal.sync.atomic_.Atomic__bool_.Bool_):stdgo._internal.sync.atomic_.Atomic__bool_.Bool_ {
        this._hasSub = v;
        return v;
    }
    public var _cleanupStarted(get, set) : stdgo._internal.sync.atomic_.Atomic__bool_.Bool_;
    function get__cleanupStarted():stdgo._internal.sync.atomic_.Atomic__bool_.Bool_ return this._cleanupStarted;
    function set__cleanupStarted(v:stdgo._internal.sync.atomic_.Atomic__bool_.Bool_):stdgo._internal.sync.atomic_.Atomic__bool_.Bool_ {
        this._cleanupStarted = v;
        return v;
    }
    public var _raceErrors(get, set) : StdTypes.Int;
    function get__raceErrors():StdTypes.Int return this._raceErrors;
    function set__raceErrors(v:StdTypes.Int):StdTypes.Int {
        this._raceErrors = (v : stdgo.GoInt);
        return v;
    }
    public var _runner(get, set) : String;
    function get__runner():String return this._runner;
    function set__runner(v:String):String {
        this._runner = (v : stdgo.GoString);
        return v;
    }
    public var _isParallel(get, set) : Bool;
    function get__isParallel():Bool return this._isParallel;
    function set__isParallel(v:Bool):Bool {
        this._isParallel = v;
        return v;
    }
    public var _parent(get, set) : T_common;
    function get__parent():T_common return this._parent;
    function set__parent(v:T_common):T_common {
        this._parent = (v : stdgo.Ref<stdgo._internal.testing.Testing_t_common.T_common>);
        return v;
    }
    public var _level(get, set) : StdTypes.Int;
    function get__level():StdTypes.Int return this._level;
    function set__level(v:StdTypes.Int):StdTypes.Int {
        this._level = (v : stdgo.GoInt);
        return v;
    }
    public var _creator(get, set) : Array<stdgo.GoUIntptr>;
    function get__creator():Array<stdgo.GoUIntptr> return [for (i in this._creator) i];
    function set__creator(v:Array<stdgo.GoUIntptr>):Array<stdgo.GoUIntptr> {
        this._creator = ([for (i in v) (i : stdgo.GoUIntptr)] : stdgo.Slice<stdgo.GoUIntptr>);
        return v;
    }
    public var _name(get, set) : String;
    function get__name():String return this._name;
    function set__name(v:String):String {
        this._name = (v : stdgo.GoString);
        return v;
    }
    public var _start(get, set) : stdgo._internal.time.Time_time.Time;
    function get__start():stdgo._internal.time.Time_time.Time return this._start;
    function set__start(v:stdgo._internal.time.Time_time.Time):stdgo._internal.time.Time_time.Time {
        this._start = v;
        return v;
    }
    public var _duration(get, set) : stdgo._internal.time.Time_duration.Duration;
    function get__duration():stdgo._internal.time.Time_duration.Duration return this._duration;
    function set__duration(v:stdgo._internal.time.Time_duration.Duration):stdgo._internal.time.Time_duration.Duration {
        this._duration = v;
        return v;
    }
    public var _barrier(get, set) : stdgo.Chan<Bool>;
    function get__barrier():stdgo.Chan<Bool> return this._barrier;
    function set__barrier(v:stdgo.Chan<Bool>):stdgo.Chan<Bool> {
        this._barrier = (v : stdgo.Chan<Bool>);
        return v;
    }
    public var _signal(get, set) : stdgo.Chan<Bool>;
    function get__signal():stdgo.Chan<Bool> return this._signal;
    function set__signal(v:stdgo.Chan<Bool>):stdgo.Chan<Bool> {
        this._signal = (v : stdgo.Chan<Bool>);
        return v;
    }
    public var _sub(get, set) : Array<T_>;
    function get__sub():Array<T_> return [for (i in this._sub) i];
    function set__sub(v:Array<T_>):Array<T_> {
        this._sub = ([for (i in v) (i : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>)] : stdgo.Slice<stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>>);
        return v;
    }
    public var _tempDirMu(get, set) : stdgo._internal.sync.Sync_mutex.Mutex;
    function get__tempDirMu():stdgo._internal.sync.Sync_mutex.Mutex return this._tempDirMu;
    function set__tempDirMu(v:stdgo._internal.sync.Sync_mutex.Mutex):stdgo._internal.sync.Sync_mutex.Mutex {
        this._tempDirMu = v;
        return v;
    }
    public var _tempDir(get, set) : String;
    function get__tempDir():String return this._tempDir;
    function set__tempDir(v:String):String {
        this._tempDir = (v : stdgo.GoString);
        return v;
    }
    public var _tempDirErr(get, set) : stdgo.Error;
    function get__tempDirErr():stdgo.Error return this._tempDirErr;
    function set__tempDirErr(v:stdgo.Error):stdgo.Error {
        this._tempDirErr = (v : stdgo.Error);
        return v;
    }
    public var _tempDirSeq(get, set) : StdTypes.Int;
    function get__tempDirSeq():StdTypes.Int return this._tempDirSeq;
    function set__tempDirSeq(v:StdTypes.Int):StdTypes.Int {
        this._tempDirSeq = (v : stdgo.GoInt32);
        return v;
    }
    public function new(?_mu:stdgo._internal.sync.Sync_rwmutex.RWMutex, ?_output:Array<std.UInt>, ?_w:stdgo._internal.io.Io_writer.Writer, ?_ran:Bool, ?_failed:Bool, ?_skipped:Bool, ?_done:Bool, ?_helperPCs:Map<stdgo.GoUIntptr, stdgo._internal.testing.Testing_t_discard.T_discard>, ?_helperNames:Map<String, stdgo._internal.testing.Testing_t_discard.T_discard>, ?_cleanups:Array<() -> Void>, ?_cleanupName:String, ?_cleanupPc:Array<stdgo.GoUIntptr>, ?_finished:Bool, ?_inFuzzFn:Bool, ?_chatty:T_chattyPrinter, ?_bench:Bool, ?_hasSub:stdgo._internal.sync.atomic_.Atomic__bool_.Bool_, ?_cleanupStarted:stdgo._internal.sync.atomic_.Atomic__bool_.Bool_, ?_raceErrors:StdTypes.Int, ?_runner:String, ?_isParallel:Bool, ?_parent:T_common, ?_level:StdTypes.Int, ?_creator:Array<stdgo.GoUIntptr>, ?_name:String, ?_start:stdgo._internal.time.Time_time.Time, ?_duration:stdgo._internal.time.Time_duration.Duration, ?_barrier:stdgo.Chan<Bool>, ?_signal:stdgo.Chan<Bool>, ?_sub:Array<T_>, ?_tempDirMu:stdgo._internal.sync.Sync_mutex.Mutex, ?_tempDir:String, ?_tempDirErr:stdgo.Error, ?_tempDirSeq:StdTypes.Int, ?failCount) this = new stdgo._internal.testing.Testing_t_common.T_common(
_mu,
([for (i in _output) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>),
_w,
_ran,
_failed,
_skipped,
_done,
{
        final __obj__ = new stdgo.GoMap<stdgo.GoUIntptr, stdgo._internal.testing.Testing_t_discard.T_discard>();
        for (key => value in _helperPCs) {
            __obj__[(key : stdgo.GoUIntptr)] = value;
        };
        __obj__;
    },
{
        final __obj__ = new stdgo.GoMap<stdgo.GoString, stdgo._internal.testing.Testing_t_discard.T_discard>();
        for (key => value in _helperNames) {
            __obj__[(key : stdgo.GoString)] = value;
        };
        __obj__;
    },
([for (i in _cleanups) () -> i()] : stdgo.Slice<() -> Void>),
(_cleanupName : stdgo.GoString),
([for (i in _cleanupPc) (i : stdgo.GoUIntptr)] : stdgo.Slice<stdgo.GoUIntptr>),
_finished,
_inFuzzFn,
(_chatty : stdgo.Ref<stdgo._internal.testing.Testing_t_chattyprinter.T_chattyPrinter>),
_bench,
_hasSub,
_cleanupStarted,
(_raceErrors : stdgo.GoInt),
(_runner : stdgo.GoString),
_isParallel,
(_parent : stdgo.Ref<stdgo._internal.testing.Testing_t_common.T_common>),
(_level : stdgo.GoInt),
([for (i in _creator) (i : stdgo.GoUIntptr)] : stdgo.Slice<stdgo.GoUIntptr>),
(_name : stdgo.GoString),
_start,
_duration,
(_barrier : stdgo.Chan<Bool>),
(_signal : stdgo.Chan<Bool>),
([for (i in _sub) (i : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>)] : stdgo.Slice<stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>>),
_tempDirMu,
(_tempDir : stdgo.GoString),
(_tempDirErr : stdgo.Error),
(_tempDirSeq : stdgo.GoInt32),
failCount);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.testing.Testing.T_indenter_static_extension) @:dox(hide) abstract T_indenter(stdgo._internal.testing.Testing_t_indenter.T_indenter) from stdgo._internal.testing.Testing_t_indenter.T_indenter to stdgo._internal.testing.Testing_t_indenter.T_indenter {
    public var _c(get, set) : T_common;
    function get__c():T_common return this._c;
    function set__c(v:T_common):T_common {
        this._c = (v : stdgo.Ref<stdgo._internal.testing.Testing_t_common.T_common>);
        return v;
    }
    public function new(?_c:T_common) this = new stdgo._internal.testing.Testing_t_indenter.T_indenter((_c : stdgo.Ref<stdgo._internal.testing.Testing_t_common.T_common>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.testing.Testing.T__static_extension) @:dox(hide) abstract T_(stdgo._internal.testing.Testing_t_.T_) from stdgo._internal.testing.Testing_t_.T_ to stdgo._internal.testing.Testing_t_.T_ {
    public var _common(get, set) : T_common;
    function get__common():T_common return this._common;
    function set__common(v:T_common):T_common {
        this._common = v;
        return v;
    }
    public var _isEnvSet(get, set) : Bool;
    function get__isEnvSet():Bool return this._isEnvSet;
    function set__isEnvSet(v:Bool):Bool {
        this._isEnvSet = v;
        return v;
    }
    public var _context(get, set) : T_testContext;
    function get__context():T_testContext return this._context;
    function set__context(v:T_testContext):T_testContext {
        this._context = (v : stdgo.Ref<stdgo._internal.testing.Testing_t_testcontext.T_testContext>);
        return v;
    }
    public function new(?_common:T_common, ?_isEnvSet:Bool, ?_context:T_testContext, ?output:StringBuf) this = new stdgo._internal.testing.Testing_t_.T_(_common, _isEnvSet, (_context : stdgo.Ref<stdgo._internal.testing.Testing_t_testcontext.T_testContext>), output);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.testing.Testing.InternalTest_static_extension) abstract InternalTest(stdgo._internal.testing.Testing_internaltest.InternalTest) from stdgo._internal.testing.Testing_internaltest.InternalTest to stdgo._internal.testing.Testing_internaltest.InternalTest {
    public var name(get, set) : String;
    function get_name():String return this.name;
    function set_name(v:String):String {
        this.name = (v : stdgo.GoString);
        return v;
    }
    public var f(get, set) : T_ -> Void;
    function get_f():T_ -> Void return _0 -> this.f(_0);
    function set_f(v:T_ -> Void):T_ -> Void {
        this.f = _0 -> v((_0 : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>));
        return v;
    }
    public function new(?name:String, ?f:T_ -> Void) this = new stdgo._internal.testing.Testing_internaltest.InternalTest((name : stdgo.GoString), _0 -> f((_0 : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>)));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.testing.Testing.T_testContext_static_extension) @:dox(hide) abstract T_testContext(stdgo._internal.testing.Testing_t_testcontext.T_testContext) from stdgo._internal.testing.Testing_t_testcontext.T_testContext to stdgo._internal.testing.Testing_t_testcontext.T_testContext {
    public var _match(get, set) : T_matcher;
    function get__match():T_matcher return this._match;
    function set__match(v:T_matcher):T_matcher {
        this._match = (v : stdgo.Ref<stdgo._internal.testing.Testing_t_matcher.T_matcher>);
        return v;
    }
    public var _deadline(get, set) : stdgo._internal.time.Time_time.Time;
    function get__deadline():stdgo._internal.time.Time_time.Time return this._deadline;
    function set__deadline(v:stdgo._internal.time.Time_time.Time):stdgo._internal.time.Time_time.Time {
        this._deadline = v;
        return v;
    }
    public var _isFuzzing(get, set) : Bool;
    function get__isFuzzing():Bool return this._isFuzzing;
    function set__isFuzzing(v:Bool):Bool {
        this._isFuzzing = v;
        return v;
    }
    public var _mu(get, set) : stdgo._internal.sync.Sync_mutex.Mutex;
    function get__mu():stdgo._internal.sync.Sync_mutex.Mutex return this._mu;
    function set__mu(v:stdgo._internal.sync.Sync_mutex.Mutex):stdgo._internal.sync.Sync_mutex.Mutex {
        this._mu = v;
        return v;
    }
    public var _startParallel(get, set) : stdgo.Chan<Bool>;
    function get__startParallel():stdgo.Chan<Bool> return this._startParallel;
    function set__startParallel(v:stdgo.Chan<Bool>):stdgo.Chan<Bool> {
        this._startParallel = (v : stdgo.Chan<Bool>);
        return v;
    }
    public var _running(get, set) : StdTypes.Int;
    function get__running():StdTypes.Int return this._running;
    function set__running(v:StdTypes.Int):StdTypes.Int {
        this._running = (v : stdgo.GoInt);
        return v;
    }
    public var _numWaiting(get, set) : StdTypes.Int;
    function get__numWaiting():StdTypes.Int return this._numWaiting;
    function set__numWaiting(v:StdTypes.Int):StdTypes.Int {
        this._numWaiting = (v : stdgo.GoInt);
        return v;
    }
    public var _maxParallel(get, set) : StdTypes.Int;
    function get__maxParallel():StdTypes.Int return this._maxParallel;
    function set__maxParallel(v:StdTypes.Int):StdTypes.Int {
        this._maxParallel = (v : stdgo.GoInt);
        return v;
    }
    public function new(?_match:T_matcher, ?_deadline:stdgo._internal.time.Time_time.Time, ?_isFuzzing:Bool, ?_mu:stdgo._internal.sync.Sync_mutex.Mutex, ?_startParallel:stdgo.Chan<Bool>, ?_running:StdTypes.Int, ?_numWaiting:StdTypes.Int, ?_maxParallel:StdTypes.Int) this = new stdgo._internal.testing.Testing_t_testcontext.T_testContext((_match : stdgo.Ref<stdgo._internal.testing.Testing_t_matcher.T_matcher>), _deadline, _isFuzzing, _mu, (_startParallel : stdgo.Chan<Bool>), (_running : stdgo.GoInt), (_numWaiting : stdgo.GoInt), (_maxParallel : stdgo.GoInt));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.testing.Testing.M_static_extension) abstract M(stdgo._internal.testing.Testing_m.M) from stdgo._internal.testing.Testing_m.M to stdgo._internal.testing.Testing_m.M {
    public var _deps(get, set) : T_testDeps;
    function get__deps():T_testDeps return this._deps;
    function set__deps(v:T_testDeps):T_testDeps {
        this._deps = v;
        return v;
    }
    public var _tests(get, set) : Array<InternalTest>;
    function get__tests():Array<InternalTest> return [for (i in this._tests) i];
    function set__tests(v:Array<InternalTest>):Array<InternalTest> {
        this._tests = ([for (i in v) i] : stdgo.Slice<stdgo._internal.testing.Testing_internaltest.InternalTest>);
        return v;
    }
    public var _benchmarks(get, set) : Array<InternalBenchmark>;
    function get__benchmarks():Array<InternalBenchmark> return [for (i in this._benchmarks) i];
    function set__benchmarks(v:Array<InternalBenchmark>):Array<InternalBenchmark> {
        this._benchmarks = ([for (i in v) i] : stdgo.Slice<stdgo._internal.testing.Testing_internalbenchmark.InternalBenchmark>);
        return v;
    }
    public var _fuzzTargets(get, set) : Array<InternalFuzzTarget>;
    function get__fuzzTargets():Array<InternalFuzzTarget> return [for (i in this._fuzzTargets) i];
    function set__fuzzTargets(v:Array<InternalFuzzTarget>):Array<InternalFuzzTarget> {
        this._fuzzTargets = ([for (i in v) i] : stdgo.Slice<stdgo._internal.testing.Testing_internalfuzztarget.InternalFuzzTarget>);
        return v;
    }
    public var _examples(get, set) : Array<InternalExample>;
    function get__examples():Array<InternalExample> return [for (i in this._examples) i];
    function set__examples(v:Array<InternalExample>):Array<InternalExample> {
        this._examples = ([for (i in v) i] : stdgo.Slice<stdgo._internal.testing.Testing_internalexample.InternalExample>);
        return v;
    }
    public var _timer(get, set) : stdgo._internal.time.Time_timer.Timer;
    function get__timer():stdgo._internal.time.Time_timer.Timer return this._timer;
    function set__timer(v:stdgo._internal.time.Time_timer.Timer):stdgo._internal.time.Time_timer.Timer {
        this._timer = (v : stdgo.Ref<stdgo._internal.time.Time_timer.Timer>);
        return v;
    }
    public var _afterOnce(get, set) : stdgo._internal.sync.Sync_once.Once;
    function get__afterOnce():stdgo._internal.sync.Sync_once.Once return this._afterOnce;
    function set__afterOnce(v:stdgo._internal.sync.Sync_once.Once):stdgo._internal.sync.Sync_once.Once {
        this._afterOnce = v;
        return v;
    }
    public var _numRun(get, set) : StdTypes.Int;
    function get__numRun():StdTypes.Int return this._numRun;
    function set__numRun(v:StdTypes.Int):StdTypes.Int {
        this._numRun = (v : stdgo.GoInt);
        return v;
    }
    public var _exitCode(get, set) : StdTypes.Int;
    function get__exitCode():StdTypes.Int return this._exitCode;
    function set__exitCode(v:StdTypes.Int):StdTypes.Int {
        this._exitCode = (v : stdgo.GoInt);
        return v;
    }
    public function new(?_deps:T_testDeps, ?_tests:Array<InternalTest>, ?_benchmarks:Array<InternalBenchmark>, ?_fuzzTargets:Array<InternalFuzzTarget>, ?_examples:Array<InternalExample>, ?_timer:stdgo._internal.time.Time_timer.Timer, ?_afterOnce:stdgo._internal.sync.Sync_once.Once, ?_numRun:StdTypes.Int, ?_exitCode:StdTypes.Int) this = new stdgo._internal.testing.Testing_m.M(_deps, ([for (i in _tests) i] : stdgo.Slice<stdgo._internal.testing.Testing_internaltest.InternalTest>), ([for (i in _benchmarks) i] : stdgo.Slice<stdgo._internal.testing.Testing_internalbenchmark.InternalBenchmark>), ([for (i in _fuzzTargets) i] : stdgo.Slice<stdgo._internal.testing.Testing_internalfuzztarget.InternalFuzzTarget>), ([for (i in _examples) i] : stdgo.Slice<stdgo._internal.testing.Testing_internalexample.InternalExample>), (_timer : stdgo.Ref<stdgo._internal.time.Time_timer.Timer>), _afterOnce, (_numRun : stdgo.GoInt), (_exitCode : stdgo.GoInt));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:dox(hide) typedef T__struct_0Pointer = stdgo._internal.testing.Testing_t__struct_0pointer.T__struct_0Pointer;
@:dox(hide) class T__struct_0_static_extension {

}
@:dox(hide) typedef T__struct_0 = stdgo._internal.testing.Testing_t__struct_0.T__struct_0;
@:dox(hide) typedef T__struct_1Pointer = stdgo._internal.testing.Testing_t__struct_1pointer.T__struct_1Pointer;
@:dox(hide) class T__struct_1_static_extension {

}
@:dox(hide) typedef T__struct_1 = stdgo._internal.testing.Testing_t__struct_1.T__struct_1;
@:dox(hide) typedef T_fuzzMode = stdgo._internal.testing.Testing_t_fuzzmode.T_fuzzMode;
@:dox(hide) typedef T_simpleMatch = stdgo._internal.testing.Testing_t_simplematch.T_simpleMatch;
@:dox(hide) typedef T_alternationMatch = stdgo._internal.testing.Testing_t_alternationmatch.T_alternationMatch;
@:dox(hide) typedef T_panicHandling = stdgo._internal.testing.Testing_t_panichandling.T_panicHandling;
@:dox(hide) typedef T_matchStringOnly = stdgo._internal.testing.Testing_t_matchstringonly.T_matchStringOnly;
@:dox(hide) typedef T_durationOrCountFlagPointer = stdgo._internal.testing.Testing_t_durationorcountflagpointer.T_durationOrCountFlagPointer;
@:dox(hide) class T_durationOrCountFlag_static_extension {
    static public function set(_f:T_durationOrCountFlag, _s:String):stdgo.Error {
        final _f = (_f : stdgo.Ref<stdgo._internal.testing.Testing_t_durationorcountflag.T_durationOrCountFlag>);
        final _s = (_s : stdgo.GoString);
        return stdgo._internal.testing.Testing_t_durationorcountflag_static_extension.T_durationOrCountFlag_static_extension.set(_f, _s);
    }
    static public function string(_f:T_durationOrCountFlag):String {
        final _f = (_f : stdgo.Ref<stdgo._internal.testing.Testing_t_durationorcountflag.T_durationOrCountFlag>);
        return stdgo._internal.testing.Testing_t_durationorcountflag_static_extension.T_durationOrCountFlag_static_extension.string(_f);
    }
}
typedef InternalBenchmarkPointer = stdgo._internal.testing.Testing_internalbenchmarkpointer.InternalBenchmarkPointer;
class InternalBenchmark_static_extension {

}
typedef BPointer = stdgo._internal.testing.Testing_bpointer.BPointer;
class B_static_extension {
    static public function setParallelism(_b:B, _p:StdTypes.Int):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_b.B>);
        final _p = (_p : stdgo.GoInt);
        stdgo._internal.testing.Testing_b_static_extension.B_static_extension.setParallelism(_b, _p);
    }
    static public function runParallel(_b:B, _body:PB -> Void):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_b.B>);
        final _body = _0 -> _body((_0 : stdgo.Ref<stdgo._internal.testing.Testing_pb.PB>));
        stdgo._internal.testing.Testing_b_static_extension.B_static_extension.runParallel(_b, _body);
    }
    static public function _trimOutput(_b:B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_b.B>);
        stdgo._internal.testing.Testing_b_static_extension.B_static_extension._trimOutput(_b);
    }
    static public function _add(_b:B, _other:BenchmarkResult):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_b.B>);
        stdgo._internal.testing.Testing_b_static_extension.B_static_extension._add(_b, _other);
    }
    static public function run(_b:B, _name:String, _f:B -> Void):Bool {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_b.B>);
        final _name = (_name : stdgo.GoString);
        final _f = _0 -> _f((_0 : stdgo.Ref<stdgo._internal.testing.Testing_b.B>));
        return stdgo._internal.testing.Testing_b_static_extension.B_static_extension.run(_b, _name, _f);
    }
    static public function reportMetric(_b:B, _n:StdTypes.Float, _unit:String):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_b.B>);
        final _n = (_n : stdgo.GoFloat64);
        final _unit = (_unit : stdgo.GoString);
        stdgo._internal.testing.Testing_b_static_extension.B_static_extension.reportMetric(_b, _n, _unit);
    }
    static public function elapsed(_b:B):stdgo._internal.time.Time_duration.Duration {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_b.B>);
        return stdgo._internal.testing.Testing_b_static_extension.B_static_extension.elapsed(_b);
    }
    static public function _launch(_b:B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_b.B>);
        stdgo._internal.testing.Testing_b_static_extension.B_static_extension._launch(_b);
    }
    static public function _doBench(_b:B):BenchmarkResult {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_b.B>);
        return stdgo._internal.testing.Testing_b_static_extension.B_static_extension._doBench(_b);
    }
    static public function _run(_b:B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_b.B>);
        stdgo._internal.testing.Testing_b_static_extension.B_static_extension._run(_b);
    }
    static public function _run1(_b:B):Bool {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_b.B>);
        return stdgo._internal.testing.Testing_b_static_extension.B_static_extension._run1(_b);
    }
    static public function _runN(_b:B, _n:StdTypes.Int):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_b.B>);
        final _n = (_n : stdgo.GoInt);
        stdgo._internal.testing.Testing_b_static_extension.B_static_extension._runN(_b, _n);
    }
    static public function reportAllocs(_b:B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_b.B>);
        stdgo._internal.testing.Testing_b_static_extension.B_static_extension.reportAllocs(_b);
    }
    static public function setBytes(_b:B, _n:haxe.Int64):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_b.B>);
        final _n = (_n : stdgo.GoInt64);
        stdgo._internal.testing.Testing_b_static_extension.B_static_extension.setBytes(_b, _n);
    }
    static public function resetTimer(_b:B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_b.B>);
        stdgo._internal.testing.Testing_b_static_extension.B_static_extension.resetTimer(_b);
    }
    static public function stopTimer(_b:B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_b.B>);
        stdgo._internal.testing.Testing_b_static_extension.B_static_extension.stopTimer(_b);
    }
    static public function startTimer(_b:B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_b.B>);
        stdgo._internal.testing.Testing_b_static_extension.B_static_extension.startTimer(_b);
    }
    public static function _setRan(__self__:stdgo._internal.testing.Testing_b.B):Void {
        stdgo._internal.testing.Testing_b_static_extension.B_static_extension._setRan(__self__);
    }
    public static function _runCleanup(__self__:stdgo._internal.testing.Testing_b.B, _0:T_panicHandling):stdgo.AnyInterface {
        return stdgo._internal.testing.Testing_b_static_extension.B_static_extension._runCleanup(__self__, _0);
    }
    public static function _private(__self__:stdgo._internal.testing.Testing_b.B):Void {
        stdgo._internal.testing.Testing_b_static_extension.B_static_extension._private(__self__);
    }
    public static function _logDepth(__self__:stdgo._internal.testing.Testing_b.B, _0:String, _1:StdTypes.Int):Void {
        final _0 = (_0 : stdgo.GoString);
        final _1 = (_1 : stdgo.GoInt);
        stdgo._internal.testing.Testing_b_static_extension.B_static_extension._logDepth(__self__, _0, _1);
    }
    public static function _log(__self__:stdgo._internal.testing.Testing_b.B, _0:String):Void {
        final _0 = (_0 : stdgo.GoString);
        stdgo._internal.testing.Testing_b_static_extension.B_static_extension._log(__self__, _0);
    }
    public static function _frameSkip(__self__:stdgo._internal.testing.Testing_b.B, _0:StdTypes.Int):stdgo._internal.runtime.Runtime_frame.Frame {
        final _0 = (_0 : stdgo.GoInt);
        return stdgo._internal.testing.Testing_b_static_extension.B_static_extension._frameSkip(__self__, _0);
    }
    public static function _flushToParent(__self__:stdgo._internal.testing.Testing_b.B, _0:String, _1:String, _2:haxe.Rest<stdgo.AnyInterface>):Void {
        final _0 = (_0 : stdgo.GoString);
        final _1 = (_1 : stdgo.GoString);
        stdgo._internal.testing.Testing_b_static_extension.B_static_extension._flushToParent(__self__, _0, _1, ...[for (i in _2) i]);
    }
    public static function _decorate(__self__:stdgo._internal.testing.Testing_b.B, _0:String, _1:StdTypes.Int):String {
        final _0 = (_0 : stdgo.GoString);
        final _1 = (_1 : stdgo.GoInt);
        return stdgo._internal.testing.Testing_b_static_extension.B_static_extension._decorate(__self__, _0, _1);
    }
    public static function _checkFuzzFn(__self__:stdgo._internal.testing.Testing_b.B, _0:String):Void {
        final _0 = (_0 : stdgo.GoString);
        stdgo._internal.testing.Testing_b_static_extension.B_static_extension._checkFuzzFn(__self__, _0);
    }
    public static function tempDir(__self__:stdgo._internal.testing.Testing_b.B):String {
        return stdgo._internal.testing.Testing_b_static_extension.B_static_extension.tempDir(__self__);
    }
    public static function skipped(__self__:stdgo._internal.testing.Testing_b.B):Bool {
        return stdgo._internal.testing.Testing_b_static_extension.B_static_extension.skipped(__self__);
    }
    public static function skipf(__self__:stdgo._internal.testing.Testing_b.B, _0:String, _1:haxe.Rest<stdgo.AnyInterface>):Void {
        final _0 = (_0 : stdgo.GoString);
        stdgo._internal.testing.Testing_b_static_extension.B_static_extension.skipf(__self__, _0, ...[for (i in _1) i]);
    }
    public static function skipNow(__self__:stdgo._internal.testing.Testing_b.B):Void {
        stdgo._internal.testing.Testing_b_static_extension.B_static_extension.skipNow(__self__);
    }
    public static function skip(__self__:stdgo._internal.testing.Testing_b.B, _0:haxe.Rest<stdgo.AnyInterface>):Void {
        stdgo._internal.testing.Testing_b_static_extension.B_static_extension.skip(__self__, ...[for (i in _0) i]);
    }
    public static function setenv(__self__:stdgo._internal.testing.Testing_b.B, _0:String, _1:String):Void {
        final _0 = (_0 : stdgo.GoString);
        final _1 = (_1 : stdgo.GoString);
        stdgo._internal.testing.Testing_b_static_extension.B_static_extension.setenv(__self__, _0, _1);
    }
    public static function name(__self__:stdgo._internal.testing.Testing_b.B):String {
        return stdgo._internal.testing.Testing_b_static_extension.B_static_extension.name(__self__);
    }
    public static function logf(__self__:stdgo._internal.testing.Testing_b.B, _0:String, _1:haxe.Rest<stdgo.AnyInterface>):Void {
        final _0 = (_0 : stdgo.GoString);
        stdgo._internal.testing.Testing_b_static_extension.B_static_extension.logf(__self__, _0, ...[for (i in _1) i]);
    }
    public static function log(__self__:stdgo._internal.testing.Testing_b.B, _0:haxe.Rest<stdgo.AnyInterface>):Void {
        stdgo._internal.testing.Testing_b_static_extension.B_static_extension.log(__self__, ...[for (i in _0) i]);
    }
    public static function helper(__self__:stdgo._internal.testing.Testing_b.B):Void {
        stdgo._internal.testing.Testing_b_static_extension.B_static_extension.helper(__self__);
    }
    public static function fatalf(__self__:stdgo._internal.testing.Testing_b.B, _0:String, _1:haxe.Rest<stdgo.AnyInterface>):Void {
        final _0 = (_0 : stdgo.GoString);
        stdgo._internal.testing.Testing_b_static_extension.B_static_extension.fatalf(__self__, _0, ...[for (i in _1) i]);
    }
    public static function fatal(__self__:stdgo._internal.testing.Testing_b.B, _0:haxe.Rest<stdgo.AnyInterface>):Void {
        stdgo._internal.testing.Testing_b_static_extension.B_static_extension.fatal(__self__, ...[for (i in _0) i]);
    }
    public static function failed(__self__:stdgo._internal.testing.Testing_b.B):Bool {
        return stdgo._internal.testing.Testing_b_static_extension.B_static_extension.failed(__self__);
    }
    public static function failNow(__self__:stdgo._internal.testing.Testing_b.B):Void {
        stdgo._internal.testing.Testing_b_static_extension.B_static_extension.failNow(__self__);
    }
    public static function fail(__self__:stdgo._internal.testing.Testing_b.B):Void {
        stdgo._internal.testing.Testing_b_static_extension.B_static_extension.fail(__self__);
    }
    public static function errorf(__self__:stdgo._internal.testing.Testing_b.B, _0:String, _1:haxe.Rest<stdgo.AnyInterface>):Void {
        final _0 = (_0 : stdgo.GoString);
        stdgo._internal.testing.Testing_b_static_extension.B_static_extension.errorf(__self__, _0, ...[for (i in _1) i]);
    }
    public static function error(__self__:stdgo._internal.testing.Testing_b.B, _0:haxe.Rest<stdgo.AnyInterface>):Void {
        stdgo._internal.testing.Testing_b_static_extension.B_static_extension.error(__self__, ...[for (i in _0) i]);
    }
    public static function cleanup(__self__:stdgo._internal.testing.Testing_b.B, _0:() -> Void):Void {
        final _0 = () -> _0();
        stdgo._internal.testing.Testing_b_static_extension.B_static_extension.cleanup(__self__, _0);
    }
}
typedef BenchmarkResultPointer = stdgo._internal.testing.Testing_benchmarkresultpointer.BenchmarkResultPointer;
class BenchmarkResult_static_extension {
    static public function memString(_r:BenchmarkResult):String {
        return stdgo._internal.testing.Testing_benchmarkresult_static_extension.BenchmarkResult_static_extension.memString(_r);
    }
    static public function string(_r:BenchmarkResult):String {
        return stdgo._internal.testing.Testing_benchmarkresult_static_extension.BenchmarkResult_static_extension.string(_r);
    }
    static public function allocedBytesPerOp(_r:BenchmarkResult):haxe.Int64 {
        return stdgo._internal.testing.Testing_benchmarkresult_static_extension.BenchmarkResult_static_extension.allocedBytesPerOp(_r);
    }
    static public function allocsPerOp(_r:BenchmarkResult):haxe.Int64 {
        return stdgo._internal.testing.Testing_benchmarkresult_static_extension.BenchmarkResult_static_extension.allocsPerOp(_r);
    }
    static public function _mbPerSec(_r:BenchmarkResult):StdTypes.Float {
        return stdgo._internal.testing.Testing_benchmarkresult_static_extension.BenchmarkResult_static_extension._mbPerSec(_r);
    }
    static public function nsPerOp(_r:BenchmarkResult):haxe.Int64 {
        return stdgo._internal.testing.Testing_benchmarkresult_static_extension.BenchmarkResult_static_extension.nsPerOp(_r);
    }
}
@:dox(hide) typedef T_benchContextPointer = stdgo._internal.testing.Testing_t_benchcontextpointer.T_benchContextPointer;
@:dox(hide) class T_benchContext_static_extension {
    static public function _processBench(_ctx:T_benchContext, _b:B):Void {
        final _ctx = (_ctx : stdgo.Ref<stdgo._internal.testing.Testing_t_benchcontext.T_benchContext>);
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_b.B>);
        stdgo._internal.testing.Testing_t_benchcontext_static_extension.T_benchContext_static_extension._processBench(_ctx, _b);
    }
}
typedef PBPointer = stdgo._internal.testing.Testing_pbpointer.PBPointer;
class PB_static_extension {
    static public function next(_pb:PB):Bool {
        final _pb = (_pb : stdgo.Ref<stdgo._internal.testing.Testing_pb.PB>);
        return stdgo._internal.testing.Testing_pb_static_extension.PB_static_extension.next(_pb);
    }
}
@:dox(hide) typedef T_discardPointer = stdgo._internal.testing.Testing_t_discardpointer.T_discardPointer;
@:dox(hide) class T_discard_static_extension {
    static public function write(_:T_discard, _b:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _b = ([for (i in _b) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.testing.Testing_t_discard_static_extension.T_discard_static_extension.write(_, _b);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
typedef CoverBlockPointer = stdgo._internal.testing.Testing_coverblockpointer.CoverBlockPointer;
class CoverBlock_static_extension {

}
typedef CoverPointer = stdgo._internal.testing.Testing_coverpointer.CoverPointer;
class Cover_static_extension {

}
typedef InternalExamplePointer = stdgo._internal.testing.Testing_internalexamplepointer.InternalExamplePointer;
class InternalExample_static_extension {
    static public function _processRunResult(_eg:InternalExample, _stdout:String, _timeSpent:stdgo._internal.time.Time_duration.Duration, _finished:Bool, _recovered:stdgo.AnyInterface):Bool {
        final _eg = (_eg : stdgo.Ref<stdgo._internal.testing.Testing_internalexample.InternalExample>);
        final _stdout = (_stdout : stdgo.GoString);
        final _recovered = (_recovered : stdgo.AnyInterface);
        return stdgo._internal.testing.Testing_internalexample_static_extension.InternalExample_static_extension._processRunResult(_eg, _stdout, _timeSpent, _finished, _recovered);
    }
}
typedef InternalFuzzTargetPointer = stdgo._internal.testing.Testing_internalfuzztargetpointer.InternalFuzzTargetPointer;
class InternalFuzzTarget_static_extension {

}
typedef FPointer = stdgo._internal.testing.Testing_fpointer.FPointer;
class F_static_extension {
    static public function _report(_f:F):Void {
        final _f = (_f : stdgo.Ref<stdgo._internal.testing.Testing_f.F>);
        stdgo._internal.testing.Testing_f_static_extension.F_static_extension._report(_f);
    }
    static public function fuzz(_f:F, _ff:stdgo.AnyInterface):Void {
        final _f = (_f : stdgo.Ref<stdgo._internal.testing.Testing_f.F>);
        final _ff = (_ff : stdgo.AnyInterface);
        stdgo._internal.testing.Testing_f_static_extension.F_static_extension.fuzz(_f, _ff);
    }
    static public function add(_f:F, _args:haxe.Rest<stdgo.AnyInterface>):Void {
        final _f = (_f : stdgo.Ref<stdgo._internal.testing.Testing_f.F>);
        stdgo._internal.testing.Testing_f_static_extension.F_static_extension.add(_f, ...[for (i in _args) i]);
    }
    static public function skipped(_f:F):Bool {
        final _f = (_f : stdgo.Ref<stdgo._internal.testing.Testing_f.F>);
        return stdgo._internal.testing.Testing_f_static_extension.F_static_extension.skipped(_f);
    }
    static public function fail(_f:F):Void {
        final _f = (_f : stdgo.Ref<stdgo._internal.testing.Testing_f.F>);
        stdgo._internal.testing.Testing_f_static_extension.F_static_extension.fail(_f);
    }
    static public function helper(_f:F):Void {
        final _f = (_f : stdgo.Ref<stdgo._internal.testing.Testing_f.F>);
        stdgo._internal.testing.Testing_f_static_extension.F_static_extension.helper(_f);
    }
    public static function _setRan(__self__:stdgo._internal.testing.Testing_f.F):Void {
        stdgo._internal.testing.Testing_f_static_extension.F_static_extension._setRan(__self__);
    }
    public static function _runCleanup(__self__:stdgo._internal.testing.Testing_f.F, _0:T_panicHandling):stdgo.AnyInterface {
        return stdgo._internal.testing.Testing_f_static_extension.F_static_extension._runCleanup(__self__, _0);
    }
    public static function _private(__self__:stdgo._internal.testing.Testing_f.F):Void {
        stdgo._internal.testing.Testing_f_static_extension.F_static_extension._private(__self__);
    }
    public static function _logDepth(__self__:stdgo._internal.testing.Testing_f.F, _0:String, _1:StdTypes.Int):Void {
        final _0 = (_0 : stdgo.GoString);
        final _1 = (_1 : stdgo.GoInt);
        stdgo._internal.testing.Testing_f_static_extension.F_static_extension._logDepth(__self__, _0, _1);
    }
    public static function _log(__self__:stdgo._internal.testing.Testing_f.F, _0:String):Void {
        final _0 = (_0 : stdgo.GoString);
        stdgo._internal.testing.Testing_f_static_extension.F_static_extension._log(__self__, _0);
    }
    public static function _frameSkip(__self__:stdgo._internal.testing.Testing_f.F, _0:StdTypes.Int):stdgo._internal.runtime.Runtime_frame.Frame {
        final _0 = (_0 : stdgo.GoInt);
        return stdgo._internal.testing.Testing_f_static_extension.F_static_extension._frameSkip(__self__, _0);
    }
    public static function _flushToParent(__self__:stdgo._internal.testing.Testing_f.F, _0:String, _1:String, _2:haxe.Rest<stdgo.AnyInterface>):Void {
        final _0 = (_0 : stdgo.GoString);
        final _1 = (_1 : stdgo.GoString);
        stdgo._internal.testing.Testing_f_static_extension.F_static_extension._flushToParent(__self__, _0, _1, ...[for (i in _2) i]);
    }
    public static function _decorate(__self__:stdgo._internal.testing.Testing_f.F, _0:String, _1:StdTypes.Int):String {
        final _0 = (_0 : stdgo.GoString);
        final _1 = (_1 : stdgo.GoInt);
        return stdgo._internal.testing.Testing_f_static_extension.F_static_extension._decorate(__self__, _0, _1);
    }
    public static function _checkFuzzFn(__self__:stdgo._internal.testing.Testing_f.F, _0:String):Void {
        final _0 = (_0 : stdgo.GoString);
        stdgo._internal.testing.Testing_f_static_extension.F_static_extension._checkFuzzFn(__self__, _0);
    }
    public static function tempDir(__self__:stdgo._internal.testing.Testing_f.F):String {
        return stdgo._internal.testing.Testing_f_static_extension.F_static_extension.tempDir(__self__);
    }
    public static function skipf(__self__:stdgo._internal.testing.Testing_f.F, _0:String, _1:haxe.Rest<stdgo.AnyInterface>):Void {
        final _0 = (_0 : stdgo.GoString);
        stdgo._internal.testing.Testing_f_static_extension.F_static_extension.skipf(__self__, _0, ...[for (i in _1) i]);
    }
    public static function skipNow(__self__:stdgo._internal.testing.Testing_f.F):Void {
        stdgo._internal.testing.Testing_f_static_extension.F_static_extension.skipNow(__self__);
    }
    public static function skip(__self__:stdgo._internal.testing.Testing_f.F, _0:haxe.Rest<stdgo.AnyInterface>):Void {
        stdgo._internal.testing.Testing_f_static_extension.F_static_extension.skip(__self__, ...[for (i in _0) i]);
    }
    public static function setenv(__self__:stdgo._internal.testing.Testing_f.F, _0:String, _1:String):Void {
        final _0 = (_0 : stdgo.GoString);
        final _1 = (_1 : stdgo.GoString);
        stdgo._internal.testing.Testing_f_static_extension.F_static_extension.setenv(__self__, _0, _1);
    }
    public static function name(__self__:stdgo._internal.testing.Testing_f.F):String {
        return stdgo._internal.testing.Testing_f_static_extension.F_static_extension.name(__self__);
    }
    public static function logf(__self__:stdgo._internal.testing.Testing_f.F, _0:String, _1:haxe.Rest<stdgo.AnyInterface>):Void {
        final _0 = (_0 : stdgo.GoString);
        stdgo._internal.testing.Testing_f_static_extension.F_static_extension.logf(__self__, _0, ...[for (i in _1) i]);
    }
    public static function log(__self__:stdgo._internal.testing.Testing_f.F, _0:haxe.Rest<stdgo.AnyInterface>):Void {
        stdgo._internal.testing.Testing_f_static_extension.F_static_extension.log(__self__, ...[for (i in _0) i]);
    }
    public static function fatalf(__self__:stdgo._internal.testing.Testing_f.F, _0:String, _1:haxe.Rest<stdgo.AnyInterface>):Void {
        final _0 = (_0 : stdgo.GoString);
        stdgo._internal.testing.Testing_f_static_extension.F_static_extension.fatalf(__self__, _0, ...[for (i in _1) i]);
    }
    public static function fatal(__self__:stdgo._internal.testing.Testing_f.F, _0:haxe.Rest<stdgo.AnyInterface>):Void {
        stdgo._internal.testing.Testing_f_static_extension.F_static_extension.fatal(__self__, ...[for (i in _0) i]);
    }
    public static function failed(__self__:stdgo._internal.testing.Testing_f.F):Bool {
        return stdgo._internal.testing.Testing_f_static_extension.F_static_extension.failed(__self__);
    }
    public static function failNow(__self__:stdgo._internal.testing.Testing_f.F):Void {
        stdgo._internal.testing.Testing_f_static_extension.F_static_extension.failNow(__self__);
    }
    public static function errorf(__self__:stdgo._internal.testing.Testing_f.F, _0:String, _1:haxe.Rest<stdgo.AnyInterface>):Void {
        final _0 = (_0 : stdgo.GoString);
        stdgo._internal.testing.Testing_f_static_extension.F_static_extension.errorf(__self__, _0, ...[for (i in _1) i]);
    }
    public static function error(__self__:stdgo._internal.testing.Testing_f.F, _0:haxe.Rest<stdgo.AnyInterface>):Void {
        stdgo._internal.testing.Testing_f_static_extension.F_static_extension.error(__self__, ...[for (i in _0) i]);
    }
    public static function cleanup(__self__:stdgo._internal.testing.Testing_f.F, _0:() -> Void):Void {
        final _0 = () -> _0();
        stdgo._internal.testing.Testing_f_static_extension.F_static_extension.cleanup(__self__, _0);
    }
}
@:dox(hide) typedef T_corpusEntryPointer = stdgo._internal.testing.Testing_t_corpusentrypointer.T_corpusEntryPointer;
@:dox(hide) class T_corpusEntry_static_extension {

}
@:dox(hide) typedef T_fuzzResultPointer = stdgo._internal.testing.Testing_t_fuzzresultpointer.T_fuzzResultPointer;
@:dox(hide) class T_fuzzResult_static_extension {
    static public function string(_r:T_fuzzResult):String {
        return stdgo._internal.testing.Testing_t_fuzzresult_static_extension.T_fuzzResult_static_extension.string(_r);
    }
}
@:dox(hide) typedef T_fuzzContextPointer = stdgo._internal.testing.Testing_t_fuzzcontextpointer.T_fuzzContextPointer;
@:dox(hide) class T_fuzzContext_static_extension {

}
@:dox(hide) typedef T_matcherPointer = stdgo._internal.testing.Testing_t_matcherpointer.T_matcherPointer;
@:dox(hide) class T_matcher_static_extension {
    static public function _unique(_m:T_matcher, _parent:String, _subname:String):String {
        final _m = (_m : stdgo.Ref<stdgo._internal.testing.Testing_t_matcher.T_matcher>);
        final _parent = (_parent : stdgo.GoString);
        final _subname = (_subname : stdgo.GoString);
        return stdgo._internal.testing.Testing_t_matcher_static_extension.T_matcher_static_extension._unique(_m, _parent, _subname);
    }
    static public function _clearSubNames(_m:T_matcher):Void {
        final _m = (_m : stdgo.Ref<stdgo._internal.testing.Testing_t_matcher.T_matcher>);
        stdgo._internal.testing.Testing_t_matcher_static_extension.T_matcher_static_extension._clearSubNames(_m);
    }
    static public function _fullName(_m:T_matcher, _c:T_common, _subname:String):stdgo.Tuple.Tuple3<String, Bool, Bool> {
        final _m = (_m : stdgo.Ref<stdgo._internal.testing.Testing_t_matcher.T_matcher>);
        final _c = (_c : stdgo.Ref<stdgo._internal.testing.Testing_t_common.T_common>);
        final _subname = (_subname : stdgo.GoString);
        return {
            final obj = stdgo._internal.testing.Testing_t_matcher_static_extension.T_matcher_static_extension._fullName(_m, _c, _subname);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2 };
        };
    }
}
@:dox(hide) typedef T_chattyFlagPointer = stdgo._internal.testing.Testing_t_chattyflagpointer.T_chattyFlagPointer;
@:dox(hide) class T_chattyFlag_static_extension {
    static public function _prefix(_f:T_chattyFlag):String {
        final _f = (_f : stdgo.Ref<stdgo._internal.testing.Testing_t_chattyflag.T_chattyFlag>);
        return stdgo._internal.testing.Testing_t_chattyflag_static_extension.T_chattyFlag_static_extension._prefix(_f);
    }
    static public function get(_f:T_chattyFlag):stdgo.AnyInterface {
        final _f = (_f : stdgo.Ref<stdgo._internal.testing.Testing_t_chattyflag.T_chattyFlag>);
        return stdgo._internal.testing.Testing_t_chattyflag_static_extension.T_chattyFlag_static_extension.get(_f);
    }
    static public function string(_f:T_chattyFlag):String {
        final _f = (_f : stdgo.Ref<stdgo._internal.testing.Testing_t_chattyflag.T_chattyFlag>);
        return stdgo._internal.testing.Testing_t_chattyflag_static_extension.T_chattyFlag_static_extension.string(_f);
    }
    static public function set(_f:T_chattyFlag, _arg:String):stdgo.Error {
        final _f = (_f : stdgo.Ref<stdgo._internal.testing.Testing_t_chattyflag.T_chattyFlag>);
        final _arg = (_arg : stdgo.GoString);
        return stdgo._internal.testing.Testing_t_chattyflag_static_extension.T_chattyFlag_static_extension.set(_f, _arg);
    }
    static public function isBoolFlag(_:T_chattyFlag):Bool {
        final _ = (_ : stdgo.Ref<stdgo._internal.testing.Testing_t_chattyflag.T_chattyFlag>);
        return stdgo._internal.testing.Testing_t_chattyflag_static_extension.T_chattyFlag_static_extension.isBoolFlag(_);
    }
}
@:dox(hide) typedef T_chattyPrinterPointer = stdgo._internal.testing.Testing_t_chattyprinterpointer.T_chattyPrinterPointer;
@:dox(hide) class T_chattyPrinter_static_extension {
    static public function printf(_p:T_chattyPrinter, _testName:String, _format:String, _args:haxe.Rest<stdgo.AnyInterface>):Void {
        final _p = (_p : stdgo.Ref<stdgo._internal.testing.Testing_t_chattyprinter.T_chattyPrinter>);
        final _testName = (_testName : stdgo.GoString);
        final _format = (_format : stdgo.GoString);
        stdgo._internal.testing.Testing_t_chattyprinter_static_extension.T_chattyPrinter_static_extension.printf(_p, _testName, _format, ...[for (i in _args) i]);
    }
    static public function updatef(_p:T_chattyPrinter, _testName:String, _format:String, _args:haxe.Rest<stdgo.AnyInterface>):Void {
        final _p = (_p : stdgo.Ref<stdgo._internal.testing.Testing_t_chattyprinter.T_chattyPrinter>);
        final _testName = (_testName : stdgo.GoString);
        final _format = (_format : stdgo.GoString);
        stdgo._internal.testing.Testing_t_chattyprinter_static_extension.T_chattyPrinter_static_extension.updatef(_p, _testName, _format, ...[for (i in _args) i]);
    }
    static public function _prefix(_p:T_chattyPrinter):String {
        final _p = (_p : stdgo.Ref<stdgo._internal.testing.Testing_t_chattyprinter.T_chattyPrinter>);
        return stdgo._internal.testing.Testing_t_chattyprinter_static_extension.T_chattyPrinter_static_extension._prefix(_p);
    }
}
@:dox(hide) typedef T_commonPointer = stdgo._internal.testing.Testing_t_commonpointer.T_commonPointer;
@:dox(hide) class T_common_static_extension {
    static public function _runCleanup(_c:T_common, _ph:T_panicHandling):stdgo.AnyInterface {
        final _c = (_c : stdgo.Ref<stdgo._internal.testing.Testing_t_common.T_common>);
        return stdgo._internal.testing.Testing_t_common_static_extension.T_common_static_extension._runCleanup(_c, _ph);
    }
    static public function setenv(_c:T_common, _key:String, _value:String):Void {
        final _c = (_c : stdgo.Ref<stdgo._internal.testing.Testing_t_common.T_common>);
        final _key = (_key : stdgo.GoString);
        final _value = (_value : stdgo.GoString);
        stdgo._internal.testing.Testing_t_common_static_extension.T_common_static_extension.setenv(_c, _key, _value);
    }
    static public function tempDir(_c:T_common):String {
        final _c = (_c : stdgo.Ref<stdgo._internal.testing.Testing_t_common.T_common>);
        return stdgo._internal.testing.Testing_t_common_static_extension.T_common_static_extension.tempDir(_c);
    }
    static public function cleanup(_c:T_common, _f:() -> Void):Void {
        final _c = (_c : stdgo.Ref<stdgo._internal.testing.Testing_t_common.T_common>);
        final _f = () -> _f();
        stdgo._internal.testing.Testing_t_common_static_extension.T_common_static_extension.cleanup(_c, _f);
    }
    static public function helper(_c:T_common):Void {
        final _c = (_c : stdgo.Ref<stdgo._internal.testing.Testing_t_common.T_common>);
        stdgo._internal.testing.Testing_t_common_static_extension.T_common_static_extension.helper(_c);
    }
    static public function skipped(_c:T_common):Bool {
        final _c = (_c : stdgo.Ref<stdgo._internal.testing.Testing_t_common.T_common>);
        return stdgo._internal.testing.Testing_t_common_static_extension.T_common_static_extension.skipped(_c);
    }
    static public function skipNow(_c:T_common):Void {
        final _c = (_c : stdgo.Ref<stdgo._internal.testing.Testing_t_common.T_common>);
        stdgo._internal.testing.Testing_t_common_static_extension.T_common_static_extension.skipNow(_c);
    }
    static public function skipf(_c:T_common, _format:String, _args:haxe.Rest<stdgo.AnyInterface>):Void {
        final _c = (_c : stdgo.Ref<stdgo._internal.testing.Testing_t_common.T_common>);
        final _format = (_format : stdgo.GoString);
        stdgo._internal.testing.Testing_t_common_static_extension.T_common_static_extension.skipf(_c, _format, ...[for (i in _args) i]);
    }
    static public function skip(_c:T_common, _args:haxe.Rest<stdgo.AnyInterface>):Void {
        final _c = (_c : stdgo.Ref<stdgo._internal.testing.Testing_t_common.T_common>);
        stdgo._internal.testing.Testing_t_common_static_extension.T_common_static_extension.skip(_c, ...[for (i in _args) i]);
    }
    static public function fatalf(_c:T_common, _format:String, _args:haxe.Rest<stdgo.AnyInterface>):Void {
        final _c = (_c : stdgo.Ref<stdgo._internal.testing.Testing_t_common.T_common>);
        final _format = (_format : stdgo.GoString);
        stdgo._internal.testing.Testing_t_common_static_extension.T_common_static_extension.fatalf(_c, _format, ...[for (i in _args) i]);
    }
    static public function fatal(_c:T_common, _args:haxe.Rest<stdgo.AnyInterface>):Void {
        final _c = (_c : stdgo.Ref<stdgo._internal.testing.Testing_t_common.T_common>);
        stdgo._internal.testing.Testing_t_common_static_extension.T_common_static_extension.fatal(_c, ...[for (i in _args) i]);
    }
    static public function errorf(_c:T_common, _format:String, _args:haxe.Rest<stdgo.AnyInterface>):Void {
        final _c = (_c : stdgo.Ref<stdgo._internal.testing.Testing_t_common.T_common>);
        final _format = (_format : stdgo.GoString);
        stdgo._internal.testing.Testing_t_common_static_extension.T_common_static_extension.errorf(_c, _format, ...[for (i in _args) i]);
    }
    static public function error(_c:T_common, _args:haxe.Rest<stdgo.AnyInterface>):Void {
        final _c = (_c : stdgo.Ref<stdgo._internal.testing.Testing_t_common.T_common>);
        stdgo._internal.testing.Testing_t_common_static_extension.T_common_static_extension.error(_c, ...[for (i in _args) i]);
    }
    static public function logf(_c:T_common, _format:String, _args:haxe.Rest<stdgo.AnyInterface>):Void {
        final _c = (_c : stdgo.Ref<stdgo._internal.testing.Testing_t_common.T_common>);
        final _format = (_format : stdgo.GoString);
        stdgo._internal.testing.Testing_t_common_static_extension.T_common_static_extension.logf(_c, _format, ...[for (i in _args) i]);
    }
    static public function log(_c:T_common, _args:haxe.Rest<stdgo.AnyInterface>):Void {
        final _c = (_c : stdgo.Ref<stdgo._internal.testing.Testing_t_common.T_common>);
        stdgo._internal.testing.Testing_t_common_static_extension.T_common_static_extension.log(_c, ...[for (i in _args) i]);
    }
    static public function _logDepth(_c:T_common, _s:String, _depth:StdTypes.Int):Void {
        final _c = (_c : stdgo.Ref<stdgo._internal.testing.Testing_t_common.T_common>);
        final _s = (_s : stdgo.GoString);
        final _depth = (_depth : stdgo.GoInt);
        stdgo._internal.testing.Testing_t_common_static_extension.T_common_static_extension._logDepth(_c, _s, _depth);
    }
    static public function _log(_c:T_common, _s:String):Void {
        final _c = (_c : stdgo.Ref<stdgo._internal.testing.Testing_t_common.T_common>);
        final _s = (_s : stdgo.GoString);
        stdgo._internal.testing.Testing_t_common_static_extension.T_common_static_extension._log(_c, _s);
    }
    static public function failNow(_c:T_common):Void {
        final _c = (_c : stdgo.Ref<stdgo._internal.testing.Testing_t_common.T_common>);
        stdgo._internal.testing.Testing_t_common_static_extension.T_common_static_extension.failNow(_c);
    }
    static public function failed(_c:T_common):Bool {
        final _c = (_c : stdgo.Ref<stdgo._internal.testing.Testing_t_common.T_common>);
        return stdgo._internal.testing.Testing_t_common_static_extension.T_common_static_extension.failed(_c);
    }
    static public function fail(_c:T_common):Void {
        final _c = (_c : stdgo.Ref<stdgo._internal.testing.Testing_t_common.T_common>);
        stdgo._internal.testing.Testing_t_common_static_extension.T_common_static_extension.fail(_c);
    }
    static public function _setRan(_c:T_common):Void {
        final _c = (_c : stdgo.Ref<stdgo._internal.testing.Testing_t_common.T_common>);
        stdgo._internal.testing.Testing_t_common_static_extension.T_common_static_extension._setRan(_c);
    }
    static public function name(_c:T_common):String {
        final _c = (_c : stdgo.Ref<stdgo._internal.testing.Testing_t_common.T_common>);
        return stdgo._internal.testing.Testing_t_common_static_extension.T_common_static_extension.name(_c);
    }
    static public function _private(_c:T_common):Void {
        final _c = (_c : stdgo.Ref<stdgo._internal.testing.Testing_t_common.T_common>);
        stdgo._internal.testing.Testing_t_common_static_extension.T_common_static_extension._private(_c);
    }
    static public function _flushToParent(_c:T_common, _testName:String, _format:String, _args:haxe.Rest<stdgo.AnyInterface>):Void {
        final _c = (_c : stdgo.Ref<stdgo._internal.testing.Testing_t_common.T_common>);
        final _testName = (_testName : stdgo.GoString);
        final _format = (_format : stdgo.GoString);
        stdgo._internal.testing.Testing_t_common_static_extension.T_common_static_extension._flushToParent(_c, _testName, _format, ...[for (i in _args) i]);
    }
    static public function _decorate(_c:T_common, _s:String, _skip:StdTypes.Int):String {
        final _c = (_c : stdgo.Ref<stdgo._internal.testing.Testing_t_common.T_common>);
        final _s = (_s : stdgo.GoString);
        final _skip = (_skip : stdgo.GoInt);
        return stdgo._internal.testing.Testing_t_common_static_extension.T_common_static_extension._decorate(_c, _s, _skip);
    }
    static public function _frameSkip(_c:T_common, _skip:StdTypes.Int):stdgo._internal.runtime.Runtime_frame.Frame {
        final _c = (_c : stdgo.Ref<stdgo._internal.testing.Testing_t_common.T_common>);
        final _skip = (_skip : stdgo.GoInt);
        return stdgo._internal.testing.Testing_t_common_static_extension.T_common_static_extension._frameSkip(_c, _skip);
    }
    static public function _checkFuzzFn(_c:T_common, _name:String):Void {
        final _c = (_c : stdgo.Ref<stdgo._internal.testing.Testing_t_common.T_common>);
        final _name = (_name : stdgo.GoString);
        stdgo._internal.testing.Testing_t_common_static_extension.T_common_static_extension._checkFuzzFn(_c, _name);
    }
}
@:dox(hide) typedef T_indenterPointer = stdgo._internal.testing.Testing_t_indenterpointer.T_indenterPointer;
@:dox(hide) class T_indenter_static_extension {
    static public function write(_w:T_indenter, _b:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _b = ([for (i in _b) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.testing.Testing_t_indenter_static_extension.T_indenter_static_extension.write(_w, _b);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
@:dox(hide) typedef T_Pointer = stdgo._internal.testing.Testing_t_pointer.T_Pointer;
@:dox(hide) class T__static_extension {
    static public function _report(_t:T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.testing.Testing_t__static_extension.T__static_extension._report(_t);
    }
    static public function deadline(_t:T_):stdgo.Tuple<stdgo._internal.time.Time_time.Time, Bool> {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        return {
            final obj = stdgo._internal.testing.Testing_t__static_extension.T__static_extension.deadline(_t);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function run(_t:T_, _name:String, _f:T_ -> Void):Bool {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        final _name = (_name : stdgo.GoString);
        final _f = _0 -> _f((_0 : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>));
        return stdgo._internal.testing.Testing_t__static_extension.T__static_extension.run(_t, _name, _f);
    }
    static public function setenv(_t:T_, _key:String, _value:String):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        final _key = (_key : stdgo.GoString);
        final _value = (_value : stdgo.GoString);
        stdgo._internal.testing.Testing_t__static_extension.T__static_extension.setenv(_t, _key, _value);
    }
    static public function parallel(_t:T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.testing.Testing_t__static_extension.T__static_extension.parallel(_t);
    }
    public static function _setRan(__self__:stdgo._internal.testing.Testing_t_.T_):Void {
        stdgo._internal.testing.Testing_t__static_extension.T__static_extension._setRan(__self__);
    }
    public static function _runCleanup(__self__:stdgo._internal.testing.Testing_t_.T_, _0:T_panicHandling):stdgo.AnyInterface {
        return stdgo._internal.testing.Testing_t__static_extension.T__static_extension._runCleanup(__self__, _0);
    }
    public static function _private(__self__:stdgo._internal.testing.Testing_t_.T_):Void {
        stdgo._internal.testing.Testing_t__static_extension.T__static_extension._private(__self__);
    }
    public static function _logDepth(__self__:stdgo._internal.testing.Testing_t_.T_, _0:String, _1:StdTypes.Int):Void {
        final _0 = (_0 : stdgo.GoString);
        final _1 = (_1 : stdgo.GoInt);
        stdgo._internal.testing.Testing_t__static_extension.T__static_extension._logDepth(__self__, _0, _1);
    }
    public static function _log(__self__:stdgo._internal.testing.Testing_t_.T_, _0:String):Void {
        final _0 = (_0 : stdgo.GoString);
        stdgo._internal.testing.Testing_t__static_extension.T__static_extension._log(__self__, _0);
    }
    public static function _frameSkip(__self__:stdgo._internal.testing.Testing_t_.T_, _0:StdTypes.Int):stdgo._internal.runtime.Runtime_frame.Frame {
        final _0 = (_0 : stdgo.GoInt);
        return stdgo._internal.testing.Testing_t__static_extension.T__static_extension._frameSkip(__self__, _0);
    }
    public static function _flushToParent(__self__:stdgo._internal.testing.Testing_t_.T_, _0:String, _1:String, _2:haxe.Rest<stdgo.AnyInterface>):Void {
        final _0 = (_0 : stdgo.GoString);
        final _1 = (_1 : stdgo.GoString);
        stdgo._internal.testing.Testing_t__static_extension.T__static_extension._flushToParent(__self__, _0, _1, ...[for (i in _2) i]);
    }
    public static function _decorate(__self__:stdgo._internal.testing.Testing_t_.T_, _0:String, _1:StdTypes.Int):String {
        final _0 = (_0 : stdgo.GoString);
        final _1 = (_1 : stdgo.GoInt);
        return stdgo._internal.testing.Testing_t__static_extension.T__static_extension._decorate(__self__, _0, _1);
    }
    public static function _checkFuzzFn(__self__:stdgo._internal.testing.Testing_t_.T_, _0:String):Void {
        final _0 = (_0 : stdgo.GoString);
        stdgo._internal.testing.Testing_t__static_extension.T__static_extension._checkFuzzFn(__self__, _0);
    }
    public static function tempDir(__self__:stdgo._internal.testing.Testing_t_.T_):String {
        return stdgo._internal.testing.Testing_t__static_extension.T__static_extension.tempDir(__self__);
    }
    public static function skipped(__self__:stdgo._internal.testing.Testing_t_.T_):Bool {
        return stdgo._internal.testing.Testing_t__static_extension.T__static_extension.skipped(__self__);
    }
    public static function skipf(__self__:stdgo._internal.testing.Testing_t_.T_, _0:String, _1:haxe.Rest<stdgo.AnyInterface>):Void {
        final _0 = (_0 : stdgo.GoString);
        stdgo._internal.testing.Testing_t__static_extension.T__static_extension.skipf(__self__, _0, ...[for (i in _1) i]);
    }
    public static function skipNow(__self__:stdgo._internal.testing.Testing_t_.T_):Void {
        stdgo._internal.testing.Testing_t__static_extension.T__static_extension.skipNow(__self__);
    }
    public static function skip(__self__:stdgo._internal.testing.Testing_t_.T_, _0:haxe.Rest<stdgo.AnyInterface>):Void {
        stdgo._internal.testing.Testing_t__static_extension.T__static_extension.skip(__self__, ...[for (i in _0) i]);
    }
    public static function name(__self__:stdgo._internal.testing.Testing_t_.T_):String {
        return stdgo._internal.testing.Testing_t__static_extension.T__static_extension.name(__self__);
    }
    public static function logf(__self__:stdgo._internal.testing.Testing_t_.T_, _0:String, _1:haxe.Rest<stdgo.AnyInterface>):Void {
        final _0 = (_0 : stdgo.GoString);
        stdgo._internal.testing.Testing_t__static_extension.T__static_extension.logf(__self__, _0, ...[for (i in _1) i]);
    }
    public static function log(__self__:stdgo._internal.testing.Testing_t_.T_, _0:haxe.Rest<stdgo.AnyInterface>):Void {
        stdgo._internal.testing.Testing_t__static_extension.T__static_extension.log(__self__, ...[for (i in _0) i]);
    }
    public static function helper(__self__:stdgo._internal.testing.Testing_t_.T_):Void {
        stdgo._internal.testing.Testing_t__static_extension.T__static_extension.helper(__self__);
    }
    public static function fatalf(__self__:stdgo._internal.testing.Testing_t_.T_, _0:String, _1:haxe.Rest<stdgo.AnyInterface>):Void {
        final _0 = (_0 : stdgo.GoString);
        stdgo._internal.testing.Testing_t__static_extension.T__static_extension.fatalf(__self__, _0, ...[for (i in _1) i]);
    }
    public static function fatal(__self__:stdgo._internal.testing.Testing_t_.T_, _0:haxe.Rest<stdgo.AnyInterface>):Void {
        stdgo._internal.testing.Testing_t__static_extension.T__static_extension.fatal(__self__, ...[for (i in _0) i]);
    }
    public static function failed(__self__:stdgo._internal.testing.Testing_t_.T_):Bool {
        return stdgo._internal.testing.Testing_t__static_extension.T__static_extension.failed(__self__);
    }
    public static function failNow(__self__:stdgo._internal.testing.Testing_t_.T_):Void {
        stdgo._internal.testing.Testing_t__static_extension.T__static_extension.failNow(__self__);
    }
    public static function fail(__self__:stdgo._internal.testing.Testing_t_.T_):Void {
        stdgo._internal.testing.Testing_t__static_extension.T__static_extension.fail(__self__);
    }
    public static function errorf(__self__:stdgo._internal.testing.Testing_t_.T_, _0:String, _1:haxe.Rest<stdgo.AnyInterface>):Void {
        final _0 = (_0 : stdgo.GoString);
        stdgo._internal.testing.Testing_t__static_extension.T__static_extension.errorf(__self__, _0, ...[for (i in _1) i]);
    }
    public static function error(__self__:stdgo._internal.testing.Testing_t_.T_, _0:haxe.Rest<stdgo.AnyInterface>):Void {
        stdgo._internal.testing.Testing_t__static_extension.T__static_extension.error(__self__, ...[for (i in _0) i]);
    }
    public static function cleanup(__self__:stdgo._internal.testing.Testing_t_.T_, _0:() -> Void):Void {
        final _0 = () -> _0();
        stdgo._internal.testing.Testing_t__static_extension.T__static_extension.cleanup(__self__, _0);
    }
}
typedef InternalTestPointer = stdgo._internal.testing.Testing_internaltestpointer.InternalTestPointer;
class InternalTest_static_extension {

}
@:dox(hide) typedef T_testContextPointer = stdgo._internal.testing.Testing_t_testcontextpointer.T_testContextPointer;
@:dox(hide) class T_testContext_static_extension {
    static public function _release(_c:T_testContext):Void {
        final _c = (_c : stdgo.Ref<stdgo._internal.testing.Testing_t_testcontext.T_testContext>);
        stdgo._internal.testing.Testing_t_testcontext_static_extension.T_testContext_static_extension._release(_c);
    }
    static public function _waitParallel(_c:T_testContext):Void {
        final _c = (_c : stdgo.Ref<stdgo._internal.testing.Testing_t_testcontext.T_testContext>);
        stdgo._internal.testing.Testing_t_testcontext_static_extension.T_testContext_static_extension._waitParallel(_c);
    }
}
typedef MPointer = stdgo._internal.testing.Testing_mpointer.MPointer;
class M_static_extension {
    static public function _stopAlarm(_m:M):Void {
        final _m = (_m : stdgo.Ref<stdgo._internal.testing.Testing_m.M>);
        stdgo._internal.testing.Testing_m_static_extension.M_static_extension._stopAlarm(_m);
    }
    static public function _startAlarm(_m:M):stdgo._internal.time.Time_time.Time {
        final _m = (_m : stdgo.Ref<stdgo._internal.testing.Testing_m.M>);
        return stdgo._internal.testing.Testing_m_static_extension.M_static_extension._startAlarm(_m);
    }
    static public function _writeProfiles(_m:M):Void {
        final _m = (_m : stdgo.Ref<stdgo._internal.testing.Testing_m.M>);
        stdgo._internal.testing.Testing_m_static_extension.M_static_extension._writeProfiles(_m);
    }
    static public function _after(_m:M):Void {
        final _m = (_m : stdgo.Ref<stdgo._internal.testing.Testing_m.M>);
        stdgo._internal.testing.Testing_m_static_extension.M_static_extension._after(_m);
    }
    static public function _before(_m:M):Void {
        final _m = (_m : stdgo.Ref<stdgo._internal.testing.Testing_m.M>);
        stdgo._internal.testing.Testing_m_static_extension.M_static_extension._before(_m);
    }
    static public function run(_m:M):StdTypes.Int {
        final _m = (_m : stdgo.Ref<stdgo._internal.testing.Testing_m.M>);
        return stdgo._internal.testing.Testing_m_static_extension.M_static_extension.run(_m);
    }
}
@:dox(hide) typedef T__struct_0PointerPointer = stdgo._internal.testing.Testing_t__struct_0pointerpointer.T__struct_0PointerPointer;
@:dox(hide) class T__struct_0Pointer_static_extension {

}
@:dox(hide) typedef T__struct_1PointerPointer = stdgo._internal.testing.Testing_t__struct_1pointerpointer.T__struct_1PointerPointer;
@:dox(hide) class T__struct_1Pointer_static_extension {

}
@:dox(hide) typedef T_fuzzModePointer = stdgo._internal.testing.Testing_t_fuzzmodepointer.T_fuzzModePointer;
@:dox(hide) class T_fuzzMode_static_extension {

}
@:dox(hide) typedef T_simpleMatchPointer = stdgo._internal.testing.Testing_t_simplematchpointer.T_simpleMatchPointer;
@:dox(hide) class T_simpleMatch_static_extension {
    static public function _verify(_m:T_simpleMatch, _name:String, _matchString:(String, String) -> stdgo.Tuple<Bool, stdgo.Error>):stdgo.Error {
        final _name = (_name : stdgo.GoString);
        final _matchString = (_0, _1) -> _matchString((_0 : stdgo.GoString), (_1 : stdgo.GoString));
        return stdgo._internal.testing.Testing_t_simplematch_static_extension.T_simpleMatch_static_extension._verify(_m, _name, _matchString);
    }
    static public function _matches(_m:T_simpleMatch, _name:Array<String>, _matchString:(String, String) -> stdgo.Tuple<Bool, stdgo.Error>):stdgo.Tuple<Bool, Bool> {
        final _name = ([for (i in _name) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>);
        final _matchString = (_0, _1) -> _matchString((_0 : stdgo.GoString), (_1 : stdgo.GoString));
        return {
            final obj = stdgo._internal.testing.Testing_t_simplematch_static_extension.T_simpleMatch_static_extension._matches(_m, _name, _matchString);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
@:dox(hide) typedef T_alternationMatchPointer = stdgo._internal.testing.Testing_t_alternationmatchpointer.T_alternationMatchPointer;
@:dox(hide) class T_alternationMatch_static_extension {
    static public function _verify(_m:T_alternationMatch, _name:String, _matchString:(String, String) -> stdgo.Tuple<Bool, stdgo.Error>):stdgo.Error {
        final _name = (_name : stdgo.GoString);
        final _matchString = (_0, _1) -> _matchString((_0 : stdgo.GoString), (_1 : stdgo.GoString));
        return stdgo._internal.testing.Testing_t_alternationmatch_static_extension.T_alternationMatch_static_extension._verify(_m, _name, _matchString);
    }
    static public function _matches(_m:T_alternationMatch, _name:Array<String>, _matchString:(String, String) -> stdgo.Tuple<Bool, stdgo.Error>):stdgo.Tuple<Bool, Bool> {
        final _name = ([for (i in _name) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>);
        final _matchString = (_0, _1) -> _matchString((_0 : stdgo.GoString), (_1 : stdgo.GoString));
        return {
            final obj = stdgo._internal.testing.Testing_t_alternationmatch_static_extension.T_alternationMatch_static_extension._matches(_m, _name, _matchString);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
@:dox(hide) typedef T_panicHandlingPointer = stdgo._internal.testing.Testing_t_panichandlingpointer.T_panicHandlingPointer;
@:dox(hide) class T_panicHandling_static_extension {

}
@:dox(hide) typedef T_matchStringOnlyPointer = stdgo._internal.testing.Testing_t_matchstringonlypointer.T_matchStringOnlyPointer;
@:dox(hide) class T_matchStringOnly_static_extension {
    static public function snapshotCoverage(_f:T_matchStringOnly):Void {
        stdgo._internal.testing.Testing_t_matchstringonly_static_extension.T_matchStringOnly_static_extension.snapshotCoverage(_f);
    }
    static public function resetCoverage(_f:T_matchStringOnly):Void {
        stdgo._internal.testing.Testing_t_matchstringonly_static_extension.T_matchStringOnly_static_extension.resetCoverage(_f);
    }
    static public function checkCorpus(_f:T_matchStringOnly, _0:Array<stdgo.AnyInterface>, _1:Array<stdgo._internal.reflect.Reflect_type_.Type_>):stdgo.Error {
        final _0 = ([for (i in _0) (i : stdgo.AnyInterface)] : stdgo.Slice<stdgo.AnyInterface>);
        final _1 = ([for (i in _1) i] : stdgo.Slice<stdgo._internal.reflect.Reflect_type_.Type_>);
        return stdgo._internal.testing.Testing_t_matchstringonly_static_extension.T_matchStringOnly_static_extension.checkCorpus(_f, _0, _1);
    }
    static public function readCorpus(_f:T_matchStringOnly, _0:String, _1:Array<stdgo._internal.reflect.Reflect_type_.Type_>):stdgo.Tuple<Array<stdgo._internal.testing.Testing_t_corpusentry.T_corpusEntry>, stdgo.Error> {
        final _0 = (_0 : stdgo.GoString);
        final _1 = ([for (i in _1) i] : stdgo.Slice<stdgo._internal.reflect.Reflect_type_.Type_>);
        return {
            final obj = stdgo._internal.testing.Testing_t_matchstringonly_static_extension.T_matchStringOnly_static_extension.readCorpus(_f, _0, _1);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    static public function runFuzzWorker(_f:T_matchStringOnly, _0:stdgo._internal.testing.Testing_t_corpusentry.T_corpusEntry -> stdgo.Error):stdgo.Error {
        final _0 = _0 -> _0(_0);
        return stdgo._internal.testing.Testing_t_matchstringonly_static_extension.T_matchStringOnly_static_extension.runFuzzWorker(_f, _0);
    }
    static public function coordinateFuzzing(_f:T_matchStringOnly, _0:stdgo._internal.time.Time_duration.Duration, _1:haxe.Int64, _2:stdgo._internal.time.Time_duration.Duration, _3:haxe.Int64, _4:StdTypes.Int, _5:Array<stdgo._internal.testing.Testing_t_corpusentry.T_corpusEntry>, _6:Array<stdgo._internal.reflect.Reflect_type_.Type_>, _7:String, _8:String):stdgo.Error {
        final _1 = (_1 : stdgo.GoInt64);
        final _3 = (_3 : stdgo.GoInt64);
        final _4 = (_4 : stdgo.GoInt);
        final _5 = ([for (i in _5) i] : stdgo.Slice<stdgo._internal.testing.Testing_t_corpusentry.T_corpusEntry>);
        final _6 = ([for (i in _6) i] : stdgo.Slice<stdgo._internal.reflect.Reflect_type_.Type_>);
        final _7 = (_7 : stdgo.GoString);
        final _8 = (_8 : stdgo.GoString);
        return stdgo._internal.testing.Testing_t_matchstringonly_static_extension.T_matchStringOnly_static_extension.coordinateFuzzing(_f, _0, _1, _2, _3, _4, _5, _6, _7, _8);
    }
    static public function setPanicOnExit0(_f:T_matchStringOnly, _0:Bool):Void {
        stdgo._internal.testing.Testing_t_matchstringonly_static_extension.T_matchStringOnly_static_extension.setPanicOnExit0(_f, _0);
    }
    static public function stopTestLog(_f:T_matchStringOnly):stdgo.Error {
        return stdgo._internal.testing.Testing_t_matchstringonly_static_extension.T_matchStringOnly_static_extension.stopTestLog(_f);
    }
    static public function startTestLog(_f:T_matchStringOnly, _0:stdgo._internal.io.Io_writer.Writer):Void {
        stdgo._internal.testing.Testing_t_matchstringonly_static_extension.T_matchStringOnly_static_extension.startTestLog(_f, _0);
    }
    static public function importPath(_f:T_matchStringOnly):String {
        return stdgo._internal.testing.Testing_t_matchstringonly_static_extension.T_matchStringOnly_static_extension.importPath(_f);
    }
    static public function writeProfileTo(_f:T_matchStringOnly, _0:String, _1:stdgo._internal.io.Io_writer.Writer, _2:StdTypes.Int):stdgo.Error {
        final _0 = (_0 : stdgo.GoString);
        final _2 = (_2 : stdgo.GoInt);
        return stdgo._internal.testing.Testing_t_matchstringonly_static_extension.T_matchStringOnly_static_extension.writeProfileTo(_f, _0, _1, _2);
    }
    static public function stopCPUProfile(_f:T_matchStringOnly):Void {
        stdgo._internal.testing.Testing_t_matchstringonly_static_extension.T_matchStringOnly_static_extension.stopCPUProfile(_f);
    }
    static public function startCPUProfile(_f:T_matchStringOnly, _w:stdgo._internal.io.Io_writer.Writer):stdgo.Error {
        return stdgo._internal.testing.Testing_t_matchstringonly_static_extension.T_matchStringOnly_static_extension.startCPUProfile(_f, _w);
    }
    static public function matchString(_f:T_matchStringOnly, _pat:String, _str:String):stdgo.Tuple<Bool, stdgo.Error> {
        final _pat = (_pat : stdgo.GoString);
        final _str = (_str : stdgo.GoString);
        return {
            final obj = stdgo._internal.testing.Testing_t_matchstringonly_static_extension.T_matchStringOnly_static_extension.matchString(_f, _pat, _str);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
/**
    * Package testing provides support for automated testing of Go packages.
    * It is intended to be used in concert with the "go test" command, which automates
    * execution of any function of the form
    * 
    * 	func TestXxx(*testing.T)
    * 
    * where Xxx does not start with a lowercase letter. The function name
    * serves to identify the test routine.
    * 
    * Within these functions, use the Error, Fail or related methods to signal failure.
    * 
    * To write a new test suite, create a file that
    * contains the TestXxx functions as described here,
    * and give that file a name ending in "_test.go".
    * The file will be excluded from regular
    * package builds but will be included when the "go test" command is run.
    * 
    * The test file can be in the same package as the one being tested,
    * or in a corresponding package with the suffix "_test".
    * 
    * If the test file is in the same package, it may refer to unexported
    * identifiers within the package, as in this example:
    * 
    * 	package abs
    * 
    * 	import "testing"
    * 
    * 	func TestAbs(t *testing.T) {
    * 	    got := Abs(-1)
    * 	    if got != 1 {
    * 	        t.Errorf("Abs(-1) = %d; want 1", got)
    * 	    }
    * 	}
    * 
    * If the file is in a separate "_test" package, the package being tested
    * must be imported explicitly and only its exported identifiers may be used.
    * This is known as "black box" testing.
    * 
    * 	package abs_test
    * 
    * 	import (
    * 		"testing"
    * 
    * 		"path_to_pkg/abs"
    * 	)
    * 
    * 	func TestAbs(t *testing.T) {
    * 	    got := abs.Abs(-1)
    * 	    if got != 1 {
    * 	        t.Errorf("Abs(-1) = %d; want 1", got)
    * 	    }
    * 	}
    * 
    * For more detail, run "go help test" and "go help testflag".
    * 
    * # Benchmarks
    * 
    * Functions of the form
    * 
    * 	func BenchmarkXxx(*testing.B)
    * 
    * are considered benchmarks, and are executed by the "go test" command when
    * its -bench flag is provided. Benchmarks are run sequentially.
    * 
    * For a description of the testing flags, see
    * https://golang.org/cmd/go/#hdr-Testing_flags.
    * 
    * A sample benchmark function looks like this:
    * 
    * 	func BenchmarkRandInt(b *testing.B) {
    * 	    for i := 0; i < b.N; i++ {
    * 	        rand.Int()
    * 	    }
    * 	}
    * 
    * The benchmark function must run the target code b.N times.
    * During benchmark execution, b.N is adjusted until the benchmark function lasts
    * long enough to be timed reliably. The output
    * 
    * 	BenchmarkRandInt-8   	68453040	        17.8 ns/op
    * 
    * means that the loop ran 68453040 times at a speed of 17.8 ns per loop.
    * 
    * If a benchmark needs some expensive setup before running, the timer
    * may be reset:
    * 
    * 	func BenchmarkBigLen(b *testing.B) {
    * 	    big := NewBig()
    * 	    b.ResetTimer()
    * 	    for i := 0; i < b.N; i++ {
    * 	        big.Len()
    * 	    }
    * 	}
    * 
    * If a benchmark needs to test performance in a parallel setting, it may use
    * the RunParallel helper function; such benchmarks are intended to be used with
    * the go test -cpu flag:
    * 
    * 	func BenchmarkTemplateParallel(b *testing.B) {
    * 	    templ := template.Must(template.New("test").Parse("Hello, {{.}}!"))
    * 	    b.RunParallel(func(pb *testing.PB) {
    * 	        var buf bytes.Buffer
    * 	        for pb.Next() {
    * 	            buf.Reset()
    * 	            templ.Execute(&buf, "World")
    * 	        }
    * 	    })
    * 	}
    * 
    * A detailed specification of the benchmark results format is given
    * in https://golang.org/design/14313-benchmark-format.
    * 
    * There are standard tools for working with benchmark results at
    * https://golang.org/x/perf/cmd.
    * In particular, https://golang.org/x/perf/cmd/benchstat performs
    * statistically robust A/B comparisons.
    * 
    * # Examples
    * 
    * The package also runs and verifies example code. Example functions may
    * include a concluding line comment that begins with "Output:" and is compared with
    * the standard output of the function when the tests are run. (The comparison
    * ignores leading and trailing space.) These are examples of an example:
    * 
    * 	func ExampleHello() {
    * 	    fmt.Println("hello")
    * 	    // Output: hello
    * 	}
    * 
    * 	func ExampleSalutations() {
    * 	    fmt.Println("hello, and")
    * 	    fmt.Println("goodbye")
    * 	    // Output:
    * 	    // hello, and
    * 	    // goodbye
    * 	}
    * 
    * The comment prefix "Unordered output:" is like "Output:", but matches any
    * line order:
    * 
    * 	func ExamplePerm() {
    * 	    for _, value := range Perm(5) {
    * 	        fmt.Println(value)
    * 	    }
    * 	    // Unordered output: 4
    * 	    // 2
    * 	    // 1
    * 	    // 3
    * 	    // 0
    * 	}
    * 
    * Example functions without output comments are compiled but not executed.
    * 
    * The naming convention to declare examples for the package, a function F, a type T and
    * method M on type T are:
    * 
    * 	func Example() { ... }
    * 	func ExampleF() { ... }
    * 	func ExampleT() { ... }
    * 	func ExampleT_M() { ... }
    * 
    * Multiple example functions for a package/type/function/method may be provided by
    * appending a distinct suffix to the name. The suffix must start with a
    * lower-case letter.
    * 
    * 	func Example_suffix() { ... }
    * 	func ExampleF_suffix() { ... }
    * 	func ExampleT_suffix() { ... }
    * 	func ExampleT_M_suffix() { ... }
    * 
    * The entire test file is presented as the example when it contains a single
    * example function, at least one other function, type, variable, or constant
    * declaration, and no test or benchmark functions.
    * 
    * # Fuzzing
    * 
    * 'go test' and the testing package support fuzzing, a testing technique where
    * a function is called with randomly generated inputs to find bugs not
    * anticipated by unit tests.
    * 
    * Functions of the form
    * 
    * 	func FuzzXxx(*testing.F)
    * 
    * are considered fuzz tests.
    * 
    * For example:
    * 
    * 	func FuzzHex(f *testing.F) {
    * 	  for _, seed := range [][]byte{{}, {0}, {9}, {0xa}, {0xf}, {1, 2, 3, 4}} {
    * 	    f.Add(seed)
    * 	  }
    * 	  f.Fuzz(func(t *testing.T, in []byte) {
    * 	    enc := hex.EncodeToString(in)
    * 	    out, err := hex.DecodeString(enc)
    * 	    if err != nil {
    * 	      t.Fatalf("%v: decode: %v", in, err)
    * 	    }
    * 	    if !bytes.Equal(in, out) {
    * 	      t.Fatalf("%v: not equal after round trip: %v", in, out)
    * 	    }
    * 	  })
    * 	}
    * 
    * A fuzz test maintains a seed corpus, or a set of inputs which are run by
    * default, and can seed input generation. Seed inputs may be registered by
    * calling (*F).Add or by storing files in the directory testdata/fuzz/<Name>
    * (where <Name> is the name of the fuzz test) within the package containing
    * the fuzz test. Seed inputs are optional, but the fuzzing engine may find
    * bugs more efficiently when provided with a set of small seed inputs with good
    * code coverage. These seed inputs can also serve as regression tests for bugs
    * identified through fuzzing.
    * 
    * The function passed to (*F).Fuzz within the fuzz test is considered the fuzz
    * target. A fuzz target must accept a *T parameter, followed by one or more
    * parameters for random inputs. The types of arguments passed to (*F).Add must
    * be identical to the types of these parameters. The fuzz target may signal
    * that it's found a problem the same way tests do: by calling T.Fail (or any
    * method that calls it like T.Error or T.Fatal) or by panicking.
    * 
    * When fuzzing is enabled (by setting the -fuzz flag to a regular expression
    * that matches a specific fuzz test), the fuzz target is called with arguments
    * generated by repeatedly making random changes to the seed inputs. On
    * supported platforms, 'go test' compiles the test executable with fuzzing
    * coverage instrumentation. The fuzzing engine uses that instrumentation to
    * find and cache inputs that expand coverage, increasing the likelihood of
    * finding bugs. If the fuzz target fails for a given input, the fuzzing engine
    * writes the inputs that caused the failure to a file in the directory
    * testdata/fuzz/<Name> within the package directory. This file later serves as
    * a seed input. If the file can't be written at that location (for example,
    * because the directory is read-only), the fuzzing engine writes the file to
    * the fuzz cache directory within the build cache instead.
    * 
    * When fuzzing is disabled, the fuzz target is called with the seed inputs
    * registered with F.Add and seed inputs from testdata/fuzz/<Name>. In this
    * mode, the fuzz test acts much like a regular test, with subtests started
    * with F.Fuzz instead of T.Run.
    * 
    * See https://go.dev/doc/fuzz for documentation about fuzzing.
    * 
    * # Skipping
    * 
    * Tests or benchmarks may be skipped at run time with a call to
    * the Skip method of *T or *B:
    * 
    * 	func TestTimeConsuming(t *testing.T) {
    * 	    if testing.Short() {
    * 	        t.Skip("skipping test in short mode.")
    * 	    }
    * 	    ...
    * 	}
    * 
    * The Skip method of *T can be used in a fuzz target if the input is invalid,
    * but should not be considered a failing input. For example:
    * 
    * 	func FuzzJSONMarshaling(f *testing.F) {
    * 	    f.Fuzz(func(t *testing.T, b []byte) {
    * 	        var v interface{}
    * 	        if err := json.Unmarshal(b, &v); err != nil {
    * 	            t.Skip()
    * 	        }
    * 	        if _, err := json.Marshal(v); err != nil {
    * 	            t.Errorf("Marshal: %v", err)
    * 	        }
    * 	    })
    * 	}
    * 
    * # Subtests and Sub-benchmarks
    * 
    * The Run methods of T and B allow defining subtests and sub-benchmarks,
    * without having to define separate functions for each. This enables uses
    * like table-driven benchmarks and creating hierarchical tests.
    * It also provides a way to share common setup and tear-down code:
    * 
    * 	func TestFoo(t *testing.T) {
    * 	    // <setup code>
    * 	    t.Run("A=1", func(t *testing.T) { ... })
    * 	    t.Run("A=2", func(t *testing.T) { ... })
    * 	    t.Run("B=1", func(t *testing.T) { ... })
    * 	    // <tear-down code>
    * 	}
    * 
    * Each subtest and sub-benchmark has a unique name: the combination of the name
    * of the top-level test and the sequence of names passed to Run, separated by
    * slashes, with an optional trailing sequence number for disambiguation.
    * 
    * The argument to the -run, -bench, and -fuzz command-line flags is an unanchored regular
    * expression that matches the test's name. For tests with multiple slash-separated
    * elements, such as subtests, the argument is itself slash-separated, with
    * expressions matching each name element in turn. Because it is unanchored, an
    * empty expression matches any string.
    * For example, using "matching" to mean "whose name contains":
    * 
    * 	go test -run ''        # Run all tests.
    * 	go test -run Foo       # Run top-level tests matching "Foo", such as "TestFooBar".
    * 	go test -run Foo/A=    # For top-level tests matching "Foo", run subtests matching "A=".
    * 	go test -run /A=1      # For all top-level tests, run subtests matching "A=1".
    * 	go test -fuzz FuzzFoo  # Fuzz the target matching "FuzzFoo"
    * 
    * The -run argument can also be used to run a specific value in the seed
    * corpus, for debugging. For example:
    * 
    * 	go test -run=FuzzFoo/9ddb952d9814
    * 
    * The -fuzz and -run flags can both be set, in order to fuzz a target but
    * skip the execution of all other tests.
    * 
    * Subtests can also be used to control parallelism. A parent test will only
    * complete once all of its subtests complete. In this example, all tests are
    * run in parallel with each other, and only with each other, regardless of
    * other top-level tests that may be defined:
    * 
    * 	func TestGroupedParallel(t *testing.T) {
    * 	    for _, tc := range tests {
    * 	        tc := tc // capture range variable
    * 	        t.Run(tc.Name, func(t *testing.T) {
    * 	            t.Parallel()
    * 	            ...
    * 	        })
    * 	    }
    * 	}
    * 
    * Run does not return until parallel subtests have completed, providing a way
    * to clean up after a group of parallel tests:
    * 
    * 	func TestTeardownParallel(t *testing.T) {
    * 	    // This Run will not return until the parallel tests finish.
    * 	    t.Run("group", func(t *testing.T) {
    * 	        t.Run("Test1", parallelTest1)
    * 	        t.Run("Test2", parallelTest2)
    * 	        t.Run("Test3", parallelTest3)
    * 	    })
    * 	    // <tear-down code>
    * 	}
    * 
    * # Main
    * 
    * It is sometimes necessary for a test or benchmark program to do extra setup or teardown
    * before or after it executes. It is also sometimes necessary to control
    * which code runs on the main thread. To support these and other cases,
    * if a test file contains a function:
    * 
    * 	func TestMain(m *testing.M)
    * 
    * then the generated test will call TestMain(m) instead of running the tests or benchmarks
    * directly. TestMain runs in the main goroutine and can do whatever setup
    * and teardown is necessary around a call to m.Run. m.Run will return an exit
    * code that may be passed to os.Exit. If TestMain returns, the test wrapper
    * will pass the result of m.Run to os.Exit itself.
    * 
    * When TestMain is called, flag.Parse has not been run. If TestMain depends on
    * command-line flags, including those of the testing package, it should call
    * flag.Parse explicitly. Command line flags are always parsed by the time test
    * or benchmark functions run.
    * 
    * A simple implementation of TestMain is:
    * 
    * 	func TestMain(m *testing.M) {
    * 		// call flag.Parse() here if TestMain uses flags
    * 		os.Exit(m.Run())
    * 	}
    * 
    * TestMain is a low-level primitive and should not be necessary for casual
    * testing needs, where ordinary test functions suffice.
**/
class Testing {
    /**
        * AllocsPerRun returns the average number of allocations during calls to f.
        * Although the return value has type float64, it will always be an integral value.
        * 
        * To compute the number of allocations, the function will first be run once as
        * a warm-up. The average number of allocations over the specified number of
        * runs will then be measured and returned.
        * 
        * AllocsPerRun sets GOMAXPROCS to 1 during its measurement and will restore
        * it before returning.
    **/
    static public inline function allocsPerRun(_runs:StdTypes.Int, _f:() -> Void):StdTypes.Float {
        final _runs = (_runs : stdgo.GoInt);
        final _f = () -> _f();
        return stdgo._internal.testing.Testing_allocsperrun.allocsPerRun(_runs, _f);
    }
    /**
        * RunBenchmarks is an internal function but exported because it is cross-package;
        * it is part of the implementation of the "go test" command.
    **/
    static public inline function runBenchmarks(_matchString:(String, String) -> stdgo.Tuple<Bool, stdgo.Error>, _benchmarks:Array<InternalBenchmark>):Void {
        final _matchString = (_0, _1) -> _matchString((_0 : stdgo.GoString), (_1 : stdgo.GoString));
        final _benchmarks = ([for (i in _benchmarks) i] : stdgo.Slice<stdgo._internal.testing.Testing_internalbenchmark.InternalBenchmark>);
        stdgo._internal.testing.Testing_runbenchmarks.runBenchmarks(_matchString, _benchmarks);
    }
    /**
        * Benchmark benchmarks a single function. It is useful for creating
        * custom benchmarks that do not use the "go test" command.
        * 
        * If f depends on testing flags, then Init must be used to register
        * those flags before calling Benchmark and before calling flag.Parse.
        * 
        * If f calls Run, the result will be an estimate of running all its
        * subbenchmarks that don't call Run in sequence in a single benchmark.
    **/
    static public inline function benchmark(_f:B -> Void):BenchmarkResult {
        final _f = _0 -> _f((_0 : stdgo.Ref<stdgo._internal.testing.Testing_b.B>));
        return stdgo._internal.testing.Testing_benchmark.benchmark(_f);
    }
    /**
        * Coverage reports the current code coverage as a fraction in the range [0, 1].
        * If coverage is not enabled, Coverage returns 0.
        * 
        * When running a large set of sequential test cases, checking Coverage after each one
        * can be useful for identifying which test cases exercise new code paths.
        * It is not a replacement for the reports generated by 'go test -cover' and
        * 'go tool cover'.
    **/
    static public inline function coverage():StdTypes.Float {
        return stdgo._internal.testing.Testing_coverage.coverage();
    }
    /**
        * RegisterCover records the coverage data accumulators for the tests.
        * NOTE: This function is internal to the testing infrastructure and may change.
        * It is not covered (yet) by the Go 1 compatibility guidelines.
    **/
    static public inline function registerCover(_c:Cover):Void {
        stdgo._internal.testing.Testing_registercover.registerCover(_c);
    }
    /**
        * RunExamples is an internal function but exported because it is cross-package;
        * it is part of the implementation of the "go test" command.
    **/
    static public inline function runExamples(_matchString:(String, String) -> stdgo.Tuple<Bool, stdgo.Error>, _examples:Array<InternalExample>):Bool {
        final _matchString = (_0, _1) -> _matchString((_0 : stdgo.GoString), (_1 : stdgo.GoString));
        final _examples = ([for (i in _examples) i] : stdgo.Slice<stdgo._internal.testing.Testing_internalexample.InternalExample>);
        return stdgo._internal.testing.Testing_runexamples.runExamples(_matchString, _examples);
    }
    /**
        * Init registers testing flags. These flags are automatically registered by
        * the "go test" command before running test functions, so Init is only needed
        * when calling functions such as Benchmark without using "go test".
        * 
        * Init has no effect if it was already called.
    **/
    static public inline function init():Void {
        stdgo._internal.testing.Testing_init.init();
    }
    /**
        * Short reports whether the -test.short flag is set.
    **/
    static public inline function short():Bool {
        return stdgo._internal.testing.Testing_short.short();
    }
    /**
        * Testing reports whether the current code is being run in a test.
        * This will report true in programs created by "go test",
        * false in programs created by "go build".
    **/
    static public inline function testing():Bool {
        return stdgo._internal.testing.Testing_testing.testing();
    }
    /**
        * CoverMode reports what the test coverage mode is set to. The
        * values are "set", "count", or "atomic". The return value will be
        * empty if test coverage is not enabled.
    **/
    static public inline function coverMode():String {
        return stdgo._internal.testing.Testing_covermode.coverMode();
    }
    /**
        * Verbose reports whether the -test.v flag is set.
    **/
    static public inline function verbose():Bool {
        return stdgo._internal.testing.Testing_verbose.verbose();
    }
    /**
        * MainStart is meant for use by tests generated by 'go test'.
        * It is not meant to be called directly and is not subject to the Go 1 compatibility document.
        * It may change signature from release to release.
    **/
    static public inline function mainStart(_deps:T_testDeps, _tests:Array<InternalTest>, _benchmarks:Array<InternalBenchmark>, _fuzzTargets:Array<InternalFuzzTarget>, _examples:Array<InternalExample>):M {
        final _tests = ([for (i in _tests) i] : stdgo.Slice<stdgo._internal.testing.Testing_internaltest.InternalTest>);
        final _benchmarks = ([for (i in _benchmarks) i] : stdgo.Slice<stdgo._internal.testing.Testing_internalbenchmark.InternalBenchmark>);
        final _fuzzTargets = ([for (i in _fuzzTargets) i] : stdgo.Slice<stdgo._internal.testing.Testing_internalfuzztarget.InternalFuzzTarget>);
        final _examples = ([for (i in _examples) i] : stdgo.Slice<stdgo._internal.testing.Testing_internalexample.InternalExample>);
        return stdgo._internal.testing.Testing_mainstart.mainStart(_deps, _tests, _benchmarks, _fuzzTargets, _examples);
    }
    /**
        * RunTests is an internal function but exported because it is cross-package;
        * it is part of the implementation of the "go test" command.
    **/
    static public inline function runTests(_matchString:(String, String) -> stdgo.Tuple<Bool, stdgo.Error>, _tests:Array<InternalTest>):Bool {
        final _matchString = (_0, _1) -> _matchString((_0 : stdgo.GoString), (_1 : stdgo.GoString));
        final _tests = ([for (i in _tests) i] : stdgo.Slice<stdgo._internal.testing.Testing_internaltest.InternalTest>);
        return stdgo._internal.testing.Testing_runtests.runTests(_matchString, _tests);
    }
}
