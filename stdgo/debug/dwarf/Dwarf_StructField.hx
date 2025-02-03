package stdgo.debug.dwarf;
@:structInit @:using(stdgo.debug.dwarf.Dwarf.StructField_static_extension) abstract StructField(stdgo._internal.debug.dwarf.Dwarf_StructField.StructField) from stdgo._internal.debug.dwarf.Dwarf_StructField.StructField to stdgo._internal.debug.dwarf.Dwarf_StructField.StructField {
    public var name(get, set) : String;
    function get_name():String return this.name;
    function set_name(v:String):String {
        this.name = (v : stdgo.GoString);
        return v;
    }
    public var type(get, set) : Type_;
    function get_type():Type_ return this.type;
    function set_type(v:Type_):Type_ {
        this.type = v;
        return v;
    }
    public var byteOffset(get, set) : haxe.Int64;
    function get_byteOffset():haxe.Int64 return this.byteOffset;
    function set_byteOffset(v:haxe.Int64):haxe.Int64 {
        this.byteOffset = (v : stdgo.GoInt64);
        return v;
    }
    public var byteSize(get, set) : haxe.Int64;
    function get_byteSize():haxe.Int64 return this.byteSize;
    function set_byteSize(v:haxe.Int64):haxe.Int64 {
        this.byteSize = (v : stdgo.GoInt64);
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
    public var bitSize(get, set) : haxe.Int64;
    function get_bitSize():haxe.Int64 return this.bitSize;
    function set_bitSize(v:haxe.Int64):haxe.Int64 {
        this.bitSize = (v : stdgo.GoInt64);
        return v;
    }
    public function new(?name:String, ?type:Type_, ?byteOffset:haxe.Int64, ?byteSize:haxe.Int64, ?bitOffset:haxe.Int64, ?dataBitOffset:haxe.Int64, ?bitSize:haxe.Int64) this = new stdgo._internal.debug.dwarf.Dwarf_StructField.StructField((name : stdgo.GoString), type, (byteOffset : stdgo.GoInt64), (byteSize : stdgo.GoInt64), (bitOffset : stdgo.GoInt64), (dataBitOffset : stdgo.GoInt64), (bitSize : stdgo.GoInt64));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
