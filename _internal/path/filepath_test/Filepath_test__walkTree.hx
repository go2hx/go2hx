package _internal.path.filepath_test;
import stdgo._internal.path.filepath.Filepath;
function _walkTree(_n:stdgo.Ref<_internal.path.filepath_test.Filepath_test_Node.Node>, _path:stdgo.GoString, _f:(stdgo.GoString, stdgo.Ref<_internal.path.filepath_test.Filepath_test_Node.Node>) -> Void):Void {
        _f(_path?.__copy__(), _n);
        for (__0 => _e in _n._entries) {
            _internal.path.filepath_test.Filepath_test__walkTree._walkTree(_e, stdgo._internal.path.filepath.Filepath_join.join(_path?.__copy__(), _e._name?.__copy__())?.__copy__(), _f);
        };
    }
