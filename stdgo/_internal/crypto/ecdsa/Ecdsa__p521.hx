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
function _p521():stdgo.Ref<stdgo._internal.crypto.ecdsa.Ecdsa_T_nistCurve.T_nistCurve<stdgo.Ref<_internal.crypto.internal.nistec.Nistec_P521Point.P521Point>>> {
        @:check2 stdgo._internal.crypto.ecdsa.Ecdsa__p521Once._p521Once.do_(function():Void {
            stdgo._internal.crypto.ecdsa.Ecdsa___p521.__p521 = (stdgo.Go.setRef(({ _newPoint : function():stdgo.Ref<_internal.crypto.internal.nistec.Nistec_P521Point.P521Point> {
                return _internal.crypto.internal.nistec.Nistec_newP521Point.newP521Point();
            } } : stdgo._internal.crypto.ecdsa.Ecdsa_T_nistCurve.T_nistCurve<stdgo.Ref<_internal.crypto.internal.nistec.Nistec_P521Point.P521Point>>)) : stdgo.Ref<stdgo._internal.crypto.ecdsa.Ecdsa_T_nistCurve.T_nistCurve<stdgo.Ref<_internal.crypto.internal.nistec.Nistec_P521Point.P521Point>>>);
            stdgo._internal.crypto.ecdsa.Ecdsa__precomputeParams._precomputeParams(stdgo._internal.crypto.ecdsa.Ecdsa___p521.__p521, stdgo._internal.crypto.elliptic.Elliptic_p521.p521());
        });
        return stdgo._internal.crypto.ecdsa.Ecdsa___p521.__p521;
    }
