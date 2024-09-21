package _internal.path_test;
import stdgo._internal.path.Path;
import stdgo._internal.path.Path;
function testClean(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        for (__0 => _test in _internal.path_test.Path_test__cleantests._cleantests) {
            {
                var _s = (stdgo._internal.path.Path_clean.clean(_test._path?.__copy__())?.__copy__() : stdgo.GoString);
                if (_s != (_test._result)) {
                    _t.errorf(("Clean(%q) = %q, want %q" : stdgo.GoString), stdgo.Go.toInterface(_test._path), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_test._result));
                };
            };
            {
                var _s = (stdgo._internal.path.Path_clean.clean(_test._result?.__copy__())?.__copy__() : stdgo.GoString);
                if (_s != (_test._result)) {
                    _t.errorf(("Clean(%q) = %q, want %q" : stdgo.GoString), stdgo.Go.toInterface(_test._result), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_test._result));
                };
            };
        };
    }
