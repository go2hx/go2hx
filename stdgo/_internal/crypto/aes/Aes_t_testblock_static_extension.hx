package stdgo._internal.crypto.aes;
@:keep @:allow(stdgo._internal.crypto.aes.Aes.T_testBlock_asInterface) class T_testBlock_static_extension {
    @:keep
    @:tdfield
    static public function newCTR( _:stdgo.Ref<stdgo._internal.crypto.aes.Aes_t_testblock.T_testBlock>, _0:stdgo.Slice<stdgo.GoUInt8>):stdgo._internal.crypto.cipher.Cipher_stream.Stream {
        @:recv var _:stdgo.Ref<stdgo._internal.crypto.aes.Aes_t_testblock.T_testBlock> = _;
        return stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.crypto.aes.Aes_t_teststream.T_testStream() : stdgo._internal.crypto.aes.Aes_t_teststream.T_testStream)) : stdgo.Ref<stdgo._internal.crypto.aes.Aes_t_teststream.T_testStream>));
    }
    @:keep
    @:tdfield
    static public function newCBCDecrypter( _:stdgo.Ref<stdgo._internal.crypto.aes.Aes_t_testblock.T_testBlock>, _0:stdgo.Slice<stdgo.GoUInt8>):stdgo._internal.crypto.cipher.Cipher_blockmode.BlockMode {
        @:recv var _:stdgo.Ref<stdgo._internal.crypto.aes.Aes_t_testblock.T_testBlock> = _;
        return stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.crypto.aes.Aes_t_testblockmode.T_testBlockMode() : stdgo._internal.crypto.aes.Aes_t_testblockmode.T_testBlockMode)) : stdgo.Ref<stdgo._internal.crypto.aes.Aes_t_testblockmode.T_testBlockMode>));
    }
    @:keep
    @:tdfield
    static public function newCBCEncrypter( _:stdgo.Ref<stdgo._internal.crypto.aes.Aes_t_testblock.T_testBlock>, _0:stdgo.Slice<stdgo.GoUInt8>):stdgo._internal.crypto.cipher.Cipher_blockmode.BlockMode {
        @:recv var _:stdgo.Ref<stdgo._internal.crypto.aes.Aes_t_testblock.T_testBlock> = _;
        return stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.crypto.aes.Aes_t_testblockmode.T_testBlockMode() : stdgo._internal.crypto.aes.Aes_t_testblockmode.T_testBlockMode)) : stdgo.Ref<stdgo._internal.crypto.aes.Aes_t_testblockmode.T_testBlockMode>));
    }
    @:keep
    @:tdfield
    static public function newGCM( _:stdgo.Ref<stdgo._internal.crypto.aes.Aes_t_testblock.T_testBlock>, _0:stdgo.GoInt, _1:stdgo.GoInt):{ var _0 : stdgo._internal.crypto.cipher.Cipher_aead.AEAD; var _1 : stdgo.Error; } {
        @:recv var _:stdgo.Ref<stdgo._internal.crypto.aes.Aes_t_testblock.T_testBlock> = _;
        return { _0 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.crypto.aes.Aes_t_testaead.T_testAEAD() : stdgo._internal.crypto.aes.Aes_t_testaead.T_testAEAD)) : stdgo.Ref<stdgo._internal.crypto.aes.Aes_t_testaead.T_testAEAD>)), _1 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function decrypt( _:stdgo.Ref<stdgo._internal.crypto.aes.Aes_t_testblock.T_testBlock>, _a:stdgo.Slice<stdgo.GoUInt8>, _b:stdgo.Slice<stdgo.GoUInt8>):Void {
        @:recv var _:stdgo.Ref<stdgo._internal.crypto.aes.Aes_t_testblock.T_testBlock> = _;
    }
    @:keep
    @:tdfield
    static public function encrypt( _:stdgo.Ref<stdgo._internal.crypto.aes.Aes_t_testblock.T_testBlock>, _a:stdgo.Slice<stdgo.GoUInt8>, _b:stdgo.Slice<stdgo.GoUInt8>):Void {
        @:recv var _:stdgo.Ref<stdgo._internal.crypto.aes.Aes_t_testblock.T_testBlock> = _;
    }
    @:keep
    @:tdfield
    static public function blockSize( _:stdgo.Ref<stdgo._internal.crypto.aes.Aes_t_testblock.T_testBlock>):stdgo.GoInt {
        @:recv var _:stdgo.Ref<stdgo._internal.crypto.aes.Aes_t_testblock.T_testBlock> = _;
        return (0 : stdgo.GoInt);
    }
}
