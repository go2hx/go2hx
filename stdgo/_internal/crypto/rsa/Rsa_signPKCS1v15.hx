package stdgo._internal.crypto.rsa;
function signPKCS1v15(_random:stdgo._internal.io.Io_Reader.Reader, _priv:stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_PrivateKey.PrivateKey>, _hash:stdgo._internal.crypto.Crypto_Hash.Hash, _hashed:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        var __tmp__ = stdgo._internal.crypto.rsa.Rsa__pkcs1v15HashInfo._pkcs1v15HashInfo(_hash, (_hashed.length)), _hashLen:stdgo.GoInt = __tmp__._0, _prefix:stdgo.Slice<stdgo.GoUInt8> = __tmp__._1, _err:stdgo.Error = __tmp__._2;
        if (_err != null) {
            return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : _err };
        };
        var _tLen = ((_prefix.length) + _hashLen : stdgo.GoInt);
        var _k = (_priv.size() : stdgo.GoInt);
        if ((_k < (_tLen + (11 : stdgo.GoInt) : stdgo.GoInt) : Bool)) {
            return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : stdgo._internal.crypto.rsa.Rsa_errMessageTooLong.errMessageTooLong };
        };
        if (false) {
            var __tmp__ = stdgo._internal.crypto.rsa.Rsa__boringPrivateKey._boringPrivateKey(_priv), _bkey:stdgo.Ref<stdgo._internal.crypto.internal.boring.Boring_PrivateKeyRSA.PrivateKeyRSA> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : _err };
            };
            return stdgo._internal.crypto.internal.boring.Boring_signRSAPKCS1v15.signRSAPKCS1v15(_bkey, _hash, _hashed);
        };
        var _em = (new stdgo.Slice<stdgo.GoUInt8>((_k : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        _em[(1 : stdgo.GoInt)] = (1 : stdgo.GoUInt8);
        {
            var _i = (2 : stdgo.GoInt);
            stdgo.Go.cfor((_i < ((_k - _tLen : stdgo.GoInt) - (1 : stdgo.GoInt) : stdgo.GoInt) : Bool), _i++, {
                _em[(_i : stdgo.GoInt)] = (255 : stdgo.GoUInt8);
            });
        };
        stdgo.Go.copySlice((_em.__slice__((_k - _tLen : stdgo.GoInt), (_k - _hashLen : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), _prefix);
        stdgo.Go.copySlice((_em.__slice__((_k - _hashLen : stdgo.GoInt), _k) : stdgo.Slice<stdgo.GoUInt8>), _hashed);
        return stdgo._internal.crypto.rsa.Rsa__decrypt._decrypt(_priv, _em, true);
    }