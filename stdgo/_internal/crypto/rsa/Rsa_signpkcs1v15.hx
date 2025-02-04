package stdgo._internal.crypto.rsa;
function signPKCS1v15(_random:stdgo._internal.io.Io_reader.Reader, _priv:stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_privatekey.PrivateKey>, _hash:stdgo._internal.crypto.Crypto_hash.Hash, _hashed:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        var __tmp__ = stdgo._internal.crypto.rsa.Rsa__pkcs1v15hashinfo._pkcs1v15HashInfo(_hash, (_hashed.length)), _hashLen:stdgo.GoInt = __tmp__._0, _prefix:stdgo.Slice<stdgo.GoUInt8> = __tmp__._1, _err:stdgo.Error = __tmp__._2;
        if (_err != null) {
            return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : _err };
        };
        var _tLen = ((_prefix.length) + _hashLen : stdgo.GoInt);
        var _k = (@:check2r _priv.size() : stdgo.GoInt);
        if ((_k < (_tLen + (11 : stdgo.GoInt) : stdgo.GoInt) : Bool)) {
            return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : stdgo._internal.crypto.rsa.Rsa_errmessagetoolong.errMessageTooLong };
        };
        if (false) {
            var __tmp__ = stdgo._internal.crypto.rsa.Rsa__boringprivatekey._boringPrivateKey(_priv), _bkey:stdgo.Ref<stdgo._internal.crypto.internal.boring.Boring_privatekeyrsa.PrivateKeyRSA> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : _err };
            };
            return stdgo._internal.crypto.internal.boring.Boring_signrsapkcs1v15.signRSAPKCS1v15(_bkey, _hash, _hashed);
        };
        var _em = (new stdgo.Slice<stdgo.GoUInt8>((_k : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        _em[(1 : stdgo.GoInt)] = (1 : stdgo.GoUInt8);
        {
            var _i = (2 : stdgo.GoInt);
            while ((_i < ((_k - _tLen : stdgo.GoInt) - (1 : stdgo.GoInt) : stdgo.GoInt) : Bool)) {
                _em[(_i : stdgo.GoInt)] = (255 : stdgo.GoUInt8);
                _i++;
            };
        };
        (_em.__slice__((_k - _tLen : stdgo.GoInt), (_k - _hashLen : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>).__copyTo__(_prefix);
        (_em.__slice__((_k - _hashLen : stdgo.GoInt), _k) : stdgo.Slice<stdgo.GoUInt8>).__copyTo__(_hashed);
        return stdgo._internal.crypto.rsa.Rsa__decrypt._decrypt(_priv, _em, true);
    }
