package stdgo.testing.internal.testdeps;
var importPath(get, set) : String;
private function get_importPath():String return stdgo._internal.testing.internal.testdeps.Testdeps_importpath.importPath;
private function set_importPath(v:String):String {
        stdgo._internal.testing.internal.testdeps.Testdeps_importpath.importPath = (v : stdgo.GoString);
        return v;
    }
@:structInit @:using(stdgo.testing.internal.testdeps.Testdeps.TestDeps_static_extension) abstract TestDeps(stdgo._internal.testing.internal.testdeps.Testdeps_testdeps.TestDeps) from stdgo._internal.testing.internal.testdeps.Testdeps_testdeps.TestDeps to stdgo._internal.testing.internal.testdeps.Testdeps_testdeps.TestDeps {
    public function new() this = new stdgo._internal.testing.internal.testdeps.Testdeps_testdeps.TestDeps();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.testing.internal.testdeps.Testdeps.T_testLog_static_extension) @:dox(hide) abstract T_testLog(stdgo._internal.testing.internal.testdeps.Testdeps_t_testlog.T_testLog) from stdgo._internal.testing.internal.testdeps.Testdeps_t_testlog.T_testLog to stdgo._internal.testing.internal.testdeps.Testdeps_t_testlog.T_testLog {
    public var _mu(get, set) : stdgo._internal.sync.Sync_mutex.Mutex;
    function get__mu():stdgo._internal.sync.Sync_mutex.Mutex return this._mu;
    function set__mu(v:stdgo._internal.sync.Sync_mutex.Mutex):stdgo._internal.sync.Sync_mutex.Mutex {
        this._mu = v;
        return v;
    }
    public var _w(get, set) : stdgo._internal.bufio.Bufio_writer.Writer;
    function get__w():stdgo._internal.bufio.Bufio_writer.Writer return this._w;
    function set__w(v:stdgo._internal.bufio.Bufio_writer.Writer):stdgo._internal.bufio.Bufio_writer.Writer {
        this._w = (v : stdgo.Ref<stdgo._internal.bufio.Bufio_writer.Writer>);
        return v;
    }
    public var _set(get, set) : Bool;
    function get__set():Bool return this._set;
    function set__set(v:Bool):Bool {
        this._set = v;
        return v;
    }
    public function new(?_mu:stdgo._internal.sync.Sync_mutex.Mutex, ?_w:stdgo._internal.bufio.Bufio_writer.Writer, ?_set:Bool) this = new stdgo._internal.testing.internal.testdeps.Testdeps_t_testlog.T_testLog(_mu, (_w : stdgo.Ref<stdgo._internal.bufio.Bufio_writer.Writer>), _set);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
typedef TestDepsPointer = stdgo._internal.testing.internal.testdeps.Testdeps_testdepspointer.TestDepsPointer;
class TestDeps_static_extension {
    static public function snapshotCoverage(_:TestDeps):Void {
        stdgo._internal.testing.internal.testdeps.Testdeps_testdeps_static_extension.TestDeps_static_extension.snapshotCoverage(_);
    }
    static public function resetCoverage(_:TestDeps):Void {
        stdgo._internal.testing.internal.testdeps.Testdeps_testdeps_static_extension.TestDeps_static_extension.resetCoverage(_);
    }
    static public function checkCorpus(_:TestDeps, _vals:Array<stdgo.AnyInterface>, _types:Array<stdgo._internal.reflect.Reflect_type_.Type_>):stdgo.Error {
        final _vals = ([for (i in _vals) (i : stdgo.AnyInterface)] : stdgo.Slice<stdgo.AnyInterface>);
        final _types = ([for (i in _types) i] : stdgo.Slice<stdgo._internal.reflect.Reflect_type_.Type_>);
        return stdgo._internal.testing.internal.testdeps.Testdeps_testdeps_static_extension.TestDeps_static_extension.checkCorpus(_, _vals, _types);
    }
    static public function readCorpus(_:TestDeps, _dir:String, _types:Array<stdgo._internal.reflect.Reflect_type_.Type_>):stdgo.Tuple<Array<{ var parent : String; var path : String; var data : Array<std.UInt>; var values : Array<stdgo.AnyInterface>; var generation : StdTypes.Int; var isSeed : Bool; }>, stdgo.Error> {
        final _dir = (_dir : stdgo.GoString);
        final _types = ([for (i in _types) i] : stdgo.Slice<stdgo._internal.reflect.Reflect_type_.Type_>);
        return {
            final obj = stdgo._internal.testing.internal.testdeps.Testdeps_testdeps_static_extension.TestDeps_static_extension.readCorpus(_, _dir, _types);
            { _0 : [for (i in obj._0) {
                final obj = i;
                { parent : obj.parent, path : obj.path, data : [for (i in obj.data) i], values : [for (i in obj.values) i], generation : obj.generation, isSeed : obj.isSeed };
            }], _1 : obj._1 };
        };
    }
    static public function runFuzzWorker(_:TestDeps, _fn:({ var parent : String; var path : String; var data : Array<std.UInt>; var values : Array<stdgo.AnyInterface>; var generation : StdTypes.Int; var isSeed : Bool; }) -> stdgo.Error):stdgo.Error {
        final _fn = _fn;
        return stdgo._internal.testing.internal.testdeps.Testdeps_testdeps_static_extension.TestDeps_static_extension.runFuzzWorker(_, _fn);
    }
    static public function coordinateFuzzing(_:TestDeps, _timeout:stdgo._internal.time.Time_duration.Duration, _limit:haxe.Int64, _minimizeTimeout:stdgo._internal.time.Time_duration.Duration, _minimizeLimit:haxe.Int64, _parallel:StdTypes.Int, _seed:Array<{ var parent : String; var path : String; var data : Array<std.UInt>; var values : Array<stdgo.AnyInterface>; var generation : StdTypes.Int; var isSeed : Bool; }>, _types:Array<stdgo._internal.reflect.Reflect_type_.Type_>, _corpusDir:String, _cacheDir:String):stdgo.Error {
        final _limit = (_limit : stdgo.GoInt64);
        final _minimizeLimit = (_minimizeLimit : stdgo.GoInt64);
        final _parallel = (_parallel : stdgo.GoInt);
        final _seed = ([for (i in _seed) {
            final obj = i;
            { parent : (obj.parent : stdgo.GoString), path : (obj.path : stdgo.GoString), data : ([for (i in obj.data) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>), values : ([for (i in obj.values) (i : stdgo.AnyInterface)] : stdgo.Slice<stdgo.AnyInterface>), generation : (obj.generation : stdgo.GoInt), isSeed : obj.isSeed };
        }] : stdgo.Slice<{ var parent : stdgo.GoString; var path : stdgo.GoString; var data : stdgo.Slice<stdgo.GoUInt8>; var values : stdgo.Slice<stdgo.AnyInterface>; var generation : stdgo.GoInt; var isSeed : Bool; }>);
        final _types = ([for (i in _types) i] : stdgo.Slice<stdgo._internal.reflect.Reflect_type_.Type_>);
        final _corpusDir = (_corpusDir : stdgo.GoString);
        final _cacheDir = (_cacheDir : stdgo.GoString);
        return stdgo._internal.testing.internal.testdeps.Testdeps_testdeps_static_extension.TestDeps_static_extension.coordinateFuzzing(_, _timeout, _limit, _minimizeTimeout, _minimizeLimit, _parallel, _seed, _types, _corpusDir, _cacheDir);
    }
    static public function setPanicOnExit0(_:TestDeps, _v:Bool):Void {
        stdgo._internal.testing.internal.testdeps.Testdeps_testdeps_static_extension.TestDeps_static_extension.setPanicOnExit0(_, _v);
    }
    static public function stopTestLog(_:TestDeps):stdgo.Error {
        return stdgo._internal.testing.internal.testdeps.Testdeps_testdeps_static_extension.TestDeps_static_extension.stopTestLog(_);
    }
    static public function startTestLog(_:TestDeps, _w:stdgo._internal.io.Io_writer.Writer):Void {
        stdgo._internal.testing.internal.testdeps.Testdeps_testdeps_static_extension.TestDeps_static_extension.startTestLog(_, _w);
    }
    static public function importPath(_:TestDeps):String {
        return stdgo._internal.testing.internal.testdeps.Testdeps_testdeps_static_extension.TestDeps_static_extension.importPath(_);
    }
    static public function writeProfileTo(_:TestDeps, _name:String, _w:stdgo._internal.io.Io_writer.Writer, _debug:StdTypes.Int):stdgo.Error {
        final _name = (_name : stdgo.GoString);
        final _debug = (_debug : stdgo.GoInt);
        return stdgo._internal.testing.internal.testdeps.Testdeps_testdeps_static_extension.TestDeps_static_extension.writeProfileTo(_, _name, _w, _debug);
    }
    static public function stopCPUProfile(_:TestDeps):Void {
        stdgo._internal.testing.internal.testdeps.Testdeps_testdeps_static_extension.TestDeps_static_extension.stopCPUProfile(_);
    }
    static public function startCPUProfile(_:TestDeps, _w:stdgo._internal.io.Io_writer.Writer):stdgo.Error {
        return stdgo._internal.testing.internal.testdeps.Testdeps_testdeps_static_extension.TestDeps_static_extension.startCPUProfile(_, _w);
    }
    static public function matchString(_:TestDeps, _pat:String, _str:String):stdgo.Tuple<Bool, stdgo.Error> {
        final _pat = (_pat : stdgo.GoString);
        final _str = (_str : stdgo.GoString);
        return {
            final obj = stdgo._internal.testing.internal.testdeps.Testdeps_testdeps_static_extension.TestDeps_static_extension.matchString(_, _pat, _str);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
@:dox(hide) typedef T_testLogPointer = stdgo._internal.testing.internal.testdeps.Testdeps_t_testlogpointer.T_testLogPointer;
@:dox(hide) class T_testLog_static_extension {
    static public function _add(_l:T_testLog, _op:String, _name:String):Void {
        final _l = (_l : stdgo.Ref<stdgo._internal.testing.internal.testdeps.Testdeps_t_testlog.T_testLog>);
        final _op = (_op : stdgo.GoString);
        final _name = (_name : stdgo.GoString);
        stdgo._internal.testing.internal.testdeps.Testdeps_t_testlog_static_extension.T_testLog_static_extension._add(_l, _op, _name);
    }
    static public function chdir(_l:T_testLog, _name:String):Void {
        final _l = (_l : stdgo.Ref<stdgo._internal.testing.internal.testdeps.Testdeps_t_testlog.T_testLog>);
        final _name = (_name : stdgo.GoString);
        stdgo._internal.testing.internal.testdeps.Testdeps_t_testlog_static_extension.T_testLog_static_extension.chdir(_l, _name);
    }
    static public function stat(_l:T_testLog, _name:String):Void {
        final _l = (_l : stdgo.Ref<stdgo._internal.testing.internal.testdeps.Testdeps_t_testlog.T_testLog>);
        final _name = (_name : stdgo.GoString);
        stdgo._internal.testing.internal.testdeps.Testdeps_t_testlog_static_extension.T_testLog_static_extension.stat(_l, _name);
    }
    static public function open(_l:T_testLog, _name:String):Void {
        final _l = (_l : stdgo.Ref<stdgo._internal.testing.internal.testdeps.Testdeps_t_testlog.T_testLog>);
        final _name = (_name : stdgo.GoString);
        stdgo._internal.testing.internal.testdeps.Testdeps_t_testlog_static_extension.T_testLog_static_extension.open(_l, _name);
    }
    static public function getenv(_l:T_testLog, _key:String):Void {
        final _l = (_l : stdgo.Ref<stdgo._internal.testing.internal.testdeps.Testdeps_t_testlog.T_testLog>);
        final _key = (_key : stdgo.GoString);
        stdgo._internal.testing.internal.testdeps.Testdeps_t_testlog_static_extension.T_testLog_static_extension.getenv(_l, _key);
    }
}
/**
    * Package testdeps provides access to dependencies needed by test execution.
    * 
    * This package is imported by the generated main package, which passes
    * TestDeps into testing.Main. This allows tests to use packages at run time
    * without making those packages direct dependencies of package testing.
    * Direct dependencies of package testing are harder to write tests for.
**/
class Testdeps {

}
