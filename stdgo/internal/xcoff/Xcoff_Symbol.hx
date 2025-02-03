package stdgo.internal.xcoff;
@:structInit @:using(stdgo.internal.xcoff.Xcoff.Symbol_static_extension) abstract Symbol(stdgo._internal.internal.xcoff.Xcoff_Symbol.Symbol) from stdgo._internal.internal.xcoff.Xcoff_Symbol.Symbol to stdgo._internal.internal.xcoff.Xcoff_Symbol.Symbol {
    public var name(get, set) : String;
    function get_name():String return this.name;
    function set_name(v:String):String {
        this.name = (v : stdgo.GoString);
        return v;
    }
    public var value(get, set) : haxe.UInt64;
    function get_value():haxe.UInt64 return this.value;
    function set_value(v:haxe.UInt64):haxe.UInt64 {
        this.value = (v : stdgo.GoUInt64);
        return v;
    }
    public var sectionNumber(get, set) : StdTypes.Int;
    function get_sectionNumber():StdTypes.Int return this.sectionNumber;
    function set_sectionNumber(v:StdTypes.Int):StdTypes.Int {
        this.sectionNumber = (v : stdgo.GoInt);
        return v;
    }
    public var storageClass(get, set) : StdTypes.Int;
    function get_storageClass():StdTypes.Int return this.storageClass;
    function set_storageClass(v:StdTypes.Int):StdTypes.Int {
        this.storageClass = (v : stdgo.GoInt);
        return v;
    }
    public var auxFcn(get, set) : AuxiliaryFcn;
    function get_auxFcn():AuxiliaryFcn return this.auxFcn;
    function set_auxFcn(v:AuxiliaryFcn):AuxiliaryFcn {
        this.auxFcn = v;
        return v;
    }
    public var auxCSect(get, set) : AuxiliaryCSect;
    function get_auxCSect():AuxiliaryCSect return this.auxCSect;
    function set_auxCSect(v:AuxiliaryCSect):AuxiliaryCSect {
        this.auxCSect = v;
        return v;
    }
    public function new(?name:String, ?value:haxe.UInt64, ?sectionNumber:StdTypes.Int, ?storageClass:StdTypes.Int, ?auxFcn:AuxiliaryFcn, ?auxCSect:AuxiliaryCSect) this = new stdgo._internal.internal.xcoff.Xcoff_Symbol.Symbol((name : stdgo.GoString), (value : stdgo.GoUInt64), (sectionNumber : stdgo.GoInt), (storageClass : stdgo.GoInt), auxFcn, auxCSect);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
