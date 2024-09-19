package stdgo._internal.testing;
class T_matchStringOnly_asInterface {
    @:keep
    public dynamic function snapshotCoverage():Void __self__.value.snapshotCoverage();
    @:keep
    public dynamic function resetCoverage():Void __self__.value.resetCoverage();
    @:keep
    public dynamic function checkCorpus(_0:stdgo.Slice<stdgo.AnyInterface>, _1:stdgo.Slice<stdgo._internal.reflect.Reflect_Type_.Type_>):stdgo.Error return __self__.value.checkCorpus(_0, _1);
    @:keep
    public dynamic function readCorpus(_0:stdgo.GoString, _1:stdgo.Slice<stdgo._internal.reflect.Reflect_Type_.Type_>):{ var _0 : stdgo.Slice<stdgo._internal.testing.Testing_T_corpusEntry.T_corpusEntry>; var _1 : stdgo.Error; } return __self__.value.readCorpus(_0, _1);
    @:keep
    public dynamic function runFuzzWorker(_0:stdgo._internal.testing.Testing_T_corpusEntry.T_corpusEntry -> stdgo.Error):stdgo.Error return __self__.value.runFuzzWorker(_0);
    @:keep
    public dynamic function coordinateFuzzing(_0:stdgo._internal.time.Time_Duration.Duration, _1:stdgo.GoInt64, _2:stdgo._internal.time.Time_Duration.Duration, _3:stdgo.GoInt64, _4:stdgo.GoInt, _5:stdgo.Slice<stdgo._internal.testing.Testing_T_corpusEntry.T_corpusEntry>, _6:stdgo.Slice<stdgo._internal.reflect.Reflect_Type_.Type_>, _7:stdgo.GoString, _8:stdgo.GoString):stdgo.Error return __self__.value.coordinateFuzzing(_0, _1, _2, _3, _4, _5, _6, _7, _8);
    @:keep
    public dynamic function setPanicOnExit0(_0:Bool):Void __self__.value.setPanicOnExit0(_0);
    @:keep
    public dynamic function stopTestLog():stdgo.Error return __self__.value.stopTestLog();
    @:keep
    public dynamic function startTestLog(_0:stdgo._internal.io.Io_Writer.Writer):Void __self__.value.startTestLog(_0);
    @:keep
    public dynamic function importPath():stdgo.GoString return __self__.value.importPath();
    @:keep
    public dynamic function writeProfileTo(_0:stdgo.GoString, _1:stdgo._internal.io.Io_Writer.Writer, _2:stdgo.GoInt):stdgo.Error return __self__.value.writeProfileTo(_0, _1, _2);
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
    var __self__ : stdgo.Pointer<stdgo._internal.testing.Testing_T_matchStringOnly.T_matchStringOnly>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
