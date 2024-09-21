package _internal.path.filepath_test;
import stdgo._internal.path.filepath.Filepath;
function testWalk(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _walk = (function(_root:stdgo.GoString, _fn:stdgo._internal.io.fs.Fs_WalkDirFunc.WalkDirFunc):stdgo.Error {
            return stdgo._internal.path.filepath.Filepath_walk.walk(_root?.__copy__(), function(_path:stdgo.GoString, _info:stdgo._internal.io.fs.Fs_FileInfo.FileInfo, _err:stdgo.Error):stdgo.Error {
                return _fn(_path?.__copy__(), stdgo.Go.asInterface((stdgo.Go.setRef((new _internal.path.filepath_test.Filepath_test_T_statDirEntry.T_statDirEntry(_info) : _internal.path.filepath_test.Filepath_test_T_statDirEntry.T_statDirEntry)) : stdgo.Ref<_internal.path.filepath_test.Filepath_test_T_statDirEntry.T_statDirEntry>)), _err);
            });
        } : (stdgo.GoString, stdgo._internal.io.fs.Fs_WalkDirFunc.WalkDirFunc) -> stdgo.Error);
        _internal.path.filepath_test.Filepath_test__testWalk._testWalk(_t, _walk, (1 : stdgo.GoInt));
    }
