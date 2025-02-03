package stdgo.debug.pe;
@:structInit @:using(stdgo.debug.pe.Pe.COFFSymbol_static_extension) abstract COFFSymbol(stdgo._internal.debug.pe.Pe_COFFSymbol.COFFSymbol) from stdgo._internal.debug.pe.Pe_COFFSymbol.COFFSymbol to stdgo._internal.debug.pe.Pe_COFFSymbol.COFFSymbol {
    public var name(get, set) : haxe.ds.Vector<std.UInt>;
    function get_name():haxe.ds.Vector<std.UInt> return haxe.ds.Vector.fromArrayCopy([for (i in this.name) i]);
    function set_name(v:haxe.ds.Vector<std.UInt>):haxe.ds.Vector<std.UInt> {
        this.name = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.GoArray<stdgo.GoUInt8>);
        return v;
    }
    public var value(get, set) : std.UInt;
    function get_value():std.UInt return this.value;
    function set_value(v:std.UInt):std.UInt {
        this.value = (v : stdgo.GoUInt32);
        return v;
    }
    public var sectionNumber(get, set) : StdTypes.Int;
    function get_sectionNumber():StdTypes.Int return this.sectionNumber;
    function set_sectionNumber(v:StdTypes.Int):StdTypes.Int {
        this.sectionNumber = (v : stdgo.GoInt16);
        return v;
    }
    public var type(get, set) : std.UInt;
    function get_type():std.UInt return this.type;
    function set_type(v:std.UInt):std.UInt {
        this.type = (v : stdgo.GoUInt16);
        return v;
    }
    public var storageClass(get, set) : std.UInt;
    function get_storageClass():std.UInt return this.storageClass;
    function set_storageClass(v:std.UInt):std.UInt {
        this.storageClass = (v : stdgo.GoUInt8);
        return v;
    }
    public var numberOfAuxSymbols(get, set) : std.UInt;
    function get_numberOfAuxSymbols():std.UInt return this.numberOfAuxSymbols;
    function set_numberOfAuxSymbols(v:std.UInt):std.UInt {
        this.numberOfAuxSymbols = (v : stdgo.GoUInt8);
        return v;
    }
    public function new(?name:haxe.ds.Vector<std.UInt>, ?value:std.UInt, ?sectionNumber:StdTypes.Int, ?type:std.UInt, ?storageClass:std.UInt, ?numberOfAuxSymbols:std.UInt) this = new stdgo._internal.debug.pe.Pe_COFFSymbol.COFFSymbol(([for (i in name) (i : stdgo.GoUInt8)] : stdgo.GoArray<stdgo.GoUInt8>), (value : stdgo.GoUInt32), (sectionNumber : stdgo.GoInt16), (type : stdgo.GoUInt16), (storageClass : stdgo.GoUInt8), (numberOfAuxSymbols : stdgo.GoUInt8));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
