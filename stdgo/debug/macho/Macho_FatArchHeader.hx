package stdgo.debug.macho;
@:structInit @:using(stdgo.debug.macho.Macho.FatArchHeader_static_extension) abstract FatArchHeader(stdgo._internal.debug.macho.Macho_FatArchHeader.FatArchHeader) from stdgo._internal.debug.macho.Macho_FatArchHeader.FatArchHeader to stdgo._internal.debug.macho.Macho_FatArchHeader.FatArchHeader {
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
    public var offset(get, set) : std.UInt;
    function get_offset():std.UInt return this.offset;
    function set_offset(v:std.UInt):std.UInt {
        this.offset = (v : stdgo.GoUInt32);
        return v;
    }
    public var size(get, set) : std.UInt;
    function get_size():std.UInt return this.size;
    function set_size(v:std.UInt):std.UInt {
        this.size = (v : stdgo.GoUInt32);
        return v;
    }
    public var align(get, set) : std.UInt;
    function get_align():std.UInt return this.align;
    function set_align(v:std.UInt):std.UInt {
        this.align = (v : stdgo.GoUInt32);
        return v;
    }
    public function new(?cpu:Cpu, ?subCpu:std.UInt, ?offset:std.UInt, ?size:std.UInt, ?align:std.UInt) this = new stdgo._internal.debug.macho.Macho_FatArchHeader.FatArchHeader(cpu, (subCpu : stdgo.GoUInt32), (offset : stdgo.GoUInt32), (size : stdgo.GoUInt32), (align : stdgo.GoUInt32));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
