package stdgo._internal.crypto.tls;
function _cipherSuiteTLS13ByID(_id:stdgo.GoUInt16):stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_ciphersuitetls13.T_cipherSuiteTLS13> {
        for (__65 => _cipherSuite in stdgo._internal.crypto.tls.Tls__ciphersuitestls13._cipherSuitesTLS13) {
            if ((@:checkr _cipherSuite ?? throw "null pointer dereference")._id == (_id)) {
                return _cipherSuite;
            };
        };
        return null;
    }
