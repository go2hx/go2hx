package stdgo._internal.testing;
@:keep class T_testDeps_static_extension {
    @:interfacetypeffun
    static public function snapshotCoverage(t:stdgo._internal.testing.Testing_T_testDeps.T_testDeps):Void t.snapshotCoverage();
    @:interfacetypeffun
    static public function resetCoverage(t:stdgo._internal.testing.Testing_T_testDeps.T_testDeps):Void t.resetCoverage();
    @:interfacetypeffun
    static public function checkCorpus(t:stdgo._internal.testing.Testing_T_testDeps.T_testDeps, _0:stdgo.Slice<stdgo.AnyInterface>, _1:stdgo.Slice<stdgo._internal.reflect.Reflect_Type_.Type_>):stdgo.Error return t.checkCorpus(_0, _1);
    @:interfacetypeffun
    static public function readCorpus(t:stdgo._internal.testing.Testing_T_testDeps.T_testDeps, _0:stdgo.GoString, _1:stdgo.Slice<stdgo._internal.reflect.Reflect_Type_.Type_>):{ var _0 : stdgo.Slice<{ var parent : stdgo.GoString; var path : stdgo.GoString; var data : stdgo.Slice<stdgo.GoUInt8>; var values : stdgo.Slice<stdgo.AnyInterface>; var generation : stdgo.GoInt; var isSeed : Bool; }>; var _1 : stdgo.Error; } return t.readCorpus(_0, _1);
    @:interfacetypeffun
    static public function runFuzzWorker(t:stdgo._internal.testing.Testing_T_testDeps.T_testDeps, _0:({ var parent : stdgo.GoString; var path : stdgo.GoString; var data : stdgo.Slice<stdgo.GoUInt8>; var values : stdgo.Slice<stdgo.AnyInterface>; var generation : stdgo.GoInt; var isSeed : Bool; }) -> stdgo.Error):stdgo.Error return t.runFuzzWorker(_0);
    @:interfacetypeffun
    static public function coordinateFuzzing(t:stdgo._internal.testing.Testing_T_testDeps.T_testDeps, _0:stdgo._internal.time.Time_Duration.Duration, _1:stdgo.GoInt64, _2:stdgo._internal.time.Time_Duration.Duration, _3:stdgo.GoInt64, _4:stdgo.GoInt, _5:stdgo.Slice<{ var parent : stdgo.GoString; var path : stdgo.GoString; var data : stdgo.Slice<stdgo.GoUInt8>; var values : stdgo.Slice<stdgo.AnyInterface>; var generation : stdgo.GoInt; var isSeed : Bool; }>, _6:stdgo.Slice<stdgo._internal.reflect.Reflect_Type_.Type_>, _7:stdgo.GoString, _8:stdgo.GoString):stdgo.Error return t.coordinateFuzzing(_0, _1, _2, _3, _4, _5, _6, _7, _8);
    @:interfacetypeffun
    static public function writeProfileTo(t:stdgo._internal.testing.Testing_T_testDeps.T_testDeps, _0:stdgo.GoString, _1:stdgo._internal.io.Io_Writer.Writer, _2:stdgo.GoInt):stdgo.Error return t.writeProfileTo(_0, _1, _2);
    @:interfacetypeffun
    static public function stopTestLog(t:stdgo._internal.testing.Testing_T_testDeps.T_testDeps):stdgo.Error return t.stopTestLog();
    @:interfacetypeffun
    static public function startTestLog(t:stdgo._internal.testing.Testing_T_testDeps.T_testDeps, _0:stdgo._internal.io.Io_Writer.Writer):Void t.startTestLog(_0);
    @:interfacetypeffun
    static public function stopCPUProfile(t:stdgo._internal.testing.Testing_T_testDeps.T_testDeps):Void t.stopCPUProfile();
    @:interfacetypeffun
    static public function startCPUProfile(t:stdgo._internal.testing.Testing_T_testDeps.T_testDeps, _0:stdgo._internal.io.Io_Writer.Writer):stdgo.Error return t.startCPUProfile(_0);
    @:interfacetypeffun
    static public function setPanicOnExit0(t:stdgo._internal.testing.Testing_T_testDeps.T_testDeps, _0:Bool):Void t.setPanicOnExit0(_0);
    @:interfacetypeffun
    static public function matchString(t:stdgo._internal.testing.Testing_T_testDeps.T_testDeps, _pat:stdgo.GoString, _str:stdgo.GoString):{ var _0 : Bool; var _1 : stdgo.Error; } return t.matchString(_pat, _str);
    @:interfacetypeffun
    static public function importPath(t:stdgo._internal.testing.Testing_T_testDeps.T_testDeps):stdgo.GoString return t.importPath();
}
