package stdgo._internal.crypto.aes;
@:keep @:allow(stdgo._internal.crypto.aes.Aes.T_testStream_asInterface) class T_testStream_static_extension {
    @:keep
    @:tdfield
    static public function inAESPackage( _:stdgo.Ref<stdgo._internal.crypto.aes.Aes_t_teststream.T_testStream>):Bool {
        @:recv var _:stdgo.Ref<stdgo._internal.crypto.aes.Aes_t_teststream.T_testStream> = _;
        return true;
    }
    @:keep
    @:tdfield
    static public function xORKeyStream( _:stdgo.Ref<stdgo._internal.crypto.aes.Aes_t_teststream.T_testStream>, _a:stdgo.Slice<stdgo.GoUInt8>, _b:stdgo.Slice<stdgo.GoUInt8>):Void {
        @:recv var _:stdgo.Ref<stdgo._internal.crypto.aes.Aes_t_teststream.T_testStream> = _;
    }
}
