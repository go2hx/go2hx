package _internal.path.filepath_test;
import stdgo._internal.path.filepath.Filepath;
function _markTree(_n:stdgo.Ref<_internal.path.filepath_test.Filepath_test_Node.Node>):Void {
        _internal.path.filepath_test.Filepath_test__walkTree._walkTree(_n, stdgo.Go.str()?.__copy__(), function(_path:stdgo.GoString, _n:stdgo.Ref<_internal.path.filepath_test.Filepath_test_Node.Node>):Void {
            _n._mark++;
        });
    }
