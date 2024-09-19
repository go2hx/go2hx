package _internal.time_test;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.tzdata.Tzdata;
function testCountMallocs(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        if (stdgo._internal.testing.Testing_short.short()) {
            _t.skip(stdgo.Go.toInterface(("skipping malloc count in short mode" : stdgo.GoString)));
        };
        if ((stdgo._internal.runtime.Runtime_gomaxprocs.gomaxprocs((0 : stdgo.GoInt)) > (1 : stdgo.GoInt) : Bool)) {
            _t.skip(stdgo.Go.toInterface(("skipping; GOMAXPROCS>1" : stdgo.GoString)));
        };
        for (__2 => _mt in _internal.time_test.Time_test__mallocTest._mallocTest) {
            var _allocs = (stdgo._internal.testing.Testing_allocsPerRun.allocsPerRun((100 : stdgo.GoInt), _mt._fn) : stdgo.GoInt);
            if ((_allocs > _mt._count : Bool)) {
                _t.errorf(("%s: %d allocs, want %d" : stdgo.GoString), stdgo.Go.toInterface(_mt._desc), stdgo.Go.toInterface(_allocs), stdgo.Go.toInterface(_mt._count));
            };
        };
    }
