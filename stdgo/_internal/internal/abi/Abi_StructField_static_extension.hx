package stdgo._internal.internal.abi;
@:keep @:allow(stdgo._internal.internal.abi.Abi.StructField_asInterface) class StructField_static_extension {
    @:keep
    static public function embedded( _f:stdgo.Ref<stdgo._internal.internal.abi.Abi_StructField.StructField>):Bool {
        @:recv var _f:stdgo.Ref<stdgo._internal.internal.abi.Abi_StructField.StructField> = _f;
        return _f.name.isEmbedded();
    }
}
