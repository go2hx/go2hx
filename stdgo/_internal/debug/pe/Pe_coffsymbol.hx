package stdgo._internal.debug.pe;
@:structInit @:using(stdgo._internal.debug.pe.Pe_coffsymbol_static_extension.COFFSymbol_static_extension) class COFFSymbol {
    public var name : stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(8, 8).__setNumber32__();
    public var value : stdgo.GoUInt32 = 0;
    public var sectionNumber : stdgo.GoInt16 = 0;
    public var type : stdgo.GoUInt16 = 0;
    public var storageClass : stdgo.GoUInt8 = 0;
    public var numberOfAuxSymbols : stdgo.GoUInt8 = 0;
    public function new(?name:stdgo.GoArray<stdgo.GoUInt8>, ?value:stdgo.GoUInt32, ?sectionNumber:stdgo.GoInt16, ?type:stdgo.GoUInt16, ?storageClass:stdgo.GoUInt8, ?numberOfAuxSymbols:stdgo.GoUInt8) {
        if (name != null) this.name = name;
        if (value != null) this.value = value;
        if (sectionNumber != null) this.sectionNumber = sectionNumber;
        if (type != null) this.type = type;
        if (storageClass != null) this.storageClass = storageClass;
        if (numberOfAuxSymbols != null) this.numberOfAuxSymbols = numberOfAuxSymbols;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new COFFSymbol(name, value, sectionNumber, type, storageClass, numberOfAuxSymbols);
    }
}
