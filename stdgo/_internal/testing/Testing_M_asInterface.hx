package stdgo._internal.testing;
class M_asInterface {
    @:keep
    public dynamic function _stopAlarm():Void __self__.value._stopAlarm();
    @:keep
    public dynamic function _startAlarm():stdgo._internal.time.Time_Time.Time return __self__.value._startAlarm();
    @:keep
    public dynamic function _writeProfiles():Void __self__.value._writeProfiles();
    @:keep
    public dynamic function _after():Void __self__.value._after();
    @:keep
    public dynamic function _before():Void __self__.value._before();
    @:keep
    public dynamic function run():stdgo.GoInt return __self__.value.run();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<stdgo._internal.testing.Testing_M.M>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
