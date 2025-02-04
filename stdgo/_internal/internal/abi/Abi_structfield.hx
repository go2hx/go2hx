package stdgo._internal.internal.abi;
@:structInit @:using(stdgo._internal.internal.abi.Abi_structfield_static_extension.StructField_static_extension) class StructField {
    public var name : stdgo._internal.internal.abi.Abi_name.Name = ({} : stdgo._internal.internal.abi.Abi_name.Name);
    public var typ : stdgo.Ref<stdgo._internal.internal.abi.Abi_type_.Type_> = (null : stdgo.Ref<stdgo._internal.internal.abi.Abi_type_.Type_>);
    public var offset : stdgo.GoUIntptr = new stdgo.GoUIntptr(0);
    public function new(?name:stdgo._internal.internal.abi.Abi_name.Name, ?typ:stdgo.Ref<stdgo._internal.internal.abi.Abi_type_.Type_>, ?offset:stdgo.GoUIntptr) {
        if (name != null) this.name = name;
        if (typ != null) this.typ = typ;
        if (offset != null) this.offset = offset;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new StructField(name, typ, offset);
    }
}
