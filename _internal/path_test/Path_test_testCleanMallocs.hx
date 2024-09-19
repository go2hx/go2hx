package _internal.path_test;
import stdgo._internal.path.Path;
import stdgo._internal.path.Path;
function testCleanMallocs(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        if (stdgo._internal.testing.Testing_short.short()) {
            _t.skip(stdgo.Go.toInterface(("skipping malloc count in short mode" : stdgo.GoString)));
        };
        if ((stdgo._internal.runtime.Runtime_gomaxprocs.gomaxprocs((0 : stdgo.GoInt)) > (1 : stdgo.GoInt) : Bool)) {
            _t.log(stdgo.Go.toInterface(("skipping AllocsPerRun checks; GOMAXPROCS>1" : stdgo.GoString)));
            return;
        };
        for (__0 => _test in _internal.path_test.Path_test__cleantests._cleantests) {
            var _allocs = (stdgo._internal.testing.Testing_allocsPerRun.allocsPerRun((100 : stdgo.GoInt), function():Void {
                stdgo._internal.path.Path_clean.clean(_test._result?.__copy__());
            }) : stdgo.GoFloat64);
            if ((_allocs > (0 : stdgo.GoFloat64) : Bool)) {
                _t.errorf(("Clean(%q): %v allocs, want zero" : stdgo.GoString), stdgo.Go.toInterface(_test._result), stdgo.Go.toInterface(_allocs));
            };
        };
    }
