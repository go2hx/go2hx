package stdgo._internal.crypto.x509;
function _cipherByKey(_key:stdgo._internal.crypto.x509.X509_pemcipher.PEMCipher):stdgo.Ref<stdgo._internal.crypto.x509.X509_t_rfc1423algo.T_rfc1423Algo> {
        for (_i => _ in stdgo._internal.crypto.x509.X509__rfc1423algos._rfc1423Algos) {
            var _alg = (stdgo.Go.setRef(stdgo._internal.crypto.x509.X509__rfc1423algos._rfc1423Algos[(_i : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.crypto.x509.X509_t_rfc1423algo.T_rfc1423Algo>);
            if ((@:checkr _alg ?? throw "null pointer dereference")._cipher == (_key)) {
                return _alg;
            };
        };
        return null;
    }
