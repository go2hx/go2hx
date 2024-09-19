package _internal.path.filepath_test;
import stdgo._internal.path.filepath.Filepath;
@:keep @:allow(_internal.path.filepath_test.Filepath_test.T_statDirEntry_asInterface) class T_statDirEntry_static_extension {
    @:keep
    static public function string( _d:stdgo.Ref<_internal.path.filepath_test.Filepath_test_T_statDirEntry.T_statDirEntry>):stdgo.GoString {
        @:recv var _d:stdgo.Ref<_internal.path.filepath_test.Filepath_test_T_statDirEntry.T_statDirEntry> = _d;
        return stdgo._internal.io.fs.Fs_formatDirEntry.formatDirEntry(stdgo.Go.asInterface(_d))?.__copy__();
    }
    @:keep
    static public function info( _d:stdgo.Ref<_internal.path.filepath_test.Filepath_test_T_statDirEntry.T_statDirEntry>):{ var _0 : stdgo._internal.io.fs.Fs_FileInfo.FileInfo; var _1 : stdgo.Error; } {
        @:recv var _d:stdgo.Ref<_internal.path.filepath_test.Filepath_test_T_statDirEntry.T_statDirEntry> = _d;
        return { _0 : _d._info, _1 : (null : stdgo.Error) };
    }
    @:keep
    static public function type( _d:stdgo.Ref<_internal.path.filepath_test.Filepath_test_T_statDirEntry.T_statDirEntry>):stdgo._internal.io.fs.Fs_FileMode.FileMode {
        @:recv var _d:stdgo.Ref<_internal.path.filepath_test.Filepath_test_T_statDirEntry.T_statDirEntry> = _d;
        return _d._info.mode().type();
    }
    @:keep
    static public function isDir( _d:stdgo.Ref<_internal.path.filepath_test.Filepath_test_T_statDirEntry.T_statDirEntry>):Bool {
        @:recv var _d:stdgo.Ref<_internal.path.filepath_test.Filepath_test_T_statDirEntry.T_statDirEntry> = _d;
        return _d._info.isDir();
    }
    @:keep
    static public function name( _d:stdgo.Ref<_internal.path.filepath_test.Filepath_test_T_statDirEntry.T_statDirEntry>):stdgo.GoString {
        @:recv var _d:stdgo.Ref<_internal.path.filepath_test.Filepath_test_T_statDirEntry.T_statDirEntry> = _d;
        return _d._info.name()?.__copy__();
    }
}
