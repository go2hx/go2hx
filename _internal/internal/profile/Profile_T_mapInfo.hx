package _internal.internal.profile;
@:structInit class T_mapInfo {
    public var _m : stdgo.Ref<_internal.internal.profile.Profile_Mapping.Mapping> = (null : stdgo.Ref<_internal.internal.profile.Profile_Mapping.Mapping>);
    public var _offset : stdgo.GoInt64 = 0;
    public function new(?_m:stdgo.Ref<_internal.internal.profile.Profile_Mapping.Mapping>, ?_offset:stdgo.GoInt64) {
        if (_m != null) this._m = _m;
        if (_offset != null) this._offset = _offset;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_mapInfo(_m, _offset);
    }
}
