package stdgo.internal.profile;
@:structInit @:using(stdgo.internal.profile.Profile.T_mapInfo_static_extension) abstract T_mapInfo(stdgo._internal.internal.profile.Profile_T_mapInfo.T_mapInfo) from stdgo._internal.internal.profile.Profile_T_mapInfo.T_mapInfo to stdgo._internal.internal.profile.Profile_T_mapInfo.T_mapInfo {
    public var _m(get, set) : Mapping;
    function get__m():Mapping return this._m;
    function set__m(v:Mapping):Mapping {
        this._m = (v : stdgo.Ref<stdgo._internal.internal.profile.Profile_Mapping.Mapping>);
        return v;
    }
    public var _offset(get, set) : haxe.Int64;
    function get__offset():haxe.Int64 return this._offset;
    function set__offset(v:haxe.Int64):haxe.Int64 {
        this._offset = (v : stdgo.GoInt64);
        return v;
    }
    public function new(?_m:Mapping, ?_offset:haxe.Int64) this = new stdgo._internal.internal.profile.Profile_T_mapInfo.T_mapInfo((_m : stdgo.Ref<stdgo._internal.internal.profile.Profile_Mapping.Mapping>), (_offset : stdgo.GoInt64));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
