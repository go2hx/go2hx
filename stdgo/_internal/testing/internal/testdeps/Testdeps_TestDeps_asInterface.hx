package stdgo._internal.testing.internal.testdeps;
class TestDeps_asInterface {
    @:keep
    public dynamic function snapshotCoverage():Void __self__.value.snapshotCoverage();
    @:keep
    public dynamic function resetCoverage():Void __self__.value.resetCoverage();
    @:keep
    public dynamic function checkCorpus(_vals:stdgo.Slice<stdgo.AnyInterface>, _types:stdgo.Slice<stdgo._internal.reflect.Reflect_Type_.Type_>):stdgo.Error return __self__.value.checkCorpus(_vals, _types);
    @:keep
    public dynamic function readCorpus(_dir:stdgo.GoString, _types:stdgo.Slice<stdgo._internal.reflect.Reflect_Type_.Type_>):{ var _0 : stdgo.Slice<{ var parent : stdgo.GoString; var path : stdgo.GoString; var data : stdgo.Slice<stdgo.GoUInt8>; var values : stdgo.Slice<stdgo.AnyInterface>; var generation : stdgo.GoInt; var isSeed : Bool; }>; var _1 : stdgo.Error; } return __self__.value.readCorpus(_dir, _types);
    @:keep
    public dynamic function runFuzzWorker(_fn:({ var parent : stdgo.GoString; var path : stdgo.GoString; var data : stdgo.Slice<stdgo.GoUInt8>; var values : stdgo.Slice<stdgo.AnyInterface>; var generation : stdgo.GoInt; var isSeed : Bool; }) -> stdgo.Error):stdgo.Error return __self__.value.runFuzzWorker(_fn);
    @:keep
    public dynamic function coordinateFuzzing(_timeout:stdgo._internal.time.Time_Duration.Duration, _limit:stdgo.GoInt64, _minimizeTimeout:stdgo._internal.time.Time_Duration.Duration, _minimizeLimit:stdgo.GoInt64, _parallel:stdgo.GoInt, _seed:stdgo.Slice<{ var parent : stdgo.GoString; var path : stdgo.GoString; var data : stdgo.Slice<stdgo.GoUInt8>; var values : stdgo.Slice<stdgo.AnyInterface>; var generation : stdgo.GoInt; var isSeed : Bool; }>, _types:stdgo.Slice<stdgo._internal.reflect.Reflect_Type_.Type_>, _corpusDir:stdgo.GoString, _cacheDir:stdgo.GoString):stdgo.Error return __self__.value.coordinateFuzzing(_timeout, _limit, _minimizeTimeout, _minimizeLimit, _parallel, _seed, _types, _corpusDir, _cacheDir);
    @:keep
    public dynamic function setPanicOnExit0(_v:Bool):Void __self__.value.setPanicOnExit0(_v);
    @:keep
    public dynamic function stopTestLog():stdgo.Error return __self__.value.stopTestLog();
    @:keep
    public dynamic function startTestLog(_w:stdgo._internal.io.Io_Writer.Writer):Void __self__.value.startTestLog(_w);
    @:keep
    public dynamic function importPath():stdgo.GoString return __self__.value.importPath();
    @:keep
    public dynamic function writeProfileTo(_name:stdgo.GoString, _w:stdgo._internal.io.Io_Writer.Writer, _debug:stdgo.GoInt):stdgo.Error return __self__.value.writeProfileTo(_name, _w, _debug);
    @:keep
    public dynamic function stopCPUProfile():Void __self__.value.stopCPUProfile();
    @:keep
    public dynamic function startCPUProfile(_w:stdgo._internal.io.Io_Writer.Writer):stdgo.Error return __self__.value.startCPUProfile(_w);
    @:keep
    public dynamic function matchString(_pat:stdgo.GoString, _str:stdgo.GoString):{ var _0 : Bool; var _1 : stdgo.Error; } return __self__.value.matchString(_pat, _str);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<stdgo._internal.testing.internal.testdeps.Testdeps_TestDeps.TestDeps>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
