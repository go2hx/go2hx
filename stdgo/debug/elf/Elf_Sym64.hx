package stdgo.debug.elf;
@:structInit @:using(stdgo.debug.elf.Elf.Sym64_static_extension) abstract Sym64(stdgo._internal.debug.elf.Elf_Sym64.Sym64) from stdgo._internal.debug.elf.Elf_Sym64.Sym64 to stdgo._internal.debug.elf.Elf_Sym64.Sym64 {
    public var name(get, set) : std.UInt;
    function get_name():std.UInt return this.name;
    function set_name(v:std.UInt):std.UInt {
        this.name = (v : stdgo.GoUInt32);
        return v;
    }
    public var info(get, set) : std.UInt;
    function get_info():std.UInt return this.info;
    function set_info(v:std.UInt):std.UInt {
        this.info = (v : stdgo.GoUInt8);
        return v;
    }
    public var other(get, set) : std.UInt;
    function get_other():std.UInt return this.other;
    function set_other(v:std.UInt):std.UInt {
        this.other = (v : stdgo.GoUInt8);
        return v;
    }
    public var shndx(get, set) : std.UInt;
    function get_shndx():std.UInt return this.shndx;
    function set_shndx(v:std.UInt):std.UInt {
        this.shndx = (v : stdgo.GoUInt16);
        return v;
    }
    public var value(get, set) : haxe.UInt64;
    function get_value():haxe.UInt64 return this.value;
    function set_value(v:haxe.UInt64):haxe.UInt64 {
        this.value = (v : stdgo.GoUInt64);
        return v;
    }
    public var size(get, set) : haxe.UInt64;
    function get_size():haxe.UInt64 return this.size;
    function set_size(v:haxe.UInt64):haxe.UInt64 {
        this.size = (v : stdgo.GoUInt64);
        return v;
    }
    public function new(?name:std.UInt, ?info:std.UInt, ?other:std.UInt, ?shndx:std.UInt, ?value:haxe.UInt64, ?size:haxe.UInt64) this = new stdgo._internal.debug.elf.Elf_Sym64.Sym64((name : stdgo.GoUInt32), (info : stdgo.GoUInt8), (other : stdgo.GoUInt8), (shndx : stdgo.GoUInt16), (value : stdgo.GoUInt64), (size : stdgo.GoUInt64));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
