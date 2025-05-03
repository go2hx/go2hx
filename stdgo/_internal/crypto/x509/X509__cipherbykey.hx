package stdgo._internal.crypto.x509;
function _cipherByKey(_key:stdgo._internal.crypto.x509.X509_pemcipher.PEMCipher):stdgo.Ref<stdgo._internal.crypto.x509.X509_t_rfc1423algo.T_rfc1423Algo> {
        //"file:///home/runner/.go/go1.21.3/src/crypto/x509/pem_decrypt.go#L245"
        for (_i => _ in stdgo._internal.crypto.x509.X509__rfc1423algos._rfc1423Algos) {
            var _alg = (stdgo.Go.setRef(stdgo._internal.crypto.x509.X509__rfc1423algos._rfc1423Algos[(_i : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.crypto.x509.X509_t_rfc1423algo.T_rfc1423Algo>);
            //"file:///home/runner/.go/go1.21.3/src/crypto/x509/pem_decrypt.go#L247"
            if ((@:checkr _alg ?? throw "null pointer dereference")._cipher == (_key)) {
                //"file:///home/runner/.go/go1.21.3/src/crypto/x509/pem_decrypt.go#L248"
                return _alg;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/crypto/x509/pem_decrypt.go#L251"
        return null;
    }
