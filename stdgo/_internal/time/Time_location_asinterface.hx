package stdgo._internal.time;
class Location_asInterface {
    @:keep
    @:tdfield
    public dynamic function _lookupName(_name:stdgo.GoString, _unix:stdgo.GoInt64):{ var _0 : stdgo.GoInt; var _1 : Bool; } return @:_0 __self__.value._lookupName(_name, _unix);
    @:keep
    @:tdfield
    public dynamic function _firstZoneUsed():Bool return @:_0 __self__.value._firstZoneUsed();
    @:keep
    @:tdfield
    public dynamic function _lookupFirstZone():stdgo.GoInt return @:_0 __self__.value._lookupFirstZone();
    @:keep
    @:tdfield
    public dynamic function _lookup(_sec:stdgo.GoInt64):{ var _0 : stdgo.GoString; var _1 : stdgo.GoInt; var _2 : stdgo.GoInt64; var _3 : stdgo.GoInt64; var _4 : Bool; } return @:_0 __self__.value._lookup(_sec);
    @:keep
    @:tdfield
    public dynamic function string():stdgo.GoString return @:_0 __self__.value.string();
    @:keep
    @:tdfield
    public dynamic function _get():stdgo.Ref<stdgo._internal.time.Time_location.Location> return @:_0 __self__.value._get();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.time.Time_locationpointer.LocationPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
