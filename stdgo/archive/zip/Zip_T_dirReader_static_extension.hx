package stdgo.archive.zip;
class T_dirReader_static_extension {
    static public function close(_r:T_dirReader):stdgo.Error {
        final _r = (_r : stdgo.Ref<stdgo._internal.archive.zip.Zip_T_dirReader.T_dirReader>);
        return stdgo._internal.archive.zip.Zip_T_dirReader_static_extension.T_dirReader_static_extension.close(_r);
    }
    static public function read(_r:T_dirReader, _0:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _r = (_r : stdgo.Ref<stdgo._internal.archive.zip.Zip_T_dirReader.T_dirReader>);
        final _0 = ([for (i in _0) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.archive.zip.Zip_T_dirReader_static_extension.T_dirReader_static_extension.read(_r, _0);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
