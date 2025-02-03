package stdgo.archive.tar;
class T_regFileReader_static_extension {
    static public function _physicalRemaining(_fr:T_regFileReader):haxe.Int64 {
        return stdgo._internal.archive.tar.Tar_T_regFileReader_static_extension.T_regFileReader_static_extension._physicalRemaining(_fr);
    }
    static public function _logicalRemaining(_fr:T_regFileReader):haxe.Int64 {
        return stdgo._internal.archive.tar.Tar_T_regFileReader_static_extension.T_regFileReader_static_extension._logicalRemaining(_fr);
    }
    static public function writeTo(_fr:T_regFileReader, _w:stdgo._internal.io.Io_Writer.Writer):stdgo.Tuple<haxe.Int64, stdgo.Error> {
        final _fr = (_fr : stdgo.Ref<stdgo._internal.archive.tar.Tar_T_regFileReader.T_regFileReader>);
        return {
            final obj = stdgo._internal.archive.tar.Tar_T_regFileReader_static_extension.T_regFileReader_static_extension.writeTo(_fr, _w);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function read(_fr:T_regFileReader, _b:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _fr = (_fr : stdgo.Ref<stdgo._internal.archive.tar.Tar_T_regFileReader.T_regFileReader>);
        final _b = ([for (i in _b) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.archive.tar.Tar_T_regFileReader_static_extension.T_regFileReader_static_extension.read(_fr, _b);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
