package stdgo.debug.elf;
@:structInit @:using(stdgo.debug.elf.Elf.Section32_static_extension) abstract Section32(stdgo._internal.debug.elf.Elf_Section32.Section32) from stdgo._internal.debug.elf.Elf_Section32.Section32 to stdgo._internal.debug.elf.Elf_Section32.Section32 {
    public var name(get, set) : std.UInt;
    function get_name():std.UInt return this.name;
    function set_name(v:std.UInt):std.UInt {
        this.name = (v : stdgo.GoUInt32);
        return v;
    }
    public var type(get, set) : std.UInt;
    function get_type():std.UInt return this.type;
    function set_type(v:std.UInt):std.UInt {
        this.type = (v : stdgo.GoUInt32);
        return v;
    }
    public var flags(get, set) : std.UInt;
    function get_flags():std.UInt return this.flags;
    function set_flags(v:std.UInt):std.UInt {
        this.flags = (v : stdgo.GoUInt32);
        return v;
    }
    public var addr(get, set) : std.UInt;
    function get_addr():std.UInt return this.addr;
    function set_addr(v:std.UInt):std.UInt {
        this.addr = (v : stdgo.GoUInt32);
        return v;
    }
    public var off(get, set) : std.UInt;
    function get_off():std.UInt return this.off;
    function set_off(v:std.UInt):std.UInt {
        this.off = (v : stdgo.GoUInt32);
        return v;
    }
    public var size(get, set) : std.UInt;
    function get_size():std.UInt return this.size;
    function set_size(v:std.UInt):std.UInt {
        this.size = (v : stdgo.GoUInt32);
        return v;
    }
    public var link(get, set) : std.UInt;
    function get_link():std.UInt return this.link;
    function set_link(v:std.UInt):std.UInt {
        this.link = (v : stdgo.GoUInt32);
        return v;
    }
    public var info(get, set) : std.UInt;
    function get_info():std.UInt return this.info;
    function set_info(v:std.UInt):std.UInt {
        this.info = (v : stdgo.GoUInt32);
        return v;
    }
    public var addralign(get, set) : std.UInt;
    function get_addralign():std.UInt return this.addralign;
    function set_addralign(v:std.UInt):std.UInt {
        this.addralign = (v : stdgo.GoUInt32);
        return v;
    }
    public var entsize(get, set) : std.UInt;
    function get_entsize():std.UInt return this.entsize;
    function set_entsize(v:std.UInt):std.UInt {
        this.entsize = (v : stdgo.GoUInt32);
        return v;
    }
    public function new(?name:std.UInt, ?type:std.UInt, ?flags:std.UInt, ?addr:std.UInt, ?off:std.UInt, ?size:std.UInt, ?link:std.UInt, ?info:std.UInt, ?addralign:std.UInt, ?entsize:std.UInt) this = new stdgo._internal.debug.elf.Elf_Section32.Section32((name : stdgo.GoUInt32), (type : stdgo.GoUInt32), (flags : stdgo.GoUInt32), (addr : stdgo.GoUInt32), (off : stdgo.GoUInt32), (size : stdgo.GoUInt32), (link : stdgo.GoUInt32), (info : stdgo.GoUInt32), (addralign : stdgo.GoUInt32), (entsize : stdgo.GoUInt32));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
