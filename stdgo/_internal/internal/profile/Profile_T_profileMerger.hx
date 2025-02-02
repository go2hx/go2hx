package stdgo._internal.internal.profile;
@:structInit @:using(stdgo._internal.internal.profile.Profile_T_profileMerger_static_extension.T_profileMerger_static_extension) class T_profileMerger {
    public var _p : stdgo.Ref<stdgo._internal.internal.profile.Profile_Profile.Profile> = (null : stdgo.Ref<stdgo._internal.internal.profile.Profile_Profile.Profile>);
    public var _locationsByID : stdgo.GoMap<stdgo.GoUInt64, stdgo.Ref<stdgo._internal.internal.profile.Profile_Location.Location>> = (null : stdgo.GoMap<stdgo.GoUInt64, stdgo.Ref<stdgo._internal.internal.profile.Profile_Location.Location>>);
    public var _functionsByID : stdgo.GoMap<stdgo.GoUInt64, stdgo.Ref<stdgo._internal.internal.profile.Profile_Function.Function>> = (null : stdgo.GoMap<stdgo.GoUInt64, stdgo.Ref<stdgo._internal.internal.profile.Profile_Function.Function>>);
    public var _mappingsByID : stdgo.GoMap<stdgo.GoUInt64, stdgo._internal.internal.profile.Profile_T_mapInfo.T_mapInfo> = (null : stdgo.GoMap<stdgo.GoUInt64, stdgo._internal.internal.profile.Profile_T_mapInfo.T_mapInfo>);
    public var _samples : stdgo.GoMap<stdgo._internal.internal.profile.Profile_T_sampleKey.T_sampleKey, stdgo.Ref<stdgo._internal.internal.profile.Profile_Sample.Sample>> = (({
        final x:stdgo.GoMap.GoObjectMap<stdgo._internal.internal.profile.Profile_T_sampleKey.T_sampleKey, stdgo.Ref<stdgo._internal.internal.profile.Profile_Sample.Sample>> = null;
        cast x;
    } : stdgo.GoMap<stdgo._internal.internal.profile.Profile_T_sampleKey.T_sampleKey, stdgo.Ref<stdgo._internal.internal.profile.Profile_Sample.Sample>>));
    public var _locations : stdgo.GoMap<stdgo._internal.internal.profile.Profile_T_locationKey.T_locationKey, stdgo.Ref<stdgo._internal.internal.profile.Profile_Location.Location>> = (({
        final x:stdgo.GoMap.GoObjectMap<stdgo._internal.internal.profile.Profile_T_locationKey.T_locationKey, stdgo.Ref<stdgo._internal.internal.profile.Profile_Location.Location>> = null;
        cast x;
    } : stdgo.GoMap<stdgo._internal.internal.profile.Profile_T_locationKey.T_locationKey, stdgo.Ref<stdgo._internal.internal.profile.Profile_Location.Location>>));
    public var _functions : stdgo.GoMap<stdgo._internal.internal.profile.Profile_T_functionKey.T_functionKey, stdgo.Ref<stdgo._internal.internal.profile.Profile_Function.Function>> = (({
        final x:stdgo.GoMap.GoObjectMap<stdgo._internal.internal.profile.Profile_T_functionKey.T_functionKey, stdgo.Ref<stdgo._internal.internal.profile.Profile_Function.Function>> = null;
        cast x;
    } : stdgo.GoMap<stdgo._internal.internal.profile.Profile_T_functionKey.T_functionKey, stdgo.Ref<stdgo._internal.internal.profile.Profile_Function.Function>>));
    public var _mappings : stdgo.GoMap<stdgo._internal.internal.profile.Profile_T_mappingKey.T_mappingKey, stdgo.Ref<stdgo._internal.internal.profile.Profile_Mapping.Mapping>> = (({
        final x:stdgo.GoMap.GoObjectMap<stdgo._internal.internal.profile.Profile_T_mappingKey.T_mappingKey, stdgo.Ref<stdgo._internal.internal.profile.Profile_Mapping.Mapping>> = null;
        cast x;
    } : stdgo.GoMap<stdgo._internal.internal.profile.Profile_T_mappingKey.T_mappingKey, stdgo.Ref<stdgo._internal.internal.profile.Profile_Mapping.Mapping>>));
    public function new(?_p:stdgo.Ref<stdgo._internal.internal.profile.Profile_Profile.Profile>, ?_locationsByID:stdgo.GoMap<stdgo.GoUInt64, stdgo.Ref<stdgo._internal.internal.profile.Profile_Location.Location>>, ?_functionsByID:stdgo.GoMap<stdgo.GoUInt64, stdgo.Ref<stdgo._internal.internal.profile.Profile_Function.Function>>, ?_mappingsByID:stdgo.GoMap<stdgo.GoUInt64, stdgo._internal.internal.profile.Profile_T_mapInfo.T_mapInfo>, ?_samples:stdgo.GoMap<stdgo._internal.internal.profile.Profile_T_sampleKey.T_sampleKey, stdgo.Ref<stdgo._internal.internal.profile.Profile_Sample.Sample>>, ?_locations:stdgo.GoMap<stdgo._internal.internal.profile.Profile_T_locationKey.T_locationKey, stdgo.Ref<stdgo._internal.internal.profile.Profile_Location.Location>>, ?_functions:stdgo.GoMap<stdgo._internal.internal.profile.Profile_T_functionKey.T_functionKey, stdgo.Ref<stdgo._internal.internal.profile.Profile_Function.Function>>, ?_mappings:stdgo.GoMap<stdgo._internal.internal.profile.Profile_T_mappingKey.T_mappingKey, stdgo.Ref<stdgo._internal.internal.profile.Profile_Mapping.Mapping>>) {
        if (_p != null) this._p = _p;
        if (_locationsByID != null) this._locationsByID = _locationsByID;
        if (_functionsByID != null) this._functionsByID = _functionsByID;
        if (_mappingsByID != null) this._mappingsByID = _mappingsByID;
        if (_samples != null) this._samples = _samples;
        if (_locations != null) this._locations = _locations;
        if (_functions != null) this._functions = _functions;
        if (_mappings != null) this._mappings = _mappings;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_profileMerger(_p, _locationsByID, _functionsByID, _mappingsByID, _samples, _locations, _functions, _mappings);
    }
}
