package stdgo.archive.zip;
class T_checksumReader_static_extension {
    static public function close(_r:T_checksumReader):stdgo.Error {
        final _r = (_r : stdgo.Ref<stdgo._internal.archive.zip.Zip_T_checksumReader.T_checksumReader>);
        return stdgo._internal.archive.zip.Zip_T_checksumReader_static_extension.T_checksumReader_static_extension.close(_r);
    }
    static public function read(_r:T_checksumReader, _b:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _r = (_r : stdgo.Ref<stdgo._internal.archive.zip.Zip_T_checksumReader.T_checksumReader>);
        final _b = ([for (i in _b) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.archive.zip.Zip_T_checksumReader_static_extension.T_checksumReader_static_extension.read(_r, _b);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function stat(_r:T_checksumReader):stdgo.Tuple<stdgo._internal.io.fs.Fs_FileInfo.FileInfo, stdgo.Error> {
        final _r = (_r : stdgo.Ref<stdgo._internal.archive.zip.Zip_T_checksumReader.T_checksumReader>);
        return {
            final obj = stdgo._internal.archive.zip.Zip_T_checksumReader_static_extension.T_checksumReader_static_extension.stat(_r);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
