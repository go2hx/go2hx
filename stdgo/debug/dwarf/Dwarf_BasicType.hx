package stdgo.debug.dwarf;
@:structInit @:using(stdgo.debug.dwarf.Dwarf.BasicType_static_extension) abstract BasicType(stdgo._internal.debug.dwarf.Dwarf_BasicType.BasicType) from stdgo._internal.debug.dwarf.Dwarf_BasicType.BasicType to stdgo._internal.debug.dwarf.Dwarf_BasicType.BasicType {
    public var commonType(get, set) : CommonType;
    function get_commonType():CommonType return this.commonType;
    function set_commonType(v:CommonType):CommonType {
        this.commonType = v;
        return v;
    }
    public var bitSize(get, set) : haxe.Int64;
    function get_bitSize():haxe.Int64 return this.bitSize;
    function set_bitSize(v:haxe.Int64):haxe.Int64 {
        this.bitSize = (v : stdgo.GoInt64);
        return v;
    }
    public var bitOffset(get, set) : haxe.Int64;
    function get_bitOffset():haxe.Int64 return this.bitOffset;
    function set_bitOffset(v:haxe.Int64):haxe.Int64 {
        this.bitOffset = (v : stdgo.GoInt64);
        return v;
    }
    public var dataBitOffset(get, set) : haxe.Int64;
    function get_dataBitOffset():haxe.Int64 return this.dataBitOffset;
    function set_dataBitOffset(v:haxe.Int64):haxe.Int64 {
        this.dataBitOffset = (v : stdgo.GoInt64);
        return v;
    }
    public function new(?commonType:CommonType, ?bitSize:haxe.Int64, ?bitOffset:haxe.Int64, ?dataBitOffset:haxe.Int64) this = new stdgo._internal.debug.dwarf.Dwarf_BasicType.BasicType(commonType, (bitSize : stdgo.GoInt64), (bitOffset : stdgo.GoInt64), (dataBitOffset : stdgo.GoInt64));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
