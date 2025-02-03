package stdgo.archive.zip;
class T_openDir_static_extension {
    static public function readDir(_d:T_openDir, _count:StdTypes.Int):stdgo.Tuple<Array<stdgo._internal.io.fs.Fs_DirEntry.DirEntry>, stdgo.Error> {
        final _d = (_d : stdgo.Ref<stdgo._internal.archive.zip.Zip_T_openDir.T_openDir>);
        final _count = (_count : stdgo.GoInt);
        return {
            final obj = stdgo._internal.archive.zip.Zip_T_openDir_static_extension.T_openDir_static_extension.readDir(_d, _count);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    static public function read(_d:T_openDir, _0:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _d = (_d : stdgo.Ref<stdgo._internal.archive.zip.Zip_T_openDir.T_openDir>);
        final _0 = ([for (i in _0) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.archive.zip.Zip_T_openDir_static_extension.T_openDir_static_extension.read(_d, _0);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function stat(_d:T_openDir):stdgo.Tuple<stdgo._internal.io.fs.Fs_FileInfo.FileInfo, stdgo.Error> {
        final _d = (_d : stdgo.Ref<stdgo._internal.archive.zip.Zip_T_openDir.T_openDir>);
        return {
            final obj = stdgo._internal.archive.zip.Zip_T_openDir_static_extension.T_openDir_static_extension.stat(_d);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function close(_d:T_openDir):stdgo.Error {
        final _d = (_d : stdgo.Ref<stdgo._internal.archive.zip.Zip_T_openDir.T_openDir>);
        return stdgo._internal.archive.zip.Zip_T_openDir_static_extension.T_openDir_static_extension.close(_d);
    }
}
