package stdgo._internal.debug.pe;
@:structInit @:using(stdgo._internal.debug.pe.Pe_reloc_static_extension.Reloc_static_extension) class Reloc {
    public var virtualAddress : stdgo.GoUInt32 = 0;
    public var symbolTableIndex : stdgo.GoUInt32 = 0;
    public var type : stdgo.GoUInt16 = 0;
    public function new(?virtualAddress:stdgo.GoUInt32, ?symbolTableIndex:stdgo.GoUInt32, ?type:stdgo.GoUInt16) {
        if (virtualAddress != null) this.virtualAddress = virtualAddress;
        if (symbolTableIndex != null) this.symbolTableIndex = symbolTableIndex;
        if (type != null) this.type = type;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Reloc(virtualAddress, symbolTableIndex, type);
    }
}
