package stdgo._internal.crypto.cipher;
import stdgo._internal.errors.Errors;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.crypto.internal.alias.Alias;
import stdgo._internal.crypto.subtle.Subtle;
import stdgo._internal.io.Io;
@:keep class Stream_static_extension {
    @:interfacetypeffun
    static public function xORKeyStream(t:stdgo._internal.crypto.cipher.Cipher_Stream.Stream, _dst:stdgo.Slice<stdgo.GoUInt8>, _src:stdgo.Slice<stdgo.GoUInt8>):Void t.xORKeyStream(_dst, _src);
}
