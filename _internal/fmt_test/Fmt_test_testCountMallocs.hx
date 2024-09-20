package _internal.fmt_test;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.fmt.Fmt;
function testCountMallocs(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        if (stdgo._internal.testing.Testing_short.short()) {
            _t.skip(stdgo.Go.toInterface(("skipping malloc count in short mode" : stdgo.GoString)));
        } else if ((stdgo._internal.runtime.Runtime_gomaxprocs.gomaxprocs((0 : stdgo.GoInt)) > (1 : stdgo.GoInt) : Bool)) {
            _t.skip(stdgo.Go.toInterface(("skipping; GOMAXPROCS>1" : stdgo.GoString)));
        } else if (false) {
            _t.skip(stdgo.Go.toInterface(("skipping malloc count under race detector" : stdgo.GoString)));
        };
        for (__2 => _mt in _internal.fmt_test.Fmt_test__mallocTest._mallocTest) {
            var _mallocs = (stdgo._internal.testing.Testing_allocsPerRun.allocsPerRun((100 : stdgo.GoInt), _mt._fn) : stdgo.GoFloat64);
            {
                var __0 = (_mallocs : stdgo.GoFloat64), __1 = (_mt._count : stdgo.GoFloat64);
var _max = __1, _got = __0;
                if ((_got > _max : Bool)) {
                    _t.errorf(("%s: got %v allocs, want <=%v" : stdgo.GoString), stdgo.Go.toInterface(_mt._desc), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_max));
                };
            };
        };
    }
