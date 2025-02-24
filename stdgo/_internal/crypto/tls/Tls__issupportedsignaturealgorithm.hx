package stdgo._internal.crypto.tls;
function _isSupportedSignatureAlgorithm(_sigAlg:stdgo._internal.crypto.tls.Tls_signaturescheme.SignatureScheme, _supportedSignatureAlgorithms:stdgo.Slice<stdgo._internal.crypto.tls.Tls_signaturescheme.SignatureScheme>):Bool {
        for (__29 => _s in _supportedSignatureAlgorithms) {
            if (_s == (_sigAlg)) {
                return true;
            };
        };
        return false;
    }
