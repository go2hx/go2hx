package stdgo._internal.debug.pe;
@:structInit @:using(stdgo._internal.debug.pe.Pe_sectionheader_static_extension.SectionHeader_static_extension) class SectionHeader {
    public var name : stdgo.GoString = "";
    public var virtualSize : stdgo.GoUInt32 = 0;
    public var virtualAddress : stdgo.GoUInt32 = 0;
    public var size : stdgo.GoUInt32 = 0;
    public var offset : stdgo.GoUInt32 = 0;
    public var pointerToRelocations : stdgo.GoUInt32 = 0;
    public var pointerToLineNumbers : stdgo.GoUInt32 = 0;
    public var numberOfRelocations : stdgo.GoUInt16 = 0;
    public var numberOfLineNumbers : stdgo.GoUInt16 = 0;
    public var characteristics : stdgo.GoUInt32 = 0;
    public function new(?name:stdgo.GoString, ?virtualSize:stdgo.GoUInt32, ?virtualAddress:stdgo.GoUInt32, ?size:stdgo.GoUInt32, ?offset:stdgo.GoUInt32, ?pointerToRelocations:stdgo.GoUInt32, ?pointerToLineNumbers:stdgo.GoUInt32, ?numberOfRelocations:stdgo.GoUInt16, ?numberOfLineNumbers:stdgo.GoUInt16, ?characteristics:stdgo.GoUInt32) {
        if (name != null) this.name = name;
        if (virtualSize != null) this.virtualSize = virtualSize;
        if (virtualAddress != null) this.virtualAddress = virtualAddress;
        if (size != null) this.size = size;
        if (offset != null) this.offset = offset;
        if (pointerToRelocations != null) this.pointerToRelocations = pointerToRelocations;
        if (pointerToLineNumbers != null) this.pointerToLineNumbers = pointerToLineNumbers;
        if (numberOfRelocations != null) this.numberOfRelocations = numberOfRelocations;
        if (numberOfLineNumbers != null) this.numberOfLineNumbers = numberOfLineNumbers;
        if (characteristics != null) this.characteristics = characteristics;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new SectionHeader(name, virtualSize, virtualAddress, size, offset, pointerToRelocations, pointerToLineNumbers, numberOfRelocations, numberOfLineNumbers, characteristics);
    }
}
