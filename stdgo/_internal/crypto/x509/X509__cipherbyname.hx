package stdgo._internal.crypto.x509;
function _cipherByName(_name:stdgo.GoString):stdgo.Ref<stdgo._internal.crypto.x509.X509_t_rfc1423algo.T_rfc1423Algo> {
        //"file:///home/runner/.go/go1.21.3/src/crypto/x509/pem_decrypt.go#L235"
        for (_i => _ in stdgo._internal.crypto.x509.X509__rfc1423algos._rfc1423Algos) {
            var _alg = (stdgo.Go.setRef(stdgo._internal.crypto.x509.X509__rfc1423algos._rfc1423Algos[(_i : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.crypto.x509.X509_t_rfc1423algo.T_rfc1423Algo>);
            //"file:///home/runner/.go/go1.21.3/src/crypto/x509/pem_decrypt.go#L237"
            if ((@:checkr _alg ?? throw "null pointer dereference")._name == (_name)) {
                //"file:///home/runner/.go/go1.21.3/src/crypto/x509/pem_decrypt.go#L238"
                return _alg;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/crypto/x509/pem_decrypt.go#L241"
        return null;
    }
