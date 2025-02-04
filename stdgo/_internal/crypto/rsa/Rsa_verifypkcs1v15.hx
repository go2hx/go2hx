package stdgo._internal.crypto.rsa;
function verifyPKCS1v15(_pub:stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_publickey.PublicKey>, _hash:stdgo._internal.crypto.Crypto_hash.Hash, _hashed:stdgo.Slice<stdgo.GoUInt8>, _sig:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error {
        if (false) {
            var __tmp__ = stdgo._internal.crypto.rsa.Rsa__boringpublickey._boringPublicKey(_pub), _bkey:stdgo.Ref<stdgo._internal.crypto.internal.boring.Boring_publickeyrsa.PublicKeyRSA> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return _err;
            };
            {
                var _err = (stdgo._internal.crypto.internal.boring.Boring_verifyrsapkcs1v15.verifyRSAPKCS1v15(_bkey, _hash, _hashed, _sig) : stdgo.Error);
                if (_err != null) {
                    return stdgo._internal.crypto.rsa.Rsa_errverification.errVerification;
                };
            };
            return (null : stdgo.Error);
        };
        var __tmp__ = stdgo._internal.crypto.rsa.Rsa__pkcs1v15hashinfo._pkcs1v15HashInfo(_hash, (_hashed.length)), _hashLen:stdgo.GoInt = __tmp__._0, _prefix:stdgo.Slice<stdgo.GoUInt8> = __tmp__._1, _err:stdgo.Error = __tmp__._2;
        if (_err != null) {
            return _err;
        };
        var _tLen = ((_prefix.length) + _hashLen : stdgo.GoInt);
        var _k = (@:check2r _pub.size() : stdgo.GoInt);
        if ((_k < (_tLen + (11 : stdgo.GoInt) : stdgo.GoInt) : Bool)) {
            return stdgo._internal.crypto.rsa.Rsa_errverification.errVerification;
        };
        if (_k != ((_sig.length))) {
            return stdgo._internal.crypto.rsa.Rsa_errverification.errVerification;
        };
        var __tmp__ = stdgo._internal.crypto.rsa.Rsa__encrypt._encrypt(_pub, _sig), _em:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return stdgo._internal.crypto.rsa.Rsa_errverification.errVerification;
        };
        var _ok = (stdgo._internal.crypto.subtle.Subtle_constanttimebyteeq.constantTimeByteEq(_em[(0 : stdgo.GoInt)], (0 : stdgo.GoUInt8)) : stdgo.GoInt);
        _ok = (_ok & (stdgo._internal.crypto.subtle.Subtle_constanttimebyteeq.constantTimeByteEq(_em[(1 : stdgo.GoInt)], (1 : stdgo.GoUInt8))) : stdgo.GoInt);
        _ok = (_ok & (stdgo._internal.crypto.subtle.Subtle_constanttimecompare.constantTimeCompare((_em.__slice__((_k - _hashLen : stdgo.GoInt), _k) : stdgo.Slice<stdgo.GoUInt8>), _hashed)) : stdgo.GoInt);
        _ok = (_ok & (stdgo._internal.crypto.subtle.Subtle_constanttimecompare.constantTimeCompare((_em.__slice__((_k - _tLen : stdgo.GoInt), (_k - _hashLen : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), _prefix)) : stdgo.GoInt);
        _ok = (_ok & (stdgo._internal.crypto.subtle.Subtle_constanttimebyteeq.constantTimeByteEq(_em[((_k - _tLen : stdgo.GoInt) - (1 : stdgo.GoInt) : stdgo.GoInt)], (0 : stdgo.GoUInt8))) : stdgo.GoInt);
        {
            var _i = (2 : stdgo.GoInt);
            while ((_i < ((_k - _tLen : stdgo.GoInt) - (1 : stdgo.GoInt) : stdgo.GoInt) : Bool)) {
                _ok = (_ok & (stdgo._internal.crypto.subtle.Subtle_constanttimebyteeq.constantTimeByteEq(_em[(_i : stdgo.GoInt)], (255 : stdgo.GoUInt8))) : stdgo.GoInt);
                _i++;
            };
        };
        if (_ok != ((1 : stdgo.GoInt))) {
            return stdgo._internal.crypto.rsa.Rsa_errverification.errVerification;
        };
        return (null : stdgo.Error);
    }
