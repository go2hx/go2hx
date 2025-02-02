package stdgo._internal.crypto.internal.edwards25519;
@:keep @:allow(stdgo._internal.crypto.internal.edwards25519.Edwards25519.T_projP1xP1_asInterface) class T_projP1xP1_static_extension {
    @:keep
    @:tdfield
    static public function double( _v:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_T_projP1xP1.T_projP1xP1>, _p:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_T_projP2.T_projP2>):stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_T_projP1xP1.T_projP1xP1> {
        @:recv var _v:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_T_projP1xP1.T_projP1xP1> = _v;
        var __0:stdgo._internal.crypto.internal.edwards25519.field.Field_Element.Element = ({} : stdgo._internal.crypto.internal.edwards25519.field.Field_Element.Element), __1:stdgo._internal.crypto.internal.edwards25519.field.Field_Element.Element = ({} : stdgo._internal.crypto.internal.edwards25519.field.Field_Element.Element), __2:stdgo._internal.crypto.internal.edwards25519.field.Field_Element.Element = ({} : stdgo._internal.crypto.internal.edwards25519.field.Field_Element.Element), __3:stdgo._internal.crypto.internal.edwards25519.field.Field_Element.Element = ({} : stdgo._internal.crypto.internal.edwards25519.field.Field_Element.Element);
var xplusYsq = __3, zZ2 = __2, yY = __1, xX = __0;
        @:check2 xX.square((stdgo.Go.setRef((@:checkr _p ?? throw "null pointer dereference").x) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_Element.Element>));
        @:check2 yY.square((stdgo.Go.setRef((@:checkr _p ?? throw "null pointer dereference").y) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_Element.Element>));
        @:check2 zZ2.square((stdgo.Go.setRef((@:checkr _p ?? throw "null pointer dereference").z) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_Element.Element>));
        @:check2 zZ2.add((stdgo.Go.setRef(zZ2) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_Element.Element>), (stdgo.Go.setRef(zZ2) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_Element.Element>));
        @:check2 xplusYsq.add((stdgo.Go.setRef((@:checkr _p ?? throw "null pointer dereference").x) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_Element.Element>), (stdgo.Go.setRef((@:checkr _p ?? throw "null pointer dereference").y) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_Element.Element>));
        @:check2 xplusYsq.square((stdgo.Go.setRef(xplusYsq) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_Element.Element>));
        @:check2 (@:checkr _v ?? throw "null pointer dereference").y.add((stdgo.Go.setRef(yY) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_Element.Element>), (stdgo.Go.setRef(xX) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_Element.Element>));
        @:check2 (@:checkr _v ?? throw "null pointer dereference").z.subtract((stdgo.Go.setRef(yY) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_Element.Element>), (stdgo.Go.setRef(xX) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_Element.Element>));
        @:check2 (@:checkr _v ?? throw "null pointer dereference").x.subtract((stdgo.Go.setRef(xplusYsq) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_Element.Element>), (stdgo.Go.setRef((@:checkr _v ?? throw "null pointer dereference").y) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_Element.Element>));
        @:check2 (@:checkr _v ?? throw "null pointer dereference").t.subtract((stdgo.Go.setRef(zZ2) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_Element.Element>), (stdgo.Go.setRef((@:checkr _v ?? throw "null pointer dereference").z) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_Element.Element>));
        return _v;
    }
    @:keep
    @:tdfield
    static public function subAffine( _v:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_T_projP1xP1.T_projP1xP1>, _p:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_Point.Point>, _q:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_T_affineCached.T_affineCached>):stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_T_projP1xP1.T_projP1xP1> {
        @:recv var _v:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_T_projP1xP1.T_projP1xP1> = _v;
        var __0:stdgo._internal.crypto.internal.edwards25519.field.Field_Element.Element = ({} : stdgo._internal.crypto.internal.edwards25519.field.Field_Element.Element), __1:stdgo._internal.crypto.internal.edwards25519.field.Field_Element.Element = ({} : stdgo._internal.crypto.internal.edwards25519.field.Field_Element.Element), __2:stdgo._internal.crypto.internal.edwards25519.field.Field_Element.Element = ({} : stdgo._internal.crypto.internal.edwards25519.field.Field_Element.Element), __3:stdgo._internal.crypto.internal.edwards25519.field.Field_Element.Element = ({} : stdgo._internal.crypto.internal.edwards25519.field.Field_Element.Element), __4:stdgo._internal.crypto.internal.edwards25519.field.Field_Element.Element = ({} : stdgo._internal.crypto.internal.edwards25519.field.Field_Element.Element), __5:stdgo._internal.crypto.internal.edwards25519.field.Field_Element.Element = ({} : stdgo._internal.crypto.internal.edwards25519.field.Field_Element.Element);
var z2 = __5, tT2d = __4, mM = __3, pP = __2, yminusX = __1, yplusX = __0;
        @:check2 yplusX.add((stdgo.Go.setRef((@:checkr _p ?? throw "null pointer dereference")._y) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_Element.Element>), (stdgo.Go.setRef((@:checkr _p ?? throw "null pointer dereference")._x) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_Element.Element>));
        @:check2 yminusX.subtract((stdgo.Go.setRef((@:checkr _p ?? throw "null pointer dereference")._y) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_Element.Element>), (stdgo.Go.setRef((@:checkr _p ?? throw "null pointer dereference")._x) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_Element.Element>));
        @:check2 pP.multiply((stdgo.Go.setRef(yplusX) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_Element.Element>), (stdgo.Go.setRef((@:checkr _q ?? throw "null pointer dereference").yminusX) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_Element.Element>));
        @:check2 mM.multiply((stdgo.Go.setRef(yminusX) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_Element.Element>), (stdgo.Go.setRef((@:checkr _q ?? throw "null pointer dereference").yplusX) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_Element.Element>));
        @:check2 tT2d.multiply((stdgo.Go.setRef((@:checkr _p ?? throw "null pointer dereference")._t) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_Element.Element>), (stdgo.Go.setRef((@:checkr _q ?? throw "null pointer dereference").t2d) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_Element.Element>));
        @:check2 z2.add((stdgo.Go.setRef((@:checkr _p ?? throw "null pointer dereference")._z) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_Element.Element>), (stdgo.Go.setRef((@:checkr _p ?? throw "null pointer dereference")._z) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_Element.Element>));
        @:check2 (@:checkr _v ?? throw "null pointer dereference").x.subtract((stdgo.Go.setRef(pP) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_Element.Element>), (stdgo.Go.setRef(mM) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_Element.Element>));
        @:check2 (@:checkr _v ?? throw "null pointer dereference").y.add((stdgo.Go.setRef(pP) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_Element.Element>), (stdgo.Go.setRef(mM) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_Element.Element>));
        @:check2 (@:checkr _v ?? throw "null pointer dereference").z.subtract((stdgo.Go.setRef(z2) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_Element.Element>), (stdgo.Go.setRef(tT2d) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_Element.Element>));
        @:check2 (@:checkr _v ?? throw "null pointer dereference").t.add((stdgo.Go.setRef(z2) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_Element.Element>), (stdgo.Go.setRef(tT2d) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_Element.Element>));
        return _v;
    }
    @:keep
    @:tdfield
    static public function addAffine( _v:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_T_projP1xP1.T_projP1xP1>, _p:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_Point.Point>, _q:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_T_affineCached.T_affineCached>):stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_T_projP1xP1.T_projP1xP1> {
        @:recv var _v:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_T_projP1xP1.T_projP1xP1> = _v;
        var __0:stdgo._internal.crypto.internal.edwards25519.field.Field_Element.Element = ({} : stdgo._internal.crypto.internal.edwards25519.field.Field_Element.Element), __1:stdgo._internal.crypto.internal.edwards25519.field.Field_Element.Element = ({} : stdgo._internal.crypto.internal.edwards25519.field.Field_Element.Element), __2:stdgo._internal.crypto.internal.edwards25519.field.Field_Element.Element = ({} : stdgo._internal.crypto.internal.edwards25519.field.Field_Element.Element), __3:stdgo._internal.crypto.internal.edwards25519.field.Field_Element.Element = ({} : stdgo._internal.crypto.internal.edwards25519.field.Field_Element.Element), __4:stdgo._internal.crypto.internal.edwards25519.field.Field_Element.Element = ({} : stdgo._internal.crypto.internal.edwards25519.field.Field_Element.Element), __5:stdgo._internal.crypto.internal.edwards25519.field.Field_Element.Element = ({} : stdgo._internal.crypto.internal.edwards25519.field.Field_Element.Element);
var z2 = __5, tT2d = __4, mM = __3, pP = __2, yminusX = __1, yplusX = __0;
        @:check2 yplusX.add((stdgo.Go.setRef((@:checkr _p ?? throw "null pointer dereference")._y) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_Element.Element>), (stdgo.Go.setRef((@:checkr _p ?? throw "null pointer dereference")._x) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_Element.Element>));
        @:check2 yminusX.subtract((stdgo.Go.setRef((@:checkr _p ?? throw "null pointer dereference")._y) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_Element.Element>), (stdgo.Go.setRef((@:checkr _p ?? throw "null pointer dereference")._x) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_Element.Element>));
        @:check2 pP.multiply((stdgo.Go.setRef(yplusX) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_Element.Element>), (stdgo.Go.setRef((@:checkr _q ?? throw "null pointer dereference").yplusX) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_Element.Element>));
        @:check2 mM.multiply((stdgo.Go.setRef(yminusX) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_Element.Element>), (stdgo.Go.setRef((@:checkr _q ?? throw "null pointer dereference").yminusX) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_Element.Element>));
        @:check2 tT2d.multiply((stdgo.Go.setRef((@:checkr _p ?? throw "null pointer dereference")._t) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_Element.Element>), (stdgo.Go.setRef((@:checkr _q ?? throw "null pointer dereference").t2d) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_Element.Element>));
        @:check2 z2.add((stdgo.Go.setRef((@:checkr _p ?? throw "null pointer dereference")._z) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_Element.Element>), (stdgo.Go.setRef((@:checkr _p ?? throw "null pointer dereference")._z) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_Element.Element>));
        @:check2 (@:checkr _v ?? throw "null pointer dereference").x.subtract((stdgo.Go.setRef(pP) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_Element.Element>), (stdgo.Go.setRef(mM) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_Element.Element>));
        @:check2 (@:checkr _v ?? throw "null pointer dereference").y.add((stdgo.Go.setRef(pP) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_Element.Element>), (stdgo.Go.setRef(mM) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_Element.Element>));
        @:check2 (@:checkr _v ?? throw "null pointer dereference").z.add((stdgo.Go.setRef(z2) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_Element.Element>), (stdgo.Go.setRef(tT2d) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_Element.Element>));
        @:check2 (@:checkr _v ?? throw "null pointer dereference").t.subtract((stdgo.Go.setRef(z2) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_Element.Element>), (stdgo.Go.setRef(tT2d) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_Element.Element>));
        return _v;
    }
    @:keep
    @:tdfield
    static public function sub( _v:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_T_projP1xP1.T_projP1xP1>, _p:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_Point.Point>, _q:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_T_projCached.T_projCached>):stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_T_projP1xP1.T_projP1xP1> {
        @:recv var _v:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_T_projP1xP1.T_projP1xP1> = _v;
        var __0:stdgo._internal.crypto.internal.edwards25519.field.Field_Element.Element = ({} : stdgo._internal.crypto.internal.edwards25519.field.Field_Element.Element), __1:stdgo._internal.crypto.internal.edwards25519.field.Field_Element.Element = ({} : stdgo._internal.crypto.internal.edwards25519.field.Field_Element.Element), __2:stdgo._internal.crypto.internal.edwards25519.field.Field_Element.Element = ({} : stdgo._internal.crypto.internal.edwards25519.field.Field_Element.Element), __3:stdgo._internal.crypto.internal.edwards25519.field.Field_Element.Element = ({} : stdgo._internal.crypto.internal.edwards25519.field.Field_Element.Element), __4:stdgo._internal.crypto.internal.edwards25519.field.Field_Element.Element = ({} : stdgo._internal.crypto.internal.edwards25519.field.Field_Element.Element), __5:stdgo._internal.crypto.internal.edwards25519.field.Field_Element.Element = ({} : stdgo._internal.crypto.internal.edwards25519.field.Field_Element.Element);
var zZ2 = __5, tT2d = __4, mM = __3, pP = __2, yminusX = __1, yplusX = __0;
        @:check2 yplusX.add((stdgo.Go.setRef((@:checkr _p ?? throw "null pointer dereference")._y) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_Element.Element>), (stdgo.Go.setRef((@:checkr _p ?? throw "null pointer dereference")._x) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_Element.Element>));
        @:check2 yminusX.subtract((stdgo.Go.setRef((@:checkr _p ?? throw "null pointer dereference")._y) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_Element.Element>), (stdgo.Go.setRef((@:checkr _p ?? throw "null pointer dereference")._x) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_Element.Element>));
        @:check2 pP.multiply((stdgo.Go.setRef(yplusX) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_Element.Element>), (stdgo.Go.setRef((@:checkr _q ?? throw "null pointer dereference").yminusX) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_Element.Element>));
        @:check2 mM.multiply((stdgo.Go.setRef(yminusX) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_Element.Element>), (stdgo.Go.setRef((@:checkr _q ?? throw "null pointer dereference").yplusX) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_Element.Element>));
        @:check2 tT2d.multiply((stdgo.Go.setRef((@:checkr _p ?? throw "null pointer dereference")._t) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_Element.Element>), (stdgo.Go.setRef((@:checkr _q ?? throw "null pointer dereference").t2d) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_Element.Element>));
        @:check2 zZ2.multiply((stdgo.Go.setRef((@:checkr _p ?? throw "null pointer dereference")._z) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_Element.Element>), (stdgo.Go.setRef((@:checkr _q ?? throw "null pointer dereference").z) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_Element.Element>));
        @:check2 zZ2.add((stdgo.Go.setRef(zZ2) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_Element.Element>), (stdgo.Go.setRef(zZ2) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_Element.Element>));
        @:check2 (@:checkr _v ?? throw "null pointer dereference").x.subtract((stdgo.Go.setRef(pP) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_Element.Element>), (stdgo.Go.setRef(mM) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_Element.Element>));
        @:check2 (@:checkr _v ?? throw "null pointer dereference").y.add((stdgo.Go.setRef(pP) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_Element.Element>), (stdgo.Go.setRef(mM) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_Element.Element>));
        @:check2 (@:checkr _v ?? throw "null pointer dereference").z.subtract((stdgo.Go.setRef(zZ2) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_Element.Element>), (stdgo.Go.setRef(tT2d) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_Element.Element>));
        @:check2 (@:checkr _v ?? throw "null pointer dereference").t.add((stdgo.Go.setRef(zZ2) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_Element.Element>), (stdgo.Go.setRef(tT2d) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_Element.Element>));
        return _v;
    }
    @:keep
    @:tdfield
    static public function add( _v:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_T_projP1xP1.T_projP1xP1>, _p:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_Point.Point>, _q:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_T_projCached.T_projCached>):stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_T_projP1xP1.T_projP1xP1> {
        @:recv var _v:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_T_projP1xP1.T_projP1xP1> = _v;
        var __0:stdgo._internal.crypto.internal.edwards25519.field.Field_Element.Element = ({} : stdgo._internal.crypto.internal.edwards25519.field.Field_Element.Element), __1:stdgo._internal.crypto.internal.edwards25519.field.Field_Element.Element = ({} : stdgo._internal.crypto.internal.edwards25519.field.Field_Element.Element), __2:stdgo._internal.crypto.internal.edwards25519.field.Field_Element.Element = ({} : stdgo._internal.crypto.internal.edwards25519.field.Field_Element.Element), __3:stdgo._internal.crypto.internal.edwards25519.field.Field_Element.Element = ({} : stdgo._internal.crypto.internal.edwards25519.field.Field_Element.Element), __4:stdgo._internal.crypto.internal.edwards25519.field.Field_Element.Element = ({} : stdgo._internal.crypto.internal.edwards25519.field.Field_Element.Element), __5:stdgo._internal.crypto.internal.edwards25519.field.Field_Element.Element = ({} : stdgo._internal.crypto.internal.edwards25519.field.Field_Element.Element);
var zZ2 = __5, tT2d = __4, mM = __3, pP = __2, yminusX = __1, yplusX = __0;
        @:check2 yplusX.add((stdgo.Go.setRef((@:checkr _p ?? throw "null pointer dereference")._y) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_Element.Element>), (stdgo.Go.setRef((@:checkr _p ?? throw "null pointer dereference")._x) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_Element.Element>));
        @:check2 yminusX.subtract((stdgo.Go.setRef((@:checkr _p ?? throw "null pointer dereference")._y) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_Element.Element>), (stdgo.Go.setRef((@:checkr _p ?? throw "null pointer dereference")._x) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_Element.Element>));
        @:check2 pP.multiply((stdgo.Go.setRef(yplusX) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_Element.Element>), (stdgo.Go.setRef((@:checkr _q ?? throw "null pointer dereference").yplusX) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_Element.Element>));
        @:check2 mM.multiply((stdgo.Go.setRef(yminusX) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_Element.Element>), (stdgo.Go.setRef((@:checkr _q ?? throw "null pointer dereference").yminusX) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_Element.Element>));
        @:check2 tT2d.multiply((stdgo.Go.setRef((@:checkr _p ?? throw "null pointer dereference")._t) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_Element.Element>), (stdgo.Go.setRef((@:checkr _q ?? throw "null pointer dereference").t2d) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_Element.Element>));
        @:check2 zZ2.multiply((stdgo.Go.setRef((@:checkr _p ?? throw "null pointer dereference")._z) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_Element.Element>), (stdgo.Go.setRef((@:checkr _q ?? throw "null pointer dereference").z) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_Element.Element>));
        @:check2 zZ2.add((stdgo.Go.setRef(zZ2) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_Element.Element>), (stdgo.Go.setRef(zZ2) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_Element.Element>));
        @:check2 (@:checkr _v ?? throw "null pointer dereference").x.subtract((stdgo.Go.setRef(pP) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_Element.Element>), (stdgo.Go.setRef(mM) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_Element.Element>));
        @:check2 (@:checkr _v ?? throw "null pointer dereference").y.add((stdgo.Go.setRef(pP) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_Element.Element>), (stdgo.Go.setRef(mM) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_Element.Element>));
        @:check2 (@:checkr _v ?? throw "null pointer dereference").z.add((stdgo.Go.setRef(zZ2) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_Element.Element>), (stdgo.Go.setRef(tT2d) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_Element.Element>));
        @:check2 (@:checkr _v ?? throw "null pointer dereference").t.subtract((stdgo.Go.setRef(zZ2) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_Element.Element>), (stdgo.Go.setRef(tT2d) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_Element.Element>));
        return _v;
    }
}
