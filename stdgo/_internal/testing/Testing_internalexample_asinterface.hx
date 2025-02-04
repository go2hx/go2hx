package stdgo._internal.testing;
class InternalExample_asInterface {
    @:keep
    @:tdfield
    public dynamic function _processRunResult(_stdout:stdgo.GoString, _timeSpent:stdgo._internal.time.Time_duration.Duration, _finished:Bool, _recovered:stdgo.AnyInterface):Bool return @:_0 __self__.value._processRunResult(_stdout, _timeSpent, _finished, _recovered);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.testing.Testing_internalexamplepointer.InternalExamplePointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
