package _internal.path.filepath_test;
import stdgo._internal.path.filepath.Filepath;
function testIsAbs(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _tests:stdgo.Slice<_internal.path.filepath_test.Filepath_test_IsAbsTest.IsAbsTest> = (null : stdgo.Slice<_internal.path.filepath_test.Filepath_test_IsAbsTest.IsAbsTest>);
        if (false) {
            _tests = (_tests.__append__(...(_internal.path.filepath_test.Filepath_test__winisabstests._winisabstests : Array<_internal.path.filepath_test.Filepath_test_IsAbsTest.IsAbsTest>)));
            for (__0 => _test in _internal.path.filepath_test.Filepath_test__isabstests._isabstests) {
                _tests = (_tests.__append__((new _internal.path.filepath_test.Filepath_test_IsAbsTest.IsAbsTest(_test._path?.__copy__(), false) : _internal.path.filepath_test.Filepath_test_IsAbsTest.IsAbsTest)));
            };
            for (__1 => _test in _internal.path.filepath_test.Filepath_test__isabstests._isabstests) {
                _tests = (_tests.__append__((new _internal.path.filepath_test.Filepath_test_IsAbsTest.IsAbsTest((("c:" : stdgo.GoString) + _test._path?.__copy__() : stdgo.GoString)?.__copy__(), _test._isAbs) : _internal.path.filepath_test.Filepath_test_IsAbsTest.IsAbsTest)));
            };
        } else {
            _tests = _internal.path.filepath_test.Filepath_test__isabstests._isabstests;
        };
        for (__0 => _test in _tests) {
            {
                var _r = (stdgo._internal.path.filepath.Filepath_isAbs.isAbs(_test._path?.__copy__()) : Bool);
                if (_r != (_test._isAbs)) {
                    _t.errorf(("IsAbs(%q) = %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(_test._path), stdgo.Go.toInterface(_r), stdgo.Go.toInterface(_test._isAbs));
                };
            };
        };
    }
