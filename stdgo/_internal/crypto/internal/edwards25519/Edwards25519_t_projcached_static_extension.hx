package stdgo._internal.crypto.internal.edwards25519;
@:keep @:allow(stdgo._internal.crypto.internal.edwards25519.Edwards25519.T_projCached_asInterface) class T_projCached_static_extension {
    @:keep
    @:tdfield
    static public function condNeg( _v:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_projcached.T_projCached>, _cond:stdgo.GoInt):stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_projcached.T_projCached> {
        @:recv var _v:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_projcached.T_projCached> = _v;
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/edwards25519/edwards25519.go#L416"
        (@:checkr _v ?? throw "null pointer dereference").yplusX.swap((stdgo.Go.setRef((@:checkr _v ?? throw "null pointer dereference").yminusX) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>), _cond);
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/edwards25519/edwards25519.go#L417"
        (@:checkr _v ?? throw "null pointer dereference").t2d.select((stdgo.Go.setRef(({} : stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element)) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>).negate((stdgo.Go.setRef((@:checkr _v ?? throw "null pointer dereference").t2d) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>)), (stdgo.Go.setRef((@:checkr _v ?? throw "null pointer dereference").t2d) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>), _cond);
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/edwards25519/edwards25519.go#L418"
        return _v;
    }
    @:keep
    @:tdfield
    static public function select( _v:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_projcached.T_projCached>, _a:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_projcached.T_projCached>, _b:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_projcached.T_projCached>, _cond:stdgo.GoInt):stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_projcached.T_projCached> {
        @:recv var _v:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_projcached.T_projCached> = _v;
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/edwards25519/edwards25519.go#L399"
        (@:checkr _v ?? throw "null pointer dereference").yplusX.select((stdgo.Go.setRef((@:checkr _a ?? throw "null pointer dereference").yplusX) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>), (stdgo.Go.setRef((@:checkr _b ?? throw "null pointer dereference").yplusX) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>), _cond);
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/edwards25519/edwards25519.go#L400"
        (@:checkr _v ?? throw "null pointer dereference").yminusX.select((stdgo.Go.setRef((@:checkr _a ?? throw "null pointer dereference").yminusX) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>), (stdgo.Go.setRef((@:checkr _b ?? throw "null pointer dereference").yminusX) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>), _cond);
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/edwards25519/edwards25519.go#L401"
        (@:checkr _v ?? throw "null pointer dereference").z.select((stdgo.Go.setRef((@:checkr _a ?? throw "null pointer dereference").z) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>), (stdgo.Go.setRef((@:checkr _b ?? throw "null pointer dereference").z) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>), _cond);
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/edwards25519/edwards25519.go#L402"
        (@:checkr _v ?? throw "null pointer dereference").t2d.select((stdgo.Go.setRef((@:checkr _a ?? throw "null pointer dereference").t2d) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>), (stdgo.Go.setRef((@:checkr _b ?? throw "null pointer dereference").t2d) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>), _cond);
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/edwards25519/edwards25519.go#L403"
        return _v;
    }
    @:keep
    @:tdfield
    static public function fromP3( _v:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_projcached.T_projCached>, _p:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_point.Point>):stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_projcached.T_projCached> {
        @:recv var _v:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_projcached.T_projCached> = _v;
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/edwards25519/edwards25519.go#L234"
        (@:checkr _v ?? throw "null pointer dereference").yplusX.add((stdgo.Go.setRef((@:checkr _p ?? throw "null pointer dereference")._y) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>), (stdgo.Go.setRef((@:checkr _p ?? throw "null pointer dereference")._x) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>));
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/edwards25519/edwards25519.go#L235"
        (@:checkr _v ?? throw "null pointer dereference").yminusX.subtract((stdgo.Go.setRef((@:checkr _p ?? throw "null pointer dereference")._y) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>), (stdgo.Go.setRef((@:checkr _p ?? throw "null pointer dereference")._x) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>));
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/edwards25519/edwards25519.go#L236"
        (@:checkr _v ?? throw "null pointer dereference").z.set((stdgo.Go.setRef((@:checkr _p ?? throw "null pointer dereference")._z) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>));
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/edwards25519/edwards25519.go#L237"
        (@:checkr _v ?? throw "null pointer dereference").t2d.multiply((stdgo.Go.setRef((@:checkr _p ?? throw "null pointer dereference")._t) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>), stdgo._internal.crypto.internal.edwards25519.Edwards25519__d2._d2);
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/edwards25519/edwards25519.go#L238"
        return _v;
    }
    @:keep
    @:tdfield
    static public function zero( _v:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_projcached.T_projCached>):stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_projcached.T_projCached> {
        @:recv var _v:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_projcached.T_projCached> = _v;
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/edwards25519/edwards25519.go#L89"
        (@:checkr _v ?? throw "null pointer dereference").yplusX.one();
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/edwards25519/edwards25519.go#L90"
        (@:checkr _v ?? throw "null pointer dereference").yminusX.one();
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/edwards25519/edwards25519.go#L91"
        (@:checkr _v ?? throw "null pointer dereference").z.one();
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/edwards25519/edwards25519.go#L92"
        (@:checkr _v ?? throw "null pointer dereference").t2d.zero();
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/edwards25519/edwards25519.go#L93"
        return _v;
    }
}
