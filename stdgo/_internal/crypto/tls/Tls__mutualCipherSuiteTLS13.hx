package stdgo._internal.crypto.tls;
function _mutualCipherSuiteTLS13(_have:stdgo.Slice<stdgo.GoUInt16>, _want:stdgo.GoUInt16):stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_cipherSuiteTLS13.T_cipherSuiteTLS13> {
        for (__65 => _id in _have) {
            if (_id == (_want)) {
                return stdgo._internal.crypto.tls.Tls__cipherSuiteTLS13ByID._cipherSuiteTLS13ByID(_id);
            };
        };
        return null;
    }