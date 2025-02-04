package stdgo._internal.internal.abi;
@:keep @:allow(stdgo._internal.internal.abi.Abi.Kind_asInterface) class Kind_static_extension {
    @:keep
    @:tdfield
    static public function string( _k:stdgo._internal.internal.abi.Abi_kind.Kind):stdgo.GoString {
        @:recv var _k:stdgo._internal.internal.abi.Abi_kind.Kind = _k;
        if (((_k : stdgo.GoInt) < (stdgo._internal.internal.abi.Abi__kindnames._kindNames.length) : Bool)) {
            return stdgo._internal.internal.abi.Abi__kindnames._kindNames[(_k : stdgo.GoInt)]?.__copy__();
        };
        return stdgo._internal.internal.abi.Abi__kindnames._kindNames[(0 : stdgo.GoInt)]?.__copy__();
    }
}
