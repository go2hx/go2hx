package stdgo.testing.internal.testdeps;
class TestDeps_static_extension {
    static public function snapshotCoverage(_:TestDeps):Void {
        stdgo._internal.testing.internal.testdeps.Testdeps_TestDeps_static_extension.TestDeps_static_extension.snapshotCoverage(_);
    }
    static public function resetCoverage(_:TestDeps):Void {
        stdgo._internal.testing.internal.testdeps.Testdeps_TestDeps_static_extension.TestDeps_static_extension.resetCoverage(_);
    }
    static public function checkCorpus(_:TestDeps, _vals:Array<stdgo.AnyInterface>, _types:Array<stdgo._internal.reflect.Reflect_Type_.Type_>):stdgo.Error {
        final _vals = ([for (i in _vals) (i : stdgo.AnyInterface)] : stdgo.Slice<stdgo.AnyInterface>);
        final _types = ([for (i in _types) i] : stdgo.Slice<stdgo._internal.reflect.Reflect_Type_.Type_>);
        return stdgo._internal.testing.internal.testdeps.Testdeps_TestDeps_static_extension.TestDeps_static_extension.checkCorpus(_, _vals, _types);
    }
    static public function readCorpus(_:TestDeps, _dir:String, _types:Array<stdgo._internal.reflect.Reflect_Type_.Type_>):stdgo.Tuple<Array<stdgo.Tuple.Tuple6<String, String, Array<std.UInt>, Array<stdgo.AnyInterface>, StdTypes.Int, Bool>>, stdgo.Error> {
        final _dir = (_dir : stdgo.GoString);
        final _types = ([for (i in _types) i] : stdgo.Slice<stdgo._internal.reflect.Reflect_Type_.Type_>);
        return {
            final obj = stdgo._internal.testing.internal.testdeps.Testdeps_TestDeps_static_extension.TestDeps_static_extension.readCorpus(_, _dir, _types);
            { _0 : [for (i in obj._0) {
                final obj = i;
                { parent : obj.parent, path : obj.path, data : [for (i in obj.data) i], values : [for (i in obj.values) i], generation : obj.generation, isSeed : obj.isSeed };
            }], _1 : obj._1 };
        };
    }
    static public function runFuzzWorker(_:TestDeps, _fn:({ var parent : stdgo.GoString; var path : stdgo.GoString; var data : stdgo.Slice<stdgo.GoUInt8>; var values : stdgo.Slice<stdgo.AnyInterface>; var generation : stdgo.GoInt; var isSeed : Bool; }) -> stdgo.Error):stdgo.Error {
        final _fn = _fn;
        return stdgo._internal.testing.internal.testdeps.Testdeps_TestDeps_static_extension.TestDeps_static_extension.runFuzzWorker(_, _fn);
    }
    static public function coordinateFuzzing(_:TestDeps, _timeout:stdgo._internal.time.Time_Duration.Duration, _limit:haxe.Int64, _minimizeTimeout:stdgo._internal.time.Time_Duration.Duration, _minimizeLimit:haxe.Int64, _parallel:StdTypes.Int, _seed:Array<stdgo.Tuple.Tuple6<String, String, Array<std.UInt>, Array<stdgo.AnyInterface>, StdTypes.Int, Bool>>, _types:Array<stdgo._internal.reflect.Reflect_Type_.Type_>, _corpusDir:String, _cacheDir:String):stdgo.Error {
        final _limit = (_limit : stdgo.GoInt64);
        final _minimizeLimit = (_minimizeLimit : stdgo.GoInt64);
        final _parallel = (_parallel : stdgo.GoInt);
        final _seed = ([for (i in _seed) {
            final obj = i;
            { parent : (obj.parent : stdgo.GoString), path : (obj.path : stdgo.GoString), data : ([for (i in obj.data) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>), values : ([for (i in obj.values) (i : stdgo.AnyInterface)] : stdgo.Slice<stdgo.AnyInterface>), generation : (obj.generation : stdgo.GoInt), isSeed : obj.isSeed };
        }] : stdgo.Slice<{ var parent : stdgo.GoString; var path : stdgo.GoString; var data : stdgo.Slice<stdgo.GoUInt8>; var values : stdgo.Slice<stdgo.AnyInterface>; var generation : stdgo.GoInt; var isSeed : Bool; }>);
        final _types = ([for (i in _types) i] : stdgo.Slice<stdgo._internal.reflect.Reflect_Type_.Type_>);
        final _corpusDir = (_corpusDir : stdgo.GoString);
        final _cacheDir = (_cacheDir : stdgo.GoString);
        return stdgo._internal.testing.internal.testdeps.Testdeps_TestDeps_static_extension.TestDeps_static_extension.coordinateFuzzing(_, _timeout, _limit, _minimizeTimeout, _minimizeLimit, _parallel, _seed, _types, _corpusDir, _cacheDir);
    }
    static public function setPanicOnExit0(_:TestDeps, _v:Bool):Void {
        stdgo._internal.testing.internal.testdeps.Testdeps_TestDeps_static_extension.TestDeps_static_extension.setPanicOnExit0(_, _v);
    }
    static public function stopTestLog(_:TestDeps):stdgo.Error {
        return stdgo._internal.testing.internal.testdeps.Testdeps_TestDeps_static_extension.TestDeps_static_extension.stopTestLog(_);
    }
    static public function startTestLog(_:TestDeps, _w:stdgo._internal.io.Io_Writer.Writer):Void {
        stdgo._internal.testing.internal.testdeps.Testdeps_TestDeps_static_extension.TestDeps_static_extension.startTestLog(_, _w);
    }
    static public function importPath(_:TestDeps):String {
        return stdgo._internal.testing.internal.testdeps.Testdeps_TestDeps_static_extension.TestDeps_static_extension.importPath(_);
    }
    static public function writeProfileTo(_:TestDeps, _name:String, _w:stdgo._internal.io.Io_Writer.Writer, _debug:StdTypes.Int):stdgo.Error {
        final _name = (_name : stdgo.GoString);
        final _debug = (_debug : stdgo.GoInt);
        return stdgo._internal.testing.internal.testdeps.Testdeps_TestDeps_static_extension.TestDeps_static_extension.writeProfileTo(_, _name, _w, _debug);
    }
    static public function stopCPUProfile(_:TestDeps):Void {
        stdgo._internal.testing.internal.testdeps.Testdeps_TestDeps_static_extension.TestDeps_static_extension.stopCPUProfile(_);
    }
    static public function startCPUProfile(_:TestDeps, _w:stdgo._internal.io.Io_Writer.Writer):stdgo.Error {
        return stdgo._internal.testing.internal.testdeps.Testdeps_TestDeps_static_extension.TestDeps_static_extension.startCPUProfile(_, _w);
    }
    static public function matchString(_:TestDeps, _pat:String, _str:String):stdgo.Tuple<Bool, stdgo.Error> {
        final _pat = (_pat : stdgo.GoString);
        final _str = (_str : stdgo.GoString);
        return {
            final obj = stdgo._internal.testing.internal.testdeps.Testdeps_TestDeps_static_extension.TestDeps_static_extension.matchString(_, _pat, _str);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
