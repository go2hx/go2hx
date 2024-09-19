package stdgo._internal.crypto.x509;
import stdgo._internal.crypto.sha1.Sha1;
import stdgo._internal.crypto.sha256.Sha256;
import stdgo._internal.crypto.sha512.Sha512;
@:keep @:allow(stdgo._internal.crypto.x509.X509.SignatureAlgorithm_asInterface) class SignatureAlgorithm_static_extension {
    @:keep
    static public function string( _algo:stdgo._internal.crypto.x509.X509_SignatureAlgorithm.SignatureAlgorithm):stdgo.GoString {
        @:recv var _algo:stdgo._internal.crypto.x509.X509_SignatureAlgorithm.SignatureAlgorithm = _algo;
        for (__1 => _details in stdgo._internal.crypto.x509.X509__signatureAlgorithmDetails._signatureAlgorithmDetails) {
            if (_details._algo == (_algo)) {
                return _details._name?.__copy__();
            };
        };
        return stdgo._internal.strconv.Strconv_itoa.itoa((_algo : stdgo.GoInt))?.__copy__();
    }
    @:keep
    static public function _isRSAPSS( _algo:stdgo._internal.crypto.x509.X509_SignatureAlgorithm.SignatureAlgorithm):Bool {
        @:recv var _algo:stdgo._internal.crypto.x509.X509_SignatureAlgorithm.SignatureAlgorithm = _algo;
        {
            final __value__ = _algo;
            if (__value__ == ((13 : stdgo._internal.crypto.x509.X509_SignatureAlgorithm.SignatureAlgorithm)) || __value__ == ((14 : stdgo._internal.crypto.x509.X509_SignatureAlgorithm.SignatureAlgorithm)) || __value__ == ((15 : stdgo._internal.crypto.x509.X509_SignatureAlgorithm.SignatureAlgorithm))) {
                return true;
            } else {
                return false;
            };
        };
    }
}