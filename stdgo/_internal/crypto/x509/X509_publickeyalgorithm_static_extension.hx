package stdgo._internal.crypto.x509;
@:keep @:allow(stdgo._internal.crypto.x509.X509.PublicKeyAlgorithm_asInterface) class PublicKeyAlgorithm_static_extension {
    @:keep
    @:tdfield
    static public function string( _algo:stdgo._internal.crypto.x509.X509_publickeyalgorithm.PublicKeyAlgorithm):stdgo.GoString {
        @:recv var _algo:stdgo._internal.crypto.x509.X509_publickeyalgorithm.PublicKeyAlgorithm = _algo;
        if ((((0 : stdgo._internal.crypto.x509.X509_publickeyalgorithm.PublicKeyAlgorithm) < _algo : Bool) && ((_algo : stdgo.GoInt) < (stdgo._internal.crypto.x509.X509__publickeyalgoname._publicKeyAlgoName.length) : Bool) : Bool)) {
            return stdgo._internal.crypto.x509.X509__publickeyalgoname._publicKeyAlgoName[(_algo : stdgo.GoInt)]?.__copy__();
        };
        return stdgo._internal.strconv.Strconv_itoa.itoa((_algo : stdgo.GoInt))?.__copy__();
    }
}
