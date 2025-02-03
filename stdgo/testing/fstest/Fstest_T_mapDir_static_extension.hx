package stdgo.testing.fstest;
class T_mapDir_static_extension {
    static public function readDir(_d:T_mapDir, _count:StdTypes.Int):stdgo.Tuple<Array<stdgo._internal.io.fs.Fs_DirEntry.DirEntry>, stdgo.Error> {
        final _d = (_d : stdgo.Ref<stdgo._internal.testing.fstest.Fstest_T_mapDir.T_mapDir>);
        final _count = (_count : stdgo.GoInt);
        return {
            final obj = stdgo._internal.testing.fstest.Fstest_T_mapDir_static_extension.T_mapDir_static_extension.readDir(_d, _count);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    static public function read(_d:T_mapDir, _b:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _d = (_d : stdgo.Ref<stdgo._internal.testing.fstest.Fstest_T_mapDir.T_mapDir>);
        final _b = ([for (i in _b) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.testing.fstest.Fstest_T_mapDir_static_extension.T_mapDir_static_extension.read(_d, _b);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function close(_d:T_mapDir):stdgo.Error {
        final _d = (_d : stdgo.Ref<stdgo._internal.testing.fstest.Fstest_T_mapDir.T_mapDir>);
        return stdgo._internal.testing.fstest.Fstest_T_mapDir_static_extension.T_mapDir_static_extension.close(_d);
    }
    static public function stat(_d:T_mapDir):stdgo.Tuple<stdgo._internal.io.fs.Fs_FileInfo.FileInfo, stdgo.Error> {
        final _d = (_d : stdgo.Ref<stdgo._internal.testing.fstest.Fstest_T_mapDir.T_mapDir>);
        return {
            final obj = stdgo._internal.testing.fstest.Fstest_T_mapDir_static_extension.T_mapDir_static_extension.stat(_d);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function type(__self__:stdgo._internal.testing.fstest.Fstest_T_mapDir.T_mapDir):stdgo._internal.io.fs.Fs_FileMode.FileMode {
        return stdgo._internal.testing.fstest.Fstest_T_mapDir_static_extension.T_mapDir_static_extension.type(__self__);
    }
    public static function sys(__self__:stdgo._internal.testing.fstest.Fstest_T_mapDir.T_mapDir):stdgo.AnyInterface {
        return stdgo._internal.testing.fstest.Fstest_T_mapDir_static_extension.T_mapDir_static_extension.sys(__self__);
    }
    public static function string(__self__:stdgo._internal.testing.fstest.Fstest_T_mapDir.T_mapDir):String {
        return stdgo._internal.testing.fstest.Fstest_T_mapDir_static_extension.T_mapDir_static_extension.string(__self__);
    }
    public static function size(__self__:stdgo._internal.testing.fstest.Fstest_T_mapDir.T_mapDir):haxe.Int64 {
        return stdgo._internal.testing.fstest.Fstest_T_mapDir_static_extension.T_mapDir_static_extension.size(__self__);
    }
    public static function name(__self__:stdgo._internal.testing.fstest.Fstest_T_mapDir.T_mapDir):String {
        return stdgo._internal.testing.fstest.Fstest_T_mapDir_static_extension.T_mapDir_static_extension.name(__self__);
    }
    public static function mode(__self__:stdgo._internal.testing.fstest.Fstest_T_mapDir.T_mapDir):stdgo._internal.io.fs.Fs_FileMode.FileMode {
        return stdgo._internal.testing.fstest.Fstest_T_mapDir_static_extension.T_mapDir_static_extension.mode(__self__);
    }
    public static function modTime(__self__:stdgo._internal.testing.fstest.Fstest_T_mapDir.T_mapDir):stdgo._internal.time.Time_Time.Time {
        return stdgo._internal.testing.fstest.Fstest_T_mapDir_static_extension.T_mapDir_static_extension.modTime(__self__);
    }
    public static function isDir(__self__:stdgo._internal.testing.fstest.Fstest_T_mapDir.T_mapDir):Bool {
        return stdgo._internal.testing.fstest.Fstest_T_mapDir_static_extension.T_mapDir_static_extension.isDir(__self__);
    }
    public static function info(__self__:stdgo._internal.testing.fstest.Fstest_T_mapDir.T_mapDir):stdgo.Tuple<stdgo._internal.io.fs.Fs_FileInfo.FileInfo, stdgo.Error> {
        return {
            final obj = stdgo._internal.testing.fstest.Fstest_T_mapDir_static_extension.T_mapDir_static_extension.info(__self__);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
