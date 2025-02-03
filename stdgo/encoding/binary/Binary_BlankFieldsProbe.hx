package stdgo.encoding.binary;
@:structInit @:using(stdgo.encoding.binary.Binary.BlankFieldsProbe_static_extension) abstract BlankFieldsProbe(stdgo._internal.encoding.binary.Binary_BlankFieldsProbe.BlankFieldsProbe) from stdgo._internal.encoding.binary.Binary_BlankFieldsProbe.BlankFieldsProbe to stdgo._internal.encoding.binary.Binary_BlankFieldsProbe.BlankFieldsProbe {
    public var a(get, set) : std.UInt;
    function get_a():std.UInt return this.a;
    function set_a(v:std.UInt):std.UInt {
        this.a = (v : stdgo.GoUInt32);
        return v;
    }
    public var p0(get, set) : StdTypes.Int;
    function get_p0():StdTypes.Int return this.p0;
    function set_p0(v:StdTypes.Int):StdTypes.Int {
        this.p0 = (v : stdgo.GoInt32);
        return v;
    }
    public var b(get, set) : StdTypes.Float;
    function get_b():StdTypes.Float return this.b;
    function set_b(v:StdTypes.Float):StdTypes.Float {
        this.b = (v : stdgo.GoFloat64);
        return v;
    }
    public var p1(get, set) : haxe.ds.Vector<StdTypes.Int>;
    function get_p1():haxe.ds.Vector<StdTypes.Int> return haxe.ds.Vector.fromArrayCopy([for (i in this.p1) i]);
    function set_p1(v:haxe.ds.Vector<StdTypes.Int>):haxe.ds.Vector<StdTypes.Int> {
        this.p1 = ([for (i in v) (i : stdgo.GoInt16)] : stdgo.GoArray<stdgo.GoInt16>);
        return v;
    }
    public var c(get, set) : std.UInt;
    function get_c():std.UInt return this.c;
    function set_c(v:std.UInt):std.UInt {
        this.c = (v : stdgo.GoUInt8);
        return v;
    }
    public var p2(get, set) : haxe.ds.Vector<std.UInt>;
    function get_p2():haxe.ds.Vector<std.UInt> return haxe.ds.Vector.fromArrayCopy([for (i in this.p2) i]);
    function set_p2(v:haxe.ds.Vector<std.UInt>):haxe.ds.Vector<std.UInt> {
        this.p2 = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.GoArray<stdgo.GoUInt8>);
        return v;
    }
    public var p3(get, set) : stdgo.Tuple.Tuple1<haxe.ds.Vector<StdTypes.Float>>;
    function get_p3():stdgo.Tuple.Tuple1<haxe.ds.Vector<StdTypes.Float>> return {
        final obj = this.p3;
        { f : haxe.ds.Vector.fromArrayCopy([for (i in obj.f) i]) };
    };
    function set_p3(v:stdgo.Tuple.Tuple1<haxe.ds.Vector<StdTypes.Float>>):stdgo.Tuple.Tuple1<haxe.ds.Vector<StdTypes.Float>> {
        this.p3 = {
            final obj = v;
            { f : ([for (i in obj.f) (i : stdgo.GoFloat32)] : stdgo.GoArray<stdgo.GoFloat32>) };
        };
        return v;
    }
    public function new(?a:std.UInt, ?p0:StdTypes.Int, ?b:StdTypes.Float, ?p1:haxe.ds.Vector<StdTypes.Int>, ?c:std.UInt, ?p2:haxe.ds.Vector<std.UInt>, ?p3:stdgo.Tuple.Tuple1<haxe.ds.Vector<StdTypes.Float>>) this = new stdgo._internal.encoding.binary.Binary_BlankFieldsProbe.BlankFieldsProbe((a : stdgo.GoUInt32), (p0 : stdgo.GoInt32), (b : stdgo.GoFloat64), ([for (i in p1) (i : stdgo.GoInt16)] : stdgo.GoArray<stdgo.GoInt16>), (c : stdgo.GoUInt8), ([for (i in p2) (i : stdgo.GoUInt8)] : stdgo.GoArray<stdgo.GoUInt8>), {
        final obj = p3;
        { f : ([for (i in obj.f) (i : stdgo.GoFloat32)] : stdgo.GoArray<stdgo.GoFloat32>) };
    });
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
