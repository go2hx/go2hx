package _internal.crypto.internal.edwards25519;
@:keep @:allow(_internal.crypto.internal.edwards25519.Edwards25519.T_affineCached_asInterface) class T_affineCached_static_extension {
    @:keep
    static public function condNeg( _v:stdgo.Ref<_internal.crypto.internal.edwards25519.Edwards25519_T_affineCached.T_affineCached>, _cond:stdgo.GoInt):stdgo.Ref<_internal.crypto.internal.edwards25519.Edwards25519_T_affineCached.T_affineCached> {
        @:recv var _v:stdgo.Ref<_internal.crypto.internal.edwards25519.Edwards25519_T_affineCached.T_affineCached> = _v;
        _v.yplusX.swap((stdgo.Go.setRef(_v.yminusX) : stdgo.Ref<_internal.crypto.internal.edwards25519.field.Field_Element.Element>), _cond);
        _v.t2d.select((stdgo.Go.setRef(({} : _internal.crypto.internal.edwards25519.field.Field_Element.Element)) : stdgo.Ref<_internal.crypto.internal.edwards25519.field.Field_Element.Element>).negate((stdgo.Go.setRef(_v.t2d) : stdgo.Ref<_internal.crypto.internal.edwards25519.field.Field_Element.Element>)), (stdgo.Go.setRef(_v.t2d) : stdgo.Ref<_internal.crypto.internal.edwards25519.field.Field_Element.Element>), _cond);
        return _v;
    }
    @:keep
    static public function select( _v:stdgo.Ref<_internal.crypto.internal.edwards25519.Edwards25519_T_affineCached.T_affineCached>, _a:stdgo.Ref<_internal.crypto.internal.edwards25519.Edwards25519_T_affineCached.T_affineCached>, _b:stdgo.Ref<_internal.crypto.internal.edwards25519.Edwards25519_T_affineCached.T_affineCached>, _cond:stdgo.GoInt):stdgo.Ref<_internal.crypto.internal.edwards25519.Edwards25519_T_affineCached.T_affineCached> {
        @:recv var _v:stdgo.Ref<_internal.crypto.internal.edwards25519.Edwards25519_T_affineCached.T_affineCached> = _v;
        _v.yplusX.select((stdgo.Go.setRef(_a.yplusX) : stdgo.Ref<_internal.crypto.internal.edwards25519.field.Field_Element.Element>), (stdgo.Go.setRef(_b.yplusX) : stdgo.Ref<_internal.crypto.internal.edwards25519.field.Field_Element.Element>), _cond);
        _v.yminusX.select((stdgo.Go.setRef(_a.yminusX) : stdgo.Ref<_internal.crypto.internal.edwards25519.field.Field_Element.Element>), (stdgo.Go.setRef(_b.yminusX) : stdgo.Ref<_internal.crypto.internal.edwards25519.field.Field_Element.Element>), _cond);
        _v.t2d.select((stdgo.Go.setRef(_a.t2d) : stdgo.Ref<_internal.crypto.internal.edwards25519.field.Field_Element.Element>), (stdgo.Go.setRef(_b.t2d) : stdgo.Ref<_internal.crypto.internal.edwards25519.field.Field_Element.Element>), _cond);
        return _v;
    }
    @:keep
    static public function fromP3( _v:stdgo.Ref<_internal.crypto.internal.edwards25519.Edwards25519_T_affineCached.T_affineCached>, _p:stdgo.Ref<_internal.crypto.internal.edwards25519.Edwards25519_Point.Point>):stdgo.Ref<_internal.crypto.internal.edwards25519.Edwards25519_T_affineCached.T_affineCached> {
        @:recv var _v:stdgo.Ref<_internal.crypto.internal.edwards25519.Edwards25519_T_affineCached.T_affineCached> = _v;
        _v.yplusX.add((stdgo.Go.setRef(_p._y) : stdgo.Ref<_internal.crypto.internal.edwards25519.field.Field_Element.Element>), (stdgo.Go.setRef(_p._x) : stdgo.Ref<_internal.crypto.internal.edwards25519.field.Field_Element.Element>));
        _v.yminusX.subtract((stdgo.Go.setRef(_p._y) : stdgo.Ref<_internal.crypto.internal.edwards25519.field.Field_Element.Element>), (stdgo.Go.setRef(_p._x) : stdgo.Ref<_internal.crypto.internal.edwards25519.field.Field_Element.Element>));
        _v.t2d.multiply((stdgo.Go.setRef(_p._t) : stdgo.Ref<_internal.crypto.internal.edwards25519.field.Field_Element.Element>), _internal.crypto.internal.edwards25519.Edwards25519__d2._d2);
        var _invZ:_internal.crypto.internal.edwards25519.field.Field_Element.Element = ({} : _internal.crypto.internal.edwards25519.field.Field_Element.Element);
        _invZ.invert((stdgo.Go.setRef(_p._z) : stdgo.Ref<_internal.crypto.internal.edwards25519.field.Field_Element.Element>));
        _v.yplusX.multiply((stdgo.Go.setRef(_v.yplusX) : stdgo.Ref<_internal.crypto.internal.edwards25519.field.Field_Element.Element>), (stdgo.Go.setRef(_invZ) : stdgo.Ref<_internal.crypto.internal.edwards25519.field.Field_Element.Element>));
        _v.yminusX.multiply((stdgo.Go.setRef(_v.yminusX) : stdgo.Ref<_internal.crypto.internal.edwards25519.field.Field_Element.Element>), (stdgo.Go.setRef(_invZ) : stdgo.Ref<_internal.crypto.internal.edwards25519.field.Field_Element.Element>));
        _v.t2d.multiply((stdgo.Go.setRef(_v.t2d) : stdgo.Ref<_internal.crypto.internal.edwards25519.field.Field_Element.Element>), (stdgo.Go.setRef(_invZ) : stdgo.Ref<_internal.crypto.internal.edwards25519.field.Field_Element.Element>));
        return _v;
    }
    @:keep
    static public function zero( _v:stdgo.Ref<_internal.crypto.internal.edwards25519.Edwards25519_T_affineCached.T_affineCached>):stdgo.Ref<_internal.crypto.internal.edwards25519.Edwards25519_T_affineCached.T_affineCached> {
        @:recv var _v:stdgo.Ref<_internal.crypto.internal.edwards25519.Edwards25519_T_affineCached.T_affineCached> = _v;
        _v.yplusX.one();
        _v.yminusX.one();
        _v.t2d.zero();
        return _v;
    }
}
