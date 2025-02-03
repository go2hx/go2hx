package stdgo.debug.dwarf;
@:structInit @:using(stdgo.debug.dwarf.Dwarf.LineFile_static_extension) abstract LineFile(stdgo._internal.debug.dwarf.Dwarf_LineFile.LineFile) from stdgo._internal.debug.dwarf.Dwarf_LineFile.LineFile to stdgo._internal.debug.dwarf.Dwarf_LineFile.LineFile {
    public var name(get, set) : String;
    function get_name():String return this.name;
    function set_name(v:String):String {
        this.name = (v : stdgo.GoString);
        return v;
    }
    public var mtime(get, set) : haxe.UInt64;
    function get_mtime():haxe.UInt64 return this.mtime;
    function set_mtime(v:haxe.UInt64):haxe.UInt64 {
        this.mtime = (v : stdgo.GoUInt64);
        return v;
    }
    public var length_(get, set) : StdTypes.Int;
    function get_length_():StdTypes.Int return this.length_;
    function set_length_(v:StdTypes.Int):StdTypes.Int {
        this.length_ = (v : stdgo.GoInt);
        return v;
    }
    public function new(?name:String, ?mtime:haxe.UInt64, ?length_:StdTypes.Int) this = new stdgo._internal.debug.dwarf.Dwarf_LineFile.LineFile((name : stdgo.GoString), (mtime : stdgo.GoUInt64), (length_ : stdgo.GoInt));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
