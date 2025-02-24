package stdgo._internal.crypto.tls;
function _typeAndHashFromSignatureScheme(_signatureAlgorithm:stdgo._internal.crypto.tls.Tls_signaturescheme.SignatureScheme):{ var _0 : stdgo.GoUInt8; var _1 : stdgo._internal.crypto.Crypto_hash.Hash; var _2 : stdgo.Error; } {
        var _sigType = (0 : stdgo.GoUInt8), _hash = ((0 : stdgo.GoUInt) : stdgo._internal.crypto.Crypto_hash.Hash), _err = (null : stdgo.Error);
        {
            final __value__ = _signatureAlgorithm;
            if (__value__ == ((513 : stdgo._internal.crypto.tls.Tls_signaturescheme.SignatureScheme)) || __value__ == ((1025 : stdgo._internal.crypto.tls.Tls_signaturescheme.SignatureScheme)) || __value__ == ((1281 : stdgo._internal.crypto.tls.Tls_signaturescheme.SignatureScheme)) || __value__ == ((1537 : stdgo._internal.crypto.tls.Tls_signaturescheme.SignatureScheme))) {
                _sigType = (225 : stdgo.GoUInt8);
            } else if (__value__ == ((2052 : stdgo._internal.crypto.tls.Tls_signaturescheme.SignatureScheme)) || __value__ == ((2053 : stdgo._internal.crypto.tls.Tls_signaturescheme.SignatureScheme)) || __value__ == ((2054 : stdgo._internal.crypto.tls.Tls_signaturescheme.SignatureScheme))) {
                _sigType = (226 : stdgo.GoUInt8);
            } else if (__value__ == ((515 : stdgo._internal.crypto.tls.Tls_signaturescheme.SignatureScheme)) || __value__ == ((1027 : stdgo._internal.crypto.tls.Tls_signaturescheme.SignatureScheme)) || __value__ == ((1283 : stdgo._internal.crypto.tls.Tls_signaturescheme.SignatureScheme)) || __value__ == ((1539 : stdgo._internal.crypto.tls.Tls_signaturescheme.SignatureScheme))) {
                _sigType = (227 : stdgo.GoUInt8);
            } else if (__value__ == ((2055 : stdgo._internal.crypto.tls.Tls_signaturescheme.SignatureScheme))) {
                _sigType = (228 : stdgo.GoUInt8);
            } else {
                return {
                    final __tmp__:{ var _0 : stdgo.GoUInt8; var _1 : stdgo._internal.crypto.Crypto_hash.Hash; var _2 : stdgo.Error; } = { _0 : (0 : stdgo.GoUInt8), _1 : (0u32 : stdgo._internal.crypto.Crypto_hash.Hash), _2 : stdgo._internal.fmt.Fmt_errorf.errorf(("unsupported signature algorithm: %v" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_signatureAlgorithm))) };
                    _sigType = __tmp__._0;
                    _hash = __tmp__._1;
                    _err = __tmp__._2;
                    __tmp__;
                };
            };
        };
        {
            final __value__ = _signatureAlgorithm;
            if (__value__ == ((513 : stdgo._internal.crypto.tls.Tls_signaturescheme.SignatureScheme)) || __value__ == ((515 : stdgo._internal.crypto.tls.Tls_signaturescheme.SignatureScheme))) {
                _hash = (3u32 : stdgo._internal.crypto.Crypto_hash.Hash);
            } else if (__value__ == ((1025 : stdgo._internal.crypto.tls.Tls_signaturescheme.SignatureScheme)) || __value__ == ((2052 : stdgo._internal.crypto.tls.Tls_signaturescheme.SignatureScheme)) || __value__ == ((1027 : stdgo._internal.crypto.tls.Tls_signaturescheme.SignatureScheme))) {
                _hash = (5u32 : stdgo._internal.crypto.Crypto_hash.Hash);
            } else if (__value__ == ((1281 : stdgo._internal.crypto.tls.Tls_signaturescheme.SignatureScheme)) || __value__ == ((2053 : stdgo._internal.crypto.tls.Tls_signaturescheme.SignatureScheme)) || __value__ == ((1283 : stdgo._internal.crypto.tls.Tls_signaturescheme.SignatureScheme))) {
                _hash = (6u32 : stdgo._internal.crypto.Crypto_hash.Hash);
            } else if (__value__ == ((1537 : stdgo._internal.crypto.tls.Tls_signaturescheme.SignatureScheme)) || __value__ == ((2054 : stdgo._internal.crypto.tls.Tls_signaturescheme.SignatureScheme)) || __value__ == ((1539 : stdgo._internal.crypto.tls.Tls_signaturescheme.SignatureScheme))) {
                _hash = (7u32 : stdgo._internal.crypto.Crypto_hash.Hash);
            } else if (__value__ == ((2055 : stdgo._internal.crypto.tls.Tls_signaturescheme.SignatureScheme))) {
                _hash = stdgo._internal.crypto.tls.Tls__directsigning._directSigning;
            } else {
                return {
                    final __tmp__:{ var _0 : stdgo.GoUInt8; var _1 : stdgo._internal.crypto.Crypto_hash.Hash; var _2 : stdgo.Error; } = { _0 : (0 : stdgo.GoUInt8), _1 : (0u32 : stdgo._internal.crypto.Crypto_hash.Hash), _2 : stdgo._internal.fmt.Fmt_errorf.errorf(("unsupported signature algorithm: %v" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_signatureAlgorithm))) };
                    _sigType = __tmp__._0;
                    _hash = __tmp__._1;
                    _err = __tmp__._2;
                    __tmp__;
                };
            };
        };
        return {
            final __tmp__:{ var _0 : stdgo.GoUInt8; var _1 : stdgo._internal.crypto.Crypto_hash.Hash; var _2 : stdgo.Error; } = { _0 : _sigType, _1 : _hash, _2 : (null : stdgo.Error) };
            _sigType = __tmp__._0;
            _hash = __tmp__._1;
            _err = __tmp__._2;
            __tmp__;
        };
    }
