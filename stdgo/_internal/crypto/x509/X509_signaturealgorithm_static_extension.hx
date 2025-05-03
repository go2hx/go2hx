package stdgo._internal.crypto.x509;
@:keep @:allow(stdgo._internal.crypto.x509.X509.SignatureAlgorithm_asInterface) class SignatureAlgorithm_static_extension {
    @:keep
    @:tdfield
    static public function string( _algo:stdgo._internal.crypto.x509.X509_signaturealgorithm.SignatureAlgorithm):stdgo.GoString {
        @:recv var _algo:stdgo._internal.crypto.x509.X509_signaturealgorithm.SignatureAlgorithm = _algo;
        //"file:///home/runner/.go/go1.21.3/src/crypto/x509/x509.go#L245"
        for (__1 => _details in stdgo._internal.crypto.x509.X509__signaturealgorithmdetails._signatureAlgorithmDetails) {
            //"file:///home/runner/.go/go1.21.3/src/crypto/x509/x509.go#L246"
            if (_details._algo == (_algo)) {
                //"file:///home/runner/.go/go1.21.3/src/crypto/x509/x509.go#L247"
                return _details._name?.__copy__();
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/crypto/x509/x509.go#L250"
        return stdgo._internal.strconv.Strconv_itoa.itoa((_algo : stdgo.GoInt))?.__copy__();
    }
    @:keep
    @:tdfield
    static public function _isRSAPSS( _algo:stdgo._internal.crypto.x509.X509_signaturealgorithm.SignatureAlgorithm):Bool {
        @:recv var _algo:stdgo._internal.crypto.x509.X509_signaturealgorithm.SignatureAlgorithm = _algo;
        //"file:///home/runner/.go/go1.21.3/src/crypto/x509/x509.go#L236"
        {
            final __value__ = _algo;
            if (__value__ == ((13 : stdgo._internal.crypto.x509.X509_signaturealgorithm.SignatureAlgorithm)) || __value__ == ((14 : stdgo._internal.crypto.x509.X509_signaturealgorithm.SignatureAlgorithm)) || __value__ == ((15 : stdgo._internal.crypto.x509.X509_signaturealgorithm.SignatureAlgorithm))) {
                //"file:///home/runner/.go/go1.21.3/src/crypto/x509/x509.go#L238"
                return true;
            } else {
                //"file:///home/runner/.go/go1.21.3/src/crypto/x509/x509.go#L240"
                return false;
            };
        };
    }
}
