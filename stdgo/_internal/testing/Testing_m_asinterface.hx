package stdgo._internal.testing;
class M_asInterface {
    @:keep
    @:tdfield
    public dynamic function _stopAlarm():Void @:_0 __self__.value._stopAlarm();
    @:keep
    @:tdfield
    public dynamic function _startAlarm():stdgo._internal.time.Time_time.Time return @:_0 __self__.value._startAlarm();
    @:keep
    @:tdfield
    public dynamic function _writeProfiles():Void @:_0 __self__.value._writeProfiles();
    @:keep
    @:tdfield
    public dynamic function _after():Void @:_0 __self__.value._after();
    @:keep
    @:tdfield
    public dynamic function _before():Void @:_0 __self__.value._before();
    @:keep
    @:tdfield
    public dynamic function run():stdgo.GoInt return @:_0 __self__.value.run();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.testing.Testing_mpointer.MPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
