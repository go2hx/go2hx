package stdgo.archive.zip;
class T_pooledFlateReader_static_extension {
    static public function close(_r:T_pooledFlateReader):stdgo.Error {
        final _r = (_r : stdgo.Ref<stdgo._internal.archive.zip.Zip_T_pooledFlateReader.T_pooledFlateReader>);
        return stdgo._internal.archive.zip.Zip_T_pooledFlateReader_static_extension.T_pooledFlateReader_static_extension.close(_r);
    }
    static public function read(_r:T_pooledFlateReader, _p:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _r = (_r : stdgo.Ref<stdgo._internal.archive.zip.Zip_T_pooledFlateReader.T_pooledFlateReader>);
        final _p = ([for (i in _p) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.archive.zip.Zip_T_pooledFlateReader_static_extension.T_pooledFlateReader_static_extension.read(_r, _p);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
