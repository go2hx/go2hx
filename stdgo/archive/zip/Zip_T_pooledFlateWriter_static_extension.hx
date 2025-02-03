package stdgo.archive.zip;
class T_pooledFlateWriter_static_extension {
    static public function close(_w:T_pooledFlateWriter):stdgo.Error {
        final _w = (_w : stdgo.Ref<stdgo._internal.archive.zip.Zip_T_pooledFlateWriter.T_pooledFlateWriter>);
        return stdgo._internal.archive.zip.Zip_T_pooledFlateWriter_static_extension.T_pooledFlateWriter_static_extension.close(_w);
    }
    static public function write(_w:T_pooledFlateWriter, _p:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _w = (_w : stdgo.Ref<stdgo._internal.archive.zip.Zip_T_pooledFlateWriter.T_pooledFlateWriter>);
        final _p = ([for (i in _p) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.archive.zip.Zip_T_pooledFlateWriter_static_extension.T_pooledFlateWriter_static_extension.write(_w, _p);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
