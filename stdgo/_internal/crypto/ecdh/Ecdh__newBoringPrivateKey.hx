package stdgo._internal.crypto.ecdh;
import stdgo._internal.errors.Errors;
import _internal.crypto.internal.nistec.Nistec;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.math.bits.Bits;
import stdgo._internal.crypto.subtle.Subtle;
import stdgo._internal.crypto.internal.boring.Boring;
import stdgo._internal.crypto.internal.randutil.Randutil;
import stdgo._internal.io.Io;
function _newBoringPrivateKey(_c:stdgo._internal.crypto.ecdh.Ecdh_Curve.Curve, _bk:stdgo.Ref<stdgo._internal.crypto.internal.boring.Boring_PrivateKeyECDH.PrivateKeyECDH>, _privateKey:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Ref<stdgo._internal.crypto.ecdh.Ecdh_PrivateKey.PrivateKey>; var _1 : stdgo.Error; } {
        var _k = (stdgo.Go.setRef(({ _curve : _c, _boring : _bk, _privateKey : ((null : stdgo.Slice<stdgo.GoUInt8>).__append__(...(_privateKey : Array<stdgo.GoUInt8>))) } : stdgo._internal.crypto.ecdh.Ecdh_PrivateKey.PrivateKey)) : stdgo.Ref<stdgo._internal.crypto.ecdh.Ecdh_PrivateKey.PrivateKey>);
        return { _0 : _k, _1 : (null : stdgo.Error) };
    }
