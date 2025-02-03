package stdgo.testing.fstest;
class T_openMapFile_static_extension {
    static public function readAt(_f:T_openMapFile, _b:Array<std.UInt>, _offset:haxe.Int64):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _f = (_f : stdgo.Ref<stdgo._internal.testing.fstest.Fstest_T_openMapFile.T_openMapFile>);
        final _b = ([for (i in _b) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _offset = (_offset : stdgo.GoInt64);
        return {
            final obj = stdgo._internal.testing.fstest.Fstest_T_openMapFile_static_extension.T_openMapFile_static_extension.readAt(_f, _b, _offset);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function seek(_f:T_openMapFile, _offset:haxe.Int64, _whence:StdTypes.Int):stdgo.Tuple<haxe.Int64, stdgo.Error> {
        final _f = (_f : stdgo.Ref<stdgo._internal.testing.fstest.Fstest_T_openMapFile.T_openMapFile>);
        final _offset = (_offset : stdgo.GoInt64);
        final _whence = (_whence : stdgo.GoInt);
        return {
            final obj = stdgo._internal.testing.fstest.Fstest_T_openMapFile_static_extension.T_openMapFile_static_extension.seek(_f, _offset, _whence);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function read(_f:T_openMapFile, _b:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _f = (_f : stdgo.Ref<stdgo._internal.testing.fstest.Fstest_T_openMapFile.T_openMapFile>);
        final _b = ([for (i in _b) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.testing.fstest.Fstest_T_openMapFile_static_extension.T_openMapFile_static_extension.read(_f, _b);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function close(_f:T_openMapFile):stdgo.Error {
        final _f = (_f : stdgo.Ref<stdgo._internal.testing.fstest.Fstest_T_openMapFile.T_openMapFile>);
        return stdgo._internal.testing.fstest.Fstest_T_openMapFile_static_extension.T_openMapFile_static_extension.close(_f);
    }
    static public function stat(_f:T_openMapFile):stdgo.Tuple<stdgo._internal.io.fs.Fs_FileInfo.FileInfo, stdgo.Error> {
        final _f = (_f : stdgo.Ref<stdgo._internal.testing.fstest.Fstest_T_openMapFile.T_openMapFile>);
        return {
            final obj = stdgo._internal.testing.fstest.Fstest_T_openMapFile_static_extension.T_openMapFile_static_extension.stat(_f);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function type(__self__:stdgo._internal.testing.fstest.Fstest_T_openMapFile.T_openMapFile):stdgo._internal.io.fs.Fs_FileMode.FileMode {
        return stdgo._internal.testing.fstest.Fstest_T_openMapFile_static_extension.T_openMapFile_static_extension.type(__self__);
    }
    public static function sys(__self__:stdgo._internal.testing.fstest.Fstest_T_openMapFile.T_openMapFile):stdgo.AnyInterface {
        return stdgo._internal.testing.fstest.Fstest_T_openMapFile_static_extension.T_openMapFile_static_extension.sys(__self__);
    }
    public static function string(__self__:stdgo._internal.testing.fstest.Fstest_T_openMapFile.T_openMapFile):String {
        return stdgo._internal.testing.fstest.Fstest_T_openMapFile_static_extension.T_openMapFile_static_extension.string(__self__);
    }
    public static function size(__self__:stdgo._internal.testing.fstest.Fstest_T_openMapFile.T_openMapFile):haxe.Int64 {
        return stdgo._internal.testing.fstest.Fstest_T_openMapFile_static_extension.T_openMapFile_static_extension.size(__self__);
    }
    public static function name(__self__:stdgo._internal.testing.fstest.Fstest_T_openMapFile.T_openMapFile):String {
        return stdgo._internal.testing.fstest.Fstest_T_openMapFile_static_extension.T_openMapFile_static_extension.name(__self__);
    }
    public static function mode(__self__:stdgo._internal.testing.fstest.Fstest_T_openMapFile.T_openMapFile):stdgo._internal.io.fs.Fs_FileMode.FileMode {
        return stdgo._internal.testing.fstest.Fstest_T_openMapFile_static_extension.T_openMapFile_static_extension.mode(__self__);
    }
    public static function modTime(__self__:stdgo._internal.testing.fstest.Fstest_T_openMapFile.T_openMapFile):stdgo._internal.time.Time_Time.Time {
        return stdgo._internal.testing.fstest.Fstest_T_openMapFile_static_extension.T_openMapFile_static_extension.modTime(__self__);
    }
    public static function isDir(__self__:stdgo._internal.testing.fstest.Fstest_T_openMapFile.T_openMapFile):Bool {
        return stdgo._internal.testing.fstest.Fstest_T_openMapFile_static_extension.T_openMapFile_static_extension.isDir(__self__);
    }
    public static function info(__self__:stdgo._internal.testing.fstest.Fstest_T_openMapFile.T_openMapFile):stdgo.Tuple<stdgo._internal.io.fs.Fs_FileInfo.FileInfo, stdgo.Error> {
        return {
            final obj = stdgo._internal.testing.fstest.Fstest_T_openMapFile_static_extension.T_openMapFile_static_extension.info(__self__);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
