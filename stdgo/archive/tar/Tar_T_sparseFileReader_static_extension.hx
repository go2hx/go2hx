package stdgo.archive.tar;
class T_sparseFileReader_static_extension {
    static public function _physicalRemaining(_sr:T_sparseFileReader):haxe.Int64 {
        return stdgo._internal.archive.tar.Tar_T_sparseFileReader_static_extension.T_sparseFileReader_static_extension._physicalRemaining(_sr);
    }
    static public function _logicalRemaining(_sr:T_sparseFileReader):haxe.Int64 {
        return stdgo._internal.archive.tar.Tar_T_sparseFileReader_static_extension.T_sparseFileReader_static_extension._logicalRemaining(_sr);
    }
    static public function writeTo(_sr:T_sparseFileReader, _w:stdgo._internal.io.Io_Writer.Writer):stdgo.Tuple<haxe.Int64, stdgo.Error> {
        final _sr = (_sr : stdgo.Ref<stdgo._internal.archive.tar.Tar_T_sparseFileReader.T_sparseFileReader>);
        return {
            final obj = stdgo._internal.archive.tar.Tar_T_sparseFileReader_static_extension.T_sparseFileReader_static_extension.writeTo(_sr, _w);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function read(_sr:T_sparseFileReader, _b:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _sr = (_sr : stdgo.Ref<stdgo._internal.archive.tar.Tar_T_sparseFileReader.T_sparseFileReader>);
        final _b = ([for (i in _b) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.archive.tar.Tar_T_sparseFileReader_static_extension.T_sparseFileReader_static_extension.read(_sr, _b);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
