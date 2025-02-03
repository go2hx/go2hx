package stdgo.debug.macho;
@:structInit @:using(stdgo.debug.macho.Macho.Segment64_static_extension) abstract Segment64(stdgo._internal.debug.macho.Macho_Segment64.Segment64) from stdgo._internal.debug.macho.Macho_Segment64.Segment64 to stdgo._internal.debug.macho.Macho_Segment64.Segment64 {
    public var cmd(get, set) : LoadCmd;
    function get_cmd():LoadCmd return this.cmd;
    function set_cmd(v:LoadCmd):LoadCmd {
        this.cmd = v;
        return v;
    }
    public var len(get, set) : std.UInt;
    function get_len():std.UInt return this.len;
    function set_len(v:std.UInt):std.UInt {
        this.len = (v : stdgo.GoUInt32);
        return v;
    }
    public var name(get, set) : haxe.ds.Vector<std.UInt>;
    function get_name():haxe.ds.Vector<std.UInt> return haxe.ds.Vector.fromArrayCopy([for (i in this.name) i]);
    function set_name(v:haxe.ds.Vector<std.UInt>):haxe.ds.Vector<std.UInt> {
        this.name = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.GoArray<stdgo.GoUInt8>);
        return v;
    }
    public var addr(get, set) : haxe.UInt64;
    function get_addr():haxe.UInt64 return this.addr;
    function set_addr(v:haxe.UInt64):haxe.UInt64 {
        this.addr = (v : stdgo.GoUInt64);
        return v;
    }
    public var memsz(get, set) : haxe.UInt64;
    function get_memsz():haxe.UInt64 return this.memsz;
    function set_memsz(v:haxe.UInt64):haxe.UInt64 {
        this.memsz = (v : stdgo.GoUInt64);
        return v;
    }
    public var offset(get, set) : haxe.UInt64;
    function get_offset():haxe.UInt64 return this.offset;
    function set_offset(v:haxe.UInt64):haxe.UInt64 {
        this.offset = (v : stdgo.GoUInt64);
        return v;
    }
    public var filesz(get, set) : haxe.UInt64;
    function get_filesz():haxe.UInt64 return this.filesz;
    function set_filesz(v:haxe.UInt64):haxe.UInt64 {
        this.filesz = (v : stdgo.GoUInt64);
        return v;
    }
    public var maxprot(get, set) : std.UInt;
    function get_maxprot():std.UInt return this.maxprot;
    function set_maxprot(v:std.UInt):std.UInt {
        this.maxprot = (v : stdgo.GoUInt32);
        return v;
    }
    public var prot(get, set) : std.UInt;
    function get_prot():std.UInt return this.prot;
    function set_prot(v:std.UInt):std.UInt {
        this.prot = (v : stdgo.GoUInt32);
        return v;
    }
    public var nsect(get, set) : std.UInt;
    function get_nsect():std.UInt return this.nsect;
    function set_nsect(v:std.UInt):std.UInt {
        this.nsect = (v : stdgo.GoUInt32);
        return v;
    }
    public var flag(get, set) : std.UInt;
    function get_flag():std.UInt return this.flag;
    function set_flag(v:std.UInt):std.UInt {
        this.flag = (v : stdgo.GoUInt32);
        return v;
    }
    public function new(?cmd:LoadCmd, ?len:std.UInt, ?name:haxe.ds.Vector<std.UInt>, ?addr:haxe.UInt64, ?memsz:haxe.UInt64, ?offset:haxe.UInt64, ?filesz:haxe.UInt64, ?maxprot:std.UInt, ?prot:std.UInt, ?nsect:std.UInt, ?flag:std.UInt) this = new stdgo._internal.debug.macho.Macho_Segment64.Segment64(
cmd,
(len : stdgo.GoUInt32),
([for (i in name) (i : stdgo.GoUInt8)] : stdgo.GoArray<stdgo.GoUInt8>),
(addr : stdgo.GoUInt64),
(memsz : stdgo.GoUInt64),
(offset : stdgo.GoUInt64),
(filesz : stdgo.GoUInt64),
(maxprot : stdgo.GoUInt32),
(prot : stdgo.GoUInt32),
(nsect : stdgo.GoUInt32),
(flag : stdgo.GoUInt32));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
