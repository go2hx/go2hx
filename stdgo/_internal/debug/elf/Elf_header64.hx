package stdgo._internal.debug.elf;
@:structInit @:using(stdgo._internal.debug.elf.Elf_header64_static_extension.Header64_static_extension) class Header64 {
    public var ident : stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(16, 16).__setNumber32__();
    public var type : stdgo.GoUInt16 = 0;
    public var machine : stdgo.GoUInt16 = 0;
    public var version : stdgo.GoUInt32 = 0;
    public var entry : stdgo.GoUInt64 = 0;
    public var phoff : stdgo.GoUInt64 = 0;
    public var shoff : stdgo.GoUInt64 = 0;
    public var flags : stdgo.GoUInt32 = 0;
    public var ehsize : stdgo.GoUInt16 = 0;
    public var phentsize : stdgo.GoUInt16 = 0;
    public var phnum : stdgo.GoUInt16 = 0;
    public var shentsize : stdgo.GoUInt16 = 0;
    public var shnum : stdgo.GoUInt16 = 0;
    public var shstrndx : stdgo.GoUInt16 = 0;
    public function new(?ident:stdgo.GoArray<stdgo.GoUInt8>, ?type:stdgo.GoUInt16, ?machine:stdgo.GoUInt16, ?version:stdgo.GoUInt32, ?entry:stdgo.GoUInt64, ?phoff:stdgo.GoUInt64, ?shoff:stdgo.GoUInt64, ?flags:stdgo.GoUInt32, ?ehsize:stdgo.GoUInt16, ?phentsize:stdgo.GoUInt16, ?phnum:stdgo.GoUInt16, ?shentsize:stdgo.GoUInt16, ?shnum:stdgo.GoUInt16, ?shstrndx:stdgo.GoUInt16) {
        if (ident != null) this.ident = ident;
        if (type != null) this.type = type;
        if (machine != null) this.machine = machine;
        if (version != null) this.version = version;
        if (entry != null) this.entry = entry;
        if (phoff != null) this.phoff = phoff;
        if (shoff != null) this.shoff = shoff;
        if (flags != null) this.flags = flags;
        if (ehsize != null) this.ehsize = ehsize;
        if (phentsize != null) this.phentsize = phentsize;
        if (phnum != null) this.phnum = phnum;
        if (shentsize != null) this.shentsize = shentsize;
        if (shnum != null) this.shnum = shnum;
        if (shstrndx != null) this.shstrndx = shstrndx;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Header64(
ident,
type,
machine,
version,
entry,
phoff,
shoff,
flags,
ehsize,
phentsize,
phnum,
shentsize,
shnum,
shstrndx);
    }
}
