package stdgo._internal.internal.abi;
@:keep @:allow(stdgo._internal.internal.abi.Abi.Kind_asInterface) class Kind_static_extension {
    @:keep
    @:tdfield
    static public function string( _k:stdgo._internal.internal.abi.Abi_kind.Kind):stdgo.GoString {
        @:recv var _k:stdgo._internal.internal.abi.Abi_kind.Kind = _k;
        //"file:///home/runner/.go/go1.21.3/src/internal/abi/type.go#L127"
        if (((_k : stdgo.GoInt) < (stdgo._internal.internal.abi.Abi__kindnames._kindNames.length) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/internal/abi/type.go#L128"
            return stdgo._internal.internal.abi.Abi__kindnames._kindNames[(_k : stdgo.GoInt)]?.__copy__();
        };
        //"file:///home/runner/.go/go1.21.3/src/internal/abi/type.go#L130"
        return stdgo._internal.internal.abi.Abi__kindnames._kindNames[(0 : stdgo.GoInt)]?.__copy__();
    }
}
