package stdgo.crypto.internal.nistec.fiat;
class P224Element_static_extension {
    static public function invert(_e:P224Element, _x:P224Element):P224Element {
        final _e = (_e : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_P224Element.P224Element>);
        final _x = (_x : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_P224Element.P224Element>);
        return stdgo._internal.crypto.internal.nistec.fiat.Fiat_P224Element_static_extension.P224Element_static_extension.invert(_e, _x);
    }
    static public function select(_v:P224Element, _a:P224Element, _b:P224Element, _cond:StdTypes.Int):P224Element {
        final _v = (_v : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_P224Element.P224Element>);
        final _a = (_a : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_P224Element.P224Element>);
        final _b = (_b : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_P224Element.P224Element>);
        final _cond = (_cond : stdgo.GoInt);
        return stdgo._internal.crypto.internal.nistec.fiat.Fiat_P224Element_static_extension.P224Element_static_extension.select(_v, _a, _b, _cond);
    }
    static public function square(_e:P224Element, _t:P224Element):P224Element {
        final _e = (_e : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_P224Element.P224Element>);
        final _t = (_t : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_P224Element.P224Element>);
        return stdgo._internal.crypto.internal.nistec.fiat.Fiat_P224Element_static_extension.P224Element_static_extension.square(_e, _t);
    }
    static public function mul(_e:P224Element, _t1:P224Element, _t2:P224Element):P224Element {
        final _e = (_e : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_P224Element.P224Element>);
        final _t1 = (_t1 : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_P224Element.P224Element>);
        final _t2 = (_t2 : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_P224Element.P224Element>);
        return stdgo._internal.crypto.internal.nistec.fiat.Fiat_P224Element_static_extension.P224Element_static_extension.mul(_e, _t1, _t2);
    }
    static public function sub(_e:P224Element, _t1:P224Element, _t2:P224Element):P224Element {
        final _e = (_e : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_P224Element.P224Element>);
        final _t1 = (_t1 : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_P224Element.P224Element>);
        final _t2 = (_t2 : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_P224Element.P224Element>);
        return stdgo._internal.crypto.internal.nistec.fiat.Fiat_P224Element_static_extension.P224Element_static_extension.sub(_e, _t1, _t2);
    }
    static public function add(_e:P224Element, _t1:P224Element, _t2:P224Element):P224Element {
        final _e = (_e : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_P224Element.P224Element>);
        final _t1 = (_t1 : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_P224Element.P224Element>);
        final _t2 = (_t2 : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_P224Element.P224Element>);
        return stdgo._internal.crypto.internal.nistec.fiat.Fiat_P224Element_static_extension.P224Element_static_extension.add(_e, _t1, _t2);
    }
    static public function setBytes(_e:P224Element, _v:Array<std.UInt>):stdgo.Tuple<P224Element, stdgo.Error> {
        final _e = (_e : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_P224Element.P224Element>);
        final _v = ([for (i in _v) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.crypto.internal.nistec.fiat.Fiat_P224Element_static_extension.P224Element_static_extension.setBytes(_e, _v);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _bytes(_e:P224Element, _out:haxe.ds.Vector<std.UInt>):Array<std.UInt> {
        final _e = (_e : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_P224Element.P224Element>);
        final _out = (_out : stdgo.Ref<stdgo.GoArray<stdgo.GoUInt8>>);
        return [for (i in stdgo._internal.crypto.internal.nistec.fiat.Fiat_P224Element_static_extension.P224Element_static_extension._bytes(_e, _out)) i];
    }
    static public function bytes(_e:P224Element):Array<std.UInt> {
        final _e = (_e : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_P224Element.P224Element>);
        return [for (i in stdgo._internal.crypto.internal.nistec.fiat.Fiat_P224Element_static_extension.P224Element_static_extension.bytes(_e)) i];
    }
    static public function set(_e:P224Element, _t:P224Element):P224Element {
        final _e = (_e : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_P224Element.P224Element>);
        final _t = (_t : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_P224Element.P224Element>);
        return stdgo._internal.crypto.internal.nistec.fiat.Fiat_P224Element_static_extension.P224Element_static_extension.set(_e, _t);
    }
    static public function isZero(_e:P224Element):StdTypes.Int {
        final _e = (_e : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_P224Element.P224Element>);
        return stdgo._internal.crypto.internal.nistec.fiat.Fiat_P224Element_static_extension.P224Element_static_extension.isZero(_e);
    }
    static public function equal(_e:P224Element, _t:P224Element):StdTypes.Int {
        final _e = (_e : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_P224Element.P224Element>);
        final _t = (_t : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_P224Element.P224Element>);
        return stdgo._internal.crypto.internal.nistec.fiat.Fiat_P224Element_static_extension.P224Element_static_extension.equal(_e, _t);
    }
    static public function one(_e:P224Element):P224Element {
        final _e = (_e : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_P224Element.P224Element>);
        return stdgo._internal.crypto.internal.nistec.fiat.Fiat_P224Element_static_extension.P224Element_static_extension.one(_e);
    }
}
