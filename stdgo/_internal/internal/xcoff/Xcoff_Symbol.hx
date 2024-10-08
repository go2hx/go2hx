package stdgo._internal.internal.xcoff;
@:structInit class Symbol {
    public var name : stdgo.GoString = "";
    public var value : stdgo.GoUInt64 = 0;
    public var sectionNumber : stdgo.GoInt = 0;
    public var storageClass : stdgo.GoInt = 0;
    public var auxFcn : stdgo._internal.internal.xcoff.Xcoff_AuxiliaryFcn.AuxiliaryFcn = ({} : stdgo._internal.internal.xcoff.Xcoff_AuxiliaryFcn.AuxiliaryFcn);
    public var auxCSect : stdgo._internal.internal.xcoff.Xcoff_AuxiliaryCSect.AuxiliaryCSect = ({} : stdgo._internal.internal.xcoff.Xcoff_AuxiliaryCSect.AuxiliaryCSect);
    public function new(?name:stdgo.GoString, ?value:stdgo.GoUInt64, ?sectionNumber:stdgo.GoInt, ?storageClass:stdgo.GoInt, ?auxFcn:stdgo._internal.internal.xcoff.Xcoff_AuxiliaryFcn.AuxiliaryFcn, ?auxCSect:stdgo._internal.internal.xcoff.Xcoff_AuxiliaryCSect.AuxiliaryCSect) {
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
