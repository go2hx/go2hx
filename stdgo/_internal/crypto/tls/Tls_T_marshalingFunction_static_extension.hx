package stdgo._internal.crypto.tls;
@:keep @:allow(stdgo._internal.crypto.tls.Tls.T_marshalingFunction_asInterface) class T_marshalingFunction_static_extension {
    @:keep
    static public function marshal( _f:stdgo._internal.crypto.tls.Tls_T_marshalingFunction.T_marshalingFunction, _b:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_Builder.Builder>):stdgo.Error {
        @:recv var _f:stdgo._internal.crypto.tls.Tls_T_marshalingFunction.T_marshalingFunction = _f;
        return _f(_b);
    }
}
