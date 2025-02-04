package stdgo._internal.debug.macho;
@:structInit @:using(stdgo._internal.debug.macho.Macho_sectionheader_static_extension.SectionHeader_static_extension) class SectionHeader {
    public var name : stdgo.GoString = "";
    public var seg : stdgo.GoString = "";
    public var addr : stdgo.GoUInt64 = 0;
    public var size : stdgo.GoUInt64 = 0;
    public var offset : stdgo.GoUInt32 = 0;
    public var align : stdgo.GoUInt32 = 0;
    public var reloff : stdgo.GoUInt32 = 0;
    public var nreloc : stdgo.GoUInt32 = 0;
    public var flags : stdgo.GoUInt32 = 0;
    public function new(?name:stdgo.GoString, ?seg:stdgo.GoString, ?addr:stdgo.GoUInt64, ?size:stdgo.GoUInt64, ?offset:stdgo.GoUInt32, ?align:stdgo.GoUInt32, ?reloff:stdgo.GoUInt32, ?nreloc:stdgo.GoUInt32, ?flags:stdgo.GoUInt32) {
        if (name != null) this.name = name;
        if (seg != null) this.seg = seg;
        if (addr != null) this.addr = addr;
        if (size != null) this.size = size;
        if (offset != null) this.offset = offset;
        if (align != null) this.align = align;
        if (reloff != null) this.reloff = reloff;
        if (nreloc != null) this.nreloc = nreloc;
        if (flags != null) this.flags = flags;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new SectionHeader(name, seg, addr, size, offset, align, reloff, nreloc, flags);
    }
}
