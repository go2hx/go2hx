package stdgo.testing.fstest;
class T_shuffledFile_static_extension {
    static public function readDir(_f:T_shuffledFile, _n:StdTypes.Int):stdgo.Tuple<Array<stdgo._internal.io.fs.Fs_DirEntry.DirEntry>, stdgo.Error> {
        final _f = (_f : stdgo.Ref<stdgo._internal.testing.fstest.Fstest_T_shuffledFile.T_shuffledFile>);
        final _n = (_n : stdgo.GoInt);
        return {
            final obj = stdgo._internal.testing.fstest.Fstest_T_shuffledFile_static_extension.T_shuffledFile_static_extension.readDir(_f, _n);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    public static function stat(__self__:stdgo._internal.testing.fstest.Fstest_T_shuffledFile.T_shuffledFile):stdgo.Tuple<stdgo._internal.io.fs.Fs_FileInfo.FileInfo, stdgo.Error> {
        return {
            final obj = stdgo._internal.testing.fstest.Fstest_T_shuffledFile_static_extension.T_shuffledFile_static_extension.stat(__self__);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function read(__self__:stdgo._internal.testing.fstest.Fstest_T_shuffledFile.T_shuffledFile, _0:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _0 = ([for (i in _0) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.testing.fstest.Fstest_T_shuffledFile_static_extension.T_shuffledFile_static_extension.read(__self__, _0);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function close(__self__:stdgo._internal.testing.fstest.Fstest_T_shuffledFile.T_shuffledFile):stdgo.Error {
        return stdgo._internal.testing.fstest.Fstest_T_shuffledFile_static_extension.T_shuffledFile_static_extension.close(__self__);
    }
}
