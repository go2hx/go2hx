package stdgo.internal.xcoff;
@:structInit @:using(stdgo.internal.xcoff.Xcoff.AuxiliaryCSect_static_extension) abstract AuxiliaryCSect(stdgo._internal.internal.xcoff.Xcoff_AuxiliaryCSect.AuxiliaryCSect) from stdgo._internal.internal.xcoff.Xcoff_AuxiliaryCSect.AuxiliaryCSect to stdgo._internal.internal.xcoff.Xcoff_AuxiliaryCSect.AuxiliaryCSect {
    public var length_(get, set) : haxe.Int64;
    function get_length_():haxe.Int64 return this.length_;
    function set_length_(v:haxe.Int64):haxe.Int64 {
        this.length_ = (v : stdgo.GoInt64);
        return v;
    }
    public var storageMappingClass(get, set) : StdTypes.Int;
    function get_storageMappingClass():StdTypes.Int return this.storageMappingClass;
    function set_storageMappingClass(v:StdTypes.Int):StdTypes.Int {
        this.storageMappingClass = (v : stdgo.GoInt);
        return v;
    }
    public var symbolType(get, set) : StdTypes.Int;
    function get_symbolType():StdTypes.Int return this.symbolType;
    function set_symbolType(v:StdTypes.Int):StdTypes.Int {
        this.symbolType = (v : stdgo.GoInt);
        return v;
    }
    public function new(?length_:haxe.Int64, ?storageMappingClass:StdTypes.Int, ?symbolType:StdTypes.Int) this = new stdgo._internal.internal.xcoff.Xcoff_AuxiliaryCSect.AuxiliaryCSect((length_ : stdgo.GoInt64), (storageMappingClass : stdgo.GoInt), (symbolType : stdgo.GoInt));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
