package stdgo._internal.debug.elf;
@:structInit @:using(stdgo._internal.debug.elf.Elf_prog32_static_extension.Prog32_static_extension) class Prog32 {
    public var type : stdgo.GoUInt32 = 0;
    public var off : stdgo.GoUInt32 = 0;
    public var vaddr : stdgo.GoUInt32 = 0;
    public var paddr : stdgo.GoUInt32 = 0;
    public var filesz : stdgo.GoUInt32 = 0;
    public var memsz : stdgo.GoUInt32 = 0;
    public var flags : stdgo.GoUInt32 = 0;
    public var align : stdgo.GoUInt32 = 0;
    public function new(?type:stdgo.GoUInt32, ?off:stdgo.GoUInt32, ?vaddr:stdgo.GoUInt32, ?paddr:stdgo.GoUInt32, ?filesz:stdgo.GoUInt32, ?memsz:stdgo.GoUInt32, ?flags:stdgo.GoUInt32, ?align:stdgo.GoUInt32) {
        if (type != null) this.type = type;
        if (off != null) this.off = off;
        if (vaddr != null) this.vaddr = vaddr;
        if (paddr != null) this.paddr = paddr;
        if (filesz != null) this.filesz = filesz;
        if (memsz != null) this.memsz = memsz;
        if (flags != null) this.flags = flags;
        if (align != null) this.align = align;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Prog32(type, off, vaddr, paddr, filesz, memsz, flags, align);
    }
}
