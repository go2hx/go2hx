package stdgo._internal.crypto.ecdsa;
import stdgo._internal.errors.Errors;
import stdgo._internal.crypto.elliptic.Elliptic;
import stdgo._internal.crypto.ecdh.Ecdh;
import stdgo._internal.crypto.subtle.Subtle;
import stdgo._internal.crypto.internal.randutil.Randutil;
import stdgo._internal.crypto.internal.boring.Boring;
import _internal.crypto.internal.boring.bbig.Bbig;
import stdgo._internal.crypto.internal.bigmod.Bigmod;
import stdgo._internal.io.Io;
import _internal.crypto.internal.nistec.Nistec;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.crypto.sha512.Sha512;
import stdgo._internal.crypto.aes.Aes;
import stdgo._internal.crypto.cipher.Cipher;
import stdgo._internal.math.big.Big;
function _signLegacy(_priv:stdgo.Ref<stdgo._internal.crypto.ecdsa.Ecdsa_PrivateKey.PrivateKey>, _csprng:stdgo._internal.io.Io_Reader.Reader, _hash:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        var _sig = (null : stdgo.Slice<stdgo.GoUInt8>), _err = (null : stdgo.Error);
        var _c = ((@:checkr _priv ?? throw "null pointer dereference").publicKey.curve : stdgo._internal.crypto.elliptic.Elliptic_Curve.Curve);
        var n = _c.params().n;
        if (@:check2r n.sign() == ((0 : stdgo.GoInt))) {
            return {
                final __tmp__:{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } = { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : stdgo._internal.crypto.ecdsa.Ecdsa__errZeroParam._errZeroParam };
                _sig = __tmp__._0;
                _err = __tmp__._1;
                __tmp__;
            };
        };
        var __0:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_> = (null : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>), __1:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_> = (null : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>), __2:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_> = (null : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>), __3:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_> = (null : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
var _s = __3, _r = __2, _kInv = __1, _k = __0;
        while (true) {
            while (true) {
                {
                    var __tmp__ = stdgo._internal.crypto.ecdsa.Ecdsa__randFieldElement._randFieldElement(_c, _csprng);
                    _k = @:tmpset0 __tmp__._0;
                    _err = @:tmpset0 __tmp__._1;
                };
                if (_err != null) {
                    return {
                        final __tmp__:{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } = { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : _err };
                        _sig = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                };
                _kInv = @:check2r (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_Int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>).modInverse(_k, n);
                {
                    var __tmp__ = _c.scalarBaseMult(@:check2r _k.bytes());
                    _r = @:tmpset0 __tmp__._0;
                };
                @:check2r _r.mod(_r, n);
                if (@:check2r _r.sign() != ((0 : stdgo.GoInt))) {
                    break;
                };
            };
            var _e = stdgo._internal.crypto.ecdsa.Ecdsa__hashToInt._hashToInt(_hash, _c);
            _s = @:check2r (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_Int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>).mul((@:checkr _priv ?? throw "null pointer dereference").d, _r);
            @:check2r _s.add(_s, _e);
            @:check2r _s.mul(_s, _kInv);
            @:check2r _s.mod(_s, n);
            if (@:check2r _s.sign() != ((0 : stdgo.GoInt))) {
                break;
            };
        };
        return {
            final __tmp__:{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } = stdgo._internal.crypto.ecdsa.Ecdsa__encodeSignature._encodeSignature(@:check2r _r.bytes(), @:check2r _s.bytes());
            _sig = __tmp__._0;
            _err = __tmp__._1;
            __tmp__;
        };
    }
