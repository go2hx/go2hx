package stdgo._internal.debug.macho;
@:structInit @:using(stdgo._internal.debug.macho.Macho_segment32_static_extension.Segment32_static_extension) class Segment32 {
    public var cmd : stdgo._internal.debug.macho.Macho_loadcmd.LoadCmd = ((0 : stdgo.GoUInt32) : stdgo._internal.debug.macho.Macho_loadcmd.LoadCmd);
    public var len : stdgo.GoUInt32 = 0;
    public var name : stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(16, 16).__setNumber32__();
    public var addr : stdgo.GoUInt32 = 0;
    public var memsz : stdgo.GoUInt32 = 0;
    public var offset : stdgo.GoUInt32 = 0;
    public var filesz : stdgo.GoUInt32 = 0;
    public var maxprot : stdgo.GoUInt32 = 0;
    public var prot : stdgo.GoUInt32 = 0;
    public var nsect : stdgo.GoUInt32 = 0;
    public var flag : stdgo.GoUInt32 = 0;
    public function new(?cmd:stdgo._internal.debug.macho.Macho_loadcmd.LoadCmd, ?len:stdgo.GoUInt32, ?name:stdgo.GoArray<stdgo.GoUInt8>, ?addr:stdgo.GoUInt32, ?memsz:stdgo.GoUInt32, ?offset:stdgo.GoUInt32, ?filesz:stdgo.GoUInt32, ?maxprot:stdgo.GoUInt32, ?prot:stdgo.GoUInt32, ?nsect:stdgo.GoUInt32, ?flag:stdgo.GoUInt32) {
        if (cmd != null) this.cmd = cmd;
        if (len != null) this.len = len;
        if (name != null) this.name = name;
        if (addr != null) this.addr = addr;
        if (memsz != null) this.memsz = memsz;
        if (offset != null) this.offset = offset;
        if (filesz != null) this.filesz = filesz;
        if (maxprot != null) this.maxprot = maxprot;
        if (prot != null) this.prot = prot;
        if (nsect != null) this.nsect = nsect;
        if (flag != null) this.flag = flag;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Segment32(
cmd,
len,
name,
addr,
memsz,
offset,
filesz,
maxprot,
prot,
nsect,
flag);
    }
}
