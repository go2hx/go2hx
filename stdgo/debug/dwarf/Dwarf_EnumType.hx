package stdgo.debug.dwarf;
@:structInit @:using(stdgo.debug.dwarf.Dwarf.EnumType_static_extension) abstract EnumType(stdgo._internal.debug.dwarf.Dwarf_EnumType.EnumType) from stdgo._internal.debug.dwarf.Dwarf_EnumType.EnumType to stdgo._internal.debug.dwarf.Dwarf_EnumType.EnumType {
    public var commonType(get, set) : CommonType;
    function get_commonType():CommonType return this.commonType;
    function set_commonType(v:CommonType):CommonType {
        this.commonType = v;
        return v;
    }
    public var enumName(get, set) : String;
    function get_enumName():String return this.enumName;
    function set_enumName(v:String):String {
        this.enumName = (v : stdgo.GoString);
        return v;
    }
    public var val(get, set) : Array<EnumValue_>;
    function get_val():Array<EnumValue_> return [for (i in this.val) i];
    function set_val(v:Array<EnumValue_>):Array<EnumValue_> {
        this.val = ([for (i in v) (i : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_EnumValue_.EnumValue_>)] : stdgo.Slice<stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_EnumValue_.EnumValue_>>);
        return v;
    }
    public function new(?commonType:CommonType, ?enumName:String, ?val:Array<EnumValue_>) this = new stdgo._internal.debug.dwarf.Dwarf_EnumType.EnumType(commonType, (enumName : stdgo.GoString), ([for (i in val) (i : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_EnumValue_.EnumValue_>)] : stdgo.Slice<stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_EnumValue_.EnumValue_>>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
