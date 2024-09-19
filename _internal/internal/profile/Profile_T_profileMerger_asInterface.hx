package _internal.internal.profile;
class T_profileMerger_asInterface {
    @:keep
    public dynamic function _mapFunction(_src:stdgo.Ref<_internal.internal.profile.Profile_Function.Function>):stdgo.Ref<_internal.internal.profile.Profile_Function.Function> return __self__.value._mapFunction(_src);
    @:keep
    public dynamic function _mapLine(_src:_internal.internal.profile.Profile_Line.Line):_internal.internal.profile.Profile_Line.Line return __self__.value._mapLine(_src);
    @:keep
    public dynamic function _mapMapping(_src:stdgo.Ref<_internal.internal.profile.Profile_Mapping.Mapping>):_internal.internal.profile.Profile_T_mapInfo.T_mapInfo return __self__.value._mapMapping(_src);
    @:keep
    public dynamic function _mapLocation(_src:stdgo.Ref<_internal.internal.profile.Profile_Location.Location>):stdgo.Ref<_internal.internal.profile.Profile_Location.Location> return __self__.value._mapLocation(_src);
    @:keep
    public dynamic function _mapSample(_src:stdgo.Ref<_internal.internal.profile.Profile_Sample.Sample>):stdgo.Ref<_internal.internal.profile.Profile_Sample.Sample> return __self__.value._mapSample(_src);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<_internal.internal.profile.Profile_T_profileMerger.T_profileMerger>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
