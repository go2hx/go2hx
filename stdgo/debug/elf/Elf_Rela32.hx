package stdgo.debug.elf;
@:structInit @:using(stdgo.debug.elf.Elf.Rela32_static_extension) abstract Rela32(stdgo._internal.debug.elf.Elf_Rela32.Rela32) from stdgo._internal.debug.elf.Elf_Rela32.Rela32 to stdgo._internal.debug.elf.Elf_Rela32.Rela32 {
    public var off(get, set) : std.UInt;
    function get_off():std.UInt return this.off;
    function set_off(v:std.UInt):std.UInt {
        this.off = (v : stdgo.GoUInt32);
        return v;
    }
    public var info(get, set) : std.UInt;
    function get_info():std.UInt return this.info;
    function set_info(v:std.UInt):std.UInt {
        this.info = (v : stdgo.GoUInt32);
        return v;
    }
    public var addend(get, set) : StdTypes.Int;
    function get_addend():StdTypes.Int return this.addend;
    function set_addend(v:StdTypes.Int):StdTypes.Int {
        this.addend = (v : stdgo.GoInt32);
        return v;
    }
    public function new(?off:std.UInt, ?info:std.UInt, ?addend:StdTypes.Int) this = new stdgo._internal.debug.elf.Elf_Rela32.Rela32((off : stdgo.GoUInt32), (info : stdgo.GoUInt32), (addend : stdgo.GoInt32));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
