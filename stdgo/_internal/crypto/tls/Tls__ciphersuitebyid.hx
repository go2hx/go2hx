package stdgo._internal.crypto.tls;
function _cipherSuiteByID(_id:stdgo.GoUInt16):stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_ciphersuite.T_cipherSuite> {
        for (__65 => _cipherSuite in stdgo._internal.crypto.tls.Tls__ciphersuites._cipherSuites) {
            if ((@:checkr _cipherSuite ?? throw "null pointer dereference")._id == (_id)) {
                return _cipherSuite;
            };
        };
        return null;
    }
