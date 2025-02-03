package stdgo.debug.elf;
@:structInit @:using(stdgo.debug.elf.Elf.SectionHeader_static_extension) abstract SectionHeader(stdgo._internal.debug.elf.Elf_SectionHeader.SectionHeader) from stdgo._internal.debug.elf.Elf_SectionHeader.SectionHeader to stdgo._internal.debug.elf.Elf_SectionHeader.SectionHeader {
    public var name(get, set) : String;
    function get_name():String return this.name;
    function set_name(v:String):String {
        this.name = (v : stdgo.GoString);
        return v;
    }
    public var type(get, set) : SectionType;
    function get_type():SectionType return this.type;
    function set_type(v:SectionType):SectionType {
        this.type = v;
        return v;
    }
    public var flags(get, set) : SectionFlag;
    function get_flags():SectionFlag return this.flags;
    function set_flags(v:SectionFlag):SectionFlag {
        this.flags = v;
        return v;
    }
    public var addr(get, set) : haxe.UInt64;
    function get_addr():haxe.UInt64 return this.addr;
    function set_addr(v:haxe.UInt64):haxe.UInt64 {
        this.addr = (v : stdgo.GoUInt64);
        return v;
    }
    public var offset(get, set) : haxe.UInt64;
    function get_offset():haxe.UInt64 return this.offset;
    function set_offset(v:haxe.UInt64):haxe.UInt64 {
        this.offset = (v : stdgo.GoUInt64);
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
    public var fileSize(get, set) : haxe.UInt64;
    function get_fileSize():haxe.UInt64 return this.fileSize;
    function set_fileSize(v:haxe.UInt64):haxe.UInt64 {
        this.fileSize = (v : stdgo.GoUInt64);
        return v;
    }
    public function new(?name:String, ?type:SectionType, ?flags:SectionFlag, ?addr:haxe.UInt64, ?offset:haxe.UInt64, ?size:haxe.UInt64, ?link:std.UInt, ?info:std.UInt, ?addralign:haxe.UInt64, ?entsize:haxe.UInt64, ?fileSize:haxe.UInt64) this = new stdgo._internal.debug.elf.Elf_SectionHeader.SectionHeader(
(name : stdgo.GoString),
type,
flags,
(addr : stdgo.GoUInt64),
(offset : stdgo.GoUInt64),
(size : stdgo.GoUInt64),
(link : stdgo.GoUInt32),
(info : stdgo.GoUInt32),
(addralign : stdgo.GoUInt64),
(entsize : stdgo.GoUInt64),
(fileSize : stdgo.GoUInt64));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
