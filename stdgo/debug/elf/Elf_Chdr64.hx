package stdgo.debug.elf;
@:structInit @:using(stdgo.debug.elf.Elf.Chdr64_static_extension) abstract Chdr64(stdgo._internal.debug.elf.Elf_Chdr64.Chdr64) from stdgo._internal.debug.elf.Elf_Chdr64.Chdr64 to stdgo._internal.debug.elf.Elf_Chdr64.Chdr64 {
    public var type(get, set) : std.UInt;
    function get_type():std.UInt return this.type;
    function set_type(v:std.UInt):std.UInt {
        this.type = (v : stdgo.GoUInt32);
        return v;
    }
    public var __1(get, set) : std.UInt;
    function get___1():std.UInt return this.__1;
    function set___1(v:std.UInt):std.UInt {
        this.__1 = (v : stdgo.GoUInt32);
        return v;
    }
    public var size(get, set) : haxe.UInt64;
    function get_size():haxe.UInt64 return this.size;
    function set_size(v:haxe.UInt64):haxe.UInt64 {
        this.size = (v : stdgo.GoUInt64);
        return v;
    }
    public var addralign(get, set) : haxe.UInt64;
    function get_addralign():haxe.UInt64 return this.addralign;
    function set_addralign(v:haxe.UInt64):haxe.UInt64 {
        this.addralign = (v : stdgo.GoUInt64);
        return v;
    }
    public function new(?type:std.UInt, ?__1:std.UInt, ?size:haxe.UInt64, ?addralign:haxe.UInt64) this = new stdgo._internal.debug.elf.Elf_Chdr64.Chdr64((type : stdgo.GoUInt32), (__1 : stdgo.GoUInt32), (size : stdgo.GoUInt64), (addralign : stdgo.GoUInt64));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
