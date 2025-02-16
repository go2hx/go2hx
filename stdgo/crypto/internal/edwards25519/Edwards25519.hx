package stdgo.crypto.internal.edwards25519;
@:structInit @:using(stdgo.crypto.internal.edwards25519.Edwards25519.T_projP1xP1_static_extension) @:dox(hide) abstract T_projP1xP1(stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_projp1xp1.T_projP1xP1) from stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_projp1xp1.T_projP1xP1 to stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_projp1xp1.T_projP1xP1 {
    public var x(get, set) : stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element;
    function get_x():stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element return this.x;
    function set_x(v:stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element):stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element {
        this.x = v;
        return v;
    }
    public var y(get, set) : stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element;
    function get_y():stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element return this.y;
    function set_y(v:stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element):stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element {
        this.y = v;
        return v;
    }
    public var z(get, set) : stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element;
    function get_z():stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element return this.z;
    function set_z(v:stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element):stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element {
        this.z = v;
        return v;
    }
    public var t(get, set) : stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element;
    function get_t():stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element return this.t;
    function set_t(v:stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element):stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element {
        this.t = v;
        return v;
    }
    public function new(?x:stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element, ?y:stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element, ?z:stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element, ?t:stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element) this = new stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_projp1xp1.T_projP1xP1(x, y, z, t);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.crypto.internal.edwards25519.Edwards25519.T_projP2_static_extension) @:dox(hide) abstract T_projP2(stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_projp2.T_projP2) from stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_projp2.T_projP2 to stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_projp2.T_projP2 {
    public var x(get, set) : stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element;
    function get_x():stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element return this.x;
    function set_x(v:stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element):stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element {
        this.x = v;
        return v;
    }
    public var y(get, set) : stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element;
    function get_y():stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element return this.y;
    function set_y(v:stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element):stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element {
        this.y = v;
        return v;
    }
    public var z(get, set) : stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element;
    function get_z():stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element return this.z;
    function set_z(v:stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element):stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element {
        this.z = v;
        return v;
    }
    public function new(?x:stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element, ?y:stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element, ?z:stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element) this = new stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_projp2.T_projP2(x, y, z);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.crypto.internal.edwards25519.Edwards25519.Point_static_extension) abstract Point(stdgo._internal.crypto.internal.edwards25519.Edwards25519_point.Point) from stdgo._internal.crypto.internal.edwards25519.Edwards25519_point.Point to stdgo._internal.crypto.internal.edwards25519.Edwards25519_point.Point {
    public var __1(get, set) : T_incomparable;
    function get___1():T_incomparable return this.__1;
    function set___1(v:T_incomparable):T_incomparable {
        this.__1 = v;
        return v;
    }
    public var _x(get, set) : stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element;
    function get__x():stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element return this._x;
    function set__x(v:stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element):stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element {
        this._x = v;
        return v;
    }
    public var _y(get, set) : stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element;
    function get__y():stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element return this._y;
    function set__y(v:stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element):stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element {
        this._y = v;
        return v;
    }
    public var _z(get, set) : stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element;
    function get__z():stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element return this._z;
    function set__z(v:stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element):stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element {
        this._z = v;
        return v;
    }
    public var _t(get, set) : stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element;
    function get__t():stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element return this._t;
    function set__t(v:stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element):stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element {
        this._t = v;
        return v;
    }
    public function new(?__1:T_incomparable, ?_x:stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element, ?_y:stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element, ?_z:stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element, ?_t:stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element) this = new stdgo._internal.crypto.internal.edwards25519.Edwards25519_point.Point(__1, _x, _y, _z, _t);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.crypto.internal.edwards25519.Edwards25519.T_projCached_static_extension) @:dox(hide) abstract T_projCached(stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_projcached.T_projCached) from stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_projcached.T_projCached to stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_projcached.T_projCached {
    public var yplusX(get, set) : stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element;
    function get_yplusX():stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element return this.yplusX;
    function set_yplusX(v:stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element):stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element {
        this.yplusX = v;
        return v;
    }
    public var yminusX(get, set) : stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element;
    function get_yminusX():stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element return this.yminusX;
    function set_yminusX(v:stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element):stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element {
        this.yminusX = v;
        return v;
    }
    public var z(get, set) : stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element;
    function get_z():stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element return this.z;
    function set_z(v:stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element):stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element {
        this.z = v;
        return v;
    }
    public var t2d(get, set) : stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element;
    function get_t2d():stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element return this.t2d;
    function set_t2d(v:stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element):stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element {
        this.t2d = v;
        return v;
    }
    public function new(?yplusX:stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element, ?yminusX:stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element, ?z:stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element, ?t2d:stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element) this = new stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_projcached.T_projCached(yplusX, yminusX, z, t2d);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.crypto.internal.edwards25519.Edwards25519.T_affineCached_static_extension) @:dox(hide) abstract T_affineCached(stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_affinecached.T_affineCached) from stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_affinecached.T_affineCached to stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_affinecached.T_affineCached {
    public var yplusX(get, set) : stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element;
    function get_yplusX():stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element return this.yplusX;
    function set_yplusX(v:stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element):stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element {
        this.yplusX = v;
        return v;
    }
    public var yminusX(get, set) : stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element;
    function get_yminusX():stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element return this.yminusX;
    function set_yminusX(v:stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element):stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element {
        this.yminusX = v;
        return v;
    }
    public var t2d(get, set) : stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element;
    function get_t2d():stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element return this.t2d;
    function set_t2d(v:stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element):stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element {
        this.t2d = v;
        return v;
    }
    public function new(?yplusX:stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element, ?yminusX:stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element, ?t2d:stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element) this = new stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_affinecached.T_affineCached(yplusX, yminusX, t2d);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.crypto.internal.edwards25519.Edwards25519.Scalar_static_extension) abstract Scalar(stdgo._internal.crypto.internal.edwards25519.Edwards25519_scalar.Scalar) from stdgo._internal.crypto.internal.edwards25519.Edwards25519_scalar.Scalar to stdgo._internal.crypto.internal.edwards25519.Edwards25519_scalar.Scalar {
    public var _s(get, set) : T_fiatScalarMontgomeryDomainFieldElement;
    function get__s():T_fiatScalarMontgomeryDomainFieldElement return this._s;
    function set__s(v:T_fiatScalarMontgomeryDomainFieldElement):T_fiatScalarMontgomeryDomainFieldElement {
        this._s = v;
        return v;
    }
    public function new(?_s:T_fiatScalarMontgomeryDomainFieldElement) this = new stdgo._internal.crypto.internal.edwards25519.Edwards25519_scalar.Scalar(_s);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.crypto.internal.edwards25519.Edwards25519.T_projLookupTable_static_extension) @:dox(hide) abstract T_projLookupTable(stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_projlookuptable.T_projLookupTable) from stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_projlookuptable.T_projLookupTable to stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_projlookuptable.T_projLookupTable {
    public var _points(get, set) : haxe.ds.Vector<T_projCached>;
    function get__points():haxe.ds.Vector<T_projCached> return haxe.ds.Vector.fromArrayCopy([for (i in this._points) i]);
    function set__points(v:haxe.ds.Vector<T_projCached>):haxe.ds.Vector<T_projCached> {
        this._points = ([for (i in v) i] : stdgo.GoArray<stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_projcached.T_projCached>);
        return v;
    }
    public function new(?_points:haxe.ds.Vector<T_projCached>) this = new stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_projlookuptable.T_projLookupTable(([for (i in _points) i] : stdgo.GoArray<stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_projcached.T_projCached>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.crypto.internal.edwards25519.Edwards25519.T_affineLookupTable_static_extension) @:dox(hide) abstract T_affineLookupTable(stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_affinelookuptable.T_affineLookupTable) from stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_affinelookuptable.T_affineLookupTable to stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_affinelookuptable.T_affineLookupTable {
    public var _points(get, set) : haxe.ds.Vector<T_affineCached>;
    function get__points():haxe.ds.Vector<T_affineCached> return haxe.ds.Vector.fromArrayCopy([for (i in this._points) i]);
    function set__points(v:haxe.ds.Vector<T_affineCached>):haxe.ds.Vector<T_affineCached> {
        this._points = ([for (i in v) i] : stdgo.GoArray<stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_affinecached.T_affineCached>);
        return v;
    }
    public function new(?_points:haxe.ds.Vector<T_affineCached>) this = new stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_affinelookuptable.T_affineLookupTable(([for (i in _points) i] : stdgo.GoArray<stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_affinecached.T_affineCached>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.crypto.internal.edwards25519.Edwards25519.T_nafLookupTable5_static_extension) @:dox(hide) abstract T_nafLookupTable5(stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_naflookuptable5.T_nafLookupTable5) from stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_naflookuptable5.T_nafLookupTable5 to stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_naflookuptable5.T_nafLookupTable5 {
    public var _points(get, set) : haxe.ds.Vector<T_projCached>;
    function get__points():haxe.ds.Vector<T_projCached> return haxe.ds.Vector.fromArrayCopy([for (i in this._points) i]);
    function set__points(v:haxe.ds.Vector<T_projCached>):haxe.ds.Vector<T_projCached> {
        this._points = ([for (i in v) i] : stdgo.GoArray<stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_projcached.T_projCached>);
        return v;
    }
    public function new(?_points:haxe.ds.Vector<T_projCached>) this = new stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_naflookuptable5.T_nafLookupTable5(([for (i in _points) i] : stdgo.GoArray<stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_projcached.T_projCached>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.crypto.internal.edwards25519.Edwards25519.T_nafLookupTable8_static_extension) @:dox(hide) abstract T_nafLookupTable8(stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_naflookuptable8.T_nafLookupTable8) from stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_naflookuptable8.T_nafLookupTable8 to stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_naflookuptable8.T_nafLookupTable8 {
    public var _points(get, set) : haxe.ds.Vector<T_affineCached>;
    function get__points():haxe.ds.Vector<T_affineCached> return haxe.ds.Vector.fromArrayCopy([for (i in this._points) i]);
    function set__points(v:haxe.ds.Vector<T_affineCached>):haxe.ds.Vector<T_affineCached> {
        this._points = ([for (i in v) i] : stdgo.GoArray<stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_affinecached.T_affineCached>);
        return v;
    }
    public function new(?_points:haxe.ds.Vector<T_affineCached>) this = new stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_naflookuptable8.T_nafLookupTable8(([for (i in _points) i] : stdgo.GoArray<stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_affinecached.T_affineCached>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:dox(hide) typedef T__struct_0Pointer = stdgo._internal.crypto.internal.edwards25519.Edwards25519_t__struct_0pointer.T__struct_0Pointer;
@:dox(hide) class T__struct_0_static_extension {

}
@:dox(hide) typedef T__struct_0 = stdgo._internal.crypto.internal.edwards25519.Edwards25519_t__struct_0.T__struct_0;
@:dox(hide) typedef T__struct_1Pointer = stdgo._internal.crypto.internal.edwards25519.Edwards25519_t__struct_1pointer.T__struct_1Pointer;
@:dox(hide) class T__struct_1_static_extension {

}
@:dox(hide) typedef T__struct_1 = stdgo._internal.crypto.internal.edwards25519.Edwards25519_t__struct_1.T__struct_1;
@:dox(hide) typedef T_incomparable = stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_incomparable.T_incomparable;
@:dox(hide) typedef T_fiatScalarUint1 = stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_fiatscalaruint1.T_fiatScalarUint1;
@:dox(hide) typedef T_fiatScalarInt1 = stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_fiatscalarint1.T_fiatScalarInt1;
@:dox(hide) typedef T_fiatScalarMontgomeryDomainFieldElement = stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_fiatscalarmontgomerydomainfieldelement.T_fiatScalarMontgomeryDomainFieldElement;
@:dox(hide) typedef T_fiatScalarNonMontgomeryDomainFieldElement = stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_fiatscalarnonmontgomerydomainfieldelement.T_fiatScalarNonMontgomeryDomainFieldElement;
@:dox(hide) typedef T_projP1xP1Pointer = stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_projp1xp1pointer.T_projP1xP1Pointer;
@:dox(hide) class T_projP1xP1_static_extension {
    static public function double(_v:T_projP1xP1, _p:T_projP2):T_projP1xP1 {
        final _v = (_v : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_projp1xp1.T_projP1xP1>);
        final _p = (_p : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_projp2.T_projP2>);
        return stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_projp1xp1_static_extension.T_projP1xP1_static_extension.double(_v, _p);
    }
    static public function subAffine(_v:T_projP1xP1, _p:Point, _q:T_affineCached):T_projP1xP1 {
        final _v = (_v : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_projp1xp1.T_projP1xP1>);
        final _p = (_p : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_point.Point>);
        final _q = (_q : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_affinecached.T_affineCached>);
        return stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_projp1xp1_static_extension.T_projP1xP1_static_extension.subAffine(_v, _p, _q);
    }
    static public function addAffine(_v:T_projP1xP1, _p:Point, _q:T_affineCached):T_projP1xP1 {
        final _v = (_v : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_projp1xp1.T_projP1xP1>);
        final _p = (_p : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_point.Point>);
        final _q = (_q : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_affinecached.T_affineCached>);
        return stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_projp1xp1_static_extension.T_projP1xP1_static_extension.addAffine(_v, _p, _q);
    }
    static public function sub(_v:T_projP1xP1, _p:Point, _q:T_projCached):T_projP1xP1 {
        final _v = (_v : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_projp1xp1.T_projP1xP1>);
        final _p = (_p : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_point.Point>);
        final _q = (_q : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_projcached.T_projCached>);
        return stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_projp1xp1_static_extension.T_projP1xP1_static_extension.sub(_v, _p, _q);
    }
    static public function add(_v:T_projP1xP1, _p:Point, _q:T_projCached):T_projP1xP1 {
        final _v = (_v : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_projp1xp1.T_projP1xP1>);
        final _p = (_p : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_point.Point>);
        final _q = (_q : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_projcached.T_projCached>);
        return stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_projp1xp1_static_extension.T_projP1xP1_static_extension.add(_v, _p, _q);
    }
}
@:dox(hide) typedef T_projP2Pointer = stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_projp2pointer.T_projP2Pointer;
@:dox(hide) class T_projP2_static_extension {
    static public function fromP3(_v:T_projP2, _p:Point):T_projP2 {
        final _v = (_v : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_projp2.T_projP2>);
        final _p = (_p : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_point.Point>);
        return stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_projp2_static_extension.T_projP2_static_extension.fromP3(_v, _p);
    }
    static public function fromP1xP1(_v:T_projP2, _p:T_projP1xP1):T_projP2 {
        final _v = (_v : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_projp2.T_projP2>);
        final _p = (_p : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_projp1xp1.T_projP1xP1>);
        return stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_projp2_static_extension.T_projP2_static_extension.fromP1xP1(_v, _p);
    }
    static public function zero(_v:T_projP2):T_projP2 {
        final _v = (_v : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_projp2.T_projP2>);
        return stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_projp2_static_extension.T_projP2_static_extension.zero(_v);
    }
}
typedef PointPointer = stdgo._internal.crypto.internal.edwards25519.Edwards25519_pointpointer.PointPointer;
class Point_static_extension {
    static public function varTimeDoubleScalarBaseMult(_v:Point, _a:Scalar, a:Point, _b:Scalar):Point {
        final _v = (_v : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_point.Point>);
        final _a = (_a : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_scalar.Scalar>);
        final a = (a : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_point.Point>);
        final _b = (_b : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_scalar.Scalar>);
        return stdgo._internal.crypto.internal.edwards25519.Edwards25519_point_static_extension.Point_static_extension.varTimeDoubleScalarBaseMult(_v, _a, a, _b);
    }
    static public function scalarMult(_v:Point, _x:Scalar, _q:Point):Point {
        final _v = (_v : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_point.Point>);
        final _x = (_x : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_scalar.Scalar>);
        final _q = (_q : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_point.Point>);
        return stdgo._internal.crypto.internal.edwards25519.Edwards25519_point_static_extension.Point_static_extension.scalarMult(_v, _x, _q);
    }
    static public function scalarBaseMult(_v:Point, _x:Scalar):Point {
        final _v = (_v : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_point.Point>);
        final _x = (_x : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_scalar.Scalar>);
        return stdgo._internal.crypto.internal.edwards25519.Edwards25519_point_static_extension.Point_static_extension.scalarBaseMult(_v, _x);
    }
    static public function equal(_v:Point, _u:Point):StdTypes.Int {
        final _v = (_v : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_point.Point>);
        final _u = (_u : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_point.Point>);
        return stdgo._internal.crypto.internal.edwards25519.Edwards25519_point_static_extension.Point_static_extension.equal(_v, _u);
    }
    static public function negate(_v:Point, _p:Point):Point {
        final _v = (_v : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_point.Point>);
        final _p = (_p : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_point.Point>);
        return stdgo._internal.crypto.internal.edwards25519.Edwards25519_point_static_extension.Point_static_extension.negate(_v, _p);
    }
    static public function subtract(_v:Point, _p:Point, _q:Point):Point {
        final _v = (_v : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_point.Point>);
        final _p = (_p : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_point.Point>);
        final _q = (_q : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_point.Point>);
        return stdgo._internal.crypto.internal.edwards25519.Edwards25519_point_static_extension.Point_static_extension.subtract(_v, _p, _q);
    }
    static public function add(_v:Point, _p:Point, _q:Point):Point {
        final _v = (_v : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_point.Point>);
        final _p = (_p : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_point.Point>);
        final _q = (_q : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_point.Point>);
        return stdgo._internal.crypto.internal.edwards25519.Edwards25519_point_static_extension.Point_static_extension.add(_v, _p, _q);
    }
    static public function _fromP2(_v:Point, _p:T_projP2):Point {
        final _v = (_v : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_point.Point>);
        final _p = (_p : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_projp2.T_projP2>);
        return stdgo._internal.crypto.internal.edwards25519.Edwards25519_point_static_extension.Point_static_extension._fromP2(_v, _p);
    }
    static public function _fromP1xP1(_v:Point, _p:T_projP1xP1):Point {
        final _v = (_v : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_point.Point>);
        final _p = (_p : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_projp1xp1.T_projP1xP1>);
        return stdgo._internal.crypto.internal.edwards25519.Edwards25519_point_static_extension.Point_static_extension._fromP1xP1(_v, _p);
    }
    static public function setBytes(_v:Point, _x:Array<std.UInt>):stdgo.Tuple<Point, stdgo.Error> {
        final _v = (_v : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_point.Point>);
        final _x = ([for (i in _x) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.crypto.internal.edwards25519.Edwards25519_point_static_extension.Point_static_extension.setBytes(_v, _x);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _bytes(_v:Point, _buf:haxe.ds.Vector<std.UInt>):Array<std.UInt> {
        final _v = (_v : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_point.Point>);
        final _buf = (_buf : stdgo.Ref<stdgo.GoArray<stdgo.GoUInt8>>);
        return [for (i in stdgo._internal.crypto.internal.edwards25519.Edwards25519_point_static_extension.Point_static_extension._bytes(_v, _buf)) i];
    }
    static public function bytes(_v:Point):Array<std.UInt> {
        final _v = (_v : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_point.Point>);
        return [for (i in stdgo._internal.crypto.internal.edwards25519.Edwards25519_point_static_extension.Point_static_extension.bytes(_v)) i];
    }
    static public function set(_v:Point, _u:Point):Point {
        final _v = (_v : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_point.Point>);
        final _u = (_u : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_point.Point>);
        return stdgo._internal.crypto.internal.edwards25519.Edwards25519_point_static_extension.Point_static_extension.set(_v, _u);
    }
}
@:dox(hide) typedef T_projCachedPointer = stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_projcachedpointer.T_projCachedPointer;
@:dox(hide) class T_projCached_static_extension {
    static public function condNeg(_v:T_projCached, _cond:StdTypes.Int):T_projCached {
        final _v = (_v : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_projcached.T_projCached>);
        final _cond = (_cond : stdgo.GoInt);
        return stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_projcached_static_extension.T_projCached_static_extension.condNeg(_v, _cond);
    }
    static public function select(_v:T_projCached, _a:T_projCached, _b:T_projCached, _cond:StdTypes.Int):T_projCached {
        final _v = (_v : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_projcached.T_projCached>);
        final _a = (_a : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_projcached.T_projCached>);
        final _b = (_b : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_projcached.T_projCached>);
        final _cond = (_cond : stdgo.GoInt);
        return stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_projcached_static_extension.T_projCached_static_extension.select(_v, _a, _b, _cond);
    }
    static public function fromP3(_v:T_projCached, _p:Point):T_projCached {
        final _v = (_v : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_projcached.T_projCached>);
        final _p = (_p : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_point.Point>);
        return stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_projcached_static_extension.T_projCached_static_extension.fromP3(_v, _p);
    }
    static public function zero(_v:T_projCached):T_projCached {
        final _v = (_v : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_projcached.T_projCached>);
        return stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_projcached_static_extension.T_projCached_static_extension.zero(_v);
    }
}
@:dox(hide) typedef T_affineCachedPointer = stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_affinecachedpointer.T_affineCachedPointer;
@:dox(hide) class T_affineCached_static_extension {
    static public function condNeg(_v:T_affineCached, _cond:StdTypes.Int):T_affineCached {
        final _v = (_v : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_affinecached.T_affineCached>);
        final _cond = (_cond : stdgo.GoInt);
        return stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_affinecached_static_extension.T_affineCached_static_extension.condNeg(_v, _cond);
    }
    static public function select(_v:T_affineCached, _a:T_affineCached, _b:T_affineCached, _cond:StdTypes.Int):T_affineCached {
        final _v = (_v : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_affinecached.T_affineCached>);
        final _a = (_a : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_affinecached.T_affineCached>);
        final _b = (_b : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_affinecached.T_affineCached>);
        final _cond = (_cond : stdgo.GoInt);
        return stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_affinecached_static_extension.T_affineCached_static_extension.select(_v, _a, _b, _cond);
    }
    static public function fromP3(_v:T_affineCached, _p:Point):T_affineCached {
        final _v = (_v : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_affinecached.T_affineCached>);
        final _p = (_p : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_point.Point>);
        return stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_affinecached_static_extension.T_affineCached_static_extension.fromP3(_v, _p);
    }
    static public function zero(_v:T_affineCached):T_affineCached {
        final _v = (_v : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_affinecached.T_affineCached>);
        return stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_affinecached_static_extension.T_affineCached_static_extension.zero(_v);
    }
}
typedef ScalarPointer = stdgo._internal.crypto.internal.edwards25519.Edwards25519_scalarpointer.ScalarPointer;
class Scalar_static_extension {
    static public function _signedRadix16(_s:Scalar):haxe.ds.Vector<StdTypes.Int> {
        final _s = (_s : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_scalar.Scalar>);
        return haxe.ds.Vector.fromArrayCopy([for (i in stdgo._internal.crypto.internal.edwards25519.Edwards25519_scalar_static_extension.Scalar_static_extension._signedRadix16(_s)) i]);
    }
    static public function _nonAdjacentForm(_s:Scalar, _w:std.UInt):haxe.ds.Vector<StdTypes.Int> {
        final _s = (_s : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_scalar.Scalar>);
        final _w = (_w : stdgo.GoUInt);
        return haxe.ds.Vector.fromArrayCopy([for (i in stdgo._internal.crypto.internal.edwards25519.Edwards25519_scalar_static_extension.Scalar_static_extension._nonAdjacentForm(_s, _w)) i]);
    }
    static public function equal(_s:Scalar, _t:Scalar):StdTypes.Int {
        final _s = (_s : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_scalar.Scalar>);
        final _t = (_t : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_scalar.Scalar>);
        return stdgo._internal.crypto.internal.edwards25519.Edwards25519_scalar_static_extension.Scalar_static_extension.equal(_s, _t);
    }
    static public function _bytes(_s:Scalar, _out:haxe.ds.Vector<std.UInt>):Array<std.UInt> {
        final _s = (_s : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_scalar.Scalar>);
        final _out = (_out : stdgo.Ref<stdgo.GoArray<stdgo.GoUInt8>>);
        return [for (i in stdgo._internal.crypto.internal.edwards25519.Edwards25519_scalar_static_extension.Scalar_static_extension._bytes(_s, _out)) i];
    }
    static public function bytes(_s:Scalar):Array<std.UInt> {
        final _s = (_s : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_scalar.Scalar>);
        return [for (i in stdgo._internal.crypto.internal.edwards25519.Edwards25519_scalar_static_extension.Scalar_static_extension.bytes(_s)) i];
    }
    static public function setBytesWithClamping(_s:Scalar, _x:Array<std.UInt>):stdgo.Tuple<Scalar, stdgo.Error> {
        final _s = (_s : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_scalar.Scalar>);
        final _x = ([for (i in _x) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.crypto.internal.edwards25519.Edwards25519_scalar_static_extension.Scalar_static_extension.setBytesWithClamping(_s, _x);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function setCanonicalBytes(_s:Scalar, _x:Array<std.UInt>):stdgo.Tuple<Scalar, stdgo.Error> {
        final _s = (_s : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_scalar.Scalar>);
        final _x = ([for (i in _x) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.crypto.internal.edwards25519.Edwards25519_scalar_static_extension.Scalar_static_extension.setCanonicalBytes(_s, _x);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _setShortBytes(_s:Scalar, _x:Array<std.UInt>):Scalar {
        final _s = (_s : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_scalar.Scalar>);
        final _x = ([for (i in _x) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.crypto.internal.edwards25519.Edwards25519_scalar_static_extension.Scalar_static_extension._setShortBytes(_s, _x);
    }
    static public function setUniformBytes(_s:Scalar, _x:Array<std.UInt>):stdgo.Tuple<Scalar, stdgo.Error> {
        final _s = (_s : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_scalar.Scalar>);
        final _x = ([for (i in _x) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.crypto.internal.edwards25519.Edwards25519_scalar_static_extension.Scalar_static_extension.setUniformBytes(_s, _x);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function set(_s:Scalar, _x:Scalar):Scalar {
        final _s = (_s : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_scalar.Scalar>);
        final _x = (_x : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_scalar.Scalar>);
        return stdgo._internal.crypto.internal.edwards25519.Edwards25519_scalar_static_extension.Scalar_static_extension.set(_s, _x);
    }
    static public function multiply(_s:Scalar, _x:Scalar, _y:Scalar):Scalar {
        final _s = (_s : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_scalar.Scalar>);
        final _x = (_x : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_scalar.Scalar>);
        final _y = (_y : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_scalar.Scalar>);
        return stdgo._internal.crypto.internal.edwards25519.Edwards25519_scalar_static_extension.Scalar_static_extension.multiply(_s, _x, _y);
    }
    static public function negate(_s:Scalar, _x:Scalar):Scalar {
        final _s = (_s : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_scalar.Scalar>);
        final _x = (_x : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_scalar.Scalar>);
        return stdgo._internal.crypto.internal.edwards25519.Edwards25519_scalar_static_extension.Scalar_static_extension.negate(_s, _x);
    }
    static public function subtract(_s:Scalar, _x:Scalar, _y:Scalar):Scalar {
        final _s = (_s : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_scalar.Scalar>);
        final _x = (_x : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_scalar.Scalar>);
        final _y = (_y : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_scalar.Scalar>);
        return stdgo._internal.crypto.internal.edwards25519.Edwards25519_scalar_static_extension.Scalar_static_extension.subtract(_s, _x, _y);
    }
    static public function add(_s:Scalar, _x:Scalar, _y:Scalar):Scalar {
        final _s = (_s : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_scalar.Scalar>);
        final _x = (_x : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_scalar.Scalar>);
        final _y = (_y : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_scalar.Scalar>);
        return stdgo._internal.crypto.internal.edwards25519.Edwards25519_scalar_static_extension.Scalar_static_extension.add(_s, _x, _y);
    }
    static public function multiplyAdd(_s:Scalar, _x:Scalar, _y:Scalar, _z:Scalar):Scalar {
        final _s = (_s : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_scalar.Scalar>);
        final _x = (_x : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_scalar.Scalar>);
        final _y = (_y : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_scalar.Scalar>);
        final _z = (_z : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_scalar.Scalar>);
        return stdgo._internal.crypto.internal.edwards25519.Edwards25519_scalar_static_extension.Scalar_static_extension.multiplyAdd(_s, _x, _y, _z);
    }
}
@:dox(hide) typedef T_projLookupTablePointer = stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_projlookuptablepointer.T_projLookupTablePointer;
@:dox(hide) class T_projLookupTable_static_extension {
    static public function selectInto(_v:T_projLookupTable, _dest:T_projCached, _x:StdTypes.Int):Void {
        final _v = (_v : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_projlookuptable.T_projLookupTable>);
        final _dest = (_dest : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_projcached.T_projCached>);
        final _x = (_x : stdgo.GoInt8);
        stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_projlookuptable_static_extension.T_projLookupTable_static_extension.selectInto(_v, _dest, _x);
    }
    static public function fromP3(_v:T_projLookupTable, _q:Point):Void {
        final _v = (_v : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_projlookuptable.T_projLookupTable>);
        final _q = (_q : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_point.Point>);
        stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_projlookuptable_static_extension.T_projLookupTable_static_extension.fromP3(_v, _q);
    }
}
@:dox(hide) typedef T_affineLookupTablePointer = stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_affinelookuptablepointer.T_affineLookupTablePointer;
@:dox(hide) class T_affineLookupTable_static_extension {
    static public function selectInto(_v:T_affineLookupTable, _dest:T_affineCached, _x:StdTypes.Int):Void {
        final _v = (_v : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_affinelookuptable.T_affineLookupTable>);
        final _dest = (_dest : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_affinecached.T_affineCached>);
        final _x = (_x : stdgo.GoInt8);
        stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_affinelookuptable_static_extension.T_affineLookupTable_static_extension.selectInto(_v, _dest, _x);
    }
    static public function fromP3(_v:T_affineLookupTable, _q:Point):Void {
        final _v = (_v : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_affinelookuptable.T_affineLookupTable>);
        final _q = (_q : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_point.Point>);
        stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_affinelookuptable_static_extension.T_affineLookupTable_static_extension.fromP3(_v, _q);
    }
}
@:dox(hide) typedef T_nafLookupTable5Pointer = stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_naflookuptable5pointer.T_nafLookupTable5Pointer;
@:dox(hide) class T_nafLookupTable5_static_extension {
    static public function selectInto(_v:T_nafLookupTable5, _dest:T_projCached, _x:StdTypes.Int):Void {
        final _v = (_v : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_naflookuptable5.T_nafLookupTable5>);
        final _dest = (_dest : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_projcached.T_projCached>);
        final _x = (_x : stdgo.GoInt8);
        stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_naflookuptable5_static_extension.T_nafLookupTable5_static_extension.selectInto(_v, _dest, _x);
    }
    static public function fromP3(_v:T_nafLookupTable5, _q:Point):Void {
        final _v = (_v : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_naflookuptable5.T_nafLookupTable5>);
        final _q = (_q : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_point.Point>);
        stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_naflookuptable5_static_extension.T_nafLookupTable5_static_extension.fromP3(_v, _q);
    }
}
@:dox(hide) typedef T_nafLookupTable8Pointer = stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_naflookuptable8pointer.T_nafLookupTable8Pointer;
@:dox(hide) class T_nafLookupTable8_static_extension {
    static public function selectInto(_v:T_nafLookupTable8, _dest:T_affineCached, _x:StdTypes.Int):Void {
        final _v = (_v : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_naflookuptable8.T_nafLookupTable8>);
        final _dest = (_dest : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_affinecached.T_affineCached>);
        final _x = (_x : stdgo.GoInt8);
        stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_naflookuptable8_static_extension.T_nafLookupTable8_static_extension.selectInto(_v, _dest, _x);
    }
    static public function fromP3(_v:T_nafLookupTable8, _q:Point):Void {
        final _v = (_v : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_naflookuptable8.T_nafLookupTable8>);
        final _q = (_q : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_point.Point>);
        stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_naflookuptable8_static_extension.T_nafLookupTable8_static_extension.fromP3(_v, _q);
    }
}
@:dox(hide) typedef T__struct_0PointerPointer = stdgo._internal.crypto.internal.edwards25519.Edwards25519_t__struct_0pointerpointer.T__struct_0PointerPointer;
@:dox(hide) class T__struct_0Pointer_static_extension {

}
@:dox(hide) typedef T__struct_1PointerPointer = stdgo._internal.crypto.internal.edwards25519.Edwards25519_t__struct_1pointerpointer.T__struct_1PointerPointer;
@:dox(hide) class T__struct_1Pointer_static_extension {

}
@:dox(hide) typedef T_incomparablePointer = stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_incomparablepointer.T_incomparablePointer;
@:dox(hide) class T_incomparable_static_extension {

}
@:dox(hide) typedef T_fiatScalarUint1Pointer = stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_fiatscalaruint1pointer.T_fiatScalarUint1Pointer;
@:dox(hide) class T_fiatScalarUint1_static_extension {

}
@:dox(hide) typedef T_fiatScalarInt1Pointer = stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_fiatscalarint1pointer.T_fiatScalarInt1Pointer;
@:dox(hide) class T_fiatScalarInt1_static_extension {

}
@:dox(hide) typedef T_fiatScalarMontgomeryDomainFieldElementPointer = stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_fiatscalarmontgomerydomainfieldelementpointer.T_fiatScalarMontgomeryDomainFieldElementPointer;
@:dox(hide) class T_fiatScalarMontgomeryDomainFieldElement_static_extension {

}
@:dox(hide) typedef T_fiatScalarNonMontgomeryDomainFieldElementPointer = stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_fiatscalarnonmontgomerydomainfieldelementpointer.T_fiatScalarNonMontgomeryDomainFieldElementPointer;
@:dox(hide) class T_fiatScalarNonMontgomeryDomainFieldElement_static_extension {

}
/**
    * Package edwards25519 implements group logic for the twisted Edwards curve
    * 
    * 	-x^2 + y^2 = 1 + -(121665/121666)*x^2*y^2
    * 
    * This is better known as the Edwards curve equivalent to Curve25519, and is
    * the curve used by the Ed25519 signature scheme.
    * 
    * Most users don't need this package, and should instead use crypto/ed25519 for
    * signatures, golang.org/x/crypto/curve25519 for Diffie-Hellman, or
    * github.com/gtank/ristretto255 for prime order group logic.
    * 
    * However, developers who do need to interact with low-level edwards25519
    * operations can use filippo.io/edwards25519, an extended version of this
    * package repackaged as an importable module.
    * 
    * (Note that filippo.io/edwards25519 and github.com/gtank/ristretto255 are not
    * maintained by the Go team and are not covered by the Go 1 Compatibility Promise.)
**/
class Edwards25519 {
    /**
        * NewIdentityPoint returns a new Point set to the identity.
    **/
    static public inline function newIdentityPoint():Point {
        return stdgo._internal.crypto.internal.edwards25519.Edwards25519_newidentitypoint.newIdentityPoint();
    }
    /**
        * NewGeneratorPoint returns a new Point set to the canonical generator.
    **/
    static public inline function newGeneratorPoint():Point {
        return stdgo._internal.crypto.internal.edwards25519.Edwards25519_newgeneratorpoint.newGeneratorPoint();
    }
    /**
        * NewScalar returns a new zero Scalar.
    **/
    static public inline function newScalar():Scalar {
        return stdgo._internal.crypto.internal.edwards25519.Edwards25519_newscalar.newScalar();
    }
}
