package stdgo._internal.crypto.aes;
@:keep @:allow(stdgo._internal.crypto.aes.Aes.T_testBlockMode_asInterface) class T_testBlockMode_static_extension {
    @:keep
    @:tdfield
    static public function inAESPackage( _:stdgo.Ref<stdgo._internal.crypto.aes.Aes_t_testblockmode.T_testBlockMode>):Bool {
        @:recv var _:stdgo.Ref<stdgo._internal.crypto.aes.Aes_t_testblockmode.T_testBlockMode> = _;
        return true;
    }
    @:keep
    @:tdfield
    static public function cryptBlocks( _:stdgo.Ref<stdgo._internal.crypto.aes.Aes_t_testblockmode.T_testBlockMode>, _a:stdgo.Slice<stdgo.GoUInt8>, _b:stdgo.Slice<stdgo.GoUInt8>):Void {
        @:recv var _:stdgo.Ref<stdgo._internal.crypto.aes.Aes_t_testblockmode.T_testBlockMode> = _;
    }
    @:keep
    @:tdfield
    static public function blockSize( _:stdgo.Ref<stdgo._internal.crypto.aes.Aes_t_testblockmode.T_testBlockMode>):stdgo.GoInt {
        @:recv var _:stdgo.Ref<stdgo._internal.crypto.aes.Aes_t_testblockmode.T_testBlockMode> = _;
        return (0 : stdgo.GoInt);
    }
}
