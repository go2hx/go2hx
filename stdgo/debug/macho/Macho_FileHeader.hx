package stdgo.debug.macho;
@:structInit @:using(stdgo.debug.macho.Macho.FileHeader_static_extension) abstract FileHeader(stdgo._internal.debug.macho.Macho_FileHeader.FileHeader) from stdgo._internal.debug.macho.Macho_FileHeader.FileHeader to stdgo._internal.debug.macho.Macho_FileHeader.FileHeader {
    public var magic(get, set) : std.UInt;
    function get_magic():std.UInt return this.magic;
    function set_magic(v:std.UInt):std.UInt {
        this.magic = (v : stdgo.GoUInt32);
        return v;
    }
    public var cpu(get, set) : Cpu;
    function get_cpu():Cpu return this.cpu;
    function set_cpu(v:Cpu):Cpu {
        this.cpu = v;
        return v;
    }
    public var subCpu(get, set) : std.UInt;
    function get_subCpu():std.UInt return this.subCpu;
    function set_subCpu(v:std.UInt):std.UInt {
        this.subCpu = (v : stdgo.GoUInt32);
        return v;
    }
    public var type(get, set) : Type_;
    function get_type():Type_ return this.type;
    function set_type(v:Type_):Type_ {
        this.type = v;
        return v;
    }
    public var ncmd(get, set) : std.UInt;
    function get_ncmd():std.UInt return this.ncmd;
    function set_ncmd(v:std.UInt):std.UInt {
        this.ncmd = (v : stdgo.GoUInt32);
        return v;
    }
    public var cmdsz(get, set) : std.UInt;
    function get_cmdsz():std.UInt return this.cmdsz;
    function set_cmdsz(v:std.UInt):std.UInt {
        this.cmdsz = (v : stdgo.GoUInt32);
        return v;
    }
    public var flags(get, set) : std.UInt;
    function get_flags():std.UInt return this.flags;
    function set_flags(v:std.UInt):std.UInt {
        this.flags = (v : stdgo.GoUInt32);
        return v;
    }
    public function new(?magic:std.UInt, ?cpu:Cpu, ?subCpu:std.UInt, ?type:Type_, ?ncmd:std.UInt, ?cmdsz:std.UInt, ?flags:std.UInt) this = new stdgo._internal.debug.macho.Macho_FileHeader.FileHeader((magic : stdgo.GoUInt32), cpu, (subCpu : stdgo.GoUInt32), type, (ncmd : stdgo.GoUInt32), (cmdsz : stdgo.GoUInt32), (flags : stdgo.GoUInt32));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
