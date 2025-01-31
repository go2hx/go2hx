package stdgo._internal.crypto.cipher;
import stdgo._internal.errors.Errors;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.crypto.internal.alias.Alias;
import stdgo._internal.crypto.subtle.Subtle;
import stdgo._internal.io.Io;
@:keep class T_cbcEncAble_static_extension {
    @:interfacetypeffun
    static public function newCBCEncrypter(t:stdgo._internal.crypto.cipher.Cipher_T_cbcEncAble.T_cbcEncAble, _iv:stdgo.Slice<stdgo.GoUInt8>):stdgo._internal.crypto.cipher.Cipher_BlockMode.BlockMode return t.newCBCEncrypter(_iv);
}
