package stdgo.crypto.internal.edwards25519.field;
@:structInit @:using(stdgo.crypto.internal.edwards25519.field.Field.Element_static_extension) abstract Element(stdgo._internal.crypto.internal.edwards25519.field.Field_Element.Element) from stdgo._internal.crypto.internal.edwards25519.field.Field_Element.Element to stdgo._internal.crypto.internal.edwards25519.field.Field_Element.Element {
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
    public function new(?_l0:haxe.UInt64, ?_l1:haxe.UInt64, ?_l2:haxe.UInt64, ?_l3:haxe.UInt64, ?_l4:haxe.UInt64) this = new stdgo._internal.crypto.internal.edwards25519.field.Field_Element.Element((_l0 : stdgo.GoUInt64), (_l1 : stdgo.GoUInt64), (_l2 : stdgo.GoUInt64), (_l3 : stdgo.GoUInt64), (_l4 : stdgo.GoUInt64));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
