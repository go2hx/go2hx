package stdgo.internal.profile;
@:structInit @:using(stdgo.internal.profile.Profile.T_profileMerger_static_extension) abstract T_profileMerger(stdgo._internal.internal.profile.Profile_T_profileMerger.T_profileMerger) from stdgo._internal.internal.profile.Profile_T_profileMerger.T_profileMerger to stdgo._internal.internal.profile.Profile_T_profileMerger.T_profileMerger {
    public var _p(get, set) : Profile_;
    function get__p():Profile_ return this._p;
    function set__p(v:Profile_):Profile_ {
        this._p = (v : stdgo.Ref<stdgo._internal.internal.profile.Profile_Profile.Profile>);
        return v;
    }
    public var _locationsByID(get, set) : stdgo.GoMap<stdgo.GoUInt64, stdgo.Ref<stdgo._internal.internal.profile.Profile_Location.Location>>;
    function get__locationsByID():stdgo.GoMap<stdgo.GoUInt64, stdgo.Ref<stdgo._internal.internal.profile.Profile_Location.Location>> return this._locationsByID;
    function set__locationsByID(v:stdgo.GoMap<stdgo.GoUInt64, stdgo.Ref<stdgo._internal.internal.profile.Profile_Location.Location>>):stdgo.GoMap<stdgo.GoUInt64, stdgo.Ref<stdgo._internal.internal.profile.Profile_Location.Location>> {
        this._locationsByID = (v : stdgo.GoMap<stdgo.GoUInt64, stdgo.Ref<stdgo._internal.internal.profile.Profile_Location.Location>>);
        return v;
    }
    public var _functionsByID(get, set) : stdgo.GoMap<stdgo.GoUInt64, stdgo.Ref<stdgo._internal.internal.profile.Profile_Function.Function>>;
    function get__functionsByID():stdgo.GoMap<stdgo.GoUInt64, stdgo.Ref<stdgo._internal.internal.profile.Profile_Function.Function>> return this._functionsByID;
    function set__functionsByID(v:stdgo.GoMap<stdgo.GoUInt64, stdgo.Ref<stdgo._internal.internal.profile.Profile_Function.Function>>):stdgo.GoMap<stdgo.GoUInt64, stdgo.Ref<stdgo._internal.internal.profile.Profile_Function.Function>> {
        this._functionsByID = (v : stdgo.GoMap<stdgo.GoUInt64, stdgo.Ref<stdgo._internal.internal.profile.Profile_Function.Function>>);
        return v;
    }
    public var _mappingsByID(get, set) : stdgo.GoMap<stdgo.GoUInt64, stdgo._internal.internal.profile.Profile_T_mapInfo.T_mapInfo>;
    function get__mappingsByID():stdgo.GoMap<stdgo.GoUInt64, stdgo._internal.internal.profile.Profile_T_mapInfo.T_mapInfo> return this._mappingsByID;
    function set__mappingsByID(v:stdgo.GoMap<stdgo.GoUInt64, stdgo._internal.internal.profile.Profile_T_mapInfo.T_mapInfo>):stdgo.GoMap<stdgo.GoUInt64, stdgo._internal.internal.profile.Profile_T_mapInfo.T_mapInfo> {
        this._mappingsByID = (v : stdgo.GoMap<stdgo.GoUInt64, stdgo._internal.internal.profile.Profile_T_mapInfo.T_mapInfo>);
        return v;
    }
    public var _samples(get, set) : stdgo.GoMap<stdgo._internal.internal.profile.Profile_T_sampleKey.T_sampleKey, stdgo.Ref<stdgo._internal.internal.profile.Profile_Sample.Sample>>;
    function get__samples():stdgo.GoMap<stdgo._internal.internal.profile.Profile_T_sampleKey.T_sampleKey, stdgo.Ref<stdgo._internal.internal.profile.Profile_Sample.Sample>> return this._samples;
    function set__samples(v:stdgo.GoMap<stdgo._internal.internal.profile.Profile_T_sampleKey.T_sampleKey, stdgo.Ref<stdgo._internal.internal.profile.Profile_Sample.Sample>>):stdgo.GoMap<stdgo._internal.internal.profile.Profile_T_sampleKey.T_sampleKey, stdgo.Ref<stdgo._internal.internal.profile.Profile_Sample.Sample>> {
        this._samples = (v : stdgo.GoMap<stdgo._internal.internal.profile.Profile_T_sampleKey.T_sampleKey, stdgo.Ref<stdgo._internal.internal.profile.Profile_Sample.Sample>>);
        return v;
    }
    public var _locations(get, set) : stdgo.GoMap<stdgo._internal.internal.profile.Profile_T_locationKey.T_locationKey, stdgo.Ref<stdgo._internal.internal.profile.Profile_Location.Location>>;
    function get__locations():stdgo.GoMap<stdgo._internal.internal.profile.Profile_T_locationKey.T_locationKey, stdgo.Ref<stdgo._internal.internal.profile.Profile_Location.Location>> return this._locations;
    function set__locations(v:stdgo.GoMap<stdgo._internal.internal.profile.Profile_T_locationKey.T_locationKey, stdgo.Ref<stdgo._internal.internal.profile.Profile_Location.Location>>):stdgo.GoMap<stdgo._internal.internal.profile.Profile_T_locationKey.T_locationKey, stdgo.Ref<stdgo._internal.internal.profile.Profile_Location.Location>> {
        this._locations = (v : stdgo.GoMap<stdgo._internal.internal.profile.Profile_T_locationKey.T_locationKey, stdgo.Ref<stdgo._internal.internal.profile.Profile_Location.Location>>);
        return v;
    }
    public var _functions(get, set) : stdgo.GoMap<stdgo._internal.internal.profile.Profile_T_functionKey.T_functionKey, stdgo.Ref<stdgo._internal.internal.profile.Profile_Function.Function>>;
    function get__functions():stdgo.GoMap<stdgo._internal.internal.profile.Profile_T_functionKey.T_functionKey, stdgo.Ref<stdgo._internal.internal.profile.Profile_Function.Function>> return this._functions;
    function set__functions(v:stdgo.GoMap<stdgo._internal.internal.profile.Profile_T_functionKey.T_functionKey, stdgo.Ref<stdgo._internal.internal.profile.Profile_Function.Function>>):stdgo.GoMap<stdgo._internal.internal.profile.Profile_T_functionKey.T_functionKey, stdgo.Ref<stdgo._internal.internal.profile.Profile_Function.Function>> {
        this._functions = (v : stdgo.GoMap<stdgo._internal.internal.profile.Profile_T_functionKey.T_functionKey, stdgo.Ref<stdgo._internal.internal.profile.Profile_Function.Function>>);
        return v;
    }
    public var _mappings(get, set) : stdgo.GoMap<stdgo._internal.internal.profile.Profile_T_mappingKey.T_mappingKey, stdgo.Ref<stdgo._internal.internal.profile.Profile_Mapping.Mapping>>;
    function get__mappings():stdgo.GoMap<stdgo._internal.internal.profile.Profile_T_mappingKey.T_mappingKey, stdgo.Ref<stdgo._internal.internal.profile.Profile_Mapping.Mapping>> return this._mappings;
    function set__mappings(v:stdgo.GoMap<stdgo._internal.internal.profile.Profile_T_mappingKey.T_mappingKey, stdgo.Ref<stdgo._internal.internal.profile.Profile_Mapping.Mapping>>):stdgo.GoMap<stdgo._internal.internal.profile.Profile_T_mappingKey.T_mappingKey, stdgo.Ref<stdgo._internal.internal.profile.Profile_Mapping.Mapping>> {
        this._mappings = (v : stdgo.GoMap<stdgo._internal.internal.profile.Profile_T_mappingKey.T_mappingKey, stdgo.Ref<stdgo._internal.internal.profile.Profile_Mapping.Mapping>>);
        return v;
    }
    public function new(?_p:Profile_, ?_locationsByID:stdgo.GoMap<stdgo.GoUInt64, stdgo.Ref<stdgo._internal.internal.profile.Profile_Location.Location>>, ?_functionsByID:stdgo.GoMap<stdgo.GoUInt64, stdgo.Ref<stdgo._internal.internal.profile.Profile_Function.Function>>, ?_mappingsByID:stdgo.GoMap<stdgo.GoUInt64, stdgo._internal.internal.profile.Profile_T_mapInfo.T_mapInfo>, ?_samples:stdgo.GoMap<stdgo._internal.internal.profile.Profile_T_sampleKey.T_sampleKey, stdgo.Ref<stdgo._internal.internal.profile.Profile_Sample.Sample>>, ?_locations:stdgo.GoMap<stdgo._internal.internal.profile.Profile_T_locationKey.T_locationKey, stdgo.Ref<stdgo._internal.internal.profile.Profile_Location.Location>>, ?_functions:stdgo.GoMap<stdgo._internal.internal.profile.Profile_T_functionKey.T_functionKey, stdgo.Ref<stdgo._internal.internal.profile.Profile_Function.Function>>, ?_mappings:stdgo.GoMap<stdgo._internal.internal.profile.Profile_T_mappingKey.T_mappingKey, stdgo.Ref<stdgo._internal.internal.profile.Profile_Mapping.Mapping>>) this = new stdgo._internal.internal.profile.Profile_T_profileMerger.T_profileMerger((_p : stdgo.Ref<stdgo._internal.internal.profile.Profile_Profile.Profile>), (_locationsByID : stdgo.GoMap<stdgo.GoUInt64, stdgo.Ref<stdgo._internal.internal.profile.Profile_Location.Location>>), (_functionsByID : stdgo.GoMap<stdgo.GoUInt64, stdgo.Ref<stdgo._internal.internal.profile.Profile_Function.Function>>), (_mappingsByID : stdgo.GoMap<stdgo.GoUInt64, stdgo._internal.internal.profile.Profile_T_mapInfo.T_mapInfo>), (_samples : stdgo.GoMap<stdgo._internal.internal.profile.Profile_T_sampleKey.T_sampleKey, stdgo.Ref<stdgo._internal.internal.profile.Profile_Sample.Sample>>), (_locations : stdgo.GoMap<stdgo._internal.internal.profile.Profile_T_locationKey.T_locationKey, stdgo.Ref<stdgo._internal.internal.profile.Profile_Location.Location>>), (_functions : stdgo.GoMap<stdgo._internal.internal.profile.Profile_T_functionKey.T_functionKey, stdgo.Ref<stdgo._internal.internal.profile.Profile_Function.Function>>), (_mappings : stdgo.GoMap<stdgo._internal.internal.profile.Profile_T_mappingKey.T_mappingKey, stdgo.Ref<stdgo._internal.internal.profile.Profile_Mapping.Mapping>>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
