package stdgo.debug.dwarf;
@:structInit @:using(stdgo.debug.dwarf.Dwarf.FuncType_static_extension) abstract FuncType(stdgo._internal.debug.dwarf.Dwarf_FuncType.FuncType) from stdgo._internal.debug.dwarf.Dwarf_FuncType.FuncType to stdgo._internal.debug.dwarf.Dwarf_FuncType.FuncType {
    public var commonType(get, set) : CommonType;
    function get_commonType():CommonType return this.commonType;
    function set_commonType(v:CommonType):CommonType {
        this.commonType = v;
        return v;
    }
    public var returnType(get, set) : Type_;
    function get_returnType():Type_ return this.returnType;
    function set_returnType(v:Type_):Type_ {
        this.returnType = v;
        return v;
    }
    public var paramType(get, set) : Array<Type_>;
    function get_paramType():Array<Type_> return [for (i in this.paramType) i];
    function set_paramType(v:Array<Type_>):Array<Type_> {
        this.paramType = ([for (i in v) i] : stdgo.Slice<stdgo._internal.debug.dwarf.Dwarf_Type_.Type_>);
        return v;
    }
    public function new(?commonType:CommonType, ?returnType:Type_, ?paramType:Array<Type_>) this = new stdgo._internal.debug.dwarf.Dwarf_FuncType.FuncType(commonType, returnType, ([for (i in paramType) i] : stdgo.Slice<stdgo._internal.debug.dwarf.Dwarf_Type_.Type_>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
