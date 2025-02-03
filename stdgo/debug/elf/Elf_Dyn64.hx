package stdgo.debug.elf;
@:structInit @:using(stdgo.debug.elf.Elf.Dyn64_static_extension) abstract Dyn64(stdgo._internal.debug.elf.Elf_Dyn64.Dyn64) from stdgo._internal.debug.elf.Elf_Dyn64.Dyn64 to stdgo._internal.debug.elf.Elf_Dyn64.Dyn64 {
    public var tag(get, set) : haxe.Int64;
    function get_tag():haxe.Int64 return this.tag;
    function set_tag(v:haxe.Int64):haxe.Int64 {
        this.tag = (v : stdgo.GoInt64);
        return v;
    }
    public var val(get, set) : haxe.UInt64;
    function get_val():haxe.UInt64 return this.val;
    function set_val(v:haxe.UInt64):haxe.UInt64 {
        this.val = (v : stdgo.GoUInt64);
        return v;
    }
    public function new(?tag:haxe.Int64, ?val:haxe.UInt64) this = new stdgo._internal.debug.elf.Elf_Dyn64.Dyn64((tag : stdgo.GoInt64), (val : stdgo.GoUInt64));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
