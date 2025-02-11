package stdgo.crypto.internal.nistec.fiat;
@:structInit @:using(stdgo.crypto.internal.nistec.fiat.Fiat.P224Element_static_extension) abstract P224Element(stdgo._internal.crypto.internal.nistec.fiat.Fiat_p224element.P224Element) from stdgo._internal.crypto.internal.nistec.fiat.Fiat_p224element.P224Element to stdgo._internal.crypto.internal.nistec.fiat.Fiat_p224element.P224Element {
    public var _x(get, set) : T_p224MontgomeryDomainFieldElement;
    function get__x():T_p224MontgomeryDomainFieldElement return this._x;
    function set__x(v:T_p224MontgomeryDomainFieldElement):T_p224MontgomeryDomainFieldElement {
        this._x = v;
        return v;
    }
    public function new(?_x:T_p224MontgomeryDomainFieldElement) this = new stdgo._internal.crypto.internal.nistec.fiat.Fiat_p224element.P224Element(_x);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.crypto.internal.nistec.fiat.Fiat.P256Element_static_extension) abstract P256Element(stdgo._internal.crypto.internal.nistec.fiat.Fiat_p256element.P256Element) from stdgo._internal.crypto.internal.nistec.fiat.Fiat_p256element.P256Element to stdgo._internal.crypto.internal.nistec.fiat.Fiat_p256element.P256Element {
    public var _x(get, set) : T_p256MontgomeryDomainFieldElement;
    function get__x():T_p256MontgomeryDomainFieldElement return this._x;
    function set__x(v:T_p256MontgomeryDomainFieldElement):T_p256MontgomeryDomainFieldElement {
        this._x = v;
        return v;
    }
    public function new(?_x:T_p256MontgomeryDomainFieldElement) this = new stdgo._internal.crypto.internal.nistec.fiat.Fiat_p256element.P256Element(_x);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.crypto.internal.nistec.fiat.Fiat.P384Element_static_extension) abstract P384Element(stdgo._internal.crypto.internal.nistec.fiat.Fiat_p384element.P384Element) from stdgo._internal.crypto.internal.nistec.fiat.Fiat_p384element.P384Element to stdgo._internal.crypto.internal.nistec.fiat.Fiat_p384element.P384Element {
    public var _x(get, set) : T_p384MontgomeryDomainFieldElement;
    function get__x():T_p384MontgomeryDomainFieldElement return this._x;
    function set__x(v:T_p384MontgomeryDomainFieldElement):T_p384MontgomeryDomainFieldElement {
        this._x = v;
        return v;
    }
    public function new(?_x:T_p384MontgomeryDomainFieldElement) this = new stdgo._internal.crypto.internal.nistec.fiat.Fiat_p384element.P384Element(_x);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.crypto.internal.nistec.fiat.Fiat.P521Element_static_extension) abstract P521Element(stdgo._internal.crypto.internal.nistec.fiat.Fiat_p521element.P521Element) from stdgo._internal.crypto.internal.nistec.fiat.Fiat_p521element.P521Element to stdgo._internal.crypto.internal.nistec.fiat.Fiat_p521element.P521Element {
    public var _x(get, set) : T_p521MontgomeryDomainFieldElement;
    function get__x():T_p521MontgomeryDomainFieldElement return this._x;
    function set__x(v:T_p521MontgomeryDomainFieldElement):T_p521MontgomeryDomainFieldElement {
        this._x = v;
        return v;
    }
    public function new(?_x:T_p521MontgomeryDomainFieldElement) this = new stdgo._internal.crypto.internal.nistec.fiat.Fiat_p521element.P521Element(_x);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:dox(hide) typedef T_p224UntypedFieldElement = stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p224untypedfieldelement.T_p224UntypedFieldElement;
@:dox(hide) typedef T_p224Uint1 = stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p224uint1.T_p224Uint1;
@:dox(hide) typedef T_p224Int1 = stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p224int1.T_p224Int1;
@:dox(hide) typedef T_p224MontgomeryDomainFieldElement = stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p224montgomerydomainfieldelement.T_p224MontgomeryDomainFieldElement;
@:dox(hide) typedef T_p224NonMontgomeryDomainFieldElement = stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p224nonmontgomerydomainfieldelement.T_p224NonMontgomeryDomainFieldElement;
@:dox(hide) typedef T_p256UntypedFieldElement = stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p256untypedfieldelement.T_p256UntypedFieldElement;
@:dox(hide) typedef T_p256Uint1 = stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p256uint1.T_p256Uint1;
@:dox(hide) typedef T_p256Int1 = stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p256int1.T_p256Int1;
@:dox(hide) typedef T_p256MontgomeryDomainFieldElement = stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p256montgomerydomainfieldelement.T_p256MontgomeryDomainFieldElement;
@:dox(hide) typedef T_p256NonMontgomeryDomainFieldElement = stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p256nonmontgomerydomainfieldelement.T_p256NonMontgomeryDomainFieldElement;
@:dox(hide) typedef T_p384UntypedFieldElement = stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p384untypedfieldelement.T_p384UntypedFieldElement;
@:dox(hide) typedef T_p384Uint1 = stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p384uint1.T_p384Uint1;
@:dox(hide) typedef T_p384Int1 = stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p384int1.T_p384Int1;
@:dox(hide) typedef T_p384MontgomeryDomainFieldElement = stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p384montgomerydomainfieldelement.T_p384MontgomeryDomainFieldElement;
@:dox(hide) typedef T_p384NonMontgomeryDomainFieldElement = stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p384nonmontgomerydomainfieldelement.T_p384NonMontgomeryDomainFieldElement;
@:dox(hide) typedef T_p521UntypedFieldElement = stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521untypedfieldelement.T_p521UntypedFieldElement;
@:dox(hide) typedef T_p521Uint1 = stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1;
@:dox(hide) typedef T_p521Int1 = stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521int1.T_p521Int1;
@:dox(hide) typedef T_p521MontgomeryDomainFieldElement = stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521montgomerydomainfieldelement.T_p521MontgomeryDomainFieldElement;
@:dox(hide) typedef T_p521NonMontgomeryDomainFieldElement = stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521nonmontgomerydomainfieldelement.T_p521NonMontgomeryDomainFieldElement;
typedef P224ElementPointer = stdgo._internal.crypto.internal.nistec.fiat.Fiat_p224elementpointer.P224ElementPointer;
class P224Element_static_extension {
    static public function invert(_e:P224Element, _x:P224Element):P224Element {
        final _e = (_e : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p224element.P224Element>);
        final _x = (_x : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p224element.P224Element>);
        return stdgo._internal.crypto.internal.nistec.fiat.Fiat_p224element_static_extension.P224Element_static_extension.invert(_e, _x);
    }
    static public function select(_v:P224Element, _a:P224Element, _b:P224Element, _cond:StdTypes.Int):P224Element {
        final _v = (_v : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p224element.P224Element>);
        final _a = (_a : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p224element.P224Element>);
        final _b = (_b : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p224element.P224Element>);
        final _cond = (_cond : stdgo.GoInt);
        return stdgo._internal.crypto.internal.nistec.fiat.Fiat_p224element_static_extension.P224Element_static_extension.select(_v, _a, _b, _cond);
    }
    static public function square(_e:P224Element, _t:P224Element):P224Element {
        final _e = (_e : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p224element.P224Element>);
        final _t = (_t : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p224element.P224Element>);
        return stdgo._internal.crypto.internal.nistec.fiat.Fiat_p224element_static_extension.P224Element_static_extension.square(_e, _t);
    }
    static public function mul(_e:P224Element, _t1:P224Element, _t2:P224Element):P224Element {
        final _e = (_e : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p224element.P224Element>);
        final _t1 = (_t1 : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p224element.P224Element>);
        final _t2 = (_t2 : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p224element.P224Element>);
        return stdgo._internal.crypto.internal.nistec.fiat.Fiat_p224element_static_extension.P224Element_static_extension.mul(_e, _t1, _t2);
    }
    static public function sub(_e:P224Element, _t1:P224Element, _t2:P224Element):P224Element {
        final _e = (_e : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p224element.P224Element>);
        final _t1 = (_t1 : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p224element.P224Element>);
        final _t2 = (_t2 : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p224element.P224Element>);
        return stdgo._internal.crypto.internal.nistec.fiat.Fiat_p224element_static_extension.P224Element_static_extension.sub(_e, _t1, _t2);
    }
    static public function add(_e:P224Element, _t1:P224Element, _t2:P224Element):P224Element {
        final _e = (_e : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p224element.P224Element>);
        final _t1 = (_t1 : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p224element.P224Element>);
        final _t2 = (_t2 : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p224element.P224Element>);
        return stdgo._internal.crypto.internal.nistec.fiat.Fiat_p224element_static_extension.P224Element_static_extension.add(_e, _t1, _t2);
    }
    static public function setBytes(_e:P224Element, _v:Array<std.UInt>):stdgo.Tuple<P224Element, stdgo.Error> {
        final _e = (_e : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p224element.P224Element>);
        final _v = ([for (i in _v) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.crypto.internal.nistec.fiat.Fiat_p224element_static_extension.P224Element_static_extension.setBytes(_e, _v);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _bytes(_e:P224Element, _out:haxe.ds.Vector<std.UInt>):Array<std.UInt> {
        final _e = (_e : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p224element.P224Element>);
        final _out = (_out : stdgo.Ref<stdgo.GoArray<stdgo.GoUInt8>>);
        return [for (i in stdgo._internal.crypto.internal.nistec.fiat.Fiat_p224element_static_extension.P224Element_static_extension._bytes(_e, _out)) i];
    }
    static public function bytes(_e:P224Element):Array<std.UInt> {
        final _e = (_e : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p224element.P224Element>);
        return [for (i in stdgo._internal.crypto.internal.nistec.fiat.Fiat_p224element_static_extension.P224Element_static_extension.bytes(_e)) i];
    }
    static public function set(_e:P224Element, _t:P224Element):P224Element {
        final _e = (_e : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p224element.P224Element>);
        final _t = (_t : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p224element.P224Element>);
        return stdgo._internal.crypto.internal.nistec.fiat.Fiat_p224element_static_extension.P224Element_static_extension.set(_e, _t);
    }
    static public function isZero(_e:P224Element):StdTypes.Int {
        final _e = (_e : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p224element.P224Element>);
        return stdgo._internal.crypto.internal.nistec.fiat.Fiat_p224element_static_extension.P224Element_static_extension.isZero(_e);
    }
    static public function equal(_e:P224Element, _t:P224Element):StdTypes.Int {
        final _e = (_e : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p224element.P224Element>);
        final _t = (_t : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p224element.P224Element>);
        return stdgo._internal.crypto.internal.nistec.fiat.Fiat_p224element_static_extension.P224Element_static_extension.equal(_e, _t);
    }
    static public function one(_e:P224Element):P224Element {
        final _e = (_e : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p224element.P224Element>);
        return stdgo._internal.crypto.internal.nistec.fiat.Fiat_p224element_static_extension.P224Element_static_extension.one(_e);
    }
}
typedef P256ElementPointer = stdgo._internal.crypto.internal.nistec.fiat.Fiat_p256elementpointer.P256ElementPointer;
class P256Element_static_extension {
    static public function invert(_e:P256Element, _x:P256Element):P256Element {
        final _e = (_e : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p256element.P256Element>);
        final _x = (_x : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p256element.P256Element>);
        return stdgo._internal.crypto.internal.nistec.fiat.Fiat_p256element_static_extension.P256Element_static_extension.invert(_e, _x);
    }
    static public function select(_v:P256Element, _a:P256Element, _b:P256Element, _cond:StdTypes.Int):P256Element {
        final _v = (_v : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p256element.P256Element>);
        final _a = (_a : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p256element.P256Element>);
        final _b = (_b : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p256element.P256Element>);
        final _cond = (_cond : stdgo.GoInt);
        return stdgo._internal.crypto.internal.nistec.fiat.Fiat_p256element_static_extension.P256Element_static_extension.select(_v, _a, _b, _cond);
    }
    static public function square(_e:P256Element, _t:P256Element):P256Element {
        final _e = (_e : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p256element.P256Element>);
        final _t = (_t : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p256element.P256Element>);
        return stdgo._internal.crypto.internal.nistec.fiat.Fiat_p256element_static_extension.P256Element_static_extension.square(_e, _t);
    }
    static public function mul(_e:P256Element, _t1:P256Element, _t2:P256Element):P256Element {
        final _e = (_e : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p256element.P256Element>);
        final _t1 = (_t1 : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p256element.P256Element>);
        final _t2 = (_t2 : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p256element.P256Element>);
        return stdgo._internal.crypto.internal.nistec.fiat.Fiat_p256element_static_extension.P256Element_static_extension.mul(_e, _t1, _t2);
    }
    static public function sub(_e:P256Element, _t1:P256Element, _t2:P256Element):P256Element {
        final _e = (_e : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p256element.P256Element>);
        final _t1 = (_t1 : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p256element.P256Element>);
        final _t2 = (_t2 : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p256element.P256Element>);
        return stdgo._internal.crypto.internal.nistec.fiat.Fiat_p256element_static_extension.P256Element_static_extension.sub(_e, _t1, _t2);
    }
    static public function add(_e:P256Element, _t1:P256Element, _t2:P256Element):P256Element {
        final _e = (_e : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p256element.P256Element>);
        final _t1 = (_t1 : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p256element.P256Element>);
        final _t2 = (_t2 : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p256element.P256Element>);
        return stdgo._internal.crypto.internal.nistec.fiat.Fiat_p256element_static_extension.P256Element_static_extension.add(_e, _t1, _t2);
    }
    static public function setBytes(_e:P256Element, _v:Array<std.UInt>):stdgo.Tuple<P256Element, stdgo.Error> {
        final _e = (_e : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p256element.P256Element>);
        final _v = ([for (i in _v) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.crypto.internal.nistec.fiat.Fiat_p256element_static_extension.P256Element_static_extension.setBytes(_e, _v);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _bytes(_e:P256Element, _out:haxe.ds.Vector<std.UInt>):Array<std.UInt> {
        final _e = (_e : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p256element.P256Element>);
        final _out = (_out : stdgo.Ref<stdgo.GoArray<stdgo.GoUInt8>>);
        return [for (i in stdgo._internal.crypto.internal.nistec.fiat.Fiat_p256element_static_extension.P256Element_static_extension._bytes(_e, _out)) i];
    }
    static public function bytes(_e:P256Element):Array<std.UInt> {
        final _e = (_e : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p256element.P256Element>);
        return [for (i in stdgo._internal.crypto.internal.nistec.fiat.Fiat_p256element_static_extension.P256Element_static_extension.bytes(_e)) i];
    }
    static public function set(_e:P256Element, _t:P256Element):P256Element {
        final _e = (_e : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p256element.P256Element>);
        final _t = (_t : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p256element.P256Element>);
        return stdgo._internal.crypto.internal.nistec.fiat.Fiat_p256element_static_extension.P256Element_static_extension.set(_e, _t);
    }
    static public function isZero(_e:P256Element):StdTypes.Int {
        final _e = (_e : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p256element.P256Element>);
        return stdgo._internal.crypto.internal.nistec.fiat.Fiat_p256element_static_extension.P256Element_static_extension.isZero(_e);
    }
    static public function equal(_e:P256Element, _t:P256Element):StdTypes.Int {
        final _e = (_e : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p256element.P256Element>);
        final _t = (_t : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p256element.P256Element>);
        return stdgo._internal.crypto.internal.nistec.fiat.Fiat_p256element_static_extension.P256Element_static_extension.equal(_e, _t);
    }
    static public function one(_e:P256Element):P256Element {
        final _e = (_e : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p256element.P256Element>);
        return stdgo._internal.crypto.internal.nistec.fiat.Fiat_p256element_static_extension.P256Element_static_extension.one(_e);
    }
}
typedef P384ElementPointer = stdgo._internal.crypto.internal.nistec.fiat.Fiat_p384elementpointer.P384ElementPointer;
class P384Element_static_extension {
    static public function invert(_e:P384Element, _x:P384Element):P384Element {
        final _e = (_e : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p384element.P384Element>);
        final _x = (_x : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p384element.P384Element>);
        return stdgo._internal.crypto.internal.nistec.fiat.Fiat_p384element_static_extension.P384Element_static_extension.invert(_e, _x);
    }
    static public function select(_v:P384Element, _a:P384Element, _b:P384Element, _cond:StdTypes.Int):P384Element {
        final _v = (_v : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p384element.P384Element>);
        final _a = (_a : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p384element.P384Element>);
        final _b = (_b : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p384element.P384Element>);
        final _cond = (_cond : stdgo.GoInt);
        return stdgo._internal.crypto.internal.nistec.fiat.Fiat_p384element_static_extension.P384Element_static_extension.select(_v, _a, _b, _cond);
    }
    static public function square(_e:P384Element, _t:P384Element):P384Element {
        final _e = (_e : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p384element.P384Element>);
        final _t = (_t : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p384element.P384Element>);
        return stdgo._internal.crypto.internal.nistec.fiat.Fiat_p384element_static_extension.P384Element_static_extension.square(_e, _t);
    }
    static public function mul(_e:P384Element, _t1:P384Element, _t2:P384Element):P384Element {
        final _e = (_e : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p384element.P384Element>);
        final _t1 = (_t1 : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p384element.P384Element>);
        final _t2 = (_t2 : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p384element.P384Element>);
        return stdgo._internal.crypto.internal.nistec.fiat.Fiat_p384element_static_extension.P384Element_static_extension.mul(_e, _t1, _t2);
    }
    static public function sub(_e:P384Element, _t1:P384Element, _t2:P384Element):P384Element {
        final _e = (_e : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p384element.P384Element>);
        final _t1 = (_t1 : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p384element.P384Element>);
        final _t2 = (_t2 : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p384element.P384Element>);
        return stdgo._internal.crypto.internal.nistec.fiat.Fiat_p384element_static_extension.P384Element_static_extension.sub(_e, _t1, _t2);
    }
    static public function add(_e:P384Element, _t1:P384Element, _t2:P384Element):P384Element {
        final _e = (_e : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p384element.P384Element>);
        final _t1 = (_t1 : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p384element.P384Element>);
        final _t2 = (_t2 : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p384element.P384Element>);
        return stdgo._internal.crypto.internal.nistec.fiat.Fiat_p384element_static_extension.P384Element_static_extension.add(_e, _t1, _t2);
    }
    static public function setBytes(_e:P384Element, _v:Array<std.UInt>):stdgo.Tuple<P384Element, stdgo.Error> {
        final _e = (_e : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p384element.P384Element>);
        final _v = ([for (i in _v) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.crypto.internal.nistec.fiat.Fiat_p384element_static_extension.P384Element_static_extension.setBytes(_e, _v);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _bytes(_e:P384Element, _out:haxe.ds.Vector<std.UInt>):Array<std.UInt> {
        final _e = (_e : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p384element.P384Element>);
        final _out = (_out : stdgo.Ref<stdgo.GoArray<stdgo.GoUInt8>>);
        return [for (i in stdgo._internal.crypto.internal.nistec.fiat.Fiat_p384element_static_extension.P384Element_static_extension._bytes(_e, _out)) i];
    }
    static public function bytes(_e:P384Element):Array<std.UInt> {
        final _e = (_e : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p384element.P384Element>);
        return [for (i in stdgo._internal.crypto.internal.nistec.fiat.Fiat_p384element_static_extension.P384Element_static_extension.bytes(_e)) i];
    }
    static public function set(_e:P384Element, _t:P384Element):P384Element {
        final _e = (_e : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p384element.P384Element>);
        final _t = (_t : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p384element.P384Element>);
        return stdgo._internal.crypto.internal.nistec.fiat.Fiat_p384element_static_extension.P384Element_static_extension.set(_e, _t);
    }
    static public function isZero(_e:P384Element):StdTypes.Int {
        final _e = (_e : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p384element.P384Element>);
        return stdgo._internal.crypto.internal.nistec.fiat.Fiat_p384element_static_extension.P384Element_static_extension.isZero(_e);
    }
    static public function equal(_e:P384Element, _t:P384Element):StdTypes.Int {
        final _e = (_e : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p384element.P384Element>);
        final _t = (_t : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p384element.P384Element>);
        return stdgo._internal.crypto.internal.nistec.fiat.Fiat_p384element_static_extension.P384Element_static_extension.equal(_e, _t);
    }
    static public function one(_e:P384Element):P384Element {
        final _e = (_e : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p384element.P384Element>);
        return stdgo._internal.crypto.internal.nistec.fiat.Fiat_p384element_static_extension.P384Element_static_extension.one(_e);
    }
}
typedef P521ElementPointer = stdgo._internal.crypto.internal.nistec.fiat.Fiat_p521elementpointer.P521ElementPointer;
class P521Element_static_extension {
    static public function invert(_e:P521Element, _x:P521Element):P521Element {
        final _e = (_e : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p521element.P521Element>);
        final _x = (_x : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p521element.P521Element>);
        return stdgo._internal.crypto.internal.nistec.fiat.Fiat_p521element_static_extension.P521Element_static_extension.invert(_e, _x);
    }
    static public function select(_v:P521Element, _a:P521Element, _b:P521Element, _cond:StdTypes.Int):P521Element {
        final _v = (_v : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p521element.P521Element>);
        final _a = (_a : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p521element.P521Element>);
        final _b = (_b : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p521element.P521Element>);
        final _cond = (_cond : stdgo.GoInt);
        return stdgo._internal.crypto.internal.nistec.fiat.Fiat_p521element_static_extension.P521Element_static_extension.select(_v, _a, _b, _cond);
    }
    static public function square(_e:P521Element, _t:P521Element):P521Element {
        final _e = (_e : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p521element.P521Element>);
        final _t = (_t : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p521element.P521Element>);
        return stdgo._internal.crypto.internal.nistec.fiat.Fiat_p521element_static_extension.P521Element_static_extension.square(_e, _t);
    }
    static public function mul(_e:P521Element, _t1:P521Element, _t2:P521Element):P521Element {
        final _e = (_e : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p521element.P521Element>);
        final _t1 = (_t1 : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p521element.P521Element>);
        final _t2 = (_t2 : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p521element.P521Element>);
        return stdgo._internal.crypto.internal.nistec.fiat.Fiat_p521element_static_extension.P521Element_static_extension.mul(_e, _t1, _t2);
    }
    static public function sub(_e:P521Element, _t1:P521Element, _t2:P521Element):P521Element {
        final _e = (_e : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p521element.P521Element>);
        final _t1 = (_t1 : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p521element.P521Element>);
        final _t2 = (_t2 : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p521element.P521Element>);
        return stdgo._internal.crypto.internal.nistec.fiat.Fiat_p521element_static_extension.P521Element_static_extension.sub(_e, _t1, _t2);
    }
    static public function add(_e:P521Element, _t1:P521Element, _t2:P521Element):P521Element {
        final _e = (_e : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p521element.P521Element>);
        final _t1 = (_t1 : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p521element.P521Element>);
        final _t2 = (_t2 : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p521element.P521Element>);
        return stdgo._internal.crypto.internal.nistec.fiat.Fiat_p521element_static_extension.P521Element_static_extension.add(_e, _t1, _t2);
    }
    static public function setBytes(_e:P521Element, _v:Array<std.UInt>):stdgo.Tuple<P521Element, stdgo.Error> {
        final _e = (_e : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p521element.P521Element>);
        final _v = ([for (i in _v) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.crypto.internal.nistec.fiat.Fiat_p521element_static_extension.P521Element_static_extension.setBytes(_e, _v);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _bytes(_e:P521Element, _out:haxe.ds.Vector<std.UInt>):Array<std.UInt> {
        final _e = (_e : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p521element.P521Element>);
        final _out = (_out : stdgo.Ref<stdgo.GoArray<stdgo.GoUInt8>>);
        return [for (i in stdgo._internal.crypto.internal.nistec.fiat.Fiat_p521element_static_extension.P521Element_static_extension._bytes(_e, _out)) i];
    }
    static public function bytes(_e:P521Element):Array<std.UInt> {
        final _e = (_e : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p521element.P521Element>);
        return [for (i in stdgo._internal.crypto.internal.nistec.fiat.Fiat_p521element_static_extension.P521Element_static_extension.bytes(_e)) i];
    }
    static public function set(_e:P521Element, _t:P521Element):P521Element {
        final _e = (_e : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p521element.P521Element>);
        final _t = (_t : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p521element.P521Element>);
        return stdgo._internal.crypto.internal.nistec.fiat.Fiat_p521element_static_extension.P521Element_static_extension.set(_e, _t);
    }
    static public function isZero(_e:P521Element):StdTypes.Int {
        final _e = (_e : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p521element.P521Element>);
        return stdgo._internal.crypto.internal.nistec.fiat.Fiat_p521element_static_extension.P521Element_static_extension.isZero(_e);
    }
    static public function equal(_e:P521Element, _t:P521Element):StdTypes.Int {
        final _e = (_e : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p521element.P521Element>);
        final _t = (_t : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p521element.P521Element>);
        return stdgo._internal.crypto.internal.nistec.fiat.Fiat_p521element_static_extension.P521Element_static_extension.equal(_e, _t);
    }
    static public function one(_e:P521Element):P521Element {
        final _e = (_e : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p521element.P521Element>);
        return stdgo._internal.crypto.internal.nistec.fiat.Fiat_p521element_static_extension.P521Element_static_extension.one(_e);
    }
}
@:dox(hide) typedef T_p224UntypedFieldElementPointer = stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p224untypedfieldelementpointer.T_p224UntypedFieldElementPointer;
@:dox(hide) class T_p224UntypedFieldElement_static_extension {

}
@:dox(hide) typedef T_p224Uint1Pointer = stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p224uint1pointer.T_p224Uint1Pointer;
@:dox(hide) class T_p224Uint1_static_extension {

}
@:dox(hide) typedef T_p224Int1Pointer = stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p224int1pointer.T_p224Int1Pointer;
@:dox(hide) class T_p224Int1_static_extension {

}
@:dox(hide) typedef T_p224MontgomeryDomainFieldElementPointer = stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p224montgomerydomainfieldelementpointer.T_p224MontgomeryDomainFieldElementPointer;
@:dox(hide) class T_p224MontgomeryDomainFieldElement_static_extension {

}
@:dox(hide) typedef T_p224NonMontgomeryDomainFieldElementPointer = stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p224nonmontgomerydomainfieldelementpointer.T_p224NonMontgomeryDomainFieldElementPointer;
@:dox(hide) class T_p224NonMontgomeryDomainFieldElement_static_extension {

}
@:dox(hide) typedef T_p256UntypedFieldElementPointer = stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p256untypedfieldelementpointer.T_p256UntypedFieldElementPointer;
@:dox(hide) class T_p256UntypedFieldElement_static_extension {

}
@:dox(hide) typedef T_p256Uint1Pointer = stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p256uint1pointer.T_p256Uint1Pointer;
@:dox(hide) class T_p256Uint1_static_extension {

}
@:dox(hide) typedef T_p256Int1Pointer = stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p256int1pointer.T_p256Int1Pointer;
@:dox(hide) class T_p256Int1_static_extension {

}
@:dox(hide) typedef T_p256MontgomeryDomainFieldElementPointer = stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p256montgomerydomainfieldelementpointer.T_p256MontgomeryDomainFieldElementPointer;
@:dox(hide) class T_p256MontgomeryDomainFieldElement_static_extension {

}
@:dox(hide) typedef T_p256NonMontgomeryDomainFieldElementPointer = stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p256nonmontgomerydomainfieldelementpointer.T_p256NonMontgomeryDomainFieldElementPointer;
@:dox(hide) class T_p256NonMontgomeryDomainFieldElement_static_extension {

}
@:dox(hide) typedef T_p384UntypedFieldElementPointer = stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p384untypedfieldelementpointer.T_p384UntypedFieldElementPointer;
@:dox(hide) class T_p384UntypedFieldElement_static_extension {

}
@:dox(hide) typedef T_p384Uint1Pointer = stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p384uint1pointer.T_p384Uint1Pointer;
@:dox(hide) class T_p384Uint1_static_extension {

}
@:dox(hide) typedef T_p384Int1Pointer = stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p384int1pointer.T_p384Int1Pointer;
@:dox(hide) class T_p384Int1_static_extension {

}
@:dox(hide) typedef T_p384MontgomeryDomainFieldElementPointer = stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p384montgomerydomainfieldelementpointer.T_p384MontgomeryDomainFieldElementPointer;
@:dox(hide) class T_p384MontgomeryDomainFieldElement_static_extension {

}
@:dox(hide) typedef T_p384NonMontgomeryDomainFieldElementPointer = stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p384nonmontgomerydomainfieldelementpointer.T_p384NonMontgomeryDomainFieldElementPointer;
@:dox(hide) class T_p384NonMontgomeryDomainFieldElement_static_extension {

}
@:dox(hide) typedef T_p521UntypedFieldElementPointer = stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521untypedfieldelementpointer.T_p521UntypedFieldElementPointer;
@:dox(hide) class T_p521UntypedFieldElement_static_extension {

}
@:dox(hide) typedef T_p521Uint1Pointer = stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1pointer.T_p521Uint1Pointer;
@:dox(hide) class T_p521Uint1_static_extension {

}
@:dox(hide) typedef T_p521Int1Pointer = stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521int1pointer.T_p521Int1Pointer;
@:dox(hide) class T_p521Int1_static_extension {

}
@:dox(hide) typedef T_p521MontgomeryDomainFieldElementPointer = stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521montgomerydomainfieldelementpointer.T_p521MontgomeryDomainFieldElementPointer;
@:dox(hide) class T_p521MontgomeryDomainFieldElement_static_extension {

}
@:dox(hide) typedef T_p521NonMontgomeryDomainFieldElementPointer = stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521nonmontgomerydomainfieldelementpointer.T_p521NonMontgomeryDomainFieldElementPointer;
@:dox(hide) class T_p521NonMontgomeryDomainFieldElement_static_extension {

}
class Fiat {

}
