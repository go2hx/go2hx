package stdgo._internal.crypto.ecdsa;
import stdgo._internal.errors.Errors;
import stdgo._internal.crypto.elliptic.Elliptic;
import stdgo._internal.crypto.ecdh.Ecdh;
import stdgo._internal.crypto.subtle.Subtle;
import stdgo._internal.crypto.internal.randutil.Randutil;
import stdgo._internal.crypto.internal.boring.Boring;
import stdgo._internal.crypto.internal.boring.bbig.Bbig;
import stdgo._internal.crypto.internal.bigmod.Bigmod;
import stdgo._internal.io.Io;
import stdgo._internal.crypto.internal.nistec.Nistec;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.crypto.sha512.Sha512;
import stdgo._internal.crypto.aes.Aes;
import stdgo._internal.crypto.cipher.Cipher;
import stdgo._internal.math.big.Big;
function _p384():stdgo.Ref<stdgo._internal.crypto.ecdsa.Ecdsa_T_nistCurve.T_nistCurve<stdgo.Ref<stdgo._internal.crypto.internal.nistec.Nistec_P384Point.P384Point>>> {
        @:check2 stdgo._internal.crypto.ecdsa.Ecdsa__p384Once._p384Once.do_(function():Void {
            stdgo._internal.crypto.ecdsa.Ecdsa___p384.__p384 = (stdgo.Go.setRef(({ _newPoint : function():stdgo.Ref<stdgo._internal.crypto.internal.nistec.Nistec_P384Point.P384Point> {
                return stdgo._internal.crypto.internal.nistec.Nistec_newP384Point.newP384Point();
            } } : stdgo._internal.crypto.ecdsa.Ecdsa_T_nistCurve.T_nistCurve<stdgo.Ref<stdgo._internal.crypto.internal.nistec.Nistec_P384Point.P384Point>>)) : stdgo.Ref<stdgo._internal.crypto.ecdsa.Ecdsa_T_nistCurve.T_nistCurve<stdgo.Ref<stdgo._internal.crypto.internal.nistec.Nistec_P384Point.P384Point>>>);
            stdgo._internal.crypto.ecdsa.Ecdsa__precomputeParams._precomputeParams(stdgo._internal.crypto.ecdsa.Ecdsa___p384.__p384, stdgo._internal.crypto.elliptic.Elliptic_p384.p384());
        });
        return stdgo._internal.crypto.ecdsa.Ecdsa___p384.__p384;
    }
