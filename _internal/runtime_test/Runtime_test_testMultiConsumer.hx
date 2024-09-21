package _internal.runtime_test;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.unsafe.Unsafe;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.unsafe.Unsafe;
import stdgo._internal.unsafe.Unsafe;
function testMultiConsumer(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        {};
        {};
        var _pn = (new stdgo.Slice<stdgo.GoInt>(10, 10, ...[(2 : stdgo.GoInt), (3 : stdgo.GoInt), (7 : stdgo.GoInt), (11 : stdgo.GoInt), (13 : stdgo.GoInt), (17 : stdgo.GoInt), (19 : stdgo.GoInt), (23 : stdgo.GoInt), (27 : stdgo.GoInt), (31 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
        var _q = (new stdgo.Chan<stdgo.GoInt>((69 : stdgo.GoInt).toBasic(), () -> (0 : stdgo.GoInt)) : stdgo.Chan<stdgo.GoInt>);
        var _r = (new stdgo.Chan<stdgo.GoInt>((69 : stdgo.GoInt).toBasic(), () -> (0 : stdgo.GoInt)) : stdgo.Chan<stdgo.GoInt>);
        var _wg:stdgo._internal.sync.Sync_WaitGroup.WaitGroup = ({} : stdgo._internal.sync.Sync_WaitGroup.WaitGroup);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (23 : stdgo.GoInt) : Bool), _i++, {
                _wg.add((1 : stdgo.GoInt));
                stdgo.Go.routine(() -> {
                    var a = function(_w:stdgo.GoInt):Void {
                        for (_v => _ in _q) {
                            if (_pn[(_w % (_pn.length) : stdgo.GoInt)] == (_v)) {
                                stdgo._internal.runtime.Runtime_gosched.gosched();
                            };
                            _r.__send__(_v);
                        };
                        _wg.done();
                    };
                    a(_i);
                });
            });
        };
        var _expect = (0 : stdgo.GoInt);
        stdgo.Go.routine(() -> {
            var a = function():Void {
                {
                    var _i = (0 : stdgo.GoInt);
                    stdgo.Go.cfor((_i < (271828 : stdgo.GoInt) : Bool), _i++, {
                        var _v = (_pn[(_i % (_pn.length) : stdgo.GoInt)] : stdgo.GoInt);
                        _expect = (_expect + (_v) : stdgo.GoInt);
                        _q.__send__(_v);
                    });
                };
                if (_q != null) _q.__close__();
                _wg.wait_();
                if (_r != null) _r.__close__();
            };
            a();
        });
        var _n = (0 : stdgo.GoInt);
        var _s = (0 : stdgo.GoInt);
        for (_v => _ in _r) {
            _n++;
            _s = (_s + (_v) : stdgo.GoInt);
        };
        if (((_n != (271828 : stdgo.GoInt)) || (_s != _expect) : Bool)) {
            _t.errorf(("Expected sum %d (got %d) from %d iter (saw %d)" : stdgo.GoString), stdgo.Go.toInterface(_expect), stdgo.Go.toInterface(_s), stdgo.Go.toInterface((271828 : stdgo.GoInt)), stdgo.Go.toInterface(_n));
        };
    }
