package stdgo._internal.crypto.x509;
@:keep @:allow(stdgo._internal.crypto.x509.X509.PublicKeyAlgorithm_asInterface) class PublicKeyAlgorithm_static_extension {
    @:keep
    static public function string( _algo:stdgo._internal.crypto.x509.X509_PublicKeyAlgorithm.PublicKeyAlgorithm):stdgo.GoString {
        @:recv var _algo:stdgo._internal.crypto.x509.X509_PublicKeyAlgorithm.PublicKeyAlgorithm = _algo;
        if ((((0 : stdgo._internal.crypto.x509.X509_PublicKeyAlgorithm.PublicKeyAlgorithm) < _algo : Bool) && ((_algo : stdgo.GoInt) < (stdgo._internal.crypto.x509.X509__publicKeyAlgoName._publicKeyAlgoName.length) : Bool) : Bool)) {
            return stdgo._internal.crypto.x509.X509__publicKeyAlgoName._publicKeyAlgoName[(_algo : stdgo.GoInt)]?.__copy__();
        };
        return stdgo._internal.strconv.Strconv_itoa.itoa((_algo : stdgo.GoInt))?.__copy__();
    }
}
