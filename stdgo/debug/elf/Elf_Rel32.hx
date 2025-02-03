package stdgo.debug.elf;
@:structInit @:using(stdgo.debug.elf.Elf.Rel32_static_extension) abstract Rel32(stdgo._internal.debug.elf.Elf_Rel32.Rel32) from stdgo._internal.debug.elf.Elf_Rel32.Rel32 to stdgo._internal.debug.elf.Elf_Rel32.Rel32 {
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
    public function new(?off:std.UInt, ?info:std.UInt) this = new stdgo._internal.debug.elf.Elf_Rel32.Rel32((off : stdgo.GoUInt32), (info : stdgo.GoUInt32));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
