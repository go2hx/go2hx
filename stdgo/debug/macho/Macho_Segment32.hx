package stdgo.debug.macho;
@:structInit @:using(stdgo.debug.macho.Macho.Segment32_static_extension) abstract Segment32(stdgo._internal.debug.macho.Macho_Segment32.Segment32) from stdgo._internal.debug.macho.Macho_Segment32.Segment32 to stdgo._internal.debug.macho.Macho_Segment32.Segment32 {
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
    public var addr(get, set) : std.UInt;
    function get_addr():std.UInt return this.addr;
    function set_addr(v:std.UInt):std.UInt {
        this.addr = (v : stdgo.GoUInt32);
        return v;
    }
    public var memsz(get, set) : std.UInt;
    function get_memsz():std.UInt return this.memsz;
    function set_memsz(v:std.UInt):std.UInt {
        this.memsz = (v : stdgo.GoUInt32);
        return v;
    }
    public var offset(get, set) : std.UInt;
    function get_offset():std.UInt return this.offset;
    function set_offset(v:std.UInt):std.UInt {
        this.offset = (v : stdgo.GoUInt32);
        return v;
    }
    public var filesz(get, set) : std.UInt;
    function get_filesz():std.UInt return this.filesz;
    function set_filesz(v:std.UInt):std.UInt {
        this.filesz = (v : stdgo.GoUInt32);
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
    public function new(?cmd:LoadCmd, ?len:std.UInt, ?name:haxe.ds.Vector<std.UInt>, ?addr:std.UInt, ?memsz:std.UInt, ?offset:std.UInt, ?filesz:std.UInt, ?maxprot:std.UInt, ?prot:std.UInt, ?nsect:std.UInt, ?flag:std.UInt) this = new stdgo._internal.debug.macho.Macho_Segment32.Segment32(
cmd,
(len : stdgo.GoUInt32),
([for (i in name) (i : stdgo.GoUInt8)] : stdgo.GoArray<stdgo.GoUInt8>),
(addr : stdgo.GoUInt32),
(memsz : stdgo.GoUInt32),
(offset : stdgo.GoUInt32),
(filesz : stdgo.GoUInt32),
(maxprot : stdgo.GoUInt32),
(prot : stdgo.GoUInt32),
(nsect : stdgo.GoUInt32),
(flag : stdgo.GoUInt32));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
