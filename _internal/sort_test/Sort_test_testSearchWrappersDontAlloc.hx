package _internal.sort_test;
import stdgo._internal.sort.Sort;
import stdgo._internal.sort.Sort;
function testSearchWrappersDontAlloc(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        if (stdgo._internal.testing.Testing_short.short()) {
            _t.skip(stdgo.Go.toInterface(("skipping malloc count in short mode" : stdgo.GoString)));
        };
        if ((stdgo._internal.runtime.Runtime_gomaxprocs.gomaxprocs((0 : stdgo.GoInt)) > (1 : stdgo.GoInt) : Bool)) {
            _t.skip(stdgo.Go.toInterface(("skipping; GOMAXPROCS>1" : stdgo.GoString)));
        };
        var _allocs = (stdgo._internal.testing.Testing_allocsPerRun.allocsPerRun((100 : stdgo.GoInt), _internal.sort_test.Sort_test__runSearchWrappers._runSearchWrappers) : stdgo.GoFloat64);
        if (_allocs != (0 : stdgo.GoFloat64)) {
            _t.errorf(("expected no allocs for runSearchWrappers, got %v" : stdgo.GoString), stdgo.Go.toInterface(_allocs));
        };
    }
