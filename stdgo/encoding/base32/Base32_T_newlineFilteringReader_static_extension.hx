package stdgo.encoding.base32;
class T_newlineFilteringReader_static_extension {
    static public function read(_r:T_newlineFilteringReader, _p:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _r = (_r : stdgo.Ref<stdgo._internal.encoding.base32.Base32_T_newlineFilteringReader.T_newlineFilteringReader>);
        final _p = ([for (i in _p) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.encoding.base32.Base32_T_newlineFilteringReader_static_extension.T_newlineFilteringReader_static_extension.read(_r, _p);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
