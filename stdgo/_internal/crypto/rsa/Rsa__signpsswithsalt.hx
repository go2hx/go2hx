package stdgo._internal.crypto.rsa;
function _signPSSWithSalt(_priv:stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_privatekey.PrivateKey>, _hash:stdgo._internal.crypto.Crypto_hash.Hash, _hashed:stdgo.Slice<stdgo.GoUInt8>, _salt:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        var _emBits = ((@:checkr _priv ?? throw "null pointer dereference").publicKey.n.bitLen() - (1 : stdgo.GoInt) : stdgo.GoInt);
        var __tmp__ = stdgo._internal.crypto.rsa.Rsa__emsapssencode._emsaPSSEncode(_hashed, _emBits, _salt, _hash.new_()), _em:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/crypto/rsa/pss.go#L213"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/crypto/rsa/pss.go#L214"
            return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : _err };
        };
        //"file:///home/runner/.go/go1.21.3/src/crypto/rsa/pss.go#L217"
        if (false) {
            var __tmp__ = stdgo._internal.crypto.rsa.Rsa__boringprivatekey._boringPrivateKey(_priv), _bkey:stdgo.Ref<stdgo._internal.crypto.internal.boring.Boring_privatekeyrsa.PrivateKeyRSA> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            //"file:///home/runner/.go/go1.21.3/src/crypto/rsa/pss.go#L219"
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/crypto/rsa/pss.go#L220"
                return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : _err };
            };
            var __tmp__ = stdgo._internal.crypto.internal.boring.Boring_decryptrsanopadding.decryptRSANoPadding(_bkey, _em), _s:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            //"file:///home/runner/.go/go1.21.3/src/crypto/rsa/pss.go#L225"
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/crypto/rsa/pss.go#L226"
                return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : _err };
            };
            //"file:///home/runner/.go/go1.21.3/src/crypto/rsa/pss.go#L228"
            return { _0 : _s, _1 : (null : stdgo.Error) };
        };
        //"file:///home/runner/.go/go1.21.3/src/crypto/rsa/pss.go#L238"
        {
            var __0 = (_em.length : stdgo.GoInt), __1 = (_priv.size() : stdgo.GoInt);
var _k = __1, _emLen = __0;
            if ((_emLen < _k : Bool)) {
                var _emNew = (new stdgo.Slice<stdgo.GoUInt8>((_k : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
                //"file:///home/runner/.go/go1.21.3/src/crypto/rsa/pss.go#L240"
                (_emNew.__slice__((_k - _emLen : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>).__copyTo__(_em);
                _em = _emNew;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/crypto/rsa/pss.go#L244"
        return stdgo._internal.crypto.rsa.Rsa__decrypt._decrypt(_priv, _em, true);
    }
