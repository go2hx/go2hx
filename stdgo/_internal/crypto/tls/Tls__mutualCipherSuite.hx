package stdgo._internal.crypto.tls;
function _mutualCipherSuite(_have:stdgo.Slice<stdgo.GoUInt16>, _want:stdgo.GoUInt16):stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_cipherSuite.T_cipherSuite> {
        for (__65 => _id in _have) {
            if (_id == (_want)) {
                return stdgo._internal.crypto.tls.Tls__cipherSuiteByID._cipherSuiteByID(_id);
            };
        };
        return null;
    }
