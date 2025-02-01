package stdgo._internal.crypto.internal.boring;
import stdgo._internal.crypto.internal.boring.sig.Sig;
@:keep @:allow(stdgo._internal.crypto.internal.boring.Boring.T_randReader_asInterface) class T_randReader_static_extension {
    @:keep
    @:tdfield
    static public function read( _:stdgo._internal.crypto.internal.boring.Boring_T_randReader.T_randReader, _b:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _:stdgo._internal.crypto.internal.boring.Boring_T_randReader.T_randReader = _;
        throw stdgo.Go.toInterface(("boringcrypto: not available" : stdgo.GoString));
    }
}
