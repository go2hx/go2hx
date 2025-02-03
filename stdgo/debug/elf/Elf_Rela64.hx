package stdgo.debug.elf;
@:structInit @:using(stdgo.debug.elf.Elf.Rela64_static_extension) abstract Rela64(stdgo._internal.debug.elf.Elf_Rela64.Rela64) from stdgo._internal.debug.elf.Elf_Rela64.Rela64 to stdgo._internal.debug.elf.Elf_Rela64.Rela64 {
    public var off(get, set) : haxe.UInt64;
    function get_off():haxe.UInt64 return this.off;
    function set_off(v:haxe.UInt64):haxe.UInt64 {
        this.off = (v : stdgo.GoUInt64);
        return v;
    }
    public var info(get, set) : haxe.UInt64;
    function get_info():haxe.UInt64 return this.info;
    function set_info(v:haxe.UInt64):haxe.UInt64 {
        this.info = (v : stdgo.GoUInt64);
        return v;
    }
    public var addend(get, set) : haxe.Int64;
    function get_addend():haxe.Int64 return this.addend;
    function set_addend(v:haxe.Int64):haxe.Int64 {
        this.addend = (v : stdgo.GoInt64);
        return v;
    }
    public function new(?off:haxe.UInt64, ?info:haxe.UInt64, ?addend:haxe.Int64) this = new stdgo._internal.debug.elf.Elf_Rela64.Rela64((off : stdgo.GoUInt64), (info : stdgo.GoUInt64), (addend : stdgo.GoInt64));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
