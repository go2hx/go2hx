package stdgo.crypto.cipher;
class StreamWriter_static_extension {
    static public function close(_w:StreamWriter):stdgo.Error {
        return stdgo._internal.crypto.cipher.Cipher_StreamWriter_static_extension.StreamWriter_static_extension.close(_w);
    }
    static public function write(_w:StreamWriter, _src:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _src = ([for (i in _src) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.crypto.cipher.Cipher_StreamWriter_static_extension.StreamWriter_static_extension.write(_w, _src);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
