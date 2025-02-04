package stdgo._internal.crypto.cipher;
function _newCBC(_b:stdgo._internal.crypto.cipher.Cipher_block.Block, _iv:stdgo.Slice<stdgo.GoUInt8>):stdgo.Ref<stdgo._internal.crypto.cipher.Cipher_t_cbc.T_cbc> {
        return (stdgo.Go.setRef(({ _b : _b, _blockSize : _b.blockSize(), _iv : stdgo._internal.bytes.Bytes_clone.clone(_iv), _tmp : (new stdgo.Slice<stdgo.GoUInt8>((_b.blockSize() : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>) } : stdgo._internal.crypto.cipher.Cipher_t_cbc.T_cbc)) : stdgo.Ref<stdgo._internal.crypto.cipher.Cipher_t_cbc.T_cbc>);
    }
