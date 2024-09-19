package _internal.path.filepath_test;
import stdgo._internal.path.filepath.Filepath;
function testJoin(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        if (false) {
            _internal.path.filepath_test.Filepath_test__jointests._jointests = (_internal.path.filepath_test.Filepath_test__jointests._jointests.__append__(...(_internal.path.filepath_test.Filepath_test__winjointests._winjointests : Array<_internal.path.filepath_test.Filepath_test_JoinTest.JoinTest>)));
        } else {
            _internal.path.filepath_test.Filepath_test__jointests._jointests = (_internal.path.filepath_test.Filepath_test__jointests._jointests.__append__(...(_internal.path.filepath_test.Filepath_test__nonwinjointests._nonwinjointests : Array<_internal.path.filepath_test.Filepath_test_JoinTest.JoinTest>)));
        };
        for (__0 => _test in _internal.path.filepath_test.Filepath_test__jointests._jointests) {
            var _expected = (stdgo._internal.path.filepath.Filepath_fromSlash.fromSlash(_test._path?.__copy__())?.__copy__() : stdgo.GoString);
            {
                var _p = (stdgo._internal.path.filepath.Filepath_join.join(...(_test._elem : Array<stdgo.GoString>))?.__copy__() : stdgo.GoString);
                if (_p != (_expected)) {
                    _t.errorf(("join(%q) = %q, want %q" : stdgo.GoString), stdgo.Go.toInterface(_test._elem), stdgo.Go.toInterface(_p), stdgo.Go.toInterface(_expected));
                };
            };
        };
    }
