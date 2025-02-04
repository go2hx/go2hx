package stdgo._internal.testing.internal.testdeps;
class TestDeps_asInterface {
    @:keep
    @:tdfield
    public dynamic function snapshotCoverage():Void @:_0 __self__.value.snapshotCoverage();
    @:keep
    @:tdfield
    public dynamic function resetCoverage():Void @:_0 __self__.value.resetCoverage();
    @:keep
    @:tdfield
    public dynamic function checkCorpus(_vals:stdgo.Slice<stdgo.AnyInterface>, _types:stdgo.Slice<stdgo._internal.reflect.Reflect_type_.Type_>):stdgo.Error return @:_0 __self__.value.checkCorpus(_vals, _types);
    @:keep
    @:tdfield
    public dynamic function readCorpus(_dir:stdgo.GoString, _types:stdgo.Slice<stdgo._internal.reflect.Reflect_type_.Type_>):{ var _0 : stdgo.Slice<{ var parent : stdgo.GoString; var path : stdgo.GoString; var data : stdgo.Slice<stdgo.GoUInt8>; var values : stdgo.Slice<stdgo.AnyInterface>; var generation : stdgo.GoInt; var isSeed : Bool; }>; var _1 : stdgo.Error; } return @:_0 __self__.value.readCorpus(_dir, _types);
    @:keep
    @:tdfield
    public dynamic function runFuzzWorker(_fn:({ var parent : stdgo.GoString; var path : stdgo.GoString; var data : stdgo.Slice<stdgo.GoUInt8>; var values : stdgo.Slice<stdgo.AnyInterface>; var generation : stdgo.GoInt; var isSeed : Bool; }) -> stdgo.Error):stdgo.Error return @:_0 __self__.value.runFuzzWorker(_fn);
    @:keep
    @:tdfield
    public dynamic function coordinateFuzzing(_timeout:stdgo._internal.time.Time_duration.Duration, _limit:stdgo.GoInt64, _minimizeTimeout:stdgo._internal.time.Time_duration.Duration, _minimizeLimit:stdgo.GoInt64, _parallel:stdgo.GoInt, _seed:stdgo.Slice<{ var parent : stdgo.GoString; var path : stdgo.GoString; var data : stdgo.Slice<stdgo.GoUInt8>; var values : stdgo.Slice<stdgo.AnyInterface>; var generation : stdgo.GoInt; var isSeed : Bool; }>, _types:stdgo.Slice<stdgo._internal.reflect.Reflect_type_.Type_>, _corpusDir:stdgo.GoString, _cacheDir:stdgo.GoString):stdgo.Error return @:_0 __self__.value.coordinateFuzzing(_timeout, _limit, _minimizeTimeout, _minimizeLimit, _parallel, _seed, _types, _corpusDir, _cacheDir);
    @:keep
    @:tdfield
    public dynamic function setPanicOnExit0(_v:Bool):Void @:_0 __self__.value.setPanicOnExit0(_v);
    @:keep
    @:tdfield
    public dynamic function stopTestLog():stdgo.Error return @:_0 __self__.value.stopTestLog();
    @:keep
    @:tdfield
    public dynamic function startTestLog(_w:stdgo._internal.io.Io_writer.Writer):Void @:_0 __self__.value.startTestLog(_w);
    @:keep
    @:tdfield
    public dynamic function importPath():stdgo.GoString return @:_0 __self__.value.importPath();
    @:keep
    @:tdfield
    public dynamic function writeProfileTo(_name:stdgo.GoString, _w:stdgo._internal.io.Io_writer.Writer, _debug:stdgo.GoInt):stdgo.Error return @:_0 __self__.value.writeProfileTo(_name, _w, _debug);
    @:keep
    @:tdfield
    public dynamic function stopCPUProfile():Void @:_0 __self__.value.stopCPUProfile();
    @:keep
    @:tdfield
    public dynamic function startCPUProfile(_w:stdgo._internal.io.Io_writer.Writer):stdgo.Error return @:_0 __self__.value.startCPUProfile(_w);
    @:keep
    @:tdfield
    public dynamic function matchString(_pat:stdgo.GoString, _str:stdgo.GoString):{ var _0 : Bool; var _1 : stdgo.Error; } return @:_0 __self__.value.matchString(_pat, _str);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.testing.internal.testdeps.Testdeps_testdepspointer.TestDepsPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
