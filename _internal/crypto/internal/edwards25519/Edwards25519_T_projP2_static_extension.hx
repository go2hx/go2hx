package _internal.crypto.internal.edwards25519;
@:keep @:allow(_internal.crypto.internal.edwards25519.Edwards25519.T_projP2_asInterface) class T_projP2_static_extension {
    @:keep
    static public function fromP3( _v:stdgo.Ref<_internal.crypto.internal.edwards25519.Edwards25519_T_projP2.T_projP2>, _p:stdgo.Ref<_internal.crypto.internal.edwards25519.Edwards25519_Point.Point>):stdgo.Ref<_internal.crypto.internal.edwards25519.Edwards25519_T_projP2.T_projP2> {
        @:recv var _v:stdgo.Ref<_internal.crypto.internal.edwards25519.Edwards25519_T_projP2.T_projP2> = _v;
        _v.x.set((stdgo.Go.setRef(_p._x) : stdgo.Ref<_internal.crypto.internal.edwards25519.field.Field_Element.Element>));
        _v.y.set((stdgo.Go.setRef(_p._y) : stdgo.Ref<_internal.crypto.internal.edwards25519.field.Field_Element.Element>));
        _v.z.set((stdgo.Go.setRef(_p._z) : stdgo.Ref<_internal.crypto.internal.edwards25519.field.Field_Element.Element>));
        return _v;
    }
    @:keep
    static public function fromP1xP1( _v:stdgo.Ref<_internal.crypto.internal.edwards25519.Edwards25519_T_projP2.T_projP2>, _p:stdgo.Ref<_internal.crypto.internal.edwards25519.Edwards25519_T_projP1xP1.T_projP1xP1>):stdgo.Ref<_internal.crypto.internal.edwards25519.Edwards25519_T_projP2.T_projP2> {
        @:recv var _v:stdgo.Ref<_internal.crypto.internal.edwards25519.Edwards25519_T_projP2.T_projP2> = _v;
        _v.x.multiply((stdgo.Go.setRef(_p.x) : stdgo.Ref<_internal.crypto.internal.edwards25519.field.Field_Element.Element>), (stdgo.Go.setRef(_p.t) : stdgo.Ref<_internal.crypto.internal.edwards25519.field.Field_Element.Element>));
        _v.y.multiply((stdgo.Go.setRef(_p.y) : stdgo.Ref<_internal.crypto.internal.edwards25519.field.Field_Element.Element>), (stdgo.Go.setRef(_p.z) : stdgo.Ref<_internal.crypto.internal.edwards25519.field.Field_Element.Element>));
        _v.z.multiply((stdgo.Go.setRef(_p.z) : stdgo.Ref<_internal.crypto.internal.edwards25519.field.Field_Element.Element>), (stdgo.Go.setRef(_p.t) : stdgo.Ref<_internal.crypto.internal.edwards25519.field.Field_Element.Element>));
        return _v;
    }
    @:keep
    static public function zero( _v:stdgo.Ref<_internal.crypto.internal.edwards25519.Edwards25519_T_projP2.T_projP2>):stdgo.Ref<_internal.crypto.internal.edwards25519.Edwards25519_T_projP2.T_projP2> {
        @:recv var _v:stdgo.Ref<_internal.crypto.internal.edwards25519.Edwards25519_T_projP2.T_projP2> = _v;
        _v.x.zero();
        _v.y.one();
        _v.z.one();
        return _v;
    }
}
