package stdgo._internal.internal.profile;
class T_profileMerger_asInterface {
    @:keep
    @:tdfield
    public dynamic function _mapFunction(_src:stdgo.Ref<stdgo._internal.internal.profile.Profile_function.Function>):stdgo.Ref<stdgo._internal.internal.profile.Profile_function.Function> return @:_0 __self__.value._mapFunction(_src);
    @:keep
    @:tdfield
    public dynamic function _mapLine(_src:stdgo._internal.internal.profile.Profile_line.Line):stdgo._internal.internal.profile.Profile_line.Line return @:_0 __self__.value._mapLine(_src);
    @:keep
    @:tdfield
    public dynamic function _mapMapping(_src:stdgo.Ref<stdgo._internal.internal.profile.Profile_mapping.Mapping>):stdgo._internal.internal.profile.Profile_t_mapinfo.T_mapInfo return @:_0 __self__.value._mapMapping(_src);
    @:keep
    @:tdfield
    public dynamic function _mapLocation(_src:stdgo.Ref<stdgo._internal.internal.profile.Profile_location.Location>):stdgo.Ref<stdgo._internal.internal.profile.Profile_location.Location> return @:_0 __self__.value._mapLocation(_src);
    @:keep
    @:tdfield
    public dynamic function _mapSample(_src:stdgo.Ref<stdgo._internal.internal.profile.Profile_sample.Sample>):stdgo.Ref<stdgo._internal.internal.profile.Profile_sample.Sample> return @:_0 __self__.value._mapSample(_src);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.internal.profile.Profile_t_profilemergerpointer.T_profileMergerPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
