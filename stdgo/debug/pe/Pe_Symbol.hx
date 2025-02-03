package stdgo.debug.pe;
@:structInit @:using(stdgo.debug.pe.Pe.Symbol_static_extension) abstract Symbol(stdgo._internal.debug.pe.Pe_Symbol.Symbol) from stdgo._internal.debug.pe.Pe_Symbol.Symbol to stdgo._internal.debug.pe.Pe_Symbol.Symbol {
    public var name(get, set) : String;
    function get_name():String return this.name;
    function set_name(v:String):String {
        this.name = (v : stdgo.GoString);
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
    public function new(?name:String, ?value:std.UInt, ?sectionNumber:StdTypes.Int, ?type:std.UInt, ?storageClass:std.UInt) this = new stdgo._internal.debug.pe.Pe_Symbol.Symbol((name : stdgo.GoString), (value : stdgo.GoUInt32), (sectionNumber : stdgo.GoInt16), (type : stdgo.GoUInt16), (storageClass : stdgo.GoUInt8));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
