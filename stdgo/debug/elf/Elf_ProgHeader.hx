package stdgo.debug.elf;
@:structInit @:using(stdgo.debug.elf.Elf.ProgHeader_static_extension) abstract ProgHeader(stdgo._internal.debug.elf.Elf_ProgHeader.ProgHeader) from stdgo._internal.debug.elf.Elf_ProgHeader.ProgHeader to stdgo._internal.debug.elf.Elf_ProgHeader.ProgHeader {
    public var type(get, set) : ProgType;
    function get_type():ProgType return this.type;
    function set_type(v:ProgType):ProgType {
        this.type = v;
        return v;
    }
    public var flags(get, set) : ProgFlag;
    function get_flags():ProgFlag return this.flags;
    function set_flags(v:ProgFlag):ProgFlag {
        this.flags = v;
        return v;
    }
    public var off(get, set) : haxe.UInt64;
    function get_off():haxe.UInt64 return this.off;
    function set_off(v:haxe.UInt64):haxe.UInt64 {
        this.off = (v : stdgo.GoUInt64);
        return v;
    }
    public var vaddr(get, set) : haxe.UInt64;
    function get_vaddr():haxe.UInt64 return this.vaddr;
    function set_vaddr(v:haxe.UInt64):haxe.UInt64 {
        this.vaddr = (v : stdgo.GoUInt64);
        return v;
    }
    public var paddr(get, set) : haxe.UInt64;
    function get_paddr():haxe.UInt64 return this.paddr;
    function set_paddr(v:haxe.UInt64):haxe.UInt64 {
        this.paddr = (v : stdgo.GoUInt64);
        return v;
    }
    public var filesz(get, set) : haxe.UInt64;
    function get_filesz():haxe.UInt64 return this.filesz;
    function set_filesz(v:haxe.UInt64):haxe.UInt64 {
        this.filesz = (v : stdgo.GoUInt64);
        return v;
    }
    public var memsz(get, set) : haxe.UInt64;
    function get_memsz():haxe.UInt64 return this.memsz;
    function set_memsz(v:haxe.UInt64):haxe.UInt64 {
        this.memsz = (v : stdgo.GoUInt64);
        return v;
    }
    public var align(get, set) : haxe.UInt64;
    function get_align():haxe.UInt64 return this.align;
    function set_align(v:haxe.UInt64):haxe.UInt64 {
        this.align = (v : stdgo.GoUInt64);
        return v;
    }
    public function new(?type:ProgType, ?flags:ProgFlag, ?off:haxe.UInt64, ?vaddr:haxe.UInt64, ?paddr:haxe.UInt64, ?filesz:haxe.UInt64, ?memsz:haxe.UInt64, ?align:haxe.UInt64) this = new stdgo._internal.debug.elf.Elf_ProgHeader.ProgHeader(type, flags, (off : stdgo.GoUInt64), (vaddr : stdgo.GoUInt64), (paddr : stdgo.GoUInt64), (filesz : stdgo.GoUInt64), (memsz : stdgo.GoUInt64), (align : stdgo.GoUInt64));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
