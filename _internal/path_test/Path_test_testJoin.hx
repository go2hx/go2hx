package _internal.path_test;
import stdgo._internal.path.Path;
import stdgo._internal.path.Path;
function testJoin(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        for (__0 => _test in _internal.path_test.Path_test__jointests._jointests) {
            {
                var _p = (stdgo._internal.path.Path_join.join(...(_test._elem : Array<stdgo.GoString>))?.__copy__() : stdgo.GoString);
                if (_p != (_test._path)) {
                    _t.errorf(("Join(%q) = %q, want %q" : stdgo.GoString), stdgo.Go.toInterface(_test._elem), stdgo.Go.toInterface(_p), stdgo.Go.toInterface(_test._path));
                };
            };
        };
    }
