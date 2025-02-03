package stdgo.debug.elf;
@:structInit @:using(stdgo.debug.elf.Elf.Prog32_static_extension) abstract Prog32(stdgo._internal.debug.elf.Elf_Prog32.Prog32) from stdgo._internal.debug.elf.Elf_Prog32.Prog32 to stdgo._internal.debug.elf.Elf_Prog32.Prog32 {
    public var type(get, set) : std.UInt;
    function get_type():std.UInt return this.type;
    function set_type(v:std.UInt):std.UInt {
        this.type = (v : stdgo.GoUInt32);
        return v;
    }
    public var off(get, set) : std.UInt;
    function get_off():std.UInt return this.off;
    function set_off(v:std.UInt):std.UInt {
        this.off = (v : stdgo.GoUInt32);
        return v;
    }
    public var vaddr(get, set) : std.UInt;
    function get_vaddr():std.UInt return this.vaddr;
    function set_vaddr(v:std.UInt):std.UInt {
        this.vaddr = (v : stdgo.GoUInt32);
        return v;
    }
    public var paddr(get, set) : std.UInt;
    function get_paddr():std.UInt return this.paddr;
    function set_paddr(v:std.UInt):std.UInt {
        this.paddr = (v : stdgo.GoUInt32);
        return v;
    }
    public var filesz(get, set) : std.UInt;
    function get_filesz():std.UInt return this.filesz;
    function set_filesz(v:std.UInt):std.UInt {
        this.filesz = (v : stdgo.GoUInt32);
        return v;
    }
    public var memsz(get, set) : std.UInt;
    function get_memsz():std.UInt return this.memsz;
    function set_memsz(v:std.UInt):std.UInt {
        this.memsz = (v : stdgo.GoUInt32);
        return v;
    }
    public var flags(get, set) : std.UInt;
    function get_flags():std.UInt return this.flags;
    function set_flags(v:std.UInt):std.UInt {
        this.flags = (v : stdgo.GoUInt32);
        return v;
    }
    public var align(get, set) : std.UInt;
    function get_align():std.UInt return this.align;
    function set_align(v:std.UInt):std.UInt {
        this.align = (v : stdgo.GoUInt32);
        return v;
    }
    public function new(?type:std.UInt, ?off:std.UInt, ?vaddr:std.UInt, ?paddr:std.UInt, ?filesz:std.UInt, ?memsz:std.UInt, ?flags:std.UInt, ?align:std.UInt) this = new stdgo._internal.debug.elf.Elf_Prog32.Prog32((type : stdgo.GoUInt32), (off : stdgo.GoUInt32), (vaddr : stdgo.GoUInt32), (paddr : stdgo.GoUInt32), (filesz : stdgo.GoUInt32), (memsz : stdgo.GoUInt32), (flags : stdgo.GoUInt32), (align : stdgo.GoUInt32));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
