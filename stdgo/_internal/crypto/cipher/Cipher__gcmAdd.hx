package stdgo._internal.crypto.cipher;
function _gcmAdd(_x:stdgo.Ref<stdgo._internal.crypto.cipher.Cipher_T_gcmFieldElement.T_gcmFieldElement>, _y:stdgo.Ref<stdgo._internal.crypto.cipher.Cipher_T_gcmFieldElement.T_gcmFieldElement>):stdgo._internal.crypto.cipher.Cipher_T_gcmFieldElement.T_gcmFieldElement {
        return (new stdgo._internal.crypto.cipher.Cipher_T_gcmFieldElement.T_gcmFieldElement((_x._low ^ _y._low : stdgo.GoUInt64), (_x._high ^ _y._high : stdgo.GoUInt64)) : stdgo._internal.crypto.cipher.Cipher_T_gcmFieldElement.T_gcmFieldElement);
    }
