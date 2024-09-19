package _internal.path_test;
import stdgo._internal.path.Path;
import stdgo._internal.path.Path;
function testIsAbs(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        for (__0 => _test in _internal.path_test.Path_test__isAbsTests._isAbsTests) {
            {
                var _r = (stdgo._internal.path.Path_isAbs.isAbs(_test._path?.__copy__()) : Bool);
                if (_r != (_test._isAbs)) {
                    _t.errorf(("IsAbs(%q) = %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(_test._path), stdgo.Go.toInterface(_r), stdgo.Go.toInterface(_test._isAbs));
                };
            };
        };
    }
