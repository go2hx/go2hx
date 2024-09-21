package _internal.path.filepath_test;
import stdgo._internal.path.filepath.Filepath;
function testIsLocal(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _tests = _internal.path.filepath_test.Filepath_test__islocaltests._islocaltests;
        if (false) {
            _tests = (_tests.__append__(...(_internal.path.filepath_test.Filepath_test__winislocaltests._winislocaltests : Array<_internal.path.filepath_test.Filepath_test_IsLocalTest.IsLocalTest>)));
        };
        if (false) {
            _tests = (_tests.__append__(...(_internal.path.filepath_test.Filepath_test__plan9islocaltests._plan9islocaltests : Array<_internal.path.filepath_test.Filepath_test_IsLocalTest.IsLocalTest>)));
        };
        for (__0 => _test in _tests) {
            {
                var _got = (stdgo._internal.path.filepath.Filepath_isLocal.isLocal(_test._path?.__copy__()) : Bool);
                if (_got != (_test._isLocal)) {
                    _t.errorf(("IsLocal(%q) = %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(_test._path), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_test._isLocal));
                };
            };
        };
    }
