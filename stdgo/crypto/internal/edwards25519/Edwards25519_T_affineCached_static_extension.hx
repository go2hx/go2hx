package stdgo.crypto.internal.edwards25519;
class T_affineCached_static_extension {
    static public function condNeg(_v:T_affineCached, _cond:StdTypes.Int):T_affineCached {
        final _v = (_v : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_T_affineCached.T_affineCached>);
        final _cond = (_cond : stdgo.GoInt);
        return stdgo._internal.crypto.internal.edwards25519.Edwards25519_T_affineCached_static_extension.T_affineCached_static_extension.condNeg(_v, _cond);
    }
    static public function select(_v:T_affineCached, _a:T_affineCached, _b:T_affineCached, _cond:StdTypes.Int):T_affineCached {
        final _v = (_v : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_T_affineCached.T_affineCached>);
        final _a = (_a : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_T_affineCached.T_affineCached>);
        final _b = (_b : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_T_affineCached.T_affineCached>);
        final _cond = (_cond : stdgo.GoInt);
        return stdgo._internal.crypto.internal.edwards25519.Edwards25519_T_affineCached_static_extension.T_affineCached_static_extension.select(_v, _a, _b, _cond);
    }
    static public function fromP3(_v:T_affineCached, _p:Point):T_affineCached {
        final _v = (_v : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_T_affineCached.T_affineCached>);
        final _p = (_p : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_Point.Point>);
        return stdgo._internal.crypto.internal.edwards25519.Edwards25519_T_affineCached_static_extension.T_affineCached_static_extension.fromP3(_v, _p);
    }
    static public function zero(_v:T_affineCached):T_affineCached {
        final _v = (_v : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_T_affineCached.T_affineCached>);
        return stdgo._internal.crypto.internal.edwards25519.Edwards25519_T_affineCached_static_extension.T_affineCached_static_extension.zero(_v);
    }
}
