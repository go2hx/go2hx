package stdgo._internal.internal.coverage.decodecounter;
class CounterDataReader_asInterface {
    @:keep
    @:tdfield
    public dynamic function nextFunc(_p:stdgo.Ref<stdgo._internal.internal.coverage.decodecounter.Decodecounter_funcpayload.FuncPayload>):{ var _0 : Bool; var _1 : stdgo.Error; } return @:_0 __self__.value.nextFunc(_p);
    @:keep
    @:tdfield
    public dynamic function numFunctionsInSegment():stdgo.GoUInt32 return @:_0 __self__.value.numFunctionsInSegment();
    @:keep
    @:tdfield
    public dynamic function beginNextSegment():{ var _0 : Bool; var _1 : stdgo.Error; } return @:_0 __self__.value.beginNextSegment();
    @:keep
    @:tdfield
    public dynamic function numSegments():stdgo.GoUInt32 return @:_0 __self__.value.numSegments();
    @:keep
    @:tdfield
    public dynamic function goarch():stdgo.GoString return @:_0 __self__.value.goarch();
    @:keep
    @:tdfield
    public dynamic function goos():stdgo.GoString return @:_0 __self__.value.goos();
    @:keep
    @:tdfield
    public dynamic function osArgs():stdgo.Slice<stdgo.GoString> return @:_0 __self__.value.osArgs();
    @:keep
    @:tdfield
    public dynamic function _readArgs():stdgo.Error return @:_0 __self__.value._readArgs();
    @:keep
    @:tdfield
    public dynamic function _readStringTable():stdgo.Error return @:_0 __self__.value._readStringTable();
    @:keep
    @:tdfield
    public dynamic function _readSegmentPreamble():stdgo.Error return @:_0 __self__.value._readSegmentPreamble();
    @:keep
    @:tdfield
    public dynamic function _readFooter():stdgo.Error return @:_0 __self__.value._readFooter();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.internal.coverage.decodecounter.Decodecounter_counterdatareaderpointer.CounterDataReaderPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
