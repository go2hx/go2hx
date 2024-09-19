package stdgo._internal.crypto.rsa;
function _signPSSWithSalt(_priv:stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_PrivateKey.PrivateKey>, _hash:stdgo._internal.crypto.Crypto_Hash.Hash, _hashed:stdgo.Slice<stdgo.GoUInt8>, _salt:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        var _emBits = (_priv.publicKey.n.bitLen() - (1 : stdgo.GoInt) : stdgo.GoInt);
        var __tmp__ = stdgo._internal.crypto.rsa.Rsa__emsaPSSEncode._emsaPSSEncode(_hashed, _emBits, _salt, _hash.new_()), _em:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : _err };
        };
        if (false) {
            var __tmp__ = stdgo._internal.crypto.rsa.Rsa__boringPrivateKey._boringPrivateKey(_priv), _bkey:stdgo.Ref<stdgo._internal.crypto.internal.boring.Boring_PrivateKeyRSA.PrivateKeyRSA> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : _err };
            };
            var __tmp__ = stdgo._internal.crypto.internal.boring.Boring_decryptRSANoPadding.decryptRSANoPadding(_bkey, _em), _s:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : _err };
            };
            return { _0 : _s, _1 : (null : stdgo.Error) };
        };
        {
            var __0 = (_em.length : stdgo.GoInt), __1 = (_priv.size() : stdgo.GoInt);
var _k = __1, _emLen = __0;
            if ((_emLen < _k : Bool)) {
                var _emNew = (new stdgo.Slice<stdgo.GoUInt8>((_k : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
                stdgo.Go.copySlice((_emNew.__slice__((_k - _emLen : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), _em);
                _em = _emNew;
            };
        };
        return stdgo._internal.crypto.rsa.Rsa__decrypt._decrypt(_priv, _em, true);
    }