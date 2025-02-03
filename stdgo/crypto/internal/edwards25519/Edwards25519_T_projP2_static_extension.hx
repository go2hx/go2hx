package stdgo.crypto.internal.edwards25519;
class T_projP2_static_extension {
    static public function fromP3(_v:T_projP2, _p:Point):T_projP2 {
        final _v = (_v : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_T_projP2.T_projP2>);
        final _p = (_p : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_Point.Point>);
        return stdgo._internal.crypto.internal.edwards25519.Edwards25519_T_projP2_static_extension.T_projP2_static_extension.fromP3(_v, _p);
    }
    static public function fromP1xP1(_v:T_projP2, _p:T_projP1xP1):T_projP2 {
        final _v = (_v : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_T_projP2.T_projP2>);
        final _p = (_p : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_T_projP1xP1.T_projP1xP1>);
        return stdgo._internal.crypto.internal.edwards25519.Edwards25519_T_projP2_static_extension.T_projP2_static_extension.fromP1xP1(_v, _p);
    }
    static public function zero(_v:T_projP2):T_projP2 {
        final _v = (_v : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_T_projP2.T_projP2>);
        return stdgo._internal.crypto.internal.edwards25519.Edwards25519_T_projP2_static_extension.T_projP2_static_extension.zero(_v);
    }
}
