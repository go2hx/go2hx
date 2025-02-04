package stdgo._internal.runtime;
class T_dlogger_asInterface {
    @:keep
    @:tdfield
    public dynamic function pC(_x:stdgo.GoUIntptr):stdgo.Ref<stdgo._internal.runtime.Runtime_t_dlogger.T_dlogger> return @:_0 __self__.value.pC(_x);
    @:keep
    @:tdfield
    public dynamic function s(_x:stdgo.GoString):stdgo.Ref<stdgo._internal.runtime.Runtime_t_dlogger.T_dlogger> return @:_0 __self__.value.s(_x);
    @:keep
    @:tdfield
    public dynamic function p(_x:stdgo.AnyInterface):stdgo.Ref<stdgo._internal.runtime.Runtime_t_dlogger.T_dlogger> return @:_0 __self__.value.p(_x);
    @:keep
    @:tdfield
    public dynamic function hex(_x:stdgo.GoUInt64):stdgo.Ref<stdgo._internal.runtime.Runtime_t_dlogger.T_dlogger> return @:_0 __self__.value.hex(_x);
    @:keep
    @:tdfield
    public dynamic function u64(_x:stdgo.GoUInt64):stdgo.Ref<stdgo._internal.runtime.Runtime_t_dlogger.T_dlogger> return @:_0 __self__.value.u64(_x);
    @:keep
    @:tdfield
    public dynamic function i16(_x:stdgo.GoInt16):stdgo.Ref<stdgo._internal.runtime.Runtime_t_dlogger.T_dlogger> return @:_0 __self__.value.i16(_x);
    @:keep
    @:tdfield
    public dynamic function i(_x:stdgo.GoInt):stdgo.Ref<stdgo._internal.runtime.Runtime_t_dlogger.T_dlogger> return @:_0 __self__.value.i(_x);
    @:keep
    @:tdfield
    public dynamic function b(_x:Bool):stdgo.Ref<stdgo._internal.runtime.Runtime_t_dlogger.T_dlogger> return @:_0 __self__.value.b(_x);
    @:keep
    @:tdfield
    public dynamic function end():Void @:_0 __self__.value.end();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.runtime.Runtime_t_dloggerpointer.T_dloggerPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
