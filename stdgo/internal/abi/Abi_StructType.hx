package stdgo.internal.abi;
@:structInit @:using(stdgo.internal.abi.Abi.StructType_static_extension) abstract StructType(stdgo._internal.internal.abi.Abi_StructType.StructType) from stdgo._internal.internal.abi.Abi_StructType.StructType to stdgo._internal.internal.abi.Abi_StructType.StructType {
    public var type(get, set) : Type_;
    function get_type():Type_ return this.type;
    function set_type(v:Type_):Type_ {
        this.type = v;
        return v;
    }
    public var pkgPath(get, set) : Name;
    function get_pkgPath():Name return this.pkgPath;
    function set_pkgPath(v:Name):Name {
        this.pkgPath = v;
        return v;
    }
    public var fields(get, set) : Array<StructField>;
    function get_fields():Array<StructField> return [for (i in this.fields) i];
    function set_fields(v:Array<StructField>):Array<StructField> {
        this.fields = ([for (i in v) i] : stdgo.Slice<stdgo._internal.internal.abi.Abi_StructField.StructField>);
        return v;
    }
    public function new(?type:Type_, ?pkgPath:Name, ?fields:Array<StructField>) this = new stdgo._internal.internal.abi.Abi_StructType.StructType(type, pkgPath, ([for (i in fields) i] : stdgo.Slice<stdgo._internal.internal.abi.Abi_StructField.StructField>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
