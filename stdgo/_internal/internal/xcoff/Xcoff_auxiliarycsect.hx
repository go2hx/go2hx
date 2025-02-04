package stdgo._internal.internal.xcoff;
@:structInit @:using(stdgo._internal.internal.xcoff.Xcoff_auxiliarycsect_static_extension.AuxiliaryCSect_static_extension) class AuxiliaryCSect {
    public var length_ : stdgo.GoInt64 = 0;
    public var storageMappingClass : stdgo.GoInt = 0;
    public var symbolType : stdgo.GoInt = 0;
    public function new(?length_:stdgo.GoInt64, ?storageMappingClass:stdgo.GoInt, ?symbolType:stdgo.GoInt) {
        if (length_ != null) this.length_ = length_;
        if (storageMappingClass != null) this.storageMappingClass = storageMappingClass;
        if (symbolType != null) this.symbolType = symbolType;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new AuxiliaryCSect(length_, storageMappingClass, symbolType);
    }
}
