package stdgo._internal.crypto.tls;
@:keep @:allow(stdgo._internal.crypto.tls.Tls.T_marshalingFunction_asInterface) class T_marshalingFunction_static_extension {
    @:keep
    @:tdfield
    static public function marshal( _f:stdgo._internal.crypto.tls.Tls_t_marshalingfunction.T_marshalingFunction, _b:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_builder.Builder>):stdgo.Error {
        @:recv var _f:stdgo._internal.crypto.tls.Tls_t_marshalingfunction.T_marshalingFunction = _f;
        return _f(_b);
    }
}
