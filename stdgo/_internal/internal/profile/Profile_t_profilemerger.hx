package stdgo._internal.internal.profile;
@:structInit @:using(stdgo._internal.internal.profile.Profile_t_profilemerger_static_extension.T_profileMerger_static_extension) class T_profileMerger {
    public var _p : stdgo.Ref<stdgo._internal.internal.profile.Profile_profile.Profile> = (null : stdgo.Ref<stdgo._internal.internal.profile.Profile_profile.Profile>);
    public var _locationsByID : stdgo.GoMap<stdgo.GoUInt64, stdgo.Ref<stdgo._internal.internal.profile.Profile_location.Location>> = (null : stdgo.GoMap<stdgo.GoUInt64, stdgo.Ref<stdgo._internal.internal.profile.Profile_location.Location>>);
    public var _functionsByID : stdgo.GoMap<stdgo.GoUInt64, stdgo.Ref<stdgo._internal.internal.profile.Profile_function.Function>> = (null : stdgo.GoMap<stdgo.GoUInt64, stdgo.Ref<stdgo._internal.internal.profile.Profile_function.Function>>);
    public var _mappingsByID : stdgo.GoMap<stdgo.GoUInt64, stdgo._internal.internal.profile.Profile_t_mapinfo.T_mapInfo> = (null : stdgo.GoMap<stdgo.GoUInt64, stdgo._internal.internal.profile.Profile_t_mapinfo.T_mapInfo>);
    public var _samples : stdgo.GoMap<stdgo._internal.internal.profile.Profile_t_samplekey.T_sampleKey, stdgo.Ref<stdgo._internal.internal.profile.Profile_sample.Sample>> = (({
        final x:stdgo.GoMap.GoObjectMap<stdgo._internal.internal.profile.Profile_t_samplekey.T_sampleKey, stdgo.Ref<stdgo._internal.internal.profile.Profile_sample.Sample>> = null;
        cast x;
    } : stdgo.GoMap<stdgo._internal.internal.profile.Profile_t_samplekey.T_sampleKey, stdgo.Ref<stdgo._internal.internal.profile.Profile_sample.Sample>>));
    public var _locations : stdgo.GoMap<stdgo._internal.internal.profile.Profile_t_locationkey.T_locationKey, stdgo.Ref<stdgo._internal.internal.profile.Profile_location.Location>> = (({
        final x:stdgo.GoMap.GoObjectMap<stdgo._internal.internal.profile.Profile_t_locationkey.T_locationKey, stdgo.Ref<stdgo._internal.internal.profile.Profile_location.Location>> = null;
        cast x;
    } : stdgo.GoMap<stdgo._internal.internal.profile.Profile_t_locationkey.T_locationKey, stdgo.Ref<stdgo._internal.internal.profile.Profile_location.Location>>));
    public var _functions : stdgo.GoMap<stdgo._internal.internal.profile.Profile_t_functionkey.T_functionKey, stdgo.Ref<stdgo._internal.internal.profile.Profile_function.Function>> = (({
        final x:stdgo.GoMap.GoObjectMap<stdgo._internal.internal.profile.Profile_t_functionkey.T_functionKey, stdgo.Ref<stdgo._internal.internal.profile.Profile_function.Function>> = null;
        cast x;
    } : stdgo.GoMap<stdgo._internal.internal.profile.Profile_t_functionkey.T_functionKey, stdgo.Ref<stdgo._internal.internal.profile.Profile_function.Function>>));
    public var _mappings : stdgo.GoMap<stdgo._internal.internal.profile.Profile_t_mappingkey.T_mappingKey, stdgo.Ref<stdgo._internal.internal.profile.Profile_mapping.Mapping>> = (({
        final x:stdgo.GoMap.GoObjectMap<stdgo._internal.internal.profile.Profile_t_mappingkey.T_mappingKey, stdgo.Ref<stdgo._internal.internal.profile.Profile_mapping.Mapping>> = null;
        cast x;
    } : stdgo.GoMap<stdgo._internal.internal.profile.Profile_t_mappingkey.T_mappingKey, stdgo.Ref<stdgo._internal.internal.profile.Profile_mapping.Mapping>>));
    public function new(?_p:stdgo.Ref<stdgo._internal.internal.profile.Profile_profile.Profile>, ?_locationsByID:stdgo.GoMap<stdgo.GoUInt64, stdgo.Ref<stdgo._internal.internal.profile.Profile_location.Location>>, ?_functionsByID:stdgo.GoMap<stdgo.GoUInt64, stdgo.Ref<stdgo._internal.internal.profile.Profile_function.Function>>, ?_mappingsByID:stdgo.GoMap<stdgo.GoUInt64, stdgo._internal.internal.profile.Profile_t_mapinfo.T_mapInfo>, ?_samples:stdgo.GoMap<stdgo._internal.internal.profile.Profile_t_samplekey.T_sampleKey, stdgo.Ref<stdgo._internal.internal.profile.Profile_sample.Sample>>, ?_locations:stdgo.GoMap<stdgo._internal.internal.profile.Profile_t_locationkey.T_locationKey, stdgo.Ref<stdgo._internal.internal.profile.Profile_location.Location>>, ?_functions:stdgo.GoMap<stdgo._internal.internal.profile.Profile_t_functionkey.T_functionKey, stdgo.Ref<stdgo._internal.internal.profile.Profile_function.Function>>, ?_mappings:stdgo.GoMap<stdgo._internal.internal.profile.Profile_t_mappingkey.T_mappingKey, stdgo.Ref<stdgo._internal.internal.profile.Profile_mapping.Mapping>>) {
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
