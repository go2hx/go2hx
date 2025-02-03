package stdgo.debug.pe;
@:structInit @:using(stdgo.debug.pe.Pe.SectionHeader32_static_extension) abstract SectionHeader32(stdgo._internal.debug.pe.Pe_SectionHeader32.SectionHeader32) from stdgo._internal.debug.pe.Pe_SectionHeader32.SectionHeader32 to stdgo._internal.debug.pe.Pe_SectionHeader32.SectionHeader32 {
    public var name(get, set) : haxe.ds.Vector<std.UInt>;
    function get_name():haxe.ds.Vector<std.UInt> return haxe.ds.Vector.fromArrayCopy([for (i in this.name) i]);
    function set_name(v:haxe.ds.Vector<std.UInt>):haxe.ds.Vector<std.UInt> {
        this.name = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.GoArray<stdgo.GoUInt8>);
        return v;
    }
    public var virtualSize(get, set) : std.UInt;
    function get_virtualSize():std.UInt return this.virtualSize;
    function set_virtualSize(v:std.UInt):std.UInt {
        this.virtualSize = (v : stdgo.GoUInt32);
        return v;
    }
    public var virtualAddress(get, set) : std.UInt;
    function get_virtualAddress():std.UInt return this.virtualAddress;
    function set_virtualAddress(v:std.UInt):std.UInt {
        this.virtualAddress = (v : stdgo.GoUInt32);
        return v;
    }
    public var sizeOfRawData(get, set) : std.UInt;
    function get_sizeOfRawData():std.UInt return this.sizeOfRawData;
    function set_sizeOfRawData(v:std.UInt):std.UInt {
        this.sizeOfRawData = (v : stdgo.GoUInt32);
        return v;
    }
    public var pointerToRawData(get, set) : std.UInt;
    function get_pointerToRawData():std.UInt return this.pointerToRawData;
    function set_pointerToRawData(v:std.UInt):std.UInt {
        this.pointerToRawData = (v : stdgo.GoUInt32);
        return v;
    }
    public var pointerToRelocations(get, set) : std.UInt;
    function get_pointerToRelocations():std.UInt return this.pointerToRelocations;
    function set_pointerToRelocations(v:std.UInt):std.UInt {
        this.pointerToRelocations = (v : stdgo.GoUInt32);
        return v;
    }
    public var pointerToLineNumbers(get, set) : std.UInt;
    function get_pointerToLineNumbers():std.UInt return this.pointerToLineNumbers;
    function set_pointerToLineNumbers(v:std.UInt):std.UInt {
        this.pointerToLineNumbers = (v : stdgo.GoUInt32);
        return v;
    }
    public var numberOfRelocations(get, set) : std.UInt;
    function get_numberOfRelocations():std.UInt return this.numberOfRelocations;
    function set_numberOfRelocations(v:std.UInt):std.UInt {
        this.numberOfRelocations = (v : stdgo.GoUInt16);
        return v;
    }
    public var numberOfLineNumbers(get, set) : std.UInt;
    function get_numberOfLineNumbers():std.UInt return this.numberOfLineNumbers;
    function set_numberOfLineNumbers(v:std.UInt):std.UInt {
        this.numberOfLineNumbers = (v : stdgo.GoUInt16);
        return v;
    }
    public var characteristics(get, set) : std.UInt;
    function get_characteristics():std.UInt return this.characteristics;
    function set_characteristics(v:std.UInt):std.UInt {
        this.characteristics = (v : stdgo.GoUInt32);
        return v;
    }
    public function new(?name:haxe.ds.Vector<std.UInt>, ?virtualSize:std.UInt, ?virtualAddress:std.UInt, ?sizeOfRawData:std.UInt, ?pointerToRawData:std.UInt, ?pointerToRelocations:std.UInt, ?pointerToLineNumbers:std.UInt, ?numberOfRelocations:std.UInt, ?numberOfLineNumbers:std.UInt, ?characteristics:std.UInt) this = new stdgo._internal.debug.pe.Pe_SectionHeader32.SectionHeader32(([for (i in name) (i : stdgo.GoUInt8)] : stdgo.GoArray<stdgo.GoUInt8>), (virtualSize : stdgo.GoUInt32), (virtualAddress : stdgo.GoUInt32), (sizeOfRawData : stdgo.GoUInt32), (pointerToRawData : stdgo.GoUInt32), (pointerToRelocations : stdgo.GoUInt32), (pointerToLineNumbers : stdgo.GoUInt32), (numberOfRelocations : stdgo.GoUInt16), (numberOfLineNumbers : stdgo.GoUInt16), (characteristics : stdgo.GoUInt32));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
