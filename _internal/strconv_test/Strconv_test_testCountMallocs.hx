package _internal.strconv_test;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strconv.Strconv;
function testCountMallocs(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        if (stdgo._internal.testing.Testing_short.short()) {
            _t.skip(stdgo.Go.toInterface(("skipping malloc count in short mode" : stdgo.GoString)));
        };
        if ((stdgo._internal.runtime.Runtime_gomaxprocs.gomaxprocs((0 : stdgo.GoInt)) > (1 : stdgo.GoInt) : Bool)) {
            _t.skip(stdgo.Go.toInterface(("skipping; GOMAXPROCS>1" : stdgo.GoString)));
        };
        _internal.strconv_test.Strconv_test__oneMB._oneMB = (new stdgo.Slice<stdgo.GoUInt8>((1000000 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        for (_i => _ in _internal.strconv_test.Strconv_test__oneMB._oneMB) {
            _internal.strconv_test.Strconv_test__oneMB._oneMB[(_i : stdgo.GoInt)] = (_i : stdgo.GoUInt8);
        };
        for (__0 => _mt in _internal.strconv_test.Strconv_test__mallocTest._mallocTest) {
            var _allocs = (stdgo._internal.testing.Testing_allocsPerRun.allocsPerRun((100 : stdgo.GoInt), _mt._fn) : stdgo.GoFloat64);
            {
                var _max = (_mt._count : stdgo.GoFloat64);
                if ((_allocs > _max : Bool)) {
                    _t.errorf(("%s: %v allocs, want <=%v" : stdgo.GoString), stdgo.Go.toInterface(_mt._desc), stdgo.Go.toInterface(_allocs), stdgo.Go.toInterface(_max));
                };
            };
        };
    }
