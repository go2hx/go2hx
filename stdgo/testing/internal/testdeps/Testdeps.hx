package stdgo.testing.internal.testdeps;
var importPath(get, set) : String;
private function get_importPath():String return stdgo._internal.testing.internal.testdeps.Testdeps.importPath;
private function set_importPath(v:String):String {
        stdgo._internal.testing.internal.testdeps.Testdeps.importPath = v;
        return v;
    }
@:structInit @:using(stdgo.testing.internal.testdeps.Testdeps.TestDeps_static_extension) abstract TestDeps(stdgo._internal.testing.internal.testdeps.Testdeps.TestDeps) from stdgo._internal.testing.internal.testdeps.Testdeps.TestDeps to stdgo._internal.testing.internal.testdeps.Testdeps.TestDeps {
    public function new() this = new stdgo._internal.testing.internal.testdeps.Testdeps.TestDeps();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:private @:using(stdgo.testing.internal.testdeps.Testdeps.T_testLog_static_extension) abstract T_testLog(stdgo._internal.testing.internal.testdeps.Testdeps.T_testLog) from stdgo._internal.testing.internal.testdeps.Testdeps.T_testLog to stdgo._internal.testing.internal.testdeps.Testdeps.T_testLog {
    public var _mu(get, set) : stdgo._internal.sync.Sync.Mutex;
    function get__mu():stdgo._internal.sync.Sync.Mutex return this._mu;
    function set__mu(v:stdgo._internal.sync.Sync.Mutex):stdgo._internal.sync.Sync.Mutex {
        this._mu = v;
        return v;
    }
    public var _w(get, set) : stdgo._internal.bufio.Bufio.Writer;
    function get__w():stdgo._internal.bufio.Bufio.Writer return this._w;
    function set__w(v:stdgo._internal.bufio.Bufio.Writer):stdgo._internal.bufio.Bufio.Writer {
        this._w = v;
        return v;
    }
    public var _set(get, set) : Bool;
    function get__set():Bool return this._set;
    function set__set(v:Bool):Bool {
        this._set = v;
        return v;
    }
    public function new(?_mu:stdgo._internal.sync.Sync.Mutex, ?_w:stdgo._internal.bufio.Bufio.Writer, ?_set:Bool) this = new stdgo._internal.testing.internal.testdeps.Testdeps.T_testLog(_mu, _w, _set);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
class TestDeps_static_extension {
    static public function snapshotCoverage(_:TestDeps):Void {
        stdgo._internal.testing.internal.testdeps.Testdeps.TestDeps_static_extension.snapshotCoverage(_);
    }
    static public function resetCoverage(_:TestDeps):Void {
        stdgo._internal.testing.internal.testdeps.Testdeps.TestDeps_static_extension.resetCoverage(_);
    }
    static public function checkCorpus(_:TestDeps, _vals:Array<stdgo.AnyInterface>, _types:Array<stdgo._internal.reflect.Reflect.Type_>):stdgo.Error {
        final _vals = ([for (i in _vals) i] : stdgo.Slice<stdgo.AnyInterface>);
        final _types = ([for (i in _types) i] : stdgo.Slice<stdgo._internal.reflect.Reflect.Type_>);
        return stdgo._internal.testing.internal.testdeps.Testdeps.TestDeps_static_extension.checkCorpus(_, _vals, _types);
    }
    static public function readCorpus(_:TestDeps, _dir:String, _types:Array<stdgo._internal.reflect.Reflect.Type_>):stdgo.Tuple<Array<stdgo.Tuple.Tuple6<String, String, Array<std.UInt>, Array<stdgo.AnyInterface>, StdTypes.Int, Bool>>, stdgo.Error> {
        final _types = ([for (i in _types) i] : stdgo.Slice<stdgo._internal.reflect.Reflect.Type_>);
        return {
            final obj = stdgo._internal.testing.internal.testdeps.Testdeps.TestDeps_static_extension.readCorpus(_, _dir, _types);
            { _0 : [for (i in obj._0) {
                final obj = i;
                { parent : obj.parent, path : obj.path, data : [for (i in obj.data) i], values : [for (i in obj.values) i], generation : obj.generation, isSeed : obj.isSeed };
            }], _1 : obj._1 };
        };
    }
    static public function runFuzzWorker(_:TestDeps, _fn:({ var parent : stdgo.GoString; var path : stdgo.GoString; var data : stdgo.Slice<stdgo.GoUInt8>; var values : stdgo.Slice<stdgo.AnyInterface>; var generation : stdgo.GoInt; var isSeed : Bool; }) -> stdgo.Error):stdgo.Error {
        final _fn = _fn;
        return stdgo._internal.testing.internal.testdeps.Testdeps.TestDeps_static_extension.runFuzzWorker(_, _fn);
    }
    static public function coordinateFuzzing(_:TestDeps, _timeout:stdgo._internal.time.Time.Duration, _limit:haxe.Int64, _minimizeTimeout:stdgo._internal.time.Time.Duration, _minimizeLimit:haxe.Int64, _parallel:StdTypes.Int, _seed:Array<stdgo.Tuple.Tuple6<String, String, Array<std.UInt>, Array<stdgo.AnyInterface>, StdTypes.Int, Bool>>, _types:Array<stdgo._internal.reflect.Reflect.Type_>, _corpusDir:String, _cacheDir:String):stdgo.Error {
        final _seed = ([for (i in _seed) {
            final obj = i;
            { parent : obj.parent, path : obj.path, data : ([for (i in obj.data) i] : stdgo.Slice<stdgo.GoUInt8>), values : ([for (i in obj.values) i] : stdgo.Slice<stdgo.AnyInterface>), generation : obj.generation, isSeed : obj.isSeed };
        }] : stdgo.Slice<{ var parent : stdgo.GoString; var path : stdgo.GoString; var data : stdgo.Slice<stdgo.GoUInt8>; var values : stdgo.Slice<stdgo.AnyInterface>; var generation : stdgo.GoInt; var isSeed : Bool; }>);
        final _types = ([for (i in _types) i] : stdgo.Slice<stdgo._internal.reflect.Reflect.Type_>);
        return stdgo._internal.testing.internal.testdeps.Testdeps.TestDeps_static_extension.coordinateFuzzing(_, _timeout, _limit, _minimizeTimeout, _minimizeLimit, _parallel, _seed, _types, _corpusDir, _cacheDir);
    }
    static public function setPanicOnExit0(_:TestDeps, _v:Bool):Void {
        stdgo._internal.testing.internal.testdeps.Testdeps.TestDeps_static_extension.setPanicOnExit0(_, _v);
    }
    static public function stopTestLog(_:TestDeps):stdgo.Error {
        return stdgo._internal.testing.internal.testdeps.Testdeps.TestDeps_static_extension.stopTestLog(_);
    }
    static public function startTestLog(_:TestDeps, _w:stdgo._internal.io.Io.Writer):Void {
        stdgo._internal.testing.internal.testdeps.Testdeps.TestDeps_static_extension.startTestLog(_, _w);
    }
    static public function importPath(_:TestDeps):String {
        return stdgo._internal.testing.internal.testdeps.Testdeps.TestDeps_static_extension.importPath(_);
    }
    static public function writeProfileTo(_:TestDeps, _name:String, _w:stdgo._internal.io.Io.Writer, _debug:StdTypes.Int):stdgo.Error {
        return stdgo._internal.testing.internal.testdeps.Testdeps.TestDeps_static_extension.writeProfileTo(_, _name, _w, _debug);
    }
    static public function stopCPUProfile(_:TestDeps):Void {
        stdgo._internal.testing.internal.testdeps.Testdeps.TestDeps_static_extension.stopCPUProfile(_);
    }
    static public function startCPUProfile(_:TestDeps, _w:stdgo._internal.io.Io.Writer):stdgo.Error {
        return stdgo._internal.testing.internal.testdeps.Testdeps.TestDeps_static_extension.startCPUProfile(_, _w);
    }
    static public function matchString(_:TestDeps, _pat:String, _str:String):stdgo.Tuple<Bool, stdgo.Error> {
        return {
            final obj = stdgo._internal.testing.internal.testdeps.Testdeps.TestDeps_static_extension.matchString(_, _pat, _str);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
class T_testLog_static_extension {
    static public function _add(_l:T_testLog, _op:String, _name:String):Void {
        stdgo._internal.testing.internal.testdeps.Testdeps.T_testLog_static_extension._add(_l, _op, _name);
    }
    static public function chdir(_l:T_testLog, _name:String):Void {
        stdgo._internal.testing.internal.testdeps.Testdeps.T_testLog_static_extension.chdir(_l, _name);
    }
    static public function stat(_l:T_testLog, _name:String):Void {
        stdgo._internal.testing.internal.testdeps.Testdeps.T_testLog_static_extension.stat(_l, _name);
    }
    static public function open(_l:T_testLog, _name:String):Void {
        stdgo._internal.testing.internal.testdeps.Testdeps.T_testLog_static_extension.open(_l, _name);
    }
    static public function getenv(_l:T_testLog, _key:String):Void {
        stdgo._internal.testing.internal.testdeps.Testdeps.T_testLog_static_extension.getenv(_l, _key);
    }
}
/**
    Package testdeps provides access to dependencies needed by test execution.
    
    This package is imported by the generated main package, which passes
    TestDeps into testing.Main. This allows tests to use packages at run time
    without making those packages direct dependencies of package testing.
    Direct dependencies of package testing are harder to write tests for.
**/
class Testdeps {

}
