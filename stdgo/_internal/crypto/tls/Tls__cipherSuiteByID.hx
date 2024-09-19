package stdgo._internal.crypto.tls;
function _cipherSuiteByID(_id:stdgo.GoUInt16):stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_cipherSuite.T_cipherSuite> {
        for (__65 => _cipherSuite in stdgo._internal.crypto.tls.Tls__cipherSuites._cipherSuites) {
            if (_cipherSuite._id == (_id)) {
                return _cipherSuite;
            };
        };
        return null;
    }
