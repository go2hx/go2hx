package stdgo.debug.macho;
@:structInit @:using(stdgo.debug.macho.Macho.SectionHeader_static_extension) abstract SectionHeader(stdgo._internal.debug.macho.Macho_SectionHeader.SectionHeader) from stdgo._internal.debug.macho.Macho_SectionHeader.SectionHeader to stdgo._internal.debug.macho.Macho_SectionHeader.SectionHeader {
    public var name(get, set) : String;
    function get_name():String return this.name;
    function set_name(v:String):String {
        this.name = (v : stdgo.GoString);
        return v;
    }
    public var seg(get, set) : String;
    function get_seg():String return this.seg;
    function set_seg(v:String):String {
        this.seg = (v : stdgo.GoString);
        return v;
    }
    public var addr(get, set) : haxe.UInt64;
    function get_addr():haxe.UInt64 return this.addr;
    function set_addr(v:haxe.UInt64):haxe.UInt64 {
        this.addr = (v : stdgo.GoUInt64);
        return v;
    }
    public var size(get, set) : haxe.UInt64;
    function get_size():haxe.UInt64 return this.size;
    function set_size(v:haxe.UInt64):haxe.UInt64 {
        this.size = (v : stdgo.GoUInt64);
        return v;
    }
    public var offset(get, set) : std.UInt;
    function get_offset():std.UInt return this.offset;
    function set_offset(v:std.UInt):std.UInt {
        this.offset = (v : stdgo.GoUInt32);
        return v;
    }
    public var align(get, set) : std.UInt;
    function get_align():std.UInt return this.align;
    function set_align(v:std.UInt):std.UInt {
        this.align = (v : stdgo.GoUInt32);
        return v;
    }
    public var reloff(get, set) : std.UInt;
    function get_reloff():std.UInt return this.reloff;
    function set_reloff(v:std.UInt):std.UInt {
        this.reloff = (v : stdgo.GoUInt32);
        return v;
    }
    public var nreloc(get, set) : std.UInt;
    function get_nreloc():std.UInt return this.nreloc;
    function set_nreloc(v:std.UInt):std.UInt {
        this.nreloc = (v : stdgo.GoUInt32);
        return v;
    }
    public var flags(get, set) : std.UInt;
    function get_flags():std.UInt return this.flags;
    function set_flags(v:std.UInt):std.UInt {
        this.flags = (v : stdgo.GoUInt32);
        return v;
    }
    public function new(?name:String, ?seg:String, ?addr:haxe.UInt64, ?size:haxe.UInt64, ?offset:std.UInt, ?align:std.UInt, ?reloff:std.UInt, ?nreloc:std.UInt, ?flags:std.UInt) this = new stdgo._internal.debug.macho.Macho_SectionHeader.SectionHeader((name : stdgo.GoString), (seg : stdgo.GoString), (addr : stdgo.GoUInt64), (size : stdgo.GoUInt64), (offset : stdgo.GoUInt32), (align : stdgo.GoUInt32), (reloff : stdgo.GoUInt32), (nreloc : stdgo.GoUInt32), (flags : stdgo.GoUInt32));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
