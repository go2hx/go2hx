package stdgo.archive.zip;
class T_countWriter_static_extension {
    static public function write(_w:T_countWriter, _p:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _w = (_w : stdgo.Ref<stdgo._internal.archive.zip.Zip_T_countWriter.T_countWriter>);
        final _p = ([for (i in _p) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.archive.zip.Zip_T_countWriter_static_extension.T_countWriter_static_extension.write(_w, _p);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
