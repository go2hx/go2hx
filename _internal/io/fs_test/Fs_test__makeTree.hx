package _internal.io.fs_test;
import stdgo._internal.io.fs.Fs;
import stdgo._internal.io.fs.Fs;
import stdgo._internal.io.fs.Fs;
import stdgo._internal.io.fs.Fs;
import stdgo._internal.io.fs.Fs;
import stdgo._internal.io.fs.Fs;
import stdgo._internal.io.fs.Fs;
import stdgo._internal.io.fs.Fs;
function _makeTree():stdgo._internal.io.fs.Fs_FS.FS {
        var _fsys = (({
            final x = new stdgo.GoMap.GoStringMap<stdgo.Ref<stdgo._internal.testing.fstest.Fstest_MapFile.MapFile>>();
            x.__defaultValue__ = () -> (null : stdgo.Ref<stdgo._internal.testing.fstest.Fstest_MapFile.MapFile>);
            {};
            x;
        } : stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.testing.fstest.Fstest_MapFile.MapFile>>) : stdgo._internal.testing.fstest.Fstest_MapFS.MapFS);
        _internal.io.fs_test.Fs_test__walkTree._walkTree(_internal.io.fs_test.Fs_test__tree._tree, _internal.io.fs_test.Fs_test__tree._tree._name?.__copy__(), function(_path:stdgo.GoString, _n:stdgo.Ref<_internal.io.fs_test.Fs_test_Node.Node>):Void {
            if (_n._entries == null) {
                _fsys[_path] = (stdgo.Go.setRef((new stdgo._internal.testing.fstest.Fstest_MapFile.MapFile() : stdgo._internal.testing.fstest.Fstest_MapFile.MapFile)) : stdgo.Ref<stdgo._internal.testing.fstest.Fstest_MapFile.MapFile>);
            } else {
                _fsys[_path] = (stdgo.Go.setRef(({ mode : (-2147483648u32 : stdgo._internal.io.fs.Fs_FileMode.FileMode) } : stdgo._internal.testing.fstest.Fstest_MapFile.MapFile)) : stdgo.Ref<stdgo._internal.testing.fstest.Fstest_MapFile.MapFile>);
            };
        });
        return stdgo.Go.asInterface(_fsys);
    }
