package stdgo.testing;
class T_testDeps_static_extension {
    static public function snapshotCoverage(t:stdgo._internal.testing.Testing_T_testDeps.T_testDeps):Void {
        stdgo._internal.testing.Testing_T_testDeps_static_extension.T_testDeps_static_extension.snapshotCoverage(t);
    }
    static public function resetCoverage(t:stdgo._internal.testing.Testing_T_testDeps.T_testDeps):Void {
        stdgo._internal.testing.Testing_T_testDeps_static_extension.T_testDeps_static_extension.resetCoverage(t);
    }
    static public function checkCorpus(t:stdgo._internal.testing.Testing_T_testDeps.T_testDeps, _0:Array<stdgo.AnyInterface>, _1:Array<stdgo._internal.reflect.Reflect_Type_.Type_>):stdgo.Error {
        final _0 = ([for (i in _0) (i : stdgo.AnyInterface)] : stdgo.Slice<stdgo.AnyInterface>);
        final _1 = ([for (i in _1) i] : stdgo.Slice<stdgo._internal.reflect.Reflect_Type_.Type_>);
        return stdgo._internal.testing.Testing_T_testDeps_static_extension.T_testDeps_static_extension.checkCorpus(t, _0, _1);
    }
    static public function readCorpus(t:stdgo._internal.testing.Testing_T_testDeps.T_testDeps, _0:String, _1:Array<stdgo._internal.reflect.Reflect_Type_.Type_>):stdgo.Tuple<Array<stdgo.Tuple.Tuple6<String, String, Array<std.UInt>, Array<stdgo.AnyInterface>, StdTypes.Int, Bool>>, stdgo.Error> {
        final _0 = (_0 : stdgo.GoString);
        final _1 = ([for (i in _1) i] : stdgo.Slice<stdgo._internal.reflect.Reflect_Type_.Type_>);
        return {
            final obj = stdgo._internal.testing.Testing_T_testDeps_static_extension.T_testDeps_static_extension.readCorpus(t, _0, _1);
            { _0 : [for (i in obj._0) {
                final obj = i;
                { parent : obj.parent, path : obj.path, data : [for (i in obj.data) i], values : [for (i in obj.values) i], generation : obj.generation, isSeed : obj.isSeed };
            }], _1 : obj._1 };
        };
    }
    static public function runFuzzWorker(t:stdgo._internal.testing.Testing_T_testDeps.T_testDeps, _0:({ var parent : stdgo.GoString; var path : stdgo.GoString; var data : stdgo.Slice<stdgo.GoUInt8>; var values : stdgo.Slice<stdgo.AnyInterface>; var generation : stdgo.GoInt; var isSeed : Bool; }) -> stdgo.Error):stdgo.Error {
        final _0 = _0;
        return stdgo._internal.testing.Testing_T_testDeps_static_extension.T_testDeps_static_extension.runFuzzWorker(t, _0);
    }
    static public function coordinateFuzzing(t:stdgo._internal.testing.Testing_T_testDeps.T_testDeps, _0:stdgo._internal.time.Time_Duration.Duration, _1:haxe.Int64, _2:stdgo._internal.time.Time_Duration.Duration, _3:haxe.Int64, _4:StdTypes.Int, _5:Array<stdgo.Tuple.Tuple6<String, String, Array<std.UInt>, Array<stdgo.AnyInterface>, StdTypes.Int, Bool>>, _6:Array<stdgo._internal.reflect.Reflect_Type_.Type_>, _7:String, _8:String):stdgo.Error {
        final _1 = (_1 : stdgo.GoInt64);
        final _3 = (_3 : stdgo.GoInt64);
        final _4 = (_4 : stdgo.GoInt);
        final _5 = ([for (i in _5) {
            final obj = i;
            { parent : (obj.parent : stdgo.GoString), path : (obj.path : stdgo.GoString), data : ([for (i in obj.data) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>), values : ([for (i in obj.values) (i : stdgo.AnyInterface)] : stdgo.Slice<stdgo.AnyInterface>), generation : (obj.generation : stdgo.GoInt), isSeed : obj.isSeed };
        }] : stdgo.Slice<{ var parent : stdgo.GoString; var path : stdgo.GoString; var data : stdgo.Slice<stdgo.GoUInt8>; var values : stdgo.Slice<stdgo.AnyInterface>; var generation : stdgo.GoInt; var isSeed : Bool; }>);
        final _6 = ([for (i in _6) i] : stdgo.Slice<stdgo._internal.reflect.Reflect_Type_.Type_>);
        final _7 = (_7 : stdgo.GoString);
        final _8 = (_8 : stdgo.GoString);
        return stdgo._internal.testing.Testing_T_testDeps_static_extension.T_testDeps_static_extension.coordinateFuzzing(t, _0, _1, _2, _3, _4, _5, _6, _7, _8);
    }
    static public function writeProfileTo(t:stdgo._internal.testing.Testing_T_testDeps.T_testDeps, _0:String, _1:stdgo._internal.io.Io_Writer.Writer, _2:StdTypes.Int):stdgo.Error {
        final _0 = (_0 : stdgo.GoString);
        final _2 = (_2 : stdgo.GoInt);
        return stdgo._internal.testing.Testing_T_testDeps_static_extension.T_testDeps_static_extension.writeProfileTo(t, _0, _1, _2);
    }
    static public function stopTestLog(t:stdgo._internal.testing.Testing_T_testDeps.T_testDeps):stdgo.Error {
        return stdgo._internal.testing.Testing_T_testDeps_static_extension.T_testDeps_static_extension.stopTestLog(t);
    }
    static public function startTestLog(t:stdgo._internal.testing.Testing_T_testDeps.T_testDeps, _0:stdgo._internal.io.Io_Writer.Writer):Void {
        stdgo._internal.testing.Testing_T_testDeps_static_extension.T_testDeps_static_extension.startTestLog(t, _0);
    }
    static public function stopCPUProfile(t:stdgo._internal.testing.Testing_T_testDeps.T_testDeps):Void {
        stdgo._internal.testing.Testing_T_testDeps_static_extension.T_testDeps_static_extension.stopCPUProfile(t);
    }
    static public function startCPUProfile(t:stdgo._internal.testing.Testing_T_testDeps.T_testDeps, _0:stdgo._internal.io.Io_Writer.Writer):stdgo.Error {
        return stdgo._internal.testing.Testing_T_testDeps_static_extension.T_testDeps_static_extension.startCPUProfile(t, _0);
    }
    static public function setPanicOnExit0(t:stdgo._internal.testing.Testing_T_testDeps.T_testDeps, _0:Bool):Void {
        stdgo._internal.testing.Testing_T_testDeps_static_extension.T_testDeps_static_extension.setPanicOnExit0(t, _0);
    }
    static public function matchString(t:stdgo._internal.testing.Testing_T_testDeps.T_testDeps, _pat:String, _str:String):stdgo.Tuple<Bool, stdgo.Error> {
        final _pat = (_pat : stdgo.GoString);
        final _str = (_str : stdgo.GoString);
        return {
            final obj = stdgo._internal.testing.Testing_T_testDeps_static_extension.T_testDeps_static_extension.matchString(t, _pat, _str);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function importPath(t:stdgo._internal.testing.Testing_T_testDeps.T_testDeps):String {
        return stdgo._internal.testing.Testing_T_testDeps_static_extension.T_testDeps_static_extension.importPath(t);
    }
}
