package stdgo.debug.elf;
@:structInit @:using(stdgo.debug.elf.Elf.Section64_static_extension) abstract Section64(stdgo._internal.debug.elf.Elf_Section64.Section64) from stdgo._internal.debug.elf.Elf_Section64.Section64 to stdgo._internal.debug.elf.Elf_Section64.Section64 {
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
    public var flags(get, set) : haxe.UInt64;
    function get_flags():haxe.UInt64 return this.flags;
    function set_flags(v:haxe.UInt64):haxe.UInt64 {
        this.flags = (v : stdgo.GoUInt64);
        return v;
    }
    public var addr(get, set) : haxe.UInt64;
    function get_addr():haxe.UInt64 return this.addr;
    function set_addr(v:haxe.UInt64):haxe.UInt64 {
        this.addr = (v : stdgo.GoUInt64);
        return v;
    }
    public var off(get, set) : haxe.UInt64;
    function get_off():haxe.UInt64 return this.off;
    function set_off(v:haxe.UInt64):haxe.UInt64 {
        this.off = (v : stdgo.GoUInt64);
        return v;
    }
    public var size(get, set) : haxe.UInt64;
    function get_size():haxe.UInt64 return this.size;
    function set_size(v:haxe.UInt64):haxe.UInt64 {
        this.size = (v : stdgo.GoUInt64);
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
    public var addralign(get, set) : haxe.UInt64;
    function get_addralign():haxe.UInt64 return this.addralign;
    function set_addralign(v:haxe.UInt64):haxe.UInt64 {
        this.addralign = (v : stdgo.GoUInt64);
        return v;
    }
    public var entsize(get, set) : haxe.UInt64;
    function get_entsize():haxe.UInt64 return this.entsize;
    function set_entsize(v:haxe.UInt64):haxe.UInt64 {
        this.entsize = (v : stdgo.GoUInt64);
        return v;
    }
    public function new(?name:std.UInt, ?type:std.UInt, ?flags:haxe.UInt64, ?addr:haxe.UInt64, ?off:haxe.UInt64, ?size:haxe.UInt64, ?link:std.UInt, ?info:std.UInt, ?addralign:haxe.UInt64, ?entsize:haxe.UInt64) this = new stdgo._internal.debug.elf.Elf_Section64.Section64((name : stdgo.GoUInt32), (type : stdgo.GoUInt32), (flags : stdgo.GoUInt64), (addr : stdgo.GoUInt64), (off : stdgo.GoUInt64), (size : stdgo.GoUInt64), (link : stdgo.GoUInt32), (info : stdgo.GoUInt32), (addralign : stdgo.GoUInt64), (entsize : stdgo.GoUInt64));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
