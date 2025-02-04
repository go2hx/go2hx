package stdgo._internal.testing;
class BenchmarkResult_asInterface {
    @:keep
    @:tdfield
    public dynamic function memString():stdgo.GoString return @:_0 __self__.value.memString();
    @:keep
    @:tdfield
    public dynamic function string():stdgo.GoString return @:_0 __self__.value.string();
    @:keep
    @:tdfield
    public dynamic function allocedBytesPerOp():stdgo.GoInt64 return @:_0 __self__.value.allocedBytesPerOp();
    @:keep
    @:tdfield
    public dynamic function allocsPerOp():stdgo.GoInt64 return @:_0 __self__.value.allocsPerOp();
    @:keep
    @:tdfield
    public dynamic function _mbPerSec():stdgo.GoFloat64 return @:_0 __self__.value._mbPerSec();
    @:keep
    @:tdfield
    public dynamic function nsPerOp():stdgo.GoInt64 return @:_0 __self__.value.nsPerOp();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.testing.Testing_benchmarkresultpointer.BenchmarkResultPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
