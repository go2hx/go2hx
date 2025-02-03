package stdgo.internal.profile;
class Mapping_static_extension {
    static public function _key(_m:Mapping):T_mappingKey {
        final _m = (_m : stdgo.Ref<stdgo._internal.internal.profile.Profile_Mapping.Mapping>);
        return stdgo._internal.internal.profile.Profile_Mapping_static_extension.Mapping_static_extension._key(_m);
    }
    static public function _encode(_p:Mapping, _b:T_buffer):Void {
        final _p = (_p : stdgo.Ref<stdgo._internal.internal.profile.Profile_Mapping.Mapping>);
        final _b = (_b : stdgo.Ref<stdgo._internal.internal.profile.Profile_T_buffer.T_buffer>);
        stdgo._internal.internal.profile.Profile_Mapping_static_extension.Mapping_static_extension._encode(_p, _b);
    }
    static public function _decoder(_p:Mapping):Array<T_decoder> {
        final _p = (_p : stdgo.Ref<stdgo._internal.internal.profile.Profile_Mapping.Mapping>);
        return [for (i in stdgo._internal.internal.profile.Profile_Mapping_static_extension.Mapping_static_extension._decoder(_p)) i];
    }
}
