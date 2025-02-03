package stdgo.debug.dwarf;
@:structInit @:using(stdgo.debug.dwarf.Dwarf.CommonType_static_extension) abstract CommonType(stdgo._internal.debug.dwarf.Dwarf_CommonType.CommonType) from stdgo._internal.debug.dwarf.Dwarf_CommonType.CommonType to stdgo._internal.debug.dwarf.Dwarf_CommonType.CommonType {
    public var byteSize(get, set) : haxe.Int64;
    function get_byteSize():haxe.Int64 return this.byteSize;
    function set_byteSize(v:haxe.Int64):haxe.Int64 {
        this.byteSize = (v : stdgo.GoInt64);
        return v;
    }
    public var name(get, set) : String;
    function get_name():String return this.name;
    function set_name(v:String):String {
        this.name = (v : stdgo.GoString);
        return v;
    }
    public function new(?byteSize:haxe.Int64, ?name:String) this = new stdgo._internal.debug.dwarf.Dwarf_CommonType.CommonType((byteSize : stdgo.GoInt64), (name : stdgo.GoString));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
