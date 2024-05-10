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
    static public function snapshotCoverage(:TestDeps):Void {
        stdgo._internal.testing.internal.testdeps.Testdeps.TestDeps_static_extension.snapshotCoverage();
    }
    static public function resetCoverage(:TestDeps):Void {
        stdgo._internal.testing.internal.testdeps.Testdeps.TestDeps_static_extension.resetCoverage();
    }
    static public function checkCorpus(:TestDeps, vals:Array<stdgo.AnyInterface>, types:Array<stdgo._internal.reflect.Reflect.Type_>):stdgo.Error {
        final vals = ([for (i in vals) i] : stdgo.Slice<stdgo.AnyInterface>);
        final types = ([for (i in types) i] : stdgo.Slice<stdgo._internal.reflect.Reflect.Type_>);
        return stdgo._internal.testing.internal.testdeps.Testdeps.TestDeps_static_extension.checkCorpus(, vals, types);
    }
    static public function readCorpus(:TestDeps, dir:String, types:Array<stdgo._internal.reflect.Reflect.Type_>):stdgo.Tuple<Array<stdgo.Tuple.Tuple6<String, String, Array<std.UInt>, Array<stdgo.AnyInterface>, StdTypes.Int, Bool>>, stdgo.Error> {
        final types = ([for (i in types) i] : stdgo.Slice<stdgo._internal.reflect.Reflect.Type_>);
        return {
            final obj = stdgo._internal.testing.internal.testdeps.Testdeps.TestDeps_static_extension.readCorpus(, dir, types);
            { _0 : [for (i in obj._0) {
                final obj = i;
                { parent : obj.parent, path : obj.path, data : [for (i in obj.data) i], values : [for (i in obj.values) i], generation : obj.generation, isSeed : obj.isSeed };
            }], _1 : obj._1 };
        };
    }
    static public function runFuzzWorker(:TestDeps, fn:({ var parent : stdgo.GoString; var path : stdgo.GoString; var data : stdgo.Slice<stdgo.GoUInt8>; var values : stdgo.Slice<stdgo.AnyInterface>; var generation : stdgo.GoInt; var isSeed : Bool; }) -> stdgo.Error):stdgo.Error {
        final fn = fn;
        return stdgo._internal.testing.internal.testdeps.Testdeps.TestDeps_static_extension.runFuzzWorker(, fn);
    }
    static public function coordinateFuzzing(:TestDeps, timeout:stdgo._internal.time.Time.Duration, limit:haxe.Int64, minimizeTimeout:stdgo._internal.time.Time.Duration, minimizeLimit:haxe.Int64, parallel:StdTypes.Int, seed:Array<stdgo.Tuple.Tuple6<String, String, Array<std.UInt>, Array<stdgo.AnyInterface>, StdTypes.Int, Bool>>, types:Array<stdgo._internal.reflect.Reflect.Type_>, corpusDir:String, cacheDir:String):stdgo.Error {
        final seed = ([for (i in seed) {
            final obj = i;
            { parent : #NULL_EXPR, path : #NULL_EXPR, data : ([for (i in obj.data) i] : stdgo.Slice<stdgo.GoUInt8>), values : ([for (i in obj.values) i] : stdgo.Slice<stdgo.AnyInterface>), generation : #NULL_EXPR, isSeed : #NULL_EXPR };
        }] : stdgo.Slice<{ var parent : stdgo.GoString; var path : stdgo.GoString; var data : stdgo.Slice<stdgo.GoUInt8>; var values : stdgo.Slice<stdgo.AnyInterface>; var generation : stdgo.GoInt; var isSeed : Bool; }>);
        final types = ([for (i in types) i] : stdgo.Slice<stdgo._internal.reflect.Reflect.Type_>);
        return stdgo._internal.testing.internal.testdeps.Testdeps.TestDeps_static_extension.coordinateFuzzing(, timeout, limit, minimizeTimeout, minimizeLimit, parallel, seed, types, corpusDir, cacheDir);
    }
    static public function setPanicOnExit0(:TestDeps, v:Bool):Void {
        stdgo._internal.testing.internal.testdeps.Testdeps.TestDeps_static_extension.setPanicOnExit0(, v);
    }
    static public function stopTestLog(:TestDeps):stdgo.Error {
        return stdgo._internal.testing.internal.testdeps.Testdeps.TestDeps_static_extension.stopTestLog();
    }
    static public function startTestLog(:TestDeps, w:stdgo._internal.io.Io.Writer):Void {
        stdgo._internal.testing.internal.testdeps.Testdeps.TestDeps_static_extension.startTestLog(, w);
    }
    static public function importPath(:TestDeps):String {
        return stdgo._internal.testing.internal.testdeps.Testdeps.TestDeps_static_extension.importPath();
    }
    static public function writeProfileTo(:TestDeps, name:String, w:stdgo._internal.io.Io.Writer, debug:StdTypes.Int):stdgo.Error {
        return stdgo._internal.testing.internal.testdeps.Testdeps.TestDeps_static_extension.writeProfileTo(, name, w, debug);
    }
    static public function stopCPUProfile(:TestDeps):Void {
        stdgo._internal.testing.internal.testdeps.Testdeps.TestDeps_static_extension.stopCPUProfile();
    }
    static public function startCPUProfile(:TestDeps, w:stdgo._internal.io.Io.Writer):stdgo.Error {
        return stdgo._internal.testing.internal.testdeps.Testdeps.TestDeps_static_extension.startCPUProfile(, w);
    }
    static public function matchString(:TestDeps, pat:String, str:String):stdgo.Tuple<Bool, stdgo.Error> {
        return {
            final obj = stdgo._internal.testing.internal.testdeps.Testdeps.TestDeps_static_extension.matchString(, pat, str);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
class T_testLog_static_extension {
    static public function _add(l:T_testLog, op:String, name:String):Void {
        stdgo._internal.testing.internal.testdeps.Testdeps.T_testLog_static_extension._add(l, op, name);
    }
    static public function chdir(l:T_testLog, name:String):Void {
        stdgo._internal.testing.internal.testdeps.Testdeps.T_testLog_static_extension.chdir(l, name);
    }
    static public function stat(l:T_testLog, name:String):Void {
        stdgo._internal.testing.internal.testdeps.Testdeps.T_testLog_static_extension.stat(l, name);
    }
    static public function open(l:T_testLog, name:String):Void {
        stdgo._internal.testing.internal.testdeps.Testdeps.T_testLog_static_extension.open(l, name);
    }
    static public function getenv(l:T_testLog, key:String):Void {
        stdgo._internal.testing.internal.testdeps.Testdeps.T_testLog_static_extension.getenv(l, key);
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
