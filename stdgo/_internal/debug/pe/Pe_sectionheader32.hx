package stdgo._internal.debug.pe;
@:structInit @:using(stdgo._internal.debug.pe.Pe_sectionheader32_static_extension.SectionHeader32_static_extension) class SectionHeader32 {
    public var name : stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(8, 8).__setNumber32__();
    public var virtualSize : stdgo.GoUInt32 = 0;
    public var virtualAddress : stdgo.GoUInt32 = 0;
    public var sizeOfRawData : stdgo.GoUInt32 = 0;
    public var pointerToRawData : stdgo.GoUInt32 = 0;
    public var pointerToRelocations : stdgo.GoUInt32 = 0;
    public var pointerToLineNumbers : stdgo.GoUInt32 = 0;
    public var numberOfRelocations : stdgo.GoUInt16 = 0;
    public var numberOfLineNumbers : stdgo.GoUInt16 = 0;
    public var characteristics : stdgo.GoUInt32 = 0;
    public function new(?name:stdgo.GoArray<stdgo.GoUInt8>, ?virtualSize:stdgo.GoUInt32, ?virtualAddress:stdgo.GoUInt32, ?sizeOfRawData:stdgo.GoUInt32, ?pointerToRawData:stdgo.GoUInt32, ?pointerToRelocations:stdgo.GoUInt32, ?pointerToLineNumbers:stdgo.GoUInt32, ?numberOfRelocations:stdgo.GoUInt16, ?numberOfLineNumbers:stdgo.GoUInt16, ?characteristics:stdgo.GoUInt32) {
        if (name != null) this.name = name;
        if (virtualSize != null) this.virtualSize = virtualSize;
        if (virtualAddress != null) this.virtualAddress = virtualAddress;
        if (sizeOfRawData != null) this.sizeOfRawData = sizeOfRawData;
        if (pointerToRawData != null) this.pointerToRawData = pointerToRawData;
        if (pointerToRelocations != null) this.pointerToRelocations = pointerToRelocations;
        if (pointerToLineNumbers != null) this.pointerToLineNumbers = pointerToLineNumbers;
        if (numberOfRelocations != null) this.numberOfRelocations = numberOfRelocations;
        if (numberOfLineNumbers != null) this.numberOfLineNumbers = numberOfLineNumbers;
        if (characteristics != null) this.characteristics = characteristics;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new SectionHeader32(name, virtualSize, virtualAddress, sizeOfRawData, pointerToRawData, pointerToRelocations, pointerToLineNumbers, numberOfRelocations, numberOfLineNumbers, characteristics);
    }
}
