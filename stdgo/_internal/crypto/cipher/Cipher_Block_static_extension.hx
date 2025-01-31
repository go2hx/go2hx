package stdgo._internal.crypto.cipher;
import stdgo._internal.errors.Errors;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.crypto.internal.alias.Alias;
import stdgo._internal.crypto.subtle.Subtle;
import stdgo._internal.io.Io;
@:keep class Block_static_extension {
    @:interfacetypeffun
    static public function decrypt(t:stdgo._internal.crypto.cipher.Cipher_Block.Block, _dst:stdgo.Slice<stdgo.GoUInt8>, _src:stdgo.Slice<stdgo.GoUInt8>):Void t.decrypt(_dst, _src);
    @:interfacetypeffun
    static public function encrypt(t:stdgo._internal.crypto.cipher.Cipher_Block.Block, _dst:stdgo.Slice<stdgo.GoUInt8>, _src:stdgo.Slice<stdgo.GoUInt8>):Void t.encrypt(_dst, _src);
    @:interfacetypeffun
    static public function blockSize(t:stdgo._internal.crypto.cipher.Cipher_Block.Block):stdgo.GoInt return t.blockSize();
}
