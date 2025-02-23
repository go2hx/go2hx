package stdgo._internal.crypto.tls;
@:keep @:allow(stdgo._internal.crypto.tls.Tls.SignatureScheme_asInterface) class SignatureScheme_static_extension {
    @:keep
    @:tdfield
    static public function string( _i:stdgo._internal.crypto.tls.Tls_signaturescheme.SignatureScheme):stdgo.GoString {
        @:recv var _i:stdgo._internal.crypto.tls.Tls_signaturescheme.SignatureScheme = _i;
        if (_i == ((513 : stdgo._internal.crypto.tls.Tls_signaturescheme.SignatureScheme))) {
            return ("PKCS1WithSHA1" : stdgo.GoString);
        } else if (_i == ((515 : stdgo._internal.crypto.tls.Tls_signaturescheme.SignatureScheme))) {
            return ("ECDSAWithSHA1" : stdgo.GoString);
        } else if (_i == ((1025 : stdgo._internal.crypto.tls.Tls_signaturescheme.SignatureScheme))) {
            return ("PKCS1WithSHA256" : stdgo.GoString);
        } else if (_i == ((1027 : stdgo._internal.crypto.tls.Tls_signaturescheme.SignatureScheme))) {
            return ("ECDSAWithP256AndSHA256" : stdgo.GoString);
        } else if (_i == ((1281 : stdgo._internal.crypto.tls.Tls_signaturescheme.SignatureScheme))) {
            return ("PKCS1WithSHA384" : stdgo.GoString);
        } else if (_i == ((1283 : stdgo._internal.crypto.tls.Tls_signaturescheme.SignatureScheme))) {
            return ("ECDSAWithP384AndSHA384" : stdgo.GoString);
        } else if (_i == ((1537 : stdgo._internal.crypto.tls.Tls_signaturescheme.SignatureScheme))) {
            return ("PKCS1WithSHA512" : stdgo.GoString);
        } else if (_i == ((1539 : stdgo._internal.crypto.tls.Tls_signaturescheme.SignatureScheme))) {
            return ("ECDSAWithP521AndSHA512" : stdgo.GoString);
        } else if ((((2052 : stdgo._internal.crypto.tls.Tls_signaturescheme.SignatureScheme) <= _i : Bool) && (_i <= (2055 : stdgo._internal.crypto.tls.Tls_signaturescheme.SignatureScheme) : Bool) : Bool)) {
            _i = (_i - ((2052 : stdgo._internal.crypto.tls.Tls_signaturescheme.SignatureScheme)) : stdgo._internal.crypto.tls.Tls_signaturescheme.SignatureScheme);
            return (("PSSWithSHA256PSSWithSHA384PSSWithSHA512Ed25519" : stdgo.GoString).__slice__(stdgo._internal.crypto.tls.Tls___signaturescheme_index_8.__SignatureScheme_index_8[(_i : stdgo.GoInt)], stdgo._internal.crypto.tls.Tls___signaturescheme_index_8.__SignatureScheme_index_8[((_i + (1 : stdgo._internal.crypto.tls.Tls_signaturescheme.SignatureScheme) : stdgo._internal.crypto.tls.Tls_signaturescheme.SignatureScheme) : stdgo.GoInt)]) : stdgo.GoString)?.__copy__();
        } else {
            return ((("SignatureScheme(" : stdgo.GoString) + stdgo._internal.strconv.Strconv_formatint.formatInt((_i : stdgo.GoInt64), (10 : stdgo.GoInt))?.__copy__() : stdgo.GoString) + (")" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
        };
    }
}
