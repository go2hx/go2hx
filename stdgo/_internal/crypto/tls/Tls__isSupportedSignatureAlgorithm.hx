package stdgo._internal.crypto.tls;
function _isSupportedSignatureAlgorithm(_sigAlg:stdgo._internal.crypto.tls.Tls_SignatureScheme.SignatureScheme, _supportedSignatureAlgorithms:stdgo.Slice<stdgo._internal.crypto.tls.Tls_SignatureScheme.SignatureScheme>):Bool {
        for (__65 => _s in _supportedSignatureAlgorithms) {
            if (_s == (_sigAlg)) {
                return true;
            };
        };
        return false;
    }
