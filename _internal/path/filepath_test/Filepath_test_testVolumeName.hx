package _internal.path.filepath_test;
import stdgo._internal.path.filepath.Filepath;
function testVolumeName(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        if (true) {
            return;
        };
        for (__0 => _v in _internal.path.filepath_test.Filepath_test__volumenametests._volumenametests) {
            {
                var _vol = (stdgo._internal.path.filepath.Filepath_volumeName.volumeName(_v._path?.__copy__())?.__copy__() : stdgo.GoString);
                if (_vol != (_v._vol)) {
                    _t.errorf(("VolumeName(%q)=%q, want %q" : stdgo.GoString), stdgo.Go.toInterface(_v._path), stdgo.Go.toInterface(_vol), stdgo.Go.toInterface(_v._vol));
                };
            };
        };
    }
