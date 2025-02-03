package stdgo.debug.elf;
@:structInit @:using(stdgo.debug.elf.Elf.Dyn32_static_extension) abstract Dyn32(stdgo._internal.debug.elf.Elf_Dyn32.Dyn32) from stdgo._internal.debug.elf.Elf_Dyn32.Dyn32 to stdgo._internal.debug.elf.Elf_Dyn32.Dyn32 {
    public var tag(get, set) : StdTypes.Int;
    function get_tag():StdTypes.Int return this.tag;
    function set_tag(v:StdTypes.Int):StdTypes.Int {
        this.tag = (v : stdgo.GoInt32);
        return v;
    }
    public var val(get, set) : std.UInt;
    function get_val():std.UInt return this.val;
    function set_val(v:std.UInt):std.UInt {
        this.val = (v : stdgo.GoUInt32);
        return v;
    }
    public function new(?tag:StdTypes.Int, ?val:std.UInt) this = new stdgo._internal.debug.elf.Elf_Dyn32.Dyn32((tag : stdgo.GoInt32), (val : stdgo.GoUInt32));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
