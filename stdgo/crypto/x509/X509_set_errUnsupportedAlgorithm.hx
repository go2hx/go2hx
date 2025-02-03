package stdgo.crypto.x509;
private function set_errUnsupportedAlgorithm(v:stdgo.Error):stdgo.Error {
        stdgo._internal.crypto.x509.X509_errUnsupportedAlgorithm.errUnsupportedAlgorithm = (v : stdgo.Error);
        return v;
    }
