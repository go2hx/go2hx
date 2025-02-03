package stdgo.encoding.binary;
@:structInit @:using(stdgo.encoding.binary.Binary.BlankFields_static_extension) abstract BlankFields(stdgo._internal.encoding.binary.Binary_BlankFields.BlankFields) from stdgo._internal.encoding.binary.Binary_BlankFields.BlankFields to stdgo._internal.encoding.binary.Binary_BlankFields.BlankFields {
    public var a(get, set) : std.UInt;
    function get_a():std.UInt return this.a;
    function set_a(v:std.UInt):std.UInt {
        this.a = (v : stdgo.GoUInt32);
        return v;
    }
    public var __4(get, set) : StdTypes.Int;
    function get___4():StdTypes.Int return this.__4;
    function set___4(v:StdTypes.Int):StdTypes.Int {
        this.__4 = (v : stdgo.GoInt32);
        return v;
    }
    public var b(get, set) : StdTypes.Float;
    function get_b():StdTypes.Float return this.b;
    function set_b(v:StdTypes.Float):StdTypes.Float {
        this.b = (v : stdgo.GoFloat64);
        return v;
    }
    public var __5(get, set) : haxe.ds.Vector<StdTypes.Int>;
    function get___5():haxe.ds.Vector<StdTypes.Int> return haxe.ds.Vector.fromArrayCopy([for (i in this.__5) i]);
    function set___5(v:haxe.ds.Vector<StdTypes.Int>):haxe.ds.Vector<StdTypes.Int> {
        this.__5 = ([for (i in v) (i : stdgo.GoInt16)] : stdgo.GoArray<stdgo.GoInt16>);
        return v;
    }
    public var c(get, set) : std.UInt;
    function get_c():std.UInt return this.c;
    function set_c(v:std.UInt):std.UInt {
        this.c = (v : stdgo.GoUInt8);
        return v;
    }
    public var __6(get, set) : haxe.ds.Vector<std.UInt>;
    function get___6():haxe.ds.Vector<std.UInt> return haxe.ds.Vector.fromArrayCopy([for (i in this.__6) i]);
    function set___6(v:haxe.ds.Vector<std.UInt>):haxe.ds.Vector<std.UInt> {
        this.__6 = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.GoArray<stdgo.GoUInt8>);
        return v;
    }
    public var __7(get, set) : stdgo.Tuple.Tuple1<haxe.ds.Vector<StdTypes.Float>>;
    function get___7():stdgo.Tuple.Tuple1<haxe.ds.Vector<StdTypes.Float>> return {
        final obj = this.__7;
        { _f : haxe.ds.Vector.fromArrayCopy([for (i in obj._f) i]) };
    };
    function set___7(v:stdgo.Tuple.Tuple1<haxe.ds.Vector<StdTypes.Float>>):stdgo.Tuple.Tuple1<haxe.ds.Vector<StdTypes.Float>> {
        this.__7 = {
            final obj = v;
            { _f : ([for (i in obj._f) (i : stdgo.GoFloat32)] : stdgo.GoArray<stdgo.GoFloat32>) };
        };
        return v;
    }
    public function new(?a:std.UInt, ?__4:StdTypes.Int, ?b:StdTypes.Float, ?__5:haxe.ds.Vector<StdTypes.Int>, ?c:std.UInt, ?__6:haxe.ds.Vector<std.UInt>, ?__7:stdgo.Tuple.Tuple1<haxe.ds.Vector<StdTypes.Float>>) this = new stdgo._internal.encoding.binary.Binary_BlankFields.BlankFields((a : stdgo.GoUInt32), (__4 : stdgo.GoInt32), (b : stdgo.GoFloat64), ([for (i in __5) (i : stdgo.GoInt16)] : stdgo.GoArray<stdgo.GoInt16>), (c : stdgo.GoUInt8), ([for (i in __6) (i : stdgo.GoUInt8)] : stdgo.GoArray<stdgo.GoUInt8>), {
        final obj = __7;
        { _f : ([for (i in obj._f) (i : stdgo.GoFloat32)] : stdgo.GoArray<stdgo.GoFloat32>) };
    });
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
