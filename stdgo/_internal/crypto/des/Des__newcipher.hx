package stdgo._internal.crypto.des;
function _newCipher(_key:stdgo.Slice<stdgo.GoUInt8>):stdgo.Ref<stdgo._internal.crypto.des.Des_t_descipher.T_desCipher> {
        var __tmp__ = stdgo._internal.crypto.des.Des_newcipher.newCipher(_key), _c:stdgo._internal.crypto.cipher.Cipher_block.Block = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            throw stdgo.Go.toInterface((("NewCipher failed: " : stdgo.GoString) + _err.error()?.__copy__() : stdgo.GoString));
        };
        return (stdgo.Go.typeAssert((stdgo.Go.toInterface(_c) : stdgo.Ref<stdgo._internal.crypto.des.Des_t_descipher.T_desCipher>)) : stdgo.Ref<stdgo._internal.crypto.des.Des_t_descipher.T_desCipher>);
    }
