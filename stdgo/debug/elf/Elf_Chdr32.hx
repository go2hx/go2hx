package stdgo.debug.elf;
@:structInit @:using(stdgo.debug.elf.Elf.Chdr32_static_extension) abstract Chdr32(stdgo._internal.debug.elf.Elf_Chdr32.Chdr32) from stdgo._internal.debug.elf.Elf_Chdr32.Chdr32 to stdgo._internal.debug.elf.Elf_Chdr32.Chdr32 {
    public var type(get, set) : std.UInt;
    function get_type():std.UInt return this.type;
    function set_type(v:std.UInt):std.UInt {
        this.type = (v : stdgo.GoUInt32);
        return v;
    }
    public var size(get, set) : std.UInt;
    function get_size():std.UInt return this.size;
    function set_size(v:std.UInt):std.UInt {
        this.size = (v : stdgo.GoUInt32);
        return v;
    }
    public var addralign(get, set) : std.UInt;
    function get_addralign():std.UInt return this.addralign;
    function set_addralign(v:std.UInt):std.UInt {
        this.addralign = (v : stdgo.GoUInt32);
        return v;
    }
    public function new(?type:std.UInt, ?size:std.UInt, ?addralign:std.UInt) this = new stdgo._internal.debug.elf.Elf_Chdr32.Chdr32((type : stdgo.GoUInt32), (size : stdgo.GoUInt32), (addralign : stdgo.GoUInt32));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
