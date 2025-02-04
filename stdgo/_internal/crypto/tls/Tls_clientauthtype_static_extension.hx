package stdgo._internal.crypto.tls;
@:keep @:allow(stdgo._internal.crypto.tls.Tls.ClientAuthType_asInterface) class ClientAuthType_static_extension {
    @:keep
    @:tdfield
    static public function string( _i:stdgo._internal.crypto.tls.Tls_clientauthtype.ClientAuthType):stdgo.GoString {
        @:recv var _i:stdgo._internal.crypto.tls.Tls_clientauthtype.ClientAuthType = _i;
        if (((_i < (0 : stdgo._internal.crypto.tls.Tls_clientauthtype.ClientAuthType) : Bool) || (_i >= ((5 : stdgo.GoInt) : stdgo._internal.crypto.tls.Tls_clientauthtype.ClientAuthType) : Bool) : Bool)) {
            return ((("ClientAuthType(" : stdgo.GoString) + stdgo._internal.strconv.Strconv_formatint.formatInt((_i : stdgo.GoInt64), (10 : stdgo.GoInt))?.__copy__() : stdgo.GoString) + (")" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
        };
        return (("NoClientCertRequestClientCertRequireAnyClientCertVerifyClientCertIfGivenRequireAndVerifyClientCert" : stdgo.GoString).__slice__(stdgo._internal.crypto.tls.Tls___clientauthtype_index.__ClientAuthType_index[(_i : stdgo.GoInt)], stdgo._internal.crypto.tls.Tls___clientauthtype_index.__ClientAuthType_index[((_i + (1 : stdgo._internal.crypto.tls.Tls_clientauthtype.ClientAuthType) : stdgo._internal.crypto.tls.Tls_clientauthtype.ClientAuthType) : stdgo.GoInt)]) : stdgo.GoString)?.__copy__();
    }
}
