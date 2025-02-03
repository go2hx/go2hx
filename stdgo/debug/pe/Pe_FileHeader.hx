package stdgo.debug.pe;
@:structInit @:using(stdgo.debug.pe.Pe.FileHeader_static_extension) abstract FileHeader(stdgo._internal.debug.pe.Pe_FileHeader.FileHeader) from stdgo._internal.debug.pe.Pe_FileHeader.FileHeader to stdgo._internal.debug.pe.Pe_FileHeader.FileHeader {
    public var machine(get, set) : std.UInt;
    function get_machine():std.UInt return this.machine;
    function set_machine(v:std.UInt):std.UInt {
        this.machine = (v : stdgo.GoUInt16);
        return v;
    }
    public var numberOfSections(get, set) : std.UInt;
    function get_numberOfSections():std.UInt return this.numberOfSections;
    function set_numberOfSections(v:std.UInt):std.UInt {
        this.numberOfSections = (v : stdgo.GoUInt16);
        return v;
    }
    public var timeDateStamp(get, set) : std.UInt;
    function get_timeDateStamp():std.UInt return this.timeDateStamp;
    function set_timeDateStamp(v:std.UInt):std.UInt {
        this.timeDateStamp = (v : stdgo.GoUInt32);
        return v;
    }
    public var pointerToSymbolTable(get, set) : std.UInt;
    function get_pointerToSymbolTable():std.UInt return this.pointerToSymbolTable;
    function set_pointerToSymbolTable(v:std.UInt):std.UInt {
        this.pointerToSymbolTable = (v : stdgo.GoUInt32);
        return v;
    }
    public var numberOfSymbols(get, set) : std.UInt;
    function get_numberOfSymbols():std.UInt return this.numberOfSymbols;
    function set_numberOfSymbols(v:std.UInt):std.UInt {
        this.numberOfSymbols = (v : stdgo.GoUInt32);
        return v;
    }
    public var sizeOfOptionalHeader(get, set) : std.UInt;
    function get_sizeOfOptionalHeader():std.UInt return this.sizeOfOptionalHeader;
    function set_sizeOfOptionalHeader(v:std.UInt):std.UInt {
        this.sizeOfOptionalHeader = (v : stdgo.GoUInt16);
        return v;
    }
    public var characteristics(get, set) : std.UInt;
    function get_characteristics():std.UInt return this.characteristics;
    function set_characteristics(v:std.UInt):std.UInt {
        this.characteristics = (v : stdgo.GoUInt16);
        return v;
    }
    public function new(?machine:std.UInt, ?numberOfSections:std.UInt, ?timeDateStamp:std.UInt, ?pointerToSymbolTable:std.UInt, ?numberOfSymbols:std.UInt, ?sizeOfOptionalHeader:std.UInt, ?characteristics:std.UInt) this = new stdgo._internal.debug.pe.Pe_FileHeader.FileHeader((machine : stdgo.GoUInt16), (numberOfSections : stdgo.GoUInt16), (timeDateStamp : stdgo.GoUInt32), (pointerToSymbolTable : stdgo.GoUInt32), (numberOfSymbols : stdgo.GoUInt32), (sizeOfOptionalHeader : stdgo.GoUInt16), (characteristics : stdgo.GoUInt16));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
