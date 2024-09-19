package _internal.path_test;
import stdgo._internal.path.Path;
import stdgo._internal.path.Path;
function testExt(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        for (__0 => _test in _internal.path_test.Path_test__exttests._exttests) {
            {
                var _x = (stdgo._internal.path.Path_ext.ext(_test._path?.__copy__())?.__copy__() : stdgo.GoString);
                if (_x != (_test._ext)) {
                    _t.errorf(("Ext(%q) = %q, want %q" : stdgo.GoString), stdgo.Go.toInterface(_test._path), stdgo.Go.toInterface(_x), stdgo.Go.toInterface(_test._ext));
                };
            };
        };
    }
