package stdgo.crypto.dsa;
private function set_errInvalidPublicKey(v:stdgo.Error):stdgo.Error {
        stdgo._internal.crypto.dsa.Dsa_errInvalidPublicKey.errInvalidPublicKey = (v : stdgo.Error);
        return v;
    }
