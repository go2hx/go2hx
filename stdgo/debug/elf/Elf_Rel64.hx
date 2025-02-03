package stdgo.debug.elf;
@:structInit @:using(stdgo.debug.elf.Elf.Rel64_static_extension) abstract Rel64(stdgo._internal.debug.elf.Elf_Rel64.Rel64) from stdgo._internal.debug.elf.Elf_Rel64.Rel64 to stdgo._internal.debug.elf.Elf_Rel64.Rel64 {
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
    public function new(?off:haxe.UInt64, ?info:haxe.UInt64) this = new stdgo._internal.debug.elf.Elf_Rel64.Rel64((off : stdgo.GoUInt64), (info : stdgo.GoUInt64));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
