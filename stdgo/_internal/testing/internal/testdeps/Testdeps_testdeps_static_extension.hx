package stdgo._internal.testing.internal.testdeps;
@:keep @:allow(stdgo._internal.testing.internal.testdeps.Testdeps.TestDeps_asInterface) class TestDeps_static_extension {
    @:keep
    @:tdfield
    static public function snapshotCoverage( _:stdgo._internal.testing.internal.testdeps.Testdeps_testdeps.TestDeps):Void throw "TestDeps:testing.internal.testdeps.snapshotCoverage is not yet implemented";
    @:keep
    @:tdfield
    static public function resetCoverage( _:stdgo._internal.testing.internal.testdeps.Testdeps_testdeps.TestDeps):Void throw "TestDeps:testing.internal.testdeps.resetCoverage is not yet implemented";
    @:keep
    @:tdfield
    static public function checkCorpus( _:stdgo._internal.testing.internal.testdeps.Testdeps_testdeps.TestDeps, _vals:stdgo.Slice<stdgo.AnyInterface>, _types:stdgo.Slice<stdgo._internal.reflect.Reflect_type_.Type_>):stdgo.Error throw "TestDeps:testing.internal.testdeps.checkCorpus is not yet implemented";
    @:keep
    @:tdfield
    static public function readCorpus( _:stdgo._internal.testing.internal.testdeps.Testdeps_testdeps.TestDeps, _dir:stdgo.GoString, _types:stdgo.Slice<stdgo._internal.reflect.Reflect_type_.Type_>):{ var _0 : stdgo.Slice<{ var parent : stdgo.GoString; var path : stdgo.GoString; var data : stdgo.Slice<stdgo.GoUInt8>; var values : stdgo.Slice<stdgo.AnyInterface>; var generation : stdgo.GoInt; var isSeed : Bool; }>; var _1 : stdgo.Error; } throw "TestDeps:testing.internal.testdeps.readCorpus is not yet implemented";
    @:keep
    @:tdfield
    static public function runFuzzWorker( _:stdgo._internal.testing.internal.testdeps.Testdeps_testdeps.TestDeps, _fn:({ var parent : stdgo.GoString; var path : stdgo.GoString; var data : stdgo.Slice<stdgo.GoUInt8>; var values : stdgo.Slice<stdgo.AnyInterface>; var generation : stdgo.GoInt; var isSeed : Bool; }) -> stdgo.Error):stdgo.Error throw "TestDeps:testing.internal.testdeps.runFuzzWorker is not yet implemented";
    @:keep
    @:tdfield
    static public function coordinateFuzzing( _:stdgo._internal.testing.internal.testdeps.Testdeps_testdeps.TestDeps, _timeout:stdgo._internal.time.Time_duration.Duration, _limit:stdgo.GoInt64, _minimizeTimeout:stdgo._internal.time.Time_duration.Duration, _minimizeLimit:stdgo.GoInt64, _parallel:stdgo.GoInt, _seed:stdgo.Slice<{ var parent : stdgo.GoString; var path : stdgo.GoString; var data : stdgo.Slice<stdgo.GoUInt8>; var values : stdgo.Slice<stdgo.AnyInterface>; var generation : stdgo.GoInt; var isSeed : Bool; }>, _types:stdgo.Slice<stdgo._internal.reflect.Reflect_type_.Type_>, _corpusDir:stdgo.GoString, _cacheDir:stdgo.GoString):stdgo.Error throw "TestDeps:testing.internal.testdeps.coordinateFuzzing is not yet implemented";
    @:keep
    @:tdfield
    static public function setPanicOnExit0( _:stdgo._internal.testing.internal.testdeps.Testdeps_testdeps.TestDeps, _v:Bool):Void throw "TestDeps:testing.internal.testdeps.setPanicOnExit0 is not yet implemented";
    @:keep
    @:tdfield
    static public function stopTestLog( _:stdgo._internal.testing.internal.testdeps.Testdeps_testdeps.TestDeps):stdgo.Error throw "TestDeps:testing.internal.testdeps.stopTestLog is not yet implemented";
    @:keep
    @:tdfield
    static public function startTestLog( _:stdgo._internal.testing.internal.testdeps.Testdeps_testdeps.TestDeps, _w:stdgo._internal.io.Io_writer.Writer):Void throw "TestDeps:testing.internal.testdeps.startTestLog is not yet implemented";
    @:keep
    @:tdfield
    static public function importPath( _:stdgo._internal.testing.internal.testdeps.Testdeps_testdeps.TestDeps):stdgo.GoString throw "TestDeps:testing.internal.testdeps.importPath is not yet implemented";
    @:keep
    @:tdfield
    static public function writeProfileTo( _:stdgo._internal.testing.internal.testdeps.Testdeps_testdeps.TestDeps, _name:stdgo.GoString, _w:stdgo._internal.io.Io_writer.Writer, _debug:stdgo.GoInt):stdgo.Error throw "TestDeps:testing.internal.testdeps.writeProfileTo is not yet implemented";
    @:keep
    @:tdfield
    static public function stopCPUProfile( _:stdgo._internal.testing.internal.testdeps.Testdeps_testdeps.TestDeps):Void throw "TestDeps:testing.internal.testdeps.stopCPUProfile is not yet implemented";
    @:keep
    @:tdfield
    static public function startCPUProfile( _:stdgo._internal.testing.internal.testdeps.Testdeps_testdeps.TestDeps, _w:stdgo._internal.io.Io_writer.Writer):stdgo.Error throw "TestDeps:testing.internal.testdeps.startCPUProfile is not yet implemented";
    @:keep
    @:tdfield
    static public function matchString( _:stdgo._internal.testing.internal.testdeps.Testdeps_testdeps.TestDeps, _pat:stdgo.GoString, _str:stdgo.GoString):{ var _0 : Bool; var _1 : stdgo.Error; } throw "TestDeps:testing.internal.testdeps.matchString is not yet implemented";
}
