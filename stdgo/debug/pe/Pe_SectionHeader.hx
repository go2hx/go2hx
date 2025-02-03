package stdgo.debug.pe;
@:structInit @:using(stdgo.debug.pe.Pe.SectionHeader_static_extension) abstract SectionHeader(stdgo._internal.debug.pe.Pe_SectionHeader.SectionHeader) from stdgo._internal.debug.pe.Pe_SectionHeader.SectionHeader to stdgo._internal.debug.pe.Pe_SectionHeader.SectionHeader {
    public var name(get, set) : String;
    function get_name():String return this.name;
    function set_name(v:String):String {
        this.name = (v : stdgo.GoString);
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
    public var size(get, set) : std.UInt;
    function get_size():std.UInt return this.size;
    function set_size(v:std.UInt):std.UInt {
        this.size = (v : stdgo.GoUInt32);
        return v;
    }
    public var offset(get, set) : std.UInt;
    function get_offset():std.UInt return this.offset;
    function set_offset(v:std.UInt):std.UInt {
        this.offset = (v : stdgo.GoUInt32);
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
    public function new(?name:String, ?virtualSize:std.UInt, ?virtualAddress:std.UInt, ?size:std.UInt, ?offset:std.UInt, ?pointerToRelocations:std.UInt, ?pointerToLineNumbers:std.UInt, ?numberOfRelocations:std.UInt, ?numberOfLineNumbers:std.UInt, ?characteristics:std.UInt) this = new stdgo._internal.debug.pe.Pe_SectionHeader.SectionHeader((name : stdgo.GoString), (virtualSize : stdgo.GoUInt32), (virtualAddress : stdgo.GoUInt32), (size : stdgo.GoUInt32), (offset : stdgo.GoUInt32), (pointerToRelocations : stdgo.GoUInt32), (pointerToLineNumbers : stdgo.GoUInt32), (numberOfRelocations : stdgo.GoUInt16), (numberOfLineNumbers : stdgo.GoUInt16), (characteristics : stdgo.GoUInt32));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
