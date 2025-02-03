package stdgo.testing.fstest;
class T_mapFileInfo_static_extension {
    static public function string(_i:T_mapFileInfo):String {
        final _i = (_i : stdgo.Ref<stdgo._internal.testing.fstest.Fstest_T_mapFileInfo.T_mapFileInfo>);
        return stdgo._internal.testing.fstest.Fstest_T_mapFileInfo_static_extension.T_mapFileInfo_static_extension.string(_i);
    }
    static public function info(_i:T_mapFileInfo):stdgo.Tuple<stdgo._internal.io.fs.Fs_FileInfo.FileInfo, stdgo.Error> {
        final _i = (_i : stdgo.Ref<stdgo._internal.testing.fstest.Fstest_T_mapFileInfo.T_mapFileInfo>);
        return {
            final obj = stdgo._internal.testing.fstest.Fstest_T_mapFileInfo_static_extension.T_mapFileInfo_static_extension.info(_i);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function sys(_i:T_mapFileInfo):stdgo.AnyInterface {
        final _i = (_i : stdgo.Ref<stdgo._internal.testing.fstest.Fstest_T_mapFileInfo.T_mapFileInfo>);
        return stdgo._internal.testing.fstest.Fstest_T_mapFileInfo_static_extension.T_mapFileInfo_static_extension.sys(_i);
    }
    static public function isDir(_i:T_mapFileInfo):Bool {
        final _i = (_i : stdgo.Ref<stdgo._internal.testing.fstest.Fstest_T_mapFileInfo.T_mapFileInfo>);
        return stdgo._internal.testing.fstest.Fstest_T_mapFileInfo_static_extension.T_mapFileInfo_static_extension.isDir(_i);
    }
    static public function modTime(_i:T_mapFileInfo):stdgo._internal.time.Time_Time.Time {
        final _i = (_i : stdgo.Ref<stdgo._internal.testing.fstest.Fstest_T_mapFileInfo.T_mapFileInfo>);
        return stdgo._internal.testing.fstest.Fstest_T_mapFileInfo_static_extension.T_mapFileInfo_static_extension.modTime(_i);
    }
    static public function type(_i:T_mapFileInfo):stdgo._internal.io.fs.Fs_FileMode.FileMode {
        final _i = (_i : stdgo.Ref<stdgo._internal.testing.fstest.Fstest_T_mapFileInfo.T_mapFileInfo>);
        return stdgo._internal.testing.fstest.Fstest_T_mapFileInfo_static_extension.T_mapFileInfo_static_extension.type(_i);
    }
    static public function mode(_i:T_mapFileInfo):stdgo._internal.io.fs.Fs_FileMode.FileMode {
        final _i = (_i : stdgo.Ref<stdgo._internal.testing.fstest.Fstest_T_mapFileInfo.T_mapFileInfo>);
        return stdgo._internal.testing.fstest.Fstest_T_mapFileInfo_static_extension.T_mapFileInfo_static_extension.mode(_i);
    }
    static public function size(_i:T_mapFileInfo):haxe.Int64 {
        final _i = (_i : stdgo.Ref<stdgo._internal.testing.fstest.Fstest_T_mapFileInfo.T_mapFileInfo>);
        return stdgo._internal.testing.fstest.Fstest_T_mapFileInfo_static_extension.T_mapFileInfo_static_extension.size(_i);
    }
    static public function name(_i:T_mapFileInfo):String {
        final _i = (_i : stdgo.Ref<stdgo._internal.testing.fstest.Fstest_T_mapFileInfo.T_mapFileInfo>);
        return stdgo._internal.testing.fstest.Fstest_T_mapFileInfo_static_extension.T_mapFileInfo_static_extension.name(_i);
    }
}
