package stdgo._internal.crypto.internal.edwards25519;
@:keep @:allow(stdgo._internal.crypto.internal.edwards25519.Edwards25519.T_projP2_asInterface) class T_projP2_static_extension {
    @:keep
    @:tdfield
    static public function fromP3( _v:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_projp2.T_projP2>, _p:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_point.Point>):stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_projp2.T_projP2> {
        @:recv var _v:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_projp2.T_projP2> = _v;
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/edwards25519/edwards25519.go#L203"
        (@:checkr _v ?? throw "null pointer dereference").x.set((stdgo.Go.setRef((@:checkr _p ?? throw "null pointer dereference")._x) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>));
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/edwards25519/edwards25519.go#L204"
        (@:checkr _v ?? throw "null pointer dereference").y.set((stdgo.Go.setRef((@:checkr _p ?? throw "null pointer dereference")._y) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>));
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/edwards25519/edwards25519.go#L205"
        (@:checkr _v ?? throw "null pointer dereference").z.set((stdgo.Go.setRef((@:checkr _p ?? throw "null pointer dereference")._z) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>));
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/edwards25519/edwards25519.go#L206"
        return _v;
    }
    @:keep
    @:tdfield
    static public function fromP1xP1( _v:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_projp2.T_projP2>, _p:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_projp1xp1.T_projP1xP1>):stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_projp2.T_projP2> {
        @:recv var _v:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_projp2.T_projP2> = _v;
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/edwards25519/edwards25519.go#L196"
        (@:checkr _v ?? throw "null pointer dereference").x.multiply((stdgo.Go.setRef((@:checkr _p ?? throw "null pointer dereference").x) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>), (stdgo.Go.setRef((@:checkr _p ?? throw "null pointer dereference").t) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>));
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/edwards25519/edwards25519.go#L197"
        (@:checkr _v ?? throw "null pointer dereference").y.multiply((stdgo.Go.setRef((@:checkr _p ?? throw "null pointer dereference").y) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>), (stdgo.Go.setRef((@:checkr _p ?? throw "null pointer dereference").z) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>));
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/edwards25519/edwards25519.go#L198"
        (@:checkr _v ?? throw "null pointer dereference").z.multiply((stdgo.Go.setRef((@:checkr _p ?? throw "null pointer dereference").z) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>), (stdgo.Go.setRef((@:checkr _p ?? throw "null pointer dereference").t) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>));
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/edwards25519/edwards25519.go#L199"
        return _v;
    }
    @:keep
    @:tdfield
    static public function zero( _v:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_projp2.T_projP2>):stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_projp2.T_projP2> {
        @:recv var _v:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_projp2.T_projP2> = _v;
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/edwards25519/edwards25519.go#L59"
        (@:checkr _v ?? throw "null pointer dereference").x.zero();
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/edwards25519/edwards25519.go#L60"
        (@:checkr _v ?? throw "null pointer dereference").y.one();
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/edwards25519/edwards25519.go#L61"
        (@:checkr _v ?? throw "null pointer dereference").z.one();
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/edwards25519/edwards25519.go#L62"
        return _v;
    }
}
