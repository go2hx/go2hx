package stdgo._internal.debug.pe;
@:structInit @:using(stdgo._internal.debug.pe.Pe_symbol_static_extension.Symbol_static_extension) class Symbol {
    public var name : stdgo.GoString = "";
    public var value : stdgo.GoUInt32 = 0;
    public var sectionNumber : stdgo.GoInt16 = 0;
    public var type : stdgo.GoUInt16 = 0;
    public var storageClass : stdgo.GoUInt8 = 0;
    public function new(?name:stdgo.GoString, ?value:stdgo.GoUInt32, ?sectionNumber:stdgo.GoInt16, ?type:stdgo.GoUInt16, ?storageClass:stdgo.GoUInt8) {
        if (name != null) this.name = name;
        if (value != null) this.value = value;
        if (sectionNumber != null) this.sectionNumber = sectionNumber;
        if (type != null) this.type = type;
        if (storageClass != null) this.storageClass = storageClass;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Symbol(name, value, sectionNumber, type, storageClass);
    }
}
