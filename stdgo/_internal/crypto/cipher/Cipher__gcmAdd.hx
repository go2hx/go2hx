package stdgo._internal.crypto.cipher;
import stdgo._internal.errors.Errors;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.crypto.internal.alias.Alias;
import stdgo._internal.crypto.subtle.Subtle;
import stdgo._internal.io.Io;
function _gcmAdd(_x:stdgo.Ref<stdgo._internal.crypto.cipher.Cipher_T_gcmFieldElement.T_gcmFieldElement>, _y:stdgo.Ref<stdgo._internal.crypto.cipher.Cipher_T_gcmFieldElement.T_gcmFieldElement>):stdgo._internal.crypto.cipher.Cipher_T_gcmFieldElement.T_gcmFieldElement {
        return (new stdgo._internal.crypto.cipher.Cipher_T_gcmFieldElement.T_gcmFieldElement(((@:checkr _x ?? throw "null pointer dereference")._low ^ (@:checkr _y ?? throw "null pointer dereference")._low : stdgo.GoUInt64), ((@:checkr _x ?? throw "null pointer dereference")._high ^ (@:checkr _y ?? throw "null pointer dereference")._high : stdgo.GoUInt64)) : stdgo._internal.crypto.cipher.Cipher_T_gcmFieldElement.T_gcmFieldElement);
    }
