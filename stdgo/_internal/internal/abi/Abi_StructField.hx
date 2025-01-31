package stdgo._internal.internal.abi;
import stdgo._internal.unsafe.Unsafe;
@:structInit @:using(stdgo._internal.internal.abi.Abi_StructField_static_extension.StructField_static_extension) class StructField {
    public var name : stdgo._internal.internal.abi.Abi_Name.Name = ({} : stdgo._internal.internal.abi.Abi_Name.Name);
    public var typ : stdgo.Ref<stdgo._internal.internal.abi.Abi_Type_.Type_> = (null : stdgo.Ref<stdgo._internal.internal.abi.Abi_Type_.Type_>);
    public var offset : stdgo.GoUIntptr = 0;
    public function new(?name:stdgo._internal.internal.abi.Abi_Name.Name, ?typ:stdgo.Ref<stdgo._internal.internal.abi.Abi_Type_.Type_>, ?offset:stdgo.GoUIntptr) {
        if (name != null) this.name = name;
        if (typ != null) this.typ = typ;
        if (offset != null) this.offset = offset;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new StructField(name, typ, offset);
    }
}
