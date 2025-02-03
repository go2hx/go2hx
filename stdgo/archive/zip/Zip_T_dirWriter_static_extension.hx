package stdgo.archive.zip;
class T_dirWriter_static_extension {
    static public function write(_:T_dirWriter, _b:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _b = ([for (i in _b) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.archive.zip.Zip_T_dirWriter_static_extension.T_dirWriter_static_extension.write(_, _b);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
