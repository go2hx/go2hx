package stdgo.debug.dwarf;
@:structInit @:using(stdgo.debug.dwarf.Dwarf.StructType_static_extension) abstract StructType(stdgo._internal.debug.dwarf.Dwarf_StructType.StructType) from stdgo._internal.debug.dwarf.Dwarf_StructType.StructType to stdgo._internal.debug.dwarf.Dwarf_StructType.StructType {
    public var commonType(get, set) : CommonType;
    function get_commonType():CommonType return this.commonType;
    function set_commonType(v:CommonType):CommonType {
        this.commonType = v;
        return v;
    }
    public var structName(get, set) : String;
    function get_structName():String return this.structName;
    function set_structName(v:String):String {
        this.structName = (v : stdgo.GoString);
        return v;
    }
    public var kind(get, set) : String;
    function get_kind():String return this.kind;
    function set_kind(v:String):String {
        this.kind = (v : stdgo.GoString);
        return v;
    }
    public var field(get, set) : Array<StructField>;
    function get_field():Array<StructField> return [for (i in this.field) i];
    function set_field(v:Array<StructField>):Array<StructField> {
        this.field = ([for (i in v) (i : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_StructField.StructField>)] : stdgo.Slice<stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_StructField.StructField>>);
        return v;
    }
    public var incomplete(get, set) : Bool;
    function get_incomplete():Bool return this.incomplete;
    function set_incomplete(v:Bool):Bool {
        this.incomplete = v;
        return v;
    }
    public function new(?commonType:CommonType, ?structName:String, ?kind:String, ?field:Array<StructField>, ?incomplete:Bool) this = new stdgo._internal.debug.dwarf.Dwarf_StructType.StructType(commonType, (structName : stdgo.GoString), (kind : stdgo.GoString), ([for (i in field) (i : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_StructField.StructField>)] : stdgo.Slice<stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_StructField.StructField>>), incomplete);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
