package stdgo.debug.pe;
@:structInit @:using(stdgo.debug.pe.Pe.COFFSymbolAuxFormat5_static_extension) abstract COFFSymbolAuxFormat5(stdgo._internal.debug.pe.Pe_COFFSymbolAuxFormat5.COFFSymbolAuxFormat5) from stdgo._internal.debug.pe.Pe_COFFSymbolAuxFormat5.COFFSymbolAuxFormat5 to stdgo._internal.debug.pe.Pe_COFFSymbolAuxFormat5.COFFSymbolAuxFormat5 {
    public var size(get, set) : std.UInt;
    function get_size():std.UInt return this.size;
    function set_size(v:std.UInt):std.UInt {
        this.size = (v : stdgo.GoUInt32);
        return v;
    }
    public var numRelocs(get, set) : std.UInt;
    function get_numRelocs():std.UInt return this.numRelocs;
    function set_numRelocs(v:std.UInt):std.UInt {
        this.numRelocs = (v : stdgo.GoUInt16);
        return v;
    }
    public var numLineNumbers(get, set) : std.UInt;
    function get_numLineNumbers():std.UInt return this.numLineNumbers;
    function set_numLineNumbers(v:std.UInt):std.UInt {
        this.numLineNumbers = (v : stdgo.GoUInt16);
        return v;
    }
    public var checksum(get, set) : std.UInt;
    function get_checksum():std.UInt return this.checksum;
    function set_checksum(v:std.UInt):std.UInt {
        this.checksum = (v : stdgo.GoUInt32);
        return v;
    }
    public var secNum(get, set) : std.UInt;
    function get_secNum():std.UInt return this.secNum;
    function set_secNum(v:std.UInt):std.UInt {
        this.secNum = (v : stdgo.GoUInt16);
        return v;
    }
    public var selection(get, set) : std.UInt;
    function get_selection():std.UInt return this.selection;
    function set_selection(v:std.UInt):std.UInt {
        this.selection = (v : stdgo.GoUInt8);
        return v;
    }
    public var __1(get, set) : haxe.ds.Vector<std.UInt>;
    function get___1():haxe.ds.Vector<std.UInt> return haxe.ds.Vector.fromArrayCopy([for (i in this.__1) i]);
    function set___1(v:haxe.ds.Vector<std.UInt>):haxe.ds.Vector<std.UInt> {
        this.__1 = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.GoArray<stdgo.GoUInt8>);
        return v;
    }
    public function new(?size:std.UInt, ?numRelocs:std.UInt, ?numLineNumbers:std.UInt, ?checksum:std.UInt, ?secNum:std.UInt, ?selection:std.UInt, ?__1:haxe.ds.Vector<std.UInt>) this = new stdgo._internal.debug.pe.Pe_COFFSymbolAuxFormat5.COFFSymbolAuxFormat5((size : stdgo.GoUInt32), (numRelocs : stdgo.GoUInt16), (numLineNumbers : stdgo.GoUInt16), (checksum : stdgo.GoUInt32), (secNum : stdgo.GoUInt16), (selection : stdgo.GoUInt8), ([for (i in __1) (i : stdgo.GoUInt8)] : stdgo.GoArray<stdgo.GoUInt8>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
