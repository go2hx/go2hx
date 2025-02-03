package stdgo.internal.abi;
@:structInit @:using(stdgo.internal.abi.Abi.StructField_static_extension) abstract StructField(stdgo._internal.internal.abi.Abi_StructField.StructField) from stdgo._internal.internal.abi.Abi_StructField.StructField to stdgo._internal.internal.abi.Abi_StructField.StructField {
    public var name(get, set) : Name;
    function get_name():Name return this.name;
    function set_name(v:Name):Name {
        this.name = v;
        return v;
    }
    public var typ(get, set) : Type_;
    function get_typ():Type_ return this.typ;
    function set_typ(v:Type_):Type_ {
        this.typ = (v : stdgo.Ref<stdgo._internal.internal.abi.Abi_Type_.Type_>);
        return v;
    }
    public var offset(get, set) : stdgo.GoUIntptr;
    function get_offset():stdgo.GoUIntptr return this.offset;
    function set_offset(v:stdgo.GoUIntptr):stdgo.GoUIntptr {
        this.offset = (v : stdgo.GoUIntptr);
        return v;
    }
    public function new(?name:Name, ?typ:Type_, ?offset:stdgo.GoUIntptr) this = new stdgo._internal.internal.abi.Abi_StructField.StructField(name, (typ : stdgo.Ref<stdgo._internal.internal.abi.Abi_Type_.Type_>), (offset : stdgo.GoUIntptr));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
