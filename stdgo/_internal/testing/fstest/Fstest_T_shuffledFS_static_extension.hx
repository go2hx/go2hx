package stdgo._internal.testing.fstest;
@:keep @:allow(stdgo._internal.testing.fstest.Fstest.T_shuffledFS_asInterface) class T_shuffledFS_static_extension {
    @:keep
    @:tdfield
    static public function open( _fsys:stdgo._internal.testing.fstest.Fstest_T_shuffledFS.T_shuffledFS, _name:stdgo.GoString):{ var _0 : stdgo._internal.io.fs.Fs_File.File; var _1 : stdgo.Error; } {
        @:recv var _fsys:stdgo._internal.testing.fstest.Fstest_T_shuffledFS.T_shuffledFS = _fsys;
        var __tmp__ = (_fsys : stdgo._internal.testing.fstest.Fstest_MapFS.MapFS).open(_name?.__copy__()), _f:stdgo._internal.io.fs.Fs_File.File = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : (null : stdgo._internal.io.fs.Fs_File.File), _1 : _err };
        };
        return { _0 : stdgo.Go.asInterface((stdgo.Go.setRef(({ file : _f } : stdgo._internal.testing.fstest.Fstest_T_shuffledFile.T_shuffledFile)) : stdgo.Ref<stdgo._internal.testing.fstest.Fstest_T_shuffledFile.T_shuffledFile>)), _1 : (null : stdgo.Error) };
    }
}
