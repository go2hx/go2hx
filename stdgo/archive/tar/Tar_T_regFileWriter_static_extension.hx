package stdgo.archive.tar;
class T_regFileWriter_static_extension {
    static public function _physicalRemaining(_fw:T_regFileWriter):haxe.Int64 {
        return stdgo._internal.archive.tar.Tar_T_regFileWriter_static_extension.T_regFileWriter_static_extension._physicalRemaining(_fw);
    }
    static public function _logicalRemaining(_fw:T_regFileWriter):haxe.Int64 {
        return stdgo._internal.archive.tar.Tar_T_regFileWriter_static_extension.T_regFileWriter_static_extension._logicalRemaining(_fw);
    }
    static public function readFrom(_fw:T_regFileWriter, _r:stdgo._internal.io.Io_Reader.Reader):stdgo.Tuple<haxe.Int64, stdgo.Error> {
        final _fw = (_fw : stdgo.Ref<stdgo._internal.archive.tar.Tar_T_regFileWriter.T_regFileWriter>);
        return {
            final obj = stdgo._internal.archive.tar.Tar_T_regFileWriter_static_extension.T_regFileWriter_static_extension.readFrom(_fw, _r);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function write(_fw:T_regFileWriter, _b:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _fw = (_fw : stdgo.Ref<stdgo._internal.archive.tar.Tar_T_regFileWriter.T_regFileWriter>);
        final _b = ([for (i in _b) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.archive.tar.Tar_T_regFileWriter_static_extension.T_regFileWriter_static_extension.write(_fw, _b);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
