package stdgo.crypto.internal.edwards25519;
class Scalar_static_extension {
    static public function _signedRadix16(_s:Scalar):haxe.ds.Vector<StdTypes.Int> {
        final _s = (_s : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_Scalar.Scalar>);
        return haxe.ds.Vector.fromArrayCopy([for (i in stdgo._internal.crypto.internal.edwards25519.Edwards25519_Scalar_static_extension.Scalar_static_extension._signedRadix16(_s)) i]);
    }
    static public function _nonAdjacentForm(_s:Scalar, _w:std.UInt):haxe.ds.Vector<StdTypes.Int> {
        final _s = (_s : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_Scalar.Scalar>);
        final _w = (_w : stdgo.GoUInt);
        return haxe.ds.Vector.fromArrayCopy([for (i in stdgo._internal.crypto.internal.edwards25519.Edwards25519_Scalar_static_extension.Scalar_static_extension._nonAdjacentForm(_s, _w)) i]);
    }
    static public function equal(_s:Scalar, _t:Scalar):StdTypes.Int {
        final _s = (_s : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_Scalar.Scalar>);
        final _t = (_t : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_Scalar.Scalar>);
        return stdgo._internal.crypto.internal.edwards25519.Edwards25519_Scalar_static_extension.Scalar_static_extension.equal(_s, _t);
    }
    static public function _bytes(_s:Scalar, _out:haxe.ds.Vector<std.UInt>):Array<std.UInt> {
        final _s = (_s : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_Scalar.Scalar>);
        final _out = (_out : stdgo.Ref<stdgo.GoArray<stdgo.GoUInt8>>);
        return [for (i in stdgo._internal.crypto.internal.edwards25519.Edwards25519_Scalar_static_extension.Scalar_static_extension._bytes(_s, _out)) i];
    }
    static public function bytes(_s:Scalar):Array<std.UInt> {
        final _s = (_s : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_Scalar.Scalar>);
        return [for (i in stdgo._internal.crypto.internal.edwards25519.Edwards25519_Scalar_static_extension.Scalar_static_extension.bytes(_s)) i];
    }
    static public function setBytesWithClamping(_s:Scalar, _x:Array<std.UInt>):stdgo.Tuple<Scalar, stdgo.Error> {
        final _s = (_s : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_Scalar.Scalar>);
        final _x = ([for (i in _x) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.crypto.internal.edwards25519.Edwards25519_Scalar_static_extension.Scalar_static_extension.setBytesWithClamping(_s, _x);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function setCanonicalBytes(_s:Scalar, _x:Array<std.UInt>):stdgo.Tuple<Scalar, stdgo.Error> {
        final _s = (_s : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_Scalar.Scalar>);
        final _x = ([for (i in _x) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.crypto.internal.edwards25519.Edwards25519_Scalar_static_extension.Scalar_static_extension.setCanonicalBytes(_s, _x);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _setShortBytes(_s:Scalar, _x:Array<std.UInt>):Scalar {
        final _s = (_s : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_Scalar.Scalar>);
        final _x = ([for (i in _x) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.crypto.internal.edwards25519.Edwards25519_Scalar_static_extension.Scalar_static_extension._setShortBytes(_s, _x);
    }
    static public function setUniformBytes(_s:Scalar, _x:Array<std.UInt>):stdgo.Tuple<Scalar, stdgo.Error> {
        final _s = (_s : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_Scalar.Scalar>);
        final _x = ([for (i in _x) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.crypto.internal.edwards25519.Edwards25519_Scalar_static_extension.Scalar_static_extension.setUniformBytes(_s, _x);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function set(_s:Scalar, _x:Scalar):Scalar {
        final _s = (_s : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_Scalar.Scalar>);
        final _x = (_x : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_Scalar.Scalar>);
        return stdgo._internal.crypto.internal.edwards25519.Edwards25519_Scalar_static_extension.Scalar_static_extension.set(_s, _x);
    }
    static public function multiply(_s:Scalar, _x:Scalar, _y:Scalar):Scalar {
        final _s = (_s : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_Scalar.Scalar>);
        final _x = (_x : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_Scalar.Scalar>);
        final _y = (_y : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_Scalar.Scalar>);
        return stdgo._internal.crypto.internal.edwards25519.Edwards25519_Scalar_static_extension.Scalar_static_extension.multiply(_s, _x, _y);
    }
    static public function negate(_s:Scalar, _x:Scalar):Scalar {
        final _s = (_s : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_Scalar.Scalar>);
        final _x = (_x : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_Scalar.Scalar>);
        return stdgo._internal.crypto.internal.edwards25519.Edwards25519_Scalar_static_extension.Scalar_static_extension.negate(_s, _x);
    }
    static public function subtract(_s:Scalar, _x:Scalar, _y:Scalar):Scalar {
        final _s = (_s : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_Scalar.Scalar>);
        final _x = (_x : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_Scalar.Scalar>);
        final _y = (_y : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_Scalar.Scalar>);
        return stdgo._internal.crypto.internal.edwards25519.Edwards25519_Scalar_static_extension.Scalar_static_extension.subtract(_s, _x, _y);
    }
    static public function add(_s:Scalar, _x:Scalar, _y:Scalar):Scalar {
        final _s = (_s : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_Scalar.Scalar>);
        final _x = (_x : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_Scalar.Scalar>);
        final _y = (_y : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_Scalar.Scalar>);
        return stdgo._internal.crypto.internal.edwards25519.Edwards25519_Scalar_static_extension.Scalar_static_extension.add(_s, _x, _y);
    }
    static public function multiplyAdd(_s:Scalar, _x:Scalar, _y:Scalar, _z:Scalar):Scalar {
        final _s = (_s : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_Scalar.Scalar>);
        final _x = (_x : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_Scalar.Scalar>);
        final _y = (_y : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_Scalar.Scalar>);
        final _z = (_z : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_Scalar.Scalar>);
        return stdgo._internal.crypto.internal.edwards25519.Edwards25519_Scalar_static_extension.Scalar_static_extension.multiplyAdd(_s, _x, _y, _z);
    }
}
