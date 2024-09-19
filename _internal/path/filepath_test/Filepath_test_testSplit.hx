package _internal.path.filepath_test;
import stdgo._internal.path.filepath.Filepath;
function testSplit(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _splittests:stdgo.Slice<_internal.path.filepath_test.Filepath_test_SplitTest.SplitTest> = (null : stdgo.Slice<_internal.path.filepath_test.Filepath_test_SplitTest.SplitTest>);
        _splittests = _internal.path.filepath_test.Filepath_test__unixsplittests._unixsplittests;
        if (false) {
            _splittests = (_splittests.__append__(...(_internal.path.filepath_test.Filepath_test__winsplittests._winsplittests : Array<_internal.path.filepath_test.Filepath_test_SplitTest.SplitTest>)));
        };
        for (__0 => _test in _splittests) {
            {
                var __tmp__ = stdgo._internal.path.filepath.Filepath_split.split(_test._path?.__copy__()), _d:stdgo.GoString = __tmp__._0, _f:stdgo.GoString = __tmp__._1;
                if (((_d != _test._dir) || (_f != _test._file) : Bool)) {
                    _t.errorf(("Split(%q) = %q, %q, want %q, %q" : stdgo.GoString), stdgo.Go.toInterface(_test._path), stdgo.Go.toInterface(_d), stdgo.Go.toInterface(_f), stdgo.Go.toInterface(_test._dir), stdgo.Go.toInterface(_test._file));
                };
            };
        };
    }
