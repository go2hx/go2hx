package stdgo._internal.crypto.tls;
function _typeAndHashFromSignatureScheme(_signatureAlgorithm:stdgo._internal.crypto.tls.Tls_SignatureScheme.SignatureScheme):{ var _0 : stdgo.GoUInt8; var _1 : stdgo._internal.crypto.Crypto_Hash.Hash; var _2 : stdgo.Error; } {
        var _sigType = (0 : stdgo.GoUInt8), _hash = ((0 : stdgo.GoUInt) : stdgo._internal.crypto.Crypto_Hash.Hash), _err = (null : stdgo.Error);
        {
            final __value__ = _signatureAlgorithm;
            if (__value__ == ((513 : stdgo._internal.crypto.tls.Tls_SignatureScheme.SignatureScheme)) || __value__ == ((1025 : stdgo._internal.crypto.tls.Tls_SignatureScheme.SignatureScheme)) || __value__ == ((1281 : stdgo._internal.crypto.tls.Tls_SignatureScheme.SignatureScheme)) || __value__ == ((1537 : stdgo._internal.crypto.tls.Tls_SignatureScheme.SignatureScheme))) {
                _sigType = (225 : stdgo.GoUInt8);
            } else if (__value__ == ((2052 : stdgo._internal.crypto.tls.Tls_SignatureScheme.SignatureScheme)) || __value__ == ((2053 : stdgo._internal.crypto.tls.Tls_SignatureScheme.SignatureScheme)) || __value__ == ((2054 : stdgo._internal.crypto.tls.Tls_SignatureScheme.SignatureScheme))) {
                _sigType = (226 : stdgo.GoUInt8);
            } else if (__value__ == ((515 : stdgo._internal.crypto.tls.Tls_SignatureScheme.SignatureScheme)) || __value__ == ((1027 : stdgo._internal.crypto.tls.Tls_SignatureScheme.SignatureScheme)) || __value__ == ((1283 : stdgo._internal.crypto.tls.Tls_SignatureScheme.SignatureScheme)) || __value__ == ((1539 : stdgo._internal.crypto.tls.Tls_SignatureScheme.SignatureScheme))) {
                _sigType = (227 : stdgo.GoUInt8);
            } else if (__value__ == ((2055 : stdgo._internal.crypto.tls.Tls_SignatureScheme.SignatureScheme))) {
                _sigType = (228 : stdgo.GoUInt8);
            } else {
                return { _0 : (0 : stdgo.GoUInt8), _1 : (0u32 : stdgo._internal.crypto.Crypto_Hash.Hash), _2 : stdgo._internal.fmt.Fmt_errorf.errorf(("unsupported signature algorithm: %v" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_signatureAlgorithm))) };
            };
        };
        {
            final __value__ = _signatureAlgorithm;
            if (__value__ == ((513 : stdgo._internal.crypto.tls.Tls_SignatureScheme.SignatureScheme)) || __value__ == ((515 : stdgo._internal.crypto.tls.Tls_SignatureScheme.SignatureScheme))) {
                _hash = (3u32 : stdgo._internal.crypto.Crypto_Hash.Hash);
            } else if (__value__ == ((1025 : stdgo._internal.crypto.tls.Tls_SignatureScheme.SignatureScheme)) || __value__ == ((2052 : stdgo._internal.crypto.tls.Tls_SignatureScheme.SignatureScheme)) || __value__ == ((1027 : stdgo._internal.crypto.tls.Tls_SignatureScheme.SignatureScheme))) {
                _hash = (5u32 : stdgo._internal.crypto.Crypto_Hash.Hash);
            } else if (__value__ == ((1281 : stdgo._internal.crypto.tls.Tls_SignatureScheme.SignatureScheme)) || __value__ == ((2053 : stdgo._internal.crypto.tls.Tls_SignatureScheme.SignatureScheme)) || __value__ == ((1283 : stdgo._internal.crypto.tls.Tls_SignatureScheme.SignatureScheme))) {
                _hash = (6u32 : stdgo._internal.crypto.Crypto_Hash.Hash);
            } else if (__value__ == ((1537 : stdgo._internal.crypto.tls.Tls_SignatureScheme.SignatureScheme)) || __value__ == ((2054 : stdgo._internal.crypto.tls.Tls_SignatureScheme.SignatureScheme)) || __value__ == ((1539 : stdgo._internal.crypto.tls.Tls_SignatureScheme.SignatureScheme))) {
                _hash = (7u32 : stdgo._internal.crypto.Crypto_Hash.Hash);
            } else if (__value__ == ((2055 : stdgo._internal.crypto.tls.Tls_SignatureScheme.SignatureScheme))) {
                _hash = stdgo._internal.crypto.tls.Tls__directSigning._directSigning;
            } else {
                return { _0 : (0 : stdgo.GoUInt8), _1 : (0u32 : stdgo._internal.crypto.Crypto_Hash.Hash), _2 : stdgo._internal.fmt.Fmt_errorf.errorf(("unsupported signature algorithm: %v" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_signatureAlgorithm))) };
            };
        };
        return { _0 : _sigType, _1 : _hash, _2 : (null : stdgo.Error) };
    }
