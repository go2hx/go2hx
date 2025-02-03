package stdgo.internal.profile;
class Sample_static_extension {
    static public function _key(_sample:Sample):T_sampleKey {
        final _sample = (_sample : stdgo.Ref<stdgo._internal.internal.profile.Profile_Sample.Sample>);
        return stdgo._internal.internal.profile.Profile_Sample_static_extension.Sample_static_extension._key(_sample);
    }
    static public function _encode(_p:Sample, _b:T_buffer):Void {
        final _p = (_p : stdgo.Ref<stdgo._internal.internal.profile.Profile_Sample.Sample>);
        final _b = (_b : stdgo.Ref<stdgo._internal.internal.profile.Profile_T_buffer.T_buffer>);
        stdgo._internal.internal.profile.Profile_Sample_static_extension.Sample_static_extension._encode(_p, _b);
    }
    static public function _decoder(_p:Sample):Array<T_decoder> {
        final _p = (_p : stdgo.Ref<stdgo._internal.internal.profile.Profile_Sample.Sample>);
        return [for (i in stdgo._internal.internal.profile.Profile_Sample_static_extension.Sample_static_extension._decoder(_p)) i];
    }
}
