package _internal.path_test;
import stdgo._internal.path.Path;
import stdgo._internal.path.Path;
function testMatch(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        for (__0 => _tt in _internal.path_test.Path_test__matchTests._matchTests) {
            var __tmp__ = stdgo._internal.path.Path_match.match(_tt._pattern?.__copy__(), _tt._s?.__copy__()), _ok:Bool = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (((_ok != _tt._match) || (stdgo.Go.toInterface(_err) != stdgo.Go.toInterface(_tt._err)) : Bool)) {
                _t.errorf(("Match(%#q, %#q) = %v, %v want %v, %v" : stdgo.GoString), stdgo.Go.toInterface(_tt._pattern), stdgo.Go.toInterface(_tt._s), stdgo.Go.toInterface(_ok), stdgo.Go.toInterface(_err), stdgo.Go.toInterface(_tt._match), stdgo.Go.toInterface(_tt._err));
            };
        };
    }
