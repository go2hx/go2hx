package stdgo._internal.internal.xcoff;
@:structInit @:using(stdgo._internal.internal.xcoff.Xcoff_symbol_static_extension.Symbol_static_extension) class Symbol {
    public var name : stdgo.GoString = "";
    public var value : stdgo.GoUInt64 = 0;
    public var sectionNumber : stdgo.GoInt = 0;
    public var storageClass : stdgo.GoInt = 0;
    public var auxFcn : stdgo._internal.internal.xcoff.Xcoff_auxiliaryfcn.AuxiliaryFcn = ({} : stdgo._internal.internal.xcoff.Xcoff_auxiliaryfcn.AuxiliaryFcn);
    public var auxCSect : stdgo._internal.internal.xcoff.Xcoff_auxiliarycsect.AuxiliaryCSect = ({} : stdgo._internal.internal.xcoff.Xcoff_auxiliarycsect.AuxiliaryCSect);
    public function new(?name:stdgo.GoString, ?value:stdgo.GoUInt64, ?sectionNumber:stdgo.GoInt, ?storageClass:stdgo.GoInt, ?auxFcn:stdgo._internal.internal.xcoff.Xcoff_auxiliaryfcn.AuxiliaryFcn, ?auxCSect:stdgo._internal.internal.xcoff.Xcoff_auxiliarycsect.AuxiliaryCSect) {
        if (name != null) this.name = name;
        if (value != null) this.value = value;
        if (sectionNumber != null) this.sectionNumber = sectionNumber;
        if (storageClass != null) this.storageClass = storageClass;
        if (auxFcn != null) this.auxFcn = auxFcn;
        if (auxCSect != null) this.auxCSect = auxCSect;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Symbol(name, value, sectionNumber, storageClass, auxFcn, auxCSect);
    }
}
