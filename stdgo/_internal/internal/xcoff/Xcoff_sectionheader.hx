package stdgo._internal.internal.xcoff;
@:structInit @:using(stdgo._internal.internal.xcoff.Xcoff_sectionheader_static_extension.SectionHeader_static_extension) class SectionHeader {
    public var name : stdgo.GoString = "";
    public var virtualAddress : stdgo.GoUInt64 = 0;
    public var size : stdgo.GoUInt64 = 0;
    public var type : stdgo.GoUInt32 = 0;
    public var relptr : stdgo.GoUInt64 = 0;
    public var nreloc : stdgo.GoUInt32 = 0;
    public function new(?name:stdgo.GoString, ?virtualAddress:stdgo.GoUInt64, ?size:stdgo.GoUInt64, ?type:stdgo.GoUInt32, ?relptr:stdgo.GoUInt64, ?nreloc:stdgo.GoUInt32) {
        if (name != null) this.name = name;
        if (virtualAddress != null) this.virtualAddress = virtualAddress;
        if (size != null) this.size = size;
        if (type != null) this.type = type;
        if (relptr != null) this.relptr = relptr;
        if (nreloc != null) this.nreloc = nreloc;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new SectionHeader(name, virtualAddress, size, type, relptr, nreloc);
    }
}
