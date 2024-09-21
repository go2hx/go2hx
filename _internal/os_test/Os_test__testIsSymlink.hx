package _internal.os_test;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
function _testIsSymlink(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>, _path:stdgo.GoString, _fi:stdgo._internal.io.fs.Fs_FileInfo.FileInfo):Void {
        _t.helper();
        if (_fi.isDir()) {
            _t.errorf(("%q should not be a directory" : stdgo.GoString), stdgo.Go.toInterface(_path));
        };
        if ((_fi.mode() & (134217728u32 : stdgo._internal.io.fs.Fs_FileMode.FileMode) : stdgo._internal.io.fs.Fs_FileMode.FileMode) == ((0u32 : stdgo._internal.io.fs.Fs_FileMode.FileMode))) {
            _t.errorf(("%q should be a symlink" : stdgo.GoString), stdgo.Go.toInterface(_path));
        };
    }
