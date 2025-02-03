package stdgo.crypto.cipher;
class StreamReader_static_extension {
    static public function read(_r:StreamReader, _dst:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _dst = ([for (i in _dst) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.crypto.cipher.Cipher_StreamReader_static_extension.StreamReader_static_extension.read(_r, _dst);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
