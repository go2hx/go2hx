package stdgo._internal.internal.profile;
@:structInit @:using(stdgo._internal.internal.profile.Profile_t_mapinfo_static_extension.T_mapInfo_static_extension) class T_mapInfo {
    public var _m : stdgo.Ref<stdgo._internal.internal.profile.Profile_mapping.Mapping> = (null : stdgo.Ref<stdgo._internal.internal.profile.Profile_mapping.Mapping>);
    public var _offset : stdgo.GoInt64 = 0;
    public function new(?_m:stdgo.Ref<stdgo._internal.internal.profile.Profile_mapping.Mapping>, ?_offset:stdgo.GoInt64) {
        if (_m != null) this._m = _m;
        if (_offset != null) this._offset = _offset;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_mapInfo(_m, _offset);
    }
}
