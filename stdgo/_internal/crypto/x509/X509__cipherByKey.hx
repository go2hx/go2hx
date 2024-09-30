package stdgo._internal.crypto.x509;
function _cipherByKey(_key:stdgo._internal.crypto.x509.X509_PEMCipher.PEMCipher):stdgo.Ref<stdgo._internal.crypto.x509.X509_T_rfc1423Algo.T_rfc1423Algo> {
        for (_i => _ in stdgo._internal.crypto.x509.X509__rfc1423Algos._rfc1423Algos) {
            var _alg = (stdgo.Go.setRef(stdgo._internal.crypto.x509.X509__rfc1423Algos._rfc1423Algos[(_i : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.crypto.x509.X509_T_rfc1423Algo.T_rfc1423Algo>);
            if (_alg._cipher == (_key)) {
                return _alg;
            };
        };
        return null;
    }
