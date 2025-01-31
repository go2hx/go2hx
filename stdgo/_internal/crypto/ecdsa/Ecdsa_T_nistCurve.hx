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
@:structInit @:using(stdgo._internal.crypto.ecdsa.Ecdsa_T_nistCurve_static_extension.T_nistCurve_static_extension) class T_nistCurve<Point> {
    public var _newPoint : () -> Dynamic = null;
    public var _curve : stdgo._internal.crypto.elliptic.Elliptic_Curve.Curve = (null : stdgo._internal.crypto.elliptic.Elliptic_Curve.Curve);
    public var n : stdgo.Ref<stdgo._internal.crypto.internal.bigmod.Bigmod_Modulus.Modulus> = (null : stdgo.Ref<stdgo._internal.crypto.internal.bigmod.Bigmod_Modulus.Modulus>);
    public var _nMinus2 : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public function new(?_newPoint:() -> Dynamic, ?_curve:stdgo._internal.crypto.elliptic.Elliptic_Curve.Curve, ?n:stdgo.Ref<stdgo._internal.crypto.internal.bigmod.Bigmod_Modulus.Modulus>, ?_nMinus2:stdgo.Slice<stdgo.GoUInt8>) {
        if (_newPoint != null) this._newPoint = _newPoint;
        if (_curve != null) this._curve = _curve;
        if (n != null) this.n = n;
        if (_nMinus2 != null) this._nMinus2 = _nMinus2;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_nistCurve(_newPoint, _curve, n, _nMinus2);
    }
}
