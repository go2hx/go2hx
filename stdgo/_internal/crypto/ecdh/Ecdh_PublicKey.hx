package stdgo._internal.crypto.ecdh;
import stdgo._internal.errors.Errors;
import _internal.crypto.internal.nistec.Nistec;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.math.bits.Bits;
import stdgo._internal.crypto.subtle.Subtle;
import stdgo._internal.crypto.internal.boring.Boring;
import stdgo._internal.crypto.internal.randutil.Randutil;
import stdgo._internal.io.Io;
@:structInit @:using(stdgo._internal.crypto.ecdh.Ecdh_PublicKey_static_extension.PublicKey_static_extension) class PublicKey {
    public var _curve : stdgo._internal.crypto.ecdh.Ecdh_Curve.Curve = (null : stdgo._internal.crypto.ecdh.Ecdh_Curve.Curve);
    public var _publicKey : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public var _boring : stdgo.Ref<stdgo._internal.crypto.internal.boring.Boring_PublicKeyECDH.PublicKeyECDH> = (null : stdgo.Ref<stdgo._internal.crypto.internal.boring.Boring_PublicKeyECDH.PublicKeyECDH>);
    public function new(?_curve:stdgo._internal.crypto.ecdh.Ecdh_Curve.Curve, ?_publicKey:stdgo.Slice<stdgo.GoUInt8>, ?_boring:stdgo.Ref<stdgo._internal.crypto.internal.boring.Boring_PublicKeyECDH.PublicKeyECDH>) {
        if (_curve != null) this._curve = _curve;
        if (_publicKey != null) this._publicKey = _publicKey;
        if (_boring != null) this._boring = _boring;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new PublicKey(_curve, _publicKey, _boring);
    }
}
