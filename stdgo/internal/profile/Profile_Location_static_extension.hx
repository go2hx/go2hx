package stdgo.internal.profile;
class Location_static_extension {
    static public function _key(_l:Location):T_locationKey {
        final _l = (_l : stdgo.Ref<stdgo._internal.internal.profile.Profile_Location.Location>);
        return stdgo._internal.internal.profile.Profile_Location_static_extension.Location_static_extension._key(_l);
    }
    static public function _unmatchedLines(_loc:Location, _re:stdgo._internal.regexp.Regexp_Regexp.Regexp):Array<Line> {
        final _loc = (_loc : stdgo.Ref<stdgo._internal.internal.profile.Profile_Location.Location>);
        final _re = (_re : stdgo.Ref<stdgo._internal.regexp.Regexp_Regexp.Regexp>);
        return [for (i in stdgo._internal.internal.profile.Profile_Location_static_extension.Location_static_extension._unmatchedLines(_loc, _re)) i];
    }
    static public function _matchesName(_loc:Location, _re:stdgo._internal.regexp.Regexp_Regexp.Regexp):Bool {
        final _loc = (_loc : stdgo.Ref<stdgo._internal.internal.profile.Profile_Location.Location>);
        final _re = (_re : stdgo.Ref<stdgo._internal.regexp.Regexp_Regexp.Regexp>);
        return stdgo._internal.internal.profile.Profile_Location_static_extension.Location_static_extension._matchesName(_loc, _re);
    }
    static public function _encode(_p:Location, _b:T_buffer):Void {
        final _p = (_p : stdgo.Ref<stdgo._internal.internal.profile.Profile_Location.Location>);
        final _b = (_b : stdgo.Ref<stdgo._internal.internal.profile.Profile_T_buffer.T_buffer>);
        stdgo._internal.internal.profile.Profile_Location_static_extension.Location_static_extension._encode(_p, _b);
    }
    static public function _decoder(_p:Location):Array<T_decoder> {
        final _p = (_p : stdgo.Ref<stdgo._internal.internal.profile.Profile_Location.Location>);
        return [for (i in stdgo._internal.internal.profile.Profile_Location_static_extension.Location_static_extension._decoder(_p)) i];
    }
}
