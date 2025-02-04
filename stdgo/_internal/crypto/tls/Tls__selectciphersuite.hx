package stdgo._internal.crypto.tls;
function _selectCipherSuite(_ids:stdgo.Slice<stdgo.GoUInt16>, _supportedIDs:stdgo.Slice<stdgo.GoUInt16>, _ok:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_ciphersuite.T_cipherSuite> -> Bool):stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_ciphersuite.T_cipherSuite> {
        for (__65 => _id in _ids) {
            var _candidate = stdgo._internal.crypto.tls.Tls__ciphersuitebyid._cipherSuiteByID(_id);
            if (((_candidate == null || (_candidate : Dynamic).__nil__) || !_ok(_candidate) : Bool)) {
                continue;
            };
            for (__66 => _suppID in _supportedIDs) {
                if (_id == (_suppID)) {
                    return _candidate;
                };
            };
        };
        return null;
    }
