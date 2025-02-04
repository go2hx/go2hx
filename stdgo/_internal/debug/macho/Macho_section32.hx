package stdgo._internal.debug.macho;
@:structInit @:using(stdgo._internal.debug.macho.Macho_section32_static_extension.Section32_static_extension) class Section32 {
    public var name : stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(16, 16).__setNumber32__();
    public var seg : stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(16, 16).__setNumber32__();
    public var addr : stdgo.GoUInt32 = 0;
    public var size : stdgo.GoUInt32 = 0;
    public var offset : stdgo.GoUInt32 = 0;
    public var align : stdgo.GoUInt32 = 0;
    public var reloff : stdgo.GoUInt32 = 0;
    public var nreloc : stdgo.GoUInt32 = 0;
    public var flags : stdgo.GoUInt32 = 0;
    public var reserve1 : stdgo.GoUInt32 = 0;
    public var reserve2 : stdgo.GoUInt32 = 0;
    public function new(?name:stdgo.GoArray<stdgo.GoUInt8>, ?seg:stdgo.GoArray<stdgo.GoUInt8>, ?addr:stdgo.GoUInt32, ?size:stdgo.GoUInt32, ?offset:stdgo.GoUInt32, ?align:stdgo.GoUInt32, ?reloff:stdgo.GoUInt32, ?nreloc:stdgo.GoUInt32, ?flags:stdgo.GoUInt32, ?reserve1:stdgo.GoUInt32, ?reserve2:stdgo.GoUInt32) {
        if (name != null) this.name = name;
        if (seg != null) this.seg = seg;
        if (addr != null) this.addr = addr;
        if (size != null) this.size = size;
        if (offset != null) this.offset = offset;
        if (align != null) this.align = align;
        if (reloff != null) this.reloff = reloff;
        if (nreloc != null) this.nreloc = nreloc;
        if (flags != null) this.flags = flags;
        if (reserve1 != null) this.reserve1 = reserve1;
        if (reserve2 != null) this.reserve2 = reserve2;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Section32(
name,
seg,
addr,
size,
offset,
align,
reloff,
nreloc,
flags,
reserve1,
reserve2);
    }
}
