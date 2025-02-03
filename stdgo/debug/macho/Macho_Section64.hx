package stdgo.debug.macho;
@:structInit @:using(stdgo.debug.macho.Macho.Section64_static_extension) abstract Section64(stdgo._internal.debug.macho.Macho_Section64.Section64) from stdgo._internal.debug.macho.Macho_Section64.Section64 to stdgo._internal.debug.macho.Macho_Section64.Section64 {
    public var name(get, set) : haxe.ds.Vector<std.UInt>;
    function get_name():haxe.ds.Vector<std.UInt> return haxe.ds.Vector.fromArrayCopy([for (i in this.name) i]);
    function set_name(v:haxe.ds.Vector<std.UInt>):haxe.ds.Vector<std.UInt> {
        this.name = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.GoArray<stdgo.GoUInt8>);
        return v;
    }
    public var seg(get, set) : haxe.ds.Vector<std.UInt>;
    function get_seg():haxe.ds.Vector<std.UInt> return haxe.ds.Vector.fromArrayCopy([for (i in this.seg) i]);
    function set_seg(v:haxe.ds.Vector<std.UInt>):haxe.ds.Vector<std.UInt> {
        this.seg = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.GoArray<stdgo.GoUInt8>);
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
    public var reserve1(get, set) : std.UInt;
    function get_reserve1():std.UInt return this.reserve1;
    function set_reserve1(v:std.UInt):std.UInt {
        this.reserve1 = (v : stdgo.GoUInt32);
        return v;
    }
    public var reserve2(get, set) : std.UInt;
    function get_reserve2():std.UInt return this.reserve2;
    function set_reserve2(v:std.UInt):std.UInt {
        this.reserve2 = (v : stdgo.GoUInt32);
        return v;
    }
    public var reserve3(get, set) : std.UInt;
    function get_reserve3():std.UInt return this.reserve3;
    function set_reserve3(v:std.UInt):std.UInt {
        this.reserve3 = (v : stdgo.GoUInt32);
        return v;
    }
    public function new(?name:haxe.ds.Vector<std.UInt>, ?seg:haxe.ds.Vector<std.UInt>, ?addr:haxe.UInt64, ?size:haxe.UInt64, ?offset:std.UInt, ?align:std.UInt, ?reloff:std.UInt, ?nreloc:std.UInt, ?flags:std.UInt, ?reserve1:std.UInt, ?reserve2:std.UInt, ?reserve3:std.UInt) this = new stdgo._internal.debug.macho.Macho_Section64.Section64(
([for (i in name) (i : stdgo.GoUInt8)] : stdgo.GoArray<stdgo.GoUInt8>),
([for (i in seg) (i : stdgo.GoUInt8)] : stdgo.GoArray<stdgo.GoUInt8>),
(addr : stdgo.GoUInt64),
(size : stdgo.GoUInt64),
(offset : stdgo.GoUInt32),
(align : stdgo.GoUInt32),
(reloff : stdgo.GoUInt32),
(nreloc : stdgo.GoUInt32),
(flags : stdgo.GoUInt32),
(reserve1 : stdgo.GoUInt32),
(reserve2 : stdgo.GoUInt32),
(reserve3 : stdgo.GoUInt32));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
