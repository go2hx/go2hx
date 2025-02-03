package stdgo.crypto.x509;
private function set_incorrectPasswordError(v:stdgo.Error):stdgo.Error {
        stdgo._internal.crypto.x509.X509_incorrectPasswordError.incorrectPasswordError = (v : stdgo.Error);
        return v;
    }
