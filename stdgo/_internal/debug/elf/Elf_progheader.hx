package stdgo._internal.debug.elf;
@:structInit @:using(stdgo._internal.debug.elf.Elf_progheader_static_extension.ProgHeader_static_extension) class ProgHeader {
    public var type : stdgo._internal.debug.elf.Elf_progtype.ProgType = ((0 : stdgo.GoInt) : stdgo._internal.debug.elf.Elf_progtype.ProgType);
    public var flags : stdgo._internal.debug.elf.Elf_progflag.ProgFlag = ((0 : stdgo.GoUInt32) : stdgo._internal.debug.elf.Elf_progflag.ProgFlag);
    public var off : stdgo.GoUInt64 = 0;
    public var vaddr : stdgo.GoUInt64 = 0;
    public var paddr : stdgo.GoUInt64 = 0;
    public var filesz : stdgo.GoUInt64 = 0;
    public var memsz : stdgo.GoUInt64 = 0;
    public var align : stdgo.GoUInt64 = 0;
    public function new(?type:stdgo._internal.debug.elf.Elf_progtype.ProgType, ?flags:stdgo._internal.debug.elf.Elf_progflag.ProgFlag, ?off:stdgo.GoUInt64, ?vaddr:stdgo.GoUInt64, ?paddr:stdgo.GoUInt64, ?filesz:stdgo.GoUInt64, ?memsz:stdgo.GoUInt64, ?align:stdgo.GoUInt64) {
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
        return new ProgHeader(type, flags, off, vaddr, paddr, filesz, memsz, align);
    }
}
