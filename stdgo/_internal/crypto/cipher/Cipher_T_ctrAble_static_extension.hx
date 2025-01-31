package stdgo._internal.crypto.cipher;
import stdgo._internal.errors.Errors;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.crypto.internal.alias.Alias;
import stdgo._internal.crypto.subtle.Subtle;
import stdgo._internal.io.Io;
@:keep class T_ctrAble_static_extension {
    @:interfacetypeffun
    static public function newCTR(t:stdgo._internal.crypto.cipher.Cipher_T_ctrAble.T_ctrAble, _iv:stdgo.Slice<stdgo.GoUInt8>):stdgo._internal.crypto.cipher.Cipher_Stream.Stream return t.newCTR(_iv);
}
