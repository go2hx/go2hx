package stdgo._internal.crypto.tls;
@:keep @:allow(stdgo._internal.crypto.tls.Tls.ClientAuthType_asInterface) class ClientAuthType_static_extension {
    @:keep
    static public function string( _i:stdgo._internal.crypto.tls.Tls_ClientAuthType.ClientAuthType):stdgo.GoString {
        @:recv var _i:stdgo._internal.crypto.tls.Tls_ClientAuthType.ClientAuthType = _i;
        if (((_i < (0 : stdgo._internal.crypto.tls.Tls_ClientAuthType.ClientAuthType) : Bool) || (_i >= ((5 : stdgo.GoInt) : stdgo._internal.crypto.tls.Tls_ClientAuthType.ClientAuthType) : Bool) : Bool)) {
            return ((("ClientAuthType(" : stdgo.GoString) + stdgo._internal.strconv.Strconv_formatInt.formatInt((_i : stdgo.GoInt64), (10 : stdgo.GoInt))?.__copy__() : stdgo.GoString) + (")" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
        };
        return (("NoClientCertRequestClientCertRequireAnyClientCertVerifyClientCertIfGivenRequireAndVerifyClientCert" : stdgo.GoString).__slice__(stdgo._internal.crypto.tls.Tls___ClientAuthType_index.__ClientAuthType_index[(_i : stdgo.GoInt)], stdgo._internal.crypto.tls.Tls___ClientAuthType_index.__ClientAuthType_index[((_i + (1 : stdgo._internal.crypto.tls.Tls_ClientAuthType.ClientAuthType) : stdgo._internal.crypto.tls.Tls_ClientAuthType.ClientAuthType) : stdgo.GoInt)]) : stdgo.GoString)?.__copy__();
    }
}
