package stdgo._internal.crypto.tls;
function _aesgcmPreferred(_ciphers:stdgo.Slice<stdgo.GoUInt16>):Bool {
        for (__65 => _cID in _ciphers) {
            {
                var _c = stdgo._internal.crypto.tls.Tls__cipherSuiteByID._cipherSuiteByID(_cID);
                if ((_c != null && ((_c : Dynamic).__nil__ == null || !(_c : Dynamic).__nil__))) {
                    return (stdgo._internal.crypto.tls.Tls__aesgcmCiphers._aesgcmCiphers[_cID] ?? false);
                };
            };
            {
                var _c = stdgo._internal.crypto.tls.Tls__cipherSuiteTLS13ByID._cipherSuiteTLS13ByID(_cID);
                if ((_c != null && ((_c : Dynamic).__nil__ == null || !(_c : Dynamic).__nil__))) {
                    return (stdgo._internal.crypto.tls.Tls__aesgcmCiphers._aesgcmCiphers[_cID] ?? false);
                };
            };
        };
        return false;
    }
