package stdgo._internal.crypto.tls;
function _cipherSuiteTLS13ByID(_id:stdgo.GoUInt16):stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_cipherSuiteTLS13.T_cipherSuiteTLS13> {
        for (__65 => _cipherSuite in stdgo._internal.crypto.tls.Tls__cipherSuitesTLS13._cipherSuitesTLS13) {
            if (_cipherSuite._id == (_id)) {
                return _cipherSuite;
            };
        };
        return null;
    }
