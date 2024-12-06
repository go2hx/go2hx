package stdgo._internal.crypto.aes;
function _newCipherGeneric(_key:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo._internal.crypto.cipher.Cipher_Block.Block; var _1 : stdgo.Error; } {
        var _n = ((_key.length) + (28 : stdgo.GoInt) : stdgo.GoInt);
        var _c = (new stdgo._internal.crypto.aes.Aes_T_aesCipher.T_aesCipher((new stdgo.Slice<stdgo.GoUInt32>((_n : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt32>), (new stdgo.Slice<stdgo.GoUInt32>((_n : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt32>)) : stdgo._internal.crypto.aes.Aes_T_aesCipher.T_aesCipher);
        var _c__pointer__ = (stdgo.Go.setRef(_c) : stdgo.Ref<stdgo._internal.crypto.aes.Aes_T_aesCipher.T_aesCipher>);
        stdgo._internal.crypto.aes.Aes__expandKeyGo._expandKeyGo(_key, _c._enc, _c._dec);
        return { _0 : stdgo.Go.asInterface(_c__pointer__), _1 : (null : stdgo.Error) };
    }
