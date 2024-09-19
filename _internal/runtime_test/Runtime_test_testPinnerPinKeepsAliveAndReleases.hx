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
function testPinnerPinKeepsAliveAndReleases(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _pinner:stdgo._internal.runtime.Runtime_Pinner.Pinner = ({} : stdgo._internal.runtime.Runtime_Pinner.Pinner);
        var _p = (stdgo.Go.setRef(({} : _internal.runtime_test.Runtime_test_T_obj.T_obj)) : stdgo.Ref<_internal.runtime_test.Runtime_test_T_obj.T_obj>);
        var _done = (new stdgo.Chan<_internal.runtime_test.Runtime_test_T_struct0.T_struct0>(0, () -> ({} : _internal.runtime_test.Runtime_test_T_struct0.T_struct0)) : stdgo.Chan<_internal.runtime_test.Runtime_test_T_struct0.T_struct0>);
        stdgo._internal.runtime.Runtime_setFinalizer.setFinalizer(stdgo.Go.toInterface(_p), stdgo.Go.toInterface(function(_0:stdgo.AnyInterface):Void {
            _done.__send__((new _internal.runtime_test.Runtime_test_T_struct0.T_struct0() : _internal.runtime_test.Runtime_test_T_struct0.T_struct0));
        }));
        _pinner.pin(stdgo.Go.toInterface(_p));
        _p = null;
        stdgo._internal.runtime.Runtime_gc.gc();
        stdgo._internal.runtime.Runtime_gc.gc();
        {
            var __select__ = true;
            while (__select__) {
                if (_done != null && _done.__isGet__()) {
                    __select__ = false;
                    {
                        _done.__get__();
                        {
                            _t.fatal(stdgo.Go.toInterface(("Pin() didn\'t keep object alive" : stdgo.GoString)));
                        };
                    };
                } else if (stdgo._internal.time.Time_after.after((10000000i64 : stdgo._internal.time.Time_Duration.Duration)) != null && stdgo._internal.time.Time_after.after((10000000i64 : stdgo._internal.time.Time_Duration.Duration)).__isGet__()) {
                    __select__ = false;
                    {
                        stdgo._internal.time.Time_after.after((10000000i64 : stdgo._internal.time.Time_Duration.Duration)).__get__();
                        {
                            break;
                        };
                    };
                };
                #if !js Sys.sleep(0.01) #else null #end;
                stdgo._internal.internal.Async.tick();
            };
        };
        _pinner.unpin();
        stdgo._internal.runtime.Runtime_gc.gc();
        stdgo._internal.runtime.Runtime_gc.gc();
        {
            var __select__ = true;
            while (__select__) {
                if (_done != null && _done.__isGet__()) {
                    __select__ = false;
                    {
                        _done.__get__();
                        {
                            break;
                        };
                    };
                } else if (stdgo._internal.time.Time_after.after((1000000000i64 : stdgo._internal.time.Time_Duration.Duration)) != null && stdgo._internal.time.Time_after.after((1000000000i64 : stdgo._internal.time.Time_Duration.Duration)).__isGet__()) {
                    __select__ = false;
                    {
                        stdgo._internal.time.Time_after.after((1000000000i64 : stdgo._internal.time.Time_Duration.Duration)).__get__();
                        {
                            _t.fatal(stdgo.Go.toInterface(("Unpin() didn\'t release object" : stdgo.GoString)));
                        };
                    };
                };
                #if !js Sys.sleep(0.01) #else null #end;
                stdgo._internal.internal.Async.tick();
            };
        };
    }
