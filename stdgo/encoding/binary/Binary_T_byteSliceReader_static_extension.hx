package stdgo.encoding.binary;
class T_byteSliceReader_static_extension {
    static public function read(_br:T_byteSliceReader, _p:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _br = (_br : stdgo.Ref<stdgo._internal.encoding.binary.Binary_T_byteSliceReader.T_byteSliceReader>);
        final _p = ([for (i in _p) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.encoding.binary.Binary_T_byteSliceReader_static_extension.T_byteSliceReader_static_extension.read(_br, _p);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
