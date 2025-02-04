package stdgo._internal.internal.abi;
@:keep @:allow(stdgo._internal.internal.abi.Abi.StructField_asInterface) class StructField_static_extension {
    @:keep
    @:tdfield
    static public function embedded( _f:stdgo.Ref<stdgo._internal.internal.abi.Abi_structfield.StructField>):Bool {
        @:recv var _f:stdgo.Ref<stdgo._internal.internal.abi.Abi_structfield.StructField> = _f;
        return (@:checkr _f ?? throw "null pointer dereference").name.isEmbedded();
    }
}
