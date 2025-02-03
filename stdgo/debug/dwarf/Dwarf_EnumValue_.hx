package stdgo.debug.dwarf;
@:structInit @:using(stdgo.debug.dwarf.Dwarf.EnumValue__static_extension) abstract EnumValue_(stdgo._internal.debug.dwarf.Dwarf_EnumValue_.EnumValue_) from stdgo._internal.debug.dwarf.Dwarf_EnumValue_.EnumValue_ to stdgo._internal.debug.dwarf.Dwarf_EnumValue_.EnumValue_ {
    public var name(get, set) : String;
    function get_name():String return this.name;
    function set_name(v:String):String {
        this.name = (v : stdgo.GoString);
        return v;
    }
    public var val(get, set) : haxe.Int64;
    function get_val():haxe.Int64 return this.val;
    function set_val(v:haxe.Int64):haxe.Int64 {
        this.val = (v : stdgo.GoInt64);
        return v;
    }
    public function new(?name:String, ?val:haxe.Int64) this = new stdgo._internal.debug.dwarf.Dwarf_EnumValue_.EnumValue_((name : stdgo.GoString), (val : stdgo.GoInt64));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
