package stdgo.crypto.internal.edwards25519;
class T_projP1xP1_static_extension {
    static public function double(_v:T_projP1xP1, _p:T_projP2):T_projP1xP1 {
        final _v = (_v : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_T_projP1xP1.T_projP1xP1>);
        final _p = (_p : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_T_projP2.T_projP2>);
        return stdgo._internal.crypto.internal.edwards25519.Edwards25519_T_projP1xP1_static_extension.T_projP1xP1_static_extension.double(_v, _p);
    }
    static public function subAffine(_v:T_projP1xP1, _p:Point, _q:T_affineCached):T_projP1xP1 {
        final _v = (_v : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_T_projP1xP1.T_projP1xP1>);
        final _p = (_p : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_Point.Point>);
        final _q = (_q : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_T_affineCached.T_affineCached>);
        return stdgo._internal.crypto.internal.edwards25519.Edwards25519_T_projP1xP1_static_extension.T_projP1xP1_static_extension.subAffine(_v, _p, _q);
    }
    static public function addAffine(_v:T_projP1xP1, _p:Point, _q:T_affineCached):T_projP1xP1 {
        final _v = (_v : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_T_projP1xP1.T_projP1xP1>);
        final _p = (_p : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_Point.Point>);
        final _q = (_q : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_T_affineCached.T_affineCached>);
        return stdgo._internal.crypto.internal.edwards25519.Edwards25519_T_projP1xP1_static_extension.T_projP1xP1_static_extension.addAffine(_v, _p, _q);
    }
    static public function sub(_v:T_projP1xP1, _p:Point, _q:T_projCached):T_projP1xP1 {
        final _v = (_v : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_T_projP1xP1.T_projP1xP1>);
        final _p = (_p : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_Point.Point>);
        final _q = (_q : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_T_projCached.T_projCached>);
        return stdgo._internal.crypto.internal.edwards25519.Edwards25519_T_projP1xP1_static_extension.T_projP1xP1_static_extension.sub(_v, _p, _q);
    }
    static public function add(_v:T_projP1xP1, _p:Point, _q:T_projCached):T_projP1xP1 {
        final _v = (_v : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_T_projP1xP1.T_projP1xP1>);
        final _p = (_p : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_Point.Point>);
        final _q = (_q : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_T_projCached.T_projCached>);
        return stdgo._internal.crypto.internal.edwards25519.Edwards25519_T_projP1xP1_static_extension.T_projP1xP1_static_extension.add(_v, _p, _q);
    }
}
