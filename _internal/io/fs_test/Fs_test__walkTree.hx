package _internal.io.fs_test;
import stdgo._internal.io.fs.Fs;
import stdgo._internal.io.fs.Fs;
import stdgo._internal.io.fs.Fs;
import stdgo._internal.io.fs.Fs;
import stdgo._internal.io.fs.Fs;
import stdgo._internal.io.fs.Fs;
import stdgo._internal.io.fs.Fs;
import stdgo._internal.io.fs.Fs;
function _walkTree(_n:stdgo.Ref<_internal.io.fs_test.Fs_test_Node.Node>, _path:stdgo.GoString, _f:(stdgo.GoString, stdgo.Ref<_internal.io.fs_test.Fs_test_Node.Node>) -> Void):Void {
        _f(_path?.__copy__(), _n);
        for (__0 => _e in _n._entries) {
            _internal.io.fs_test.Fs_test__walkTree._walkTree(_e, stdgo._internal.path.Path_join.join(_path?.__copy__(), _e._name?.__copy__())?.__copy__(), _f);
        };
    }
