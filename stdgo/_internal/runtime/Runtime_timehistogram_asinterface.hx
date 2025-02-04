package stdgo._internal.runtime;
class TimeHistogram_asInterface {
    @:keep
    @:tdfield
    public dynamic function record(_duration:stdgo.GoInt64):Void @:_0 __self__.value.record(_duration);
    @:keep
    @:tdfield
    public dynamic function count(_bucket:stdgo.GoInt, _subBucket:stdgo.GoInt):{ var _0 : stdgo.GoUInt64; var _1 : Bool; } return @:_0 __self__.value.count(_bucket, _subBucket);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.runtime.Runtime_timehistogrampointer.TimeHistogramPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
