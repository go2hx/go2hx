package stdgo._internal.debug.elf;
@:structInit @:using(stdgo._internal.debug.elf.Elf_section64_static_extension.Section64_static_extension) class Section64 {
    public var name : stdgo.GoUInt32 = 0;
    public var type : stdgo.GoUInt32 = 0;
    public var flags : stdgo.GoUInt64 = 0;
    public var addr : stdgo.GoUInt64 = 0;
    public var off : stdgo.GoUInt64 = 0;
    public var size : stdgo.GoUInt64 = 0;
    public var link : stdgo.GoUInt32 = 0;
    public var info : stdgo.GoUInt32 = 0;
    public var addralign : stdgo.GoUInt64 = 0;
    public var entsize : stdgo.GoUInt64 = 0;
    public function new(?name:stdgo.GoUInt32, ?type:stdgo.GoUInt32, ?flags:stdgo.GoUInt64, ?addr:stdgo.GoUInt64, ?off:stdgo.GoUInt64, ?size:stdgo.GoUInt64, ?link:stdgo.GoUInt32, ?info:stdgo.GoUInt32, ?addralign:stdgo.GoUInt64, ?entsize:stdgo.GoUInt64) {
        if (name != null) this.name = name;
        if (type != null) this.type = type;
        if (flags != null) this.flags = flags;
        if (addr != null) this.addr = addr;
        if (off != null) this.off = off;
        if (size != null) this.size = size;
        if (link != null) this.link = link;
        if (info != null) this.info = info;
        if (addralign != null) this.addralign = addralign;
        if (entsize != null) this.entsize = entsize;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Section64(name, type, flags, addr, off, size, link, info, addralign, entsize);
    }
}
