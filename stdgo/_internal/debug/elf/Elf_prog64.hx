package stdgo._internal.debug.elf;
@:structInit @:using(stdgo._internal.debug.elf.Elf_prog64_static_extension.Prog64_static_extension) class Prog64 {
    public var type : stdgo.GoUInt32 = 0;
    public var flags : stdgo.GoUInt32 = 0;
    public var off : stdgo.GoUInt64 = 0;
    public var vaddr : stdgo.GoUInt64 = 0;
    public var paddr : stdgo.GoUInt64 = 0;
    public var filesz : stdgo.GoUInt64 = 0;
    public var memsz : stdgo.GoUInt64 = 0;
    public var align : stdgo.GoUInt64 = 0;
    public function new(?type:stdgo.GoUInt32, ?flags:stdgo.GoUInt32, ?off:stdgo.GoUInt64, ?vaddr:stdgo.GoUInt64, ?paddr:stdgo.GoUInt64, ?filesz:stdgo.GoUInt64, ?memsz:stdgo.GoUInt64, ?align:stdgo.GoUInt64) {
        if (type != null) this.type = type;
        if (flags != null) this.flags = flags;
        if (off != null) this.off = off;
        if (vaddr != null) this.vaddr = vaddr;
        if (paddr != null) this.paddr = paddr;
        if (filesz != null) this.filesz = filesz;
        if (memsz != null) this.memsz = memsz;
        if (align != null) this.align = align;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Prog64(type, flags, off, vaddr, paddr, filesz, memsz, align);
    }
}
