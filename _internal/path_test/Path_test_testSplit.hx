package _internal.path_test;
import stdgo._internal.path.Path;
import stdgo._internal.path.Path;
function testSplit(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        for (__0 => _test in _internal.path_test.Path_test__splittests._splittests) {
            {
                var __tmp__ = stdgo._internal.path.Path_split.split(_test._path?.__copy__()), _d:stdgo.GoString = __tmp__._0, _f:stdgo.GoString = __tmp__._1;
                if (((_d != _test._dir) || (_f != _test._file) : Bool)) {
                    _t.errorf(("Split(%q) = %q, %q, want %q, %q" : stdgo.GoString), stdgo.Go.toInterface(_test._path), stdgo.Go.toInterface(_d), stdgo.Go.toInterface(_f), stdgo.Go.toInterface(_test._dir), stdgo.Go.toInterface(_test._file));
                };
            };
        };
    }
