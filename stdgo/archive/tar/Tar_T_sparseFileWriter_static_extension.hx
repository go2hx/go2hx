package stdgo.archive.tar;
class T_sparseFileWriter_static_extension {
    static public function _physicalRemaining(_sw:T_sparseFileWriter):haxe.Int64 {
        return stdgo._internal.archive.tar.Tar_T_sparseFileWriter_static_extension.T_sparseFileWriter_static_extension._physicalRemaining(_sw);
    }
    static public function _logicalRemaining(_sw:T_sparseFileWriter):haxe.Int64 {
        return stdgo._internal.archive.tar.Tar_T_sparseFileWriter_static_extension.T_sparseFileWriter_static_extension._logicalRemaining(_sw);
    }
    static public function readFrom(_sw:T_sparseFileWriter, _r:stdgo._internal.io.Io_Reader.Reader):stdgo.Tuple<haxe.Int64, stdgo.Error> {
        final _sw = (_sw : stdgo.Ref<stdgo._internal.archive.tar.Tar_T_sparseFileWriter.T_sparseFileWriter>);
        return {
            final obj = stdgo._internal.archive.tar.Tar_T_sparseFileWriter_static_extension.T_sparseFileWriter_static_extension.readFrom(_sw, _r);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function write(_sw:T_sparseFileWriter, _b:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _sw = (_sw : stdgo.Ref<stdgo._internal.archive.tar.Tar_T_sparseFileWriter.T_sparseFileWriter>);
        final _b = ([for (i in _b) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.archive.tar.Tar_T_sparseFileWriter_static_extension.T_sparseFileWriter_static_extension.write(_sw, _b);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
