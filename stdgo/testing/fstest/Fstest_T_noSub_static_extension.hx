package stdgo.testing.fstest;
class T_noSub_static_extension {
    static public function sub(_:T_noSub):Void {
        stdgo._internal.testing.fstest.Fstest_T_noSub_static_extension.T_noSub_static_extension.sub(_);
    }
    public static function stat(__self__:stdgo._internal.testing.fstest.Fstest_T_noSub.T_noSub, _0:String):stdgo.Tuple<stdgo._internal.io.fs.Fs_FileInfo.FileInfo, stdgo.Error> {
        final _0 = (_0 : stdgo.GoString);
        return {
            final obj = stdgo._internal.testing.fstest.Fstest_T_noSub_static_extension.T_noSub_static_extension.stat(__self__, _0);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function readFile(__self__:stdgo._internal.testing.fstest.Fstest_T_noSub.T_noSub, _0:String):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        final _0 = (_0 : stdgo.GoString);
        return {
            final obj = stdgo._internal.testing.fstest.Fstest_T_noSub_static_extension.T_noSub_static_extension.readFile(__self__, _0);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    public static function readDir(__self__:stdgo._internal.testing.fstest.Fstest_T_noSub.T_noSub, _0:String):stdgo.Tuple<Array<stdgo._internal.io.fs.Fs_DirEntry.DirEntry>, stdgo.Error> {
        final _0 = (_0 : stdgo.GoString);
        return {
            final obj = stdgo._internal.testing.fstest.Fstest_T_noSub_static_extension.T_noSub_static_extension.readDir(__self__, _0);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    public static function open(__self__:stdgo._internal.testing.fstest.Fstest_T_noSub.T_noSub, _0:String):stdgo.Tuple<stdgo._internal.io.fs.Fs_File.File, stdgo.Error> {
        final _0 = (_0 : stdgo.GoString);
        return {
            final obj = stdgo._internal.testing.fstest.Fstest_T_noSub_static_extension.T_noSub_static_extension.open(__self__, _0);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function glob(__self__:stdgo._internal.testing.fstest.Fstest_T_noSub.T_noSub, _0:String):stdgo.Tuple<Array<String>, stdgo.Error> {
        final _0 = (_0 : stdgo.GoString);
        return {
            final obj = stdgo._internal.testing.fstest.Fstest_T_noSub_static_extension.T_noSub_static_extension.glob(__self__, _0);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
}
