package stdgo.io.fs;
class File_static_extension {
    static public function close(t:stdgo._internal.io.fs.Fs_File.File):stdgo.Error {
        return stdgo._internal.io.fs.Fs_File_static_extension.File_static_extension.close(t);
    }
    static public function read(t:stdgo._internal.io.fs.Fs_File.File, _0:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _0 = ([for (i in _0) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.io.fs.Fs_File_static_extension.File_static_extension.read(t, _0);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function stat(t:stdgo._internal.io.fs.Fs_File.File):stdgo.Tuple<FileInfo, stdgo.Error> {
        return {
            final obj = stdgo._internal.io.fs.Fs_File_static_extension.File_static_extension.stat(t);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
