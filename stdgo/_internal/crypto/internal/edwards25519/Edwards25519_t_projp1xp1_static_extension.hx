package stdgo._internal.crypto.internal.edwards25519;
@:keep @:allow(stdgo._internal.crypto.internal.edwards25519.Edwards25519.T_projP1xP1_asInterface) class T_projP1xP1_static_extension {
    @:keep
    @:tdfield
    static public function double( _v:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_projp1xp1.T_projP1xP1>, _p:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_projp2.T_projP2>):stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_projp1xp1.T_projP1xP1> {
        @:recv var _v:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_projp1xp1.T_projP1xP1> = _v;
        var xX:stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element = ({} : stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element), yY:stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element = ({} : stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element), zZ2:stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element = ({} : stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element), xplusYsq:stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element = ({} : stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element);
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/edwards25519/edwards25519.go#L355"
        xX.square((stdgo.Go.setRef((@:checkr _p ?? throw "null pointer dereference").x) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>));
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/edwards25519/edwards25519.go#L356"
        yY.square((stdgo.Go.setRef((@:checkr _p ?? throw "null pointer dereference").y) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>));
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/edwards25519/edwards25519.go#L357"
        zZ2.square((stdgo.Go.setRef((@:checkr _p ?? throw "null pointer dereference").z) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>));
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/edwards25519/edwards25519.go#L358"
        zZ2.add((stdgo.Go.setRef(zZ2) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>), (stdgo.Go.setRef(zZ2) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>));
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/edwards25519/edwards25519.go#L359"
        xplusYsq.add((stdgo.Go.setRef((@:checkr _p ?? throw "null pointer dereference").x) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>), (stdgo.Go.setRef((@:checkr _p ?? throw "null pointer dereference").y) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>));
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/edwards25519/edwards25519.go#L360"
        xplusYsq.square((stdgo.Go.setRef(xplusYsq) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>));
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/edwards25519/edwards25519.go#L362"
        (@:checkr _v ?? throw "null pointer dereference").y.add((stdgo.Go.setRef(yY) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>), (stdgo.Go.setRef(xX) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>));
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/edwards25519/edwards25519.go#L363"
        (@:checkr _v ?? throw "null pointer dereference").z.subtract((stdgo.Go.setRef(yY) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>), (stdgo.Go.setRef(xX) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>));
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/edwards25519/edwards25519.go#L365"
        (@:checkr _v ?? throw "null pointer dereference").x.subtract((stdgo.Go.setRef(xplusYsq) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>), (stdgo.Go.setRef((@:checkr _v ?? throw "null pointer dereference").y) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>));
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/edwards25519/edwards25519.go#L366"
        (@:checkr _v ?? throw "null pointer dereference").t.subtract((stdgo.Go.setRef(zZ2) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>), (stdgo.Go.setRef((@:checkr _v ?? throw "null pointer dereference").z) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>));
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/edwards25519/edwards25519.go#L367"
        return _v;
    }
    @:keep
    @:tdfield
    static public function subAffine( _v:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_projp1xp1.T_projP1xP1>, _p:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_point.Point>, _q:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_affinecached.T_affineCached>):stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_projp1xp1.T_projP1xP1> {
        @:recv var _v:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_projp1xp1.T_projP1xP1> = _v;
        var yplusX:stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element = ({} : stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element), yminusX:stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element = ({} : stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element), pP:stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element = ({} : stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element), mM:stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element = ({} : stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element), tT2d:stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element = ({} : stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element), z2:stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element = ({} : stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element);
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/edwards25519/edwards25519.go#L334"
        yplusX.add((stdgo.Go.setRef((@:checkr _p ?? throw "null pointer dereference")._y) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>), (stdgo.Go.setRef((@:checkr _p ?? throw "null pointer dereference")._x) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>));
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/edwards25519/edwards25519.go#L335"
        yminusX.subtract((stdgo.Go.setRef((@:checkr _p ?? throw "null pointer dereference")._y) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>), (stdgo.Go.setRef((@:checkr _p ?? throw "null pointer dereference")._x) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>));
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/edwards25519/edwards25519.go#L337"
        pP.multiply((stdgo.Go.setRef(yplusX) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>), (stdgo.Go.setRef((@:checkr _q ?? throw "null pointer dereference").yminusX) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>));
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/edwards25519/edwards25519.go#L338"
        mM.multiply((stdgo.Go.setRef(yminusX) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>), (stdgo.Go.setRef((@:checkr _q ?? throw "null pointer dereference").yplusX) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>));
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/edwards25519/edwards25519.go#L339"
        tT2d.multiply((stdgo.Go.setRef((@:checkr _p ?? throw "null pointer dereference")._t) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>), (stdgo.Go.setRef((@:checkr _q ?? throw "null pointer dereference").t2d) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>));
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/edwards25519/edwards25519.go#L341"
        z2.add((stdgo.Go.setRef((@:checkr _p ?? throw "null pointer dereference")._z) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>), (stdgo.Go.setRef((@:checkr _p ?? throw "null pointer dereference")._z) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>));
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/edwards25519/edwards25519.go#L343"
        (@:checkr _v ?? throw "null pointer dereference").x.subtract((stdgo.Go.setRef(pP) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>), (stdgo.Go.setRef(mM) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>));
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/edwards25519/edwards25519.go#L344"
        (@:checkr _v ?? throw "null pointer dereference").y.add((stdgo.Go.setRef(pP) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>), (stdgo.Go.setRef(mM) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>));
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/edwards25519/edwards25519.go#L345"
        (@:checkr _v ?? throw "null pointer dereference").z.subtract((stdgo.Go.setRef(z2) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>), (stdgo.Go.setRef(tT2d) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>));
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/edwards25519/edwards25519.go#L346"
        (@:checkr _v ?? throw "null pointer dereference").t.add((stdgo.Go.setRef(z2) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>), (stdgo.Go.setRef(tT2d) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>));
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/edwards25519/edwards25519.go#L347"
        return _v;
    }
    @:keep
    @:tdfield
    static public function addAffine( _v:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_projp1xp1.T_projP1xP1>, _p:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_point.Point>, _q:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_affinecached.T_affineCached>):stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_projp1xp1.T_projP1xP1> {
        @:recv var _v:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_projp1xp1.T_projP1xP1> = _v;
        var yplusX:stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element = ({} : stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element), yminusX:stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element = ({} : stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element), pP:stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element = ({} : stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element), mM:stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element = ({} : stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element), tT2d:stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element = ({} : stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element), z2:stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element = ({} : stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element);
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/edwards25519/edwards25519.go#L315"
        yplusX.add((stdgo.Go.setRef((@:checkr _p ?? throw "null pointer dereference")._y) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>), (stdgo.Go.setRef((@:checkr _p ?? throw "null pointer dereference")._x) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>));
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/edwards25519/edwards25519.go#L316"
        yminusX.subtract((stdgo.Go.setRef((@:checkr _p ?? throw "null pointer dereference")._y) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>), (stdgo.Go.setRef((@:checkr _p ?? throw "null pointer dereference")._x) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>));
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/edwards25519/edwards25519.go#L318"
        pP.multiply((stdgo.Go.setRef(yplusX) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>), (stdgo.Go.setRef((@:checkr _q ?? throw "null pointer dereference").yplusX) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>));
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/edwards25519/edwards25519.go#L319"
        mM.multiply((stdgo.Go.setRef(yminusX) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>), (stdgo.Go.setRef((@:checkr _q ?? throw "null pointer dereference").yminusX) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>));
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/edwards25519/edwards25519.go#L320"
        tT2d.multiply((stdgo.Go.setRef((@:checkr _p ?? throw "null pointer dereference")._t) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>), (stdgo.Go.setRef((@:checkr _q ?? throw "null pointer dereference").t2d) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>));
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/edwards25519/edwards25519.go#L322"
        z2.add((stdgo.Go.setRef((@:checkr _p ?? throw "null pointer dereference")._z) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>), (stdgo.Go.setRef((@:checkr _p ?? throw "null pointer dereference")._z) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>));
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/edwards25519/edwards25519.go#L324"
        (@:checkr _v ?? throw "null pointer dereference").x.subtract((stdgo.Go.setRef(pP) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>), (stdgo.Go.setRef(mM) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>));
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/edwards25519/edwards25519.go#L325"
        (@:checkr _v ?? throw "null pointer dereference").y.add((stdgo.Go.setRef(pP) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>), (stdgo.Go.setRef(mM) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>));
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/edwards25519/edwards25519.go#L326"
        (@:checkr _v ?? throw "null pointer dereference").z.add((stdgo.Go.setRef(z2) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>), (stdgo.Go.setRef(tT2d) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>));
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/edwards25519/edwards25519.go#L327"
        (@:checkr _v ?? throw "null pointer dereference").t.subtract((stdgo.Go.setRef(z2) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>), (stdgo.Go.setRef(tT2d) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>));
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/edwards25519/edwards25519.go#L328"
        return _v;
    }
    @:keep
    @:tdfield
    static public function sub( _v:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_projp1xp1.T_projP1xP1>, _p:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_point.Point>, _q:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_projcached.T_projCached>):stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_projp1xp1.T_projP1xP1> {
        @:recv var _v:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_projp1xp1.T_projP1xP1> = _v;
        var yplusX:stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element = ({} : stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element), yminusX:stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element = ({} : stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element), pP:stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element = ({} : stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element), mM:stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element = ({} : stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element), tT2d:stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element = ({} : stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element), zZ2:stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element = ({} : stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element);
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/edwards25519/edwards25519.go#L295"
        yplusX.add((stdgo.Go.setRef((@:checkr _p ?? throw "null pointer dereference")._y) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>), (stdgo.Go.setRef((@:checkr _p ?? throw "null pointer dereference")._x) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>));
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/edwards25519/edwards25519.go#L296"
        yminusX.subtract((stdgo.Go.setRef((@:checkr _p ?? throw "null pointer dereference")._y) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>), (stdgo.Go.setRef((@:checkr _p ?? throw "null pointer dereference")._x) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>));
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/edwards25519/edwards25519.go#L298"
        pP.multiply((stdgo.Go.setRef(yplusX) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>), (stdgo.Go.setRef((@:checkr _q ?? throw "null pointer dereference").yminusX) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>));
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/edwards25519/edwards25519.go#L299"
        mM.multiply((stdgo.Go.setRef(yminusX) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>), (stdgo.Go.setRef((@:checkr _q ?? throw "null pointer dereference").yplusX) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>));
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/edwards25519/edwards25519.go#L300"
        tT2d.multiply((stdgo.Go.setRef((@:checkr _p ?? throw "null pointer dereference")._t) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>), (stdgo.Go.setRef((@:checkr _q ?? throw "null pointer dereference").t2d) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>));
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/edwards25519/edwards25519.go#L301"
        zZ2.multiply((stdgo.Go.setRef((@:checkr _p ?? throw "null pointer dereference")._z) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>), (stdgo.Go.setRef((@:checkr _q ?? throw "null pointer dereference").z) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>));
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/edwards25519/edwards25519.go#L303"
        zZ2.add((stdgo.Go.setRef(zZ2) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>), (stdgo.Go.setRef(zZ2) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>));
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/edwards25519/edwards25519.go#L305"
        (@:checkr _v ?? throw "null pointer dereference").x.subtract((stdgo.Go.setRef(pP) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>), (stdgo.Go.setRef(mM) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>));
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/edwards25519/edwards25519.go#L306"
        (@:checkr _v ?? throw "null pointer dereference").y.add((stdgo.Go.setRef(pP) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>), (stdgo.Go.setRef(mM) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>));
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/edwards25519/edwards25519.go#L307"
        (@:checkr _v ?? throw "null pointer dereference").z.subtract((stdgo.Go.setRef(zZ2) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>), (stdgo.Go.setRef(tT2d) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>));
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/edwards25519/edwards25519.go#L308"
        (@:checkr _v ?? throw "null pointer dereference").t.add((stdgo.Go.setRef(zZ2) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>), (stdgo.Go.setRef(tT2d) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>));
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/edwards25519/edwards25519.go#L309"
        return _v;
    }
    @:keep
    @:tdfield
    static public function add( _v:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_projp1xp1.T_projP1xP1>, _p:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_point.Point>, _q:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_projcached.T_projCached>):stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_projp1xp1.T_projP1xP1> {
        @:recv var _v:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_projp1xp1.T_projP1xP1> = _v;
        var yplusX:stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element = ({} : stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element), yminusX:stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element = ({} : stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element), pP:stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element = ({} : stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element), mM:stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element = ({} : stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element), tT2d:stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element = ({} : stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element), zZ2:stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element = ({} : stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element);
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/edwards25519/edwards25519.go#L275"
        yplusX.add((stdgo.Go.setRef((@:checkr _p ?? throw "null pointer dereference")._y) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>), (stdgo.Go.setRef((@:checkr _p ?? throw "null pointer dereference")._x) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>));
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/edwards25519/edwards25519.go#L276"
        yminusX.subtract((stdgo.Go.setRef((@:checkr _p ?? throw "null pointer dereference")._y) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>), (stdgo.Go.setRef((@:checkr _p ?? throw "null pointer dereference")._x) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>));
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/edwards25519/edwards25519.go#L278"
        pP.multiply((stdgo.Go.setRef(yplusX) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>), (stdgo.Go.setRef((@:checkr _q ?? throw "null pointer dereference").yplusX) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>));
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/edwards25519/edwards25519.go#L279"
        mM.multiply((stdgo.Go.setRef(yminusX) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>), (stdgo.Go.setRef((@:checkr _q ?? throw "null pointer dereference").yminusX) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>));
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/edwards25519/edwards25519.go#L280"
        tT2d.multiply((stdgo.Go.setRef((@:checkr _p ?? throw "null pointer dereference")._t) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>), (stdgo.Go.setRef((@:checkr _q ?? throw "null pointer dereference").t2d) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>));
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/edwards25519/edwards25519.go#L281"
        zZ2.multiply((stdgo.Go.setRef((@:checkr _p ?? throw "null pointer dereference")._z) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>), (stdgo.Go.setRef((@:checkr _q ?? throw "null pointer dereference").z) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>));
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/edwards25519/edwards25519.go#L283"
        zZ2.add((stdgo.Go.setRef(zZ2) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>), (stdgo.Go.setRef(zZ2) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>));
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/edwards25519/edwards25519.go#L285"
        (@:checkr _v ?? throw "null pointer dereference").x.subtract((stdgo.Go.setRef(pP) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>), (stdgo.Go.setRef(mM) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>));
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/edwards25519/edwards25519.go#L286"
        (@:checkr _v ?? throw "null pointer dereference").y.add((stdgo.Go.setRef(pP) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>), (stdgo.Go.setRef(mM) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>));
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/edwards25519/edwards25519.go#L287"
        (@:checkr _v ?? throw "null pointer dereference").z.add((stdgo.Go.setRef(zZ2) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>), (stdgo.Go.setRef(tT2d) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>));
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/edwards25519/edwards25519.go#L288"
        (@:checkr _v ?? throw "null pointer dereference").t.subtract((stdgo.Go.setRef(zZ2) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>), (stdgo.Go.setRef(tT2d) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>));
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/edwards25519/edwards25519.go#L289"
        return _v;
    }
}
