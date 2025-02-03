package stdgo.crypto.internal.edwards25519.field;
class Element_static_extension {
    static public function _carryPropagateGeneric(_v:Element):Element {
        final _v = (_v : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_Element.Element>);
        return stdgo._internal.crypto.internal.edwards25519.field.Field_Element_static_extension.Element_static_extension._carryPropagateGeneric(_v);
    }
    static public function _carryPropagate(_v:Element):Element {
        final _v = (_v : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_Element.Element>);
        return stdgo._internal.crypto.internal.edwards25519.field.Field_Element_static_extension.Element_static_extension._carryPropagate(_v);
    }
    static public function sqrtRatio(_r:Element, _u:Element, _v:Element):stdgo.Tuple<Element, StdTypes.Int> {
        final _r = (_r : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_Element.Element>);
        final _u = (_u : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_Element.Element>);
        final _v = (_v : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_Element.Element>);
        return {
            final obj = stdgo._internal.crypto.internal.edwards25519.field.Field_Element_static_extension.Element_static_extension.sqrtRatio(_r, _u, _v);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function pow22523(_v:Element, _x:Element):Element {
        final _v = (_v : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_Element.Element>);
        final _x = (_x : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_Element.Element>);
        return stdgo._internal.crypto.internal.edwards25519.field.Field_Element_static_extension.Element_static_extension.pow22523(_v, _x);
    }
    static public function mult32(_v:Element, _x:Element, _y:std.UInt):Element {
        final _v = (_v : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_Element.Element>);
        final _x = (_x : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_Element.Element>);
        final _y = (_y : stdgo.GoUInt32);
        return stdgo._internal.crypto.internal.edwards25519.field.Field_Element_static_extension.Element_static_extension.mult32(_v, _x, _y);
    }
    static public function square(_v:Element, _x:Element):Element {
        final _v = (_v : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_Element.Element>);
        final _x = (_x : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_Element.Element>);
        return stdgo._internal.crypto.internal.edwards25519.field.Field_Element_static_extension.Element_static_extension.square(_v, _x);
    }
    static public function multiply(_v:Element, _x:Element, _y:Element):Element {
        final _v = (_v : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_Element.Element>);
        final _x = (_x : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_Element.Element>);
        final _y = (_y : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_Element.Element>);
        return stdgo._internal.crypto.internal.edwards25519.field.Field_Element_static_extension.Element_static_extension.multiply(_v, _x, _y);
    }
    static public function absolute(_v:Element, _u:Element):Element {
        final _v = (_v : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_Element.Element>);
        final _u = (_u : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_Element.Element>);
        return stdgo._internal.crypto.internal.edwards25519.field.Field_Element_static_extension.Element_static_extension.absolute(_v, _u);
    }
    static public function isNegative(_v:Element):StdTypes.Int {
        final _v = (_v : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_Element.Element>);
        return stdgo._internal.crypto.internal.edwards25519.field.Field_Element_static_extension.Element_static_extension.isNegative(_v);
    }
    static public function swap(_v:Element, _u:Element, _cond:StdTypes.Int):Void {
        final _v = (_v : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_Element.Element>);
        final _u = (_u : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_Element.Element>);
        final _cond = (_cond : stdgo.GoInt);
        stdgo._internal.crypto.internal.edwards25519.field.Field_Element_static_extension.Element_static_extension.swap(_v, _u, _cond);
    }
    static public function select(_v:Element, _a:Element, _b:Element, _cond:StdTypes.Int):Element {
        final _v = (_v : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_Element.Element>);
        final _a = (_a : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_Element.Element>);
        final _b = (_b : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_Element.Element>);
        final _cond = (_cond : stdgo.GoInt);
        return stdgo._internal.crypto.internal.edwards25519.field.Field_Element_static_extension.Element_static_extension.select(_v, _a, _b, _cond);
    }
    static public function equal(_v:Element, _u:Element):StdTypes.Int {
        final _v = (_v : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_Element.Element>);
        final _u = (_u : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_Element.Element>);
        return stdgo._internal.crypto.internal.edwards25519.field.Field_Element_static_extension.Element_static_extension.equal(_v, _u);
    }
    static public function _bytes(_v:Element, _out:haxe.ds.Vector<std.UInt>):Array<std.UInt> {
        final _v = (_v : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_Element.Element>);
        final _out = (_out : stdgo.Ref<stdgo.GoArray<stdgo.GoUInt8>>);
        return [for (i in stdgo._internal.crypto.internal.edwards25519.field.Field_Element_static_extension.Element_static_extension._bytes(_v, _out)) i];
    }
    static public function bytes(_v:Element):Array<std.UInt> {
        final _v = (_v : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_Element.Element>);
        return [for (i in stdgo._internal.crypto.internal.edwards25519.field.Field_Element_static_extension.Element_static_extension.bytes(_v)) i];
    }
    static public function setBytes(_v:Element, _x:Array<std.UInt>):stdgo.Tuple<Element, stdgo.Error> {
        final _v = (_v : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_Element.Element>);
        final _x = ([for (i in _x) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.crypto.internal.edwards25519.field.Field_Element_static_extension.Element_static_extension.setBytes(_v, _x);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function set(_v:Element, _a:Element):Element {
        final _v = (_v : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_Element.Element>);
        final _a = (_a : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_Element.Element>);
        return stdgo._internal.crypto.internal.edwards25519.field.Field_Element_static_extension.Element_static_extension.set(_v, _a);
    }
    static public function invert(_v:Element, _z:Element):Element {
        final _v = (_v : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_Element.Element>);
        final _z = (_z : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_Element.Element>);
        return stdgo._internal.crypto.internal.edwards25519.field.Field_Element_static_extension.Element_static_extension.invert(_v, _z);
    }
    static public function negate(_v:Element, _a:Element):Element {
        final _v = (_v : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_Element.Element>);
        final _a = (_a : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_Element.Element>);
        return stdgo._internal.crypto.internal.edwards25519.field.Field_Element_static_extension.Element_static_extension.negate(_v, _a);
    }
    static public function subtract(_v:Element, _a:Element, _b:Element):Element {
        final _v = (_v : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_Element.Element>);
        final _a = (_a : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_Element.Element>);
        final _b = (_b : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_Element.Element>);
        return stdgo._internal.crypto.internal.edwards25519.field.Field_Element_static_extension.Element_static_extension.subtract(_v, _a, _b);
    }
    static public function add(_v:Element, _a:Element, _b:Element):Element {
        final _v = (_v : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_Element.Element>);
        final _a = (_a : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_Element.Element>);
        final _b = (_b : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_Element.Element>);
        return stdgo._internal.crypto.internal.edwards25519.field.Field_Element_static_extension.Element_static_extension.add(_v, _a, _b);
    }
    static public function _reduce(_v:Element):Element {
        final _v = (_v : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_Element.Element>);
        return stdgo._internal.crypto.internal.edwards25519.field.Field_Element_static_extension.Element_static_extension._reduce(_v);
    }
    static public function one(_v:Element):Element {
        final _v = (_v : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_Element.Element>);
        return stdgo._internal.crypto.internal.edwards25519.field.Field_Element_static_extension.Element_static_extension.one(_v);
    }
    static public function zero(_v:Element):Element {
        final _v = (_v : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_Element.Element>);
        return stdgo._internal.crypto.internal.edwards25519.field.Field_Element_static_extension.Element_static_extension.zero(_v);
    }
}
