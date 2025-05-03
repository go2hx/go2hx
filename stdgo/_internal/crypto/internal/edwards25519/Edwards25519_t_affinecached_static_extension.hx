package stdgo._internal.crypto.internal.edwards25519;
@:keep @:allow(stdgo._internal.crypto.internal.edwards25519.Edwards25519.T_affineCached_asInterface) class T_affineCached_static_extension {
    @:keep
    @:tdfield
    static public function condNeg( _v:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_affinecached.T_affineCached>, _cond:stdgo.GoInt):stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_affinecached.T_affineCached> {
        @:recv var _v:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_affinecached.T_affineCached> = _v;
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/edwards25519/edwards25519.go#L423"
        (@:checkr _v ?? throw "null pointer dereference").yplusX.swap((stdgo.Go.setRef((@:checkr _v ?? throw "null pointer dereference").yminusX) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>), _cond);
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/edwards25519/edwards25519.go#L424"
        (@:checkr _v ?? throw "null pointer dereference").t2d.select((stdgo.Go.setRef(({} : stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element)) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>).negate((stdgo.Go.setRef((@:checkr _v ?? throw "null pointer dereference").t2d) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>)), (stdgo.Go.setRef((@:checkr _v ?? throw "null pointer dereference").t2d) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>), _cond);
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/edwards25519/edwards25519.go#L425"
        return _v;
    }
    @:keep
    @:tdfield
    static public function select( _v:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_affinecached.T_affineCached>, _a:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_affinecached.T_affineCached>, _b:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_affinecached.T_affineCached>, _cond:stdgo.GoInt):stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_affinecached.T_affineCached> {
        @:recv var _v:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_affinecached.T_affineCached> = _v;
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/edwards25519/edwards25519.go#L408"
        (@:checkr _v ?? throw "null pointer dereference").yplusX.select((stdgo.Go.setRef((@:checkr _a ?? throw "null pointer dereference").yplusX) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>), (stdgo.Go.setRef((@:checkr _b ?? throw "null pointer dereference").yplusX) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>), _cond);
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/edwards25519/edwards25519.go#L409"
        (@:checkr _v ?? throw "null pointer dereference").yminusX.select((stdgo.Go.setRef((@:checkr _a ?? throw "null pointer dereference").yminusX) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>), (stdgo.Go.setRef((@:checkr _b ?? throw "null pointer dereference").yminusX) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>), _cond);
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/edwards25519/edwards25519.go#L410"
        (@:checkr _v ?? throw "null pointer dereference").t2d.select((stdgo.Go.setRef((@:checkr _a ?? throw "null pointer dereference").t2d) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>), (stdgo.Go.setRef((@:checkr _b ?? throw "null pointer dereference").t2d) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>), _cond);
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/edwards25519/edwards25519.go#L411"
        return _v;
    }
    @:keep
    @:tdfield
    static public function fromP3( _v:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_affinecached.T_affineCached>, _p:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_point.Point>):stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_affinecached.T_affineCached> {
        @:recv var _v:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_affinecached.T_affineCached> = _v;
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/edwards25519/edwards25519.go#L242"
        (@:checkr _v ?? throw "null pointer dereference").yplusX.add((stdgo.Go.setRef((@:checkr _p ?? throw "null pointer dereference")._y) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>), (stdgo.Go.setRef((@:checkr _p ?? throw "null pointer dereference")._x) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>));
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/edwards25519/edwards25519.go#L243"
        (@:checkr _v ?? throw "null pointer dereference").yminusX.subtract((stdgo.Go.setRef((@:checkr _p ?? throw "null pointer dereference")._y) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>), (stdgo.Go.setRef((@:checkr _p ?? throw "null pointer dereference")._x) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>));
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/edwards25519/edwards25519.go#L244"
        (@:checkr _v ?? throw "null pointer dereference").t2d.multiply((stdgo.Go.setRef((@:checkr _p ?? throw "null pointer dereference")._t) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>), stdgo._internal.crypto.internal.edwards25519.Edwards25519__d2._d2);
        var _invZ:stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element = ({} : stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element);
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/edwards25519/edwards25519.go#L247"
        _invZ.invert((stdgo.Go.setRef((@:checkr _p ?? throw "null pointer dereference")._z) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>));
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/edwards25519/edwards25519.go#L248"
        (@:checkr _v ?? throw "null pointer dereference").yplusX.multiply((stdgo.Go.setRef((@:checkr _v ?? throw "null pointer dereference").yplusX) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>), (stdgo.Go.setRef(_invZ) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>));
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/edwards25519/edwards25519.go#L249"
        (@:checkr _v ?? throw "null pointer dereference").yminusX.multiply((stdgo.Go.setRef((@:checkr _v ?? throw "null pointer dereference").yminusX) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>), (stdgo.Go.setRef(_invZ) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>));
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/edwards25519/edwards25519.go#L250"
        (@:checkr _v ?? throw "null pointer dereference").t2d.multiply((stdgo.Go.setRef((@:checkr _v ?? throw "null pointer dereference").t2d) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>), (stdgo.Go.setRef(_invZ) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>));
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/edwards25519/edwards25519.go#L251"
        return _v;
    }
    @:keep
    @:tdfield
    static public function zero( _v:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_affinecached.T_affineCached>):stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_affinecached.T_affineCached> {
        @:recv var _v:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_affinecached.T_affineCached> = _v;
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/edwards25519/edwards25519.go#L97"
        (@:checkr _v ?? throw "null pointer dereference").yplusX.one();
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/edwards25519/edwards25519.go#L98"
        (@:checkr _v ?? throw "null pointer dereference").yminusX.one();
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/edwards25519/edwards25519.go#L99"
        (@:checkr _v ?? throw "null pointer dereference").t2d.zero();
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/edwards25519/edwards25519.go#L100"
        return _v;
    }
}
