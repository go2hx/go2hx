package _internal.path.filepath_test;
import stdgo._internal.path.filepath.Filepath;
function testDir(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _tests = _internal.path.filepath_test.Filepath_test__dirtests._dirtests;
        if (false) {
            for (_i => _ in _tests) {
                _tests[(_i : stdgo.GoInt)]._result = stdgo._internal.path.filepath.Filepath_clean.clean(_tests[(_i : stdgo.GoInt)]._result?.__copy__())?.__copy__();
            };
            _tests = (_tests.__append__(...(_internal.path.filepath_test.Filepath_test__windirtests._windirtests : Array<_internal.path.filepath_test.Filepath_test_PathTest.PathTest>)));
        } else {
            _tests = (_tests.__append__(...(_internal.path.filepath_test.Filepath_test__nonwindirtests._nonwindirtests : Array<_internal.path.filepath_test.Filepath_test_PathTest.PathTest>)));
        };
        for (__0 => _test in _tests) {
            {
                var _s = (stdgo._internal.path.filepath.Filepath_dir.dir(_test._path?.__copy__())?.__copy__() : stdgo.GoString);
                if (_s != (_test._result)) {
                    _t.errorf(("Dir(%q) = %q, want %q" : stdgo.GoString), stdgo.Go.toInterface(_test._path), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_test._result));
                };
            };
        };
    }
