package stdgo.debug.dwarf;
@:structInit @:using(stdgo.debug.dwarf.Dwarf.DecodeError_static_extension) abstract DecodeError(stdgo._internal.debug.dwarf.Dwarf_DecodeError.DecodeError) from stdgo._internal.debug.dwarf.Dwarf_DecodeError.DecodeError to stdgo._internal.debug.dwarf.Dwarf_DecodeError.DecodeError {
    public var name(get, set) : String;
    function get_name():String return this.name;
    function set_name(v:String):String {
        this.name = (v : stdgo.GoString);
        return v;
    }
    public var offset(get, set) : Offset;
    function get_offset():Offset return this.offset;
    function set_offset(v:Offset):Offset {
        this.offset = v;
        return v;
    }
    public var err(get, set) : String;
    function get_err():String return this.err;
    function set_err(v:String):String {
        this.err = (v : stdgo.GoString);
        return v;
    }
    public function new(?name:String, ?offset:Offset, ?err:String) this = new stdgo._internal.debug.dwarf.Dwarf_DecodeError.DecodeError((name : stdgo.GoString), offset, (err : stdgo.GoString));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
