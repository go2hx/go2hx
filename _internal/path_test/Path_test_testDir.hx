package _internal.path_test;
import stdgo._internal.path.Path;
import stdgo._internal.path.Path;
function testDir(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        for (__0 => _test in _internal.path_test.Path_test__dirtests._dirtests) {
            {
                var _s = (stdgo._internal.path.Path_dir.dir(_test._path?.__copy__())?.__copy__() : stdgo.GoString);
                if (_s != (_test._result)) {
                    _t.errorf(("Dir(%q) = %q, want %q" : stdgo.GoString), stdgo.Go.toInterface(_test._path), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_test._result));
                };
            };
        };
    }
