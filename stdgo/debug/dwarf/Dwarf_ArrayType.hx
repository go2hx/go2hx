package stdgo.debug.dwarf;
@:structInit @:using(stdgo.debug.dwarf.Dwarf.ArrayType_static_extension) abstract ArrayType(stdgo._internal.debug.dwarf.Dwarf_ArrayType.ArrayType) from stdgo._internal.debug.dwarf.Dwarf_ArrayType.ArrayType to stdgo._internal.debug.dwarf.Dwarf_ArrayType.ArrayType {
    public var commonType(get, set) : CommonType;
    function get_commonType():CommonType return this.commonType;
    function set_commonType(v:CommonType):CommonType {
        this.commonType = v;
        return v;
    }
    public var type(get, set) : Type_;
    function get_type():Type_ return this.type;
    function set_type(v:Type_):Type_ {
        this.type = v;
        return v;
    }
    public var strideBitSize(get, set) : haxe.Int64;
    function get_strideBitSize():haxe.Int64 return this.strideBitSize;
    function set_strideBitSize(v:haxe.Int64):haxe.Int64 {
        this.strideBitSize = (v : stdgo.GoInt64);
        return v;
    }
    public var count(get, set) : haxe.Int64;
    function get_count():haxe.Int64 return this.count;
    function set_count(v:haxe.Int64):haxe.Int64 {
        this.count = (v : stdgo.GoInt64);
        return v;
    }
    public function new(?commonType:CommonType, ?type:Type_, ?strideBitSize:haxe.Int64, ?count:haxe.Int64) this = new stdgo._internal.debug.dwarf.Dwarf_ArrayType.ArrayType(commonType, type, (strideBitSize : stdgo.GoInt64), (count : stdgo.GoInt64));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
