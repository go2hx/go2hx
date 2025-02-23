package stdgo.crypto.internal.edwards25519.field;
@:structInit @:using(stdgo.crypto.internal.edwards25519.field.Field.Element_static_extension) abstract Element(stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element) from stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element to stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element {
    public var _l0(get, set) : haxe.UInt64;
    function get__l0():haxe.UInt64 return this._l0;
    function set__l0(v:haxe.UInt64):haxe.UInt64 {
        this._l0 = (v : stdgo.GoUInt64);
        return v;
    }
    public var _l1(get, set) : haxe.UInt64;
    function get__l1():haxe.UInt64 return this._l1;
    function set__l1(v:haxe.UInt64):haxe.UInt64 {
        this._l1 = (v : stdgo.GoUInt64);
        return v;
    }
    public var _l2(get, set) : haxe.UInt64;
    function get__l2():haxe.UInt64 return this._l2;
    function set__l2(v:haxe.UInt64):haxe.UInt64 {
        this._l2 = (v : stdgo.GoUInt64);
        return v;
    }
    public var _l3(get, set) : haxe.UInt64;
    function get__l3():haxe.UInt64 return this._l3;
    function set__l3(v:haxe.UInt64):haxe.UInt64 {
        this._l3 = (v : stdgo.GoUInt64);
        return v;
    }
    public var _l4(get, set) : haxe.UInt64;
    function get__l4():haxe.UInt64 return this._l4;
    function set__l4(v:haxe.UInt64):haxe.UInt64 {
        this._l4 = (v : stdgo.GoUInt64);
        return v;
    }
    public function new(?_l0:haxe.UInt64, ?_l1:haxe.UInt64, ?_l2:haxe.UInt64, ?_l3:haxe.UInt64, ?_l4:haxe.UInt64) this = new stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element((_l0 : stdgo.GoUInt64), (_l1 : stdgo.GoUInt64), (_l2 : stdgo.GoUInt64), (_l3 : stdgo.GoUInt64), (_l4 : stdgo.GoUInt64));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.crypto.internal.edwards25519.field.Field.T_uint128_static_extension) @:dox(hide) abstract T_uint128(stdgo._internal.crypto.internal.edwards25519.field.Field_t_uint128.T_uint128) from stdgo._internal.crypto.internal.edwards25519.field.Field_t_uint128.T_uint128 to stdgo._internal.crypto.internal.edwards25519.field.Field_t_uint128.T_uint128 {
    public var _lo(get, set) : haxe.UInt64;
    function get__lo():haxe.UInt64 return this._lo;
    function set__lo(v:haxe.UInt64):haxe.UInt64 {
        this._lo = (v : stdgo.GoUInt64);
        return v;
    }
    public var _hi(get, set) : haxe.UInt64;
    function get__hi():haxe.UInt64 return this._hi;
    function set__hi(v:haxe.UInt64):haxe.UInt64 {
        this._hi = (v : stdgo.GoUInt64);
        return v;
    }
    public function new(?_lo:haxe.UInt64, ?_hi:haxe.UInt64) this = new stdgo._internal.crypto.internal.edwards25519.field.Field_t_uint128.T_uint128((_lo : stdgo.GoUInt64), (_hi : stdgo.GoUInt64));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
typedef ElementPointer = stdgo._internal.crypto.internal.edwards25519.field.Field_elementpointer.ElementPointer;
class Element_static_extension {
    static public function _carryPropagateGeneric(_v:Element):Element {
        final _v = (_v : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>);
        return stdgo._internal.crypto.internal.edwards25519.field.Field_element_static_extension.Element_static_extension._carryPropagateGeneric(_v);
    }
    static public function _carryPropagate(_v:Element):Element {
        final _v = (_v : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>);
        return stdgo._internal.crypto.internal.edwards25519.field.Field_element_static_extension.Element_static_extension._carryPropagate(_v);
    }
    static public function sqrtRatio(_r:Element, _u:Element, _v:Element):stdgo.Tuple<Element, StdTypes.Int> {
        final _r = (_r : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>);
        final _u = (_u : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>);
        final _v = (_v : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>);
        return {
            final obj = stdgo._internal.crypto.internal.edwards25519.field.Field_element_static_extension.Element_static_extension.sqrtRatio(_r, _u, _v);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function pow22523(_v:Element, _x:Element):Element {
        final _v = (_v : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>);
        final _x = (_x : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>);
        return stdgo._internal.crypto.internal.edwards25519.field.Field_element_static_extension.Element_static_extension.pow22523(_v, _x);
    }
    static public function mult32(_v:Element, _x:Element, _y:std.UInt):Element {
        final _v = (_v : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>);
        final _x = (_x : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>);
        final _y = (_y : stdgo.GoUInt32);
        return stdgo._internal.crypto.internal.edwards25519.field.Field_element_static_extension.Element_static_extension.mult32(_v, _x, _y);
    }
    static public function square(_v:Element, _x:Element):Element {
        final _v = (_v : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>);
        final _x = (_x : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>);
        return stdgo._internal.crypto.internal.edwards25519.field.Field_element_static_extension.Element_static_extension.square(_v, _x);
    }
    static public function multiply(_v:Element, _x:Element, _y:Element):Element {
        final _v = (_v : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>);
        final _x = (_x : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>);
        final _y = (_y : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>);
        return stdgo._internal.crypto.internal.edwards25519.field.Field_element_static_extension.Element_static_extension.multiply(_v, _x, _y);
    }
    static public function absolute(_v:Element, _u:Element):Element {
        final _v = (_v : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>);
        final _u = (_u : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>);
        return stdgo._internal.crypto.internal.edwards25519.field.Field_element_static_extension.Element_static_extension.absolute(_v, _u);
    }
    static public function isNegative(_v:Element):StdTypes.Int {
        final _v = (_v : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>);
        return stdgo._internal.crypto.internal.edwards25519.field.Field_element_static_extension.Element_static_extension.isNegative(_v);
    }
    static public function swap(_v:Element, _u:Element, _cond:StdTypes.Int):Void {
        final _v = (_v : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>);
        final _u = (_u : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>);
        final _cond = (_cond : stdgo.GoInt);
        stdgo._internal.crypto.internal.edwards25519.field.Field_element_static_extension.Element_static_extension.swap(_v, _u, _cond);
    }
    static public function select(_v:Element, _a:Element, _b:Element, _cond:StdTypes.Int):Element {
        final _v = (_v : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>);
        final _a = (_a : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>);
        final _b = (_b : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>);
        final _cond = (_cond : stdgo.GoInt);
        return stdgo._internal.crypto.internal.edwards25519.field.Field_element_static_extension.Element_static_extension.select(_v, _a, _b, _cond);
    }
    static public function equal(_v:Element, _u:Element):StdTypes.Int {
        final _v = (_v : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>);
        final _u = (_u : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>);
        return stdgo._internal.crypto.internal.edwards25519.field.Field_element_static_extension.Element_static_extension.equal(_v, _u);
    }
    static public function _bytes(_v:Element, _out:haxe.ds.Vector<std.UInt>):Array<std.UInt> {
        final _v = (_v : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>);
        final _out = (_out : stdgo.Ref<stdgo.GoArray<stdgo.GoUInt8>>);
        return [for (i in stdgo._internal.crypto.internal.edwards25519.field.Field_element_static_extension.Element_static_extension._bytes(_v, _out)) i];
    }
    static public function bytes(_v:Element):Array<std.UInt> {
        final _v = (_v : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>);
        return [for (i in stdgo._internal.crypto.internal.edwards25519.field.Field_element_static_extension.Element_static_extension.bytes(_v)) i];
    }
    static public function setBytes(_v:Element, _x:Array<std.UInt>):stdgo.Tuple<Element, stdgo.Error> {
        final _v = (_v : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>);
        final _x = ([for (i in _x) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.crypto.internal.edwards25519.field.Field_element_static_extension.Element_static_extension.setBytes(_v, _x);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function set(_v:Element, _a:Element):Element {
        final _v = (_v : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>);
        final _a = (_a : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>);
        return stdgo._internal.crypto.internal.edwards25519.field.Field_element_static_extension.Element_static_extension.set(_v, _a);
    }
    static public function invert(_v:Element, _z:Element):Element {
        final _v = (_v : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>);
        final _z = (_z : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>);
        return stdgo._internal.crypto.internal.edwards25519.field.Field_element_static_extension.Element_static_extension.invert(_v, _z);
    }
    static public function negate(_v:Element, _a:Element):Element {
        final _v = (_v : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>);
        final _a = (_a : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>);
        return stdgo._internal.crypto.internal.edwards25519.field.Field_element_static_extension.Element_static_extension.negate(_v, _a);
    }
    static public function subtract(_v:Element, _a:Element, _b:Element):Element {
        final _v = (_v : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>);
        final _a = (_a : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>);
        final _b = (_b : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>);
        return stdgo._internal.crypto.internal.edwards25519.field.Field_element_static_extension.Element_static_extension.subtract(_v, _a, _b);
    }
    static public function add(_v:Element, _a:Element, _b:Element):Element {
        final _v = (_v : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>);
        final _a = (_a : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>);
        final _b = (_b : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>);
        return stdgo._internal.crypto.internal.edwards25519.field.Field_element_static_extension.Element_static_extension.add(_v, _a, _b);
    }
    static public function _reduce(_v:Element):Element {
        final _v = (_v : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>);
        return stdgo._internal.crypto.internal.edwards25519.field.Field_element_static_extension.Element_static_extension._reduce(_v);
    }
    static public function one(_v:Element):Element {
        final _v = (_v : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>);
        return stdgo._internal.crypto.internal.edwards25519.field.Field_element_static_extension.Element_static_extension.one(_v);
    }
    static public function zero(_v:Element):Element {
        final _v = (_v : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>);
        return stdgo._internal.crypto.internal.edwards25519.field.Field_element_static_extension.Element_static_extension.zero(_v);
    }
}
@:dox(hide) typedef T_uint128Pointer = stdgo._internal.crypto.internal.edwards25519.field.Field_t_uint128pointer.T_uint128Pointer;
@:dox(hide) class T_uint128_static_extension {

}
/**
    * Package field implements fast arithmetic modulo 2^255-19.
**/
class Field {

}
