package _internal.path.filepath_test;
import stdgo._internal.path.filepath.Filepath;
function testFromAndToSlash(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        for (__0 => _test in _internal.path.filepath_test.Filepath_test__slashtests._slashtests) {
            {
                var _s = (stdgo._internal.path.filepath.Filepath_fromSlash.fromSlash(_test._path?.__copy__())?.__copy__() : stdgo.GoString);
                if (_s != (_test._result)) {
                    _t.errorf(("FromSlash(%q) = %q, want %q" : stdgo.GoString), stdgo.Go.toInterface(_test._path), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_test._result));
                };
            };
            {
                var _s = (stdgo._internal.path.filepath.Filepath_toSlash.toSlash(_test._result?.__copy__())?.__copy__() : stdgo.GoString);
                if (_s != (_test._path)) {
                    _t.errorf(("ToSlash(%q) = %q, want %q" : stdgo.GoString), stdgo.Go.toInterface(_test._result), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_test._path));
                };
            };
        };
    }
