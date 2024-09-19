package _internal.path.filepath_test;
import stdgo._internal.path.filepath.Filepath;
function testSplitList(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _tests = _internal.path.filepath_test.Filepath_test__splitlisttests._splitlisttests;
        if (false) {
            _tests = (_tests.__append__(...(_internal.path.filepath_test.Filepath_test__winsplitlisttests._winsplitlisttests : Array<_internal.path.filepath_test.Filepath_test_SplitListTest.SplitListTest>)));
        };
        for (__0 => _test in _tests) {
            {
                var _l = stdgo._internal.path.filepath.Filepath_splitList.splitList(_test._list?.__copy__());
                if (!stdgo._internal.reflect.Reflect_deepEqual.deepEqual(stdgo.Go.toInterface(_l), stdgo.Go.toInterface(_test._result))) {
                    _t.errorf(("SplitList(%#q) = %#q, want %#q" : stdgo.GoString), stdgo.Go.toInterface(_test._list), stdgo.Go.toInterface(_l), stdgo.Go.toInterface(_test._result));
                };
            };
        };
    }
