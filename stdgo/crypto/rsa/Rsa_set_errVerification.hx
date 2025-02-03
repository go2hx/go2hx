package stdgo.crypto.rsa;
private function set_errVerification(v:stdgo.Error):stdgo.Error {
        stdgo._internal.crypto.rsa.Rsa_errVerification.errVerification = (v : stdgo.Error);
        return v;
    }
