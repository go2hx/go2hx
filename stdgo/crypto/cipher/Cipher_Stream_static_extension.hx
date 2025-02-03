package stdgo.crypto.cipher;
class Stream_static_extension {
    static public function xORKeyStream(t:stdgo._internal.crypto.cipher.Cipher_Stream.Stream, _dst:Array<std.UInt>, _src:Array<std.UInt>):Void {
        final _dst = ([for (i in _dst) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _src = ([for (i in _src) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        stdgo._internal.crypto.cipher.Cipher_Stream_static_extension.Stream_static_extension.xORKeyStream(t, _dst, _src);
    }
}
