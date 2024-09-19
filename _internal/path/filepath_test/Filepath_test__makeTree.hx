package _internal.path.filepath_test;
import stdgo._internal.path.filepath.Filepath;
function _makeTree(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        _internal.path.filepath_test.Filepath_test__walkTree._walkTree(_internal.path.filepath_test.Filepath_test__tree._tree, _internal.path.filepath_test.Filepath_test__tree._tree._name?.__copy__(), function(_path:stdgo.GoString, _n:stdgo.Ref<_internal.path.filepath_test.Filepath_test_Node.Node>):Void {
            if (_n._entries == null) {
                var __tmp__ = stdgo._internal.os.Os_create.create(_path?.__copy__()), _fd:stdgo.Ref<stdgo._internal.os.Os_File.File> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    _t.errorf(("makeTree: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
                    return;
                };
                _fd.close();
            } else {
                stdgo._internal.os.Os_mkdir.mkdir(_path?.__copy__(), (504u32 : stdgo._internal.io.fs.Fs_FileMode.FileMode));
            };
        });
    }
