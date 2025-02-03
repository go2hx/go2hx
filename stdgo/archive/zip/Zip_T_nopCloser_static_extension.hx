package stdgo.archive.zip;
class T_nopCloser_static_extension {
    static public function close(_w:T_nopCloser):stdgo.Error {
        return stdgo._internal.archive.zip.Zip_T_nopCloser_static_extension.T_nopCloser_static_extension.close(_w);
    }
    public static function write(__self__:stdgo._internal.archive.zip.Zip_T_nopCloser.T_nopCloser, _0:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _0 = ([for (i in _0) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.archive.zip.Zip_T_nopCloser_static_extension.T_nopCloser_static_extension.write(__self__, _0);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
