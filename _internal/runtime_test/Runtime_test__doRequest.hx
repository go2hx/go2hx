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
function _doRequest(_useSelect:Bool):{ var _0 : stdgo.Ref<_internal.runtime_test.Runtime_test_T_response.T_response>; var _1 : stdgo.Error; } {
        {};
        var _ch = (new stdgo.Chan<stdgo.Ref<_internal.runtime_test.Runtime_test_T__doRequest___localname___async_378.T__doRequest___localname___async_378>>((0 : stdgo.GoInt).toBasic(), () -> (null : stdgo.Ref<_internal.runtime_test.Runtime_test_T__doRequest___localname___async_378.T__doRequest___localname___async_378>)) : stdgo.Chan<stdgo.Ref<_internal.runtime_test.Runtime_test_T__doRequest___localname___async_378.T__doRequest___localname___async_378>>);
        var _done = (new stdgo.Chan<_internal.runtime_test.Runtime_test_T_struct0.T_struct0>((0 : stdgo.GoInt).toBasic(), () -> ({} : _internal.runtime_test.Runtime_test_T_struct0.T_struct0)) : stdgo.Chan<_internal.runtime_test.Runtime_test_T_struct0.T_struct0>);
        if (_useSelect) {
            stdgo.Go.routine(() -> {
                var a = function():Void {
                    {
                        var __select__ = true;
                        while (__select__) {
                            if (_ch != null && _ch.__isSend__()) {
                                __select__ = false;
                                {
                                    _ch.__send__((stdgo.Go.setRef(({ _resp : null, _err : stdgo.Go.asInterface((new _internal.runtime_test.Runtime_test_T_myError.T_myError() : _internal.runtime_test.Runtime_test_T_myError.T_myError)) } : _internal.runtime_test.Runtime_test_T__doRequest___localname___async_378.T__doRequest___localname___async_378)) : stdgo.Ref<_internal.runtime_test.Runtime_test_T__doRequest___localname___async_378.T__doRequest___localname___async_378>));
                                    {};
                                };
                            } else if (_done != null && _done.__isGet__()) {
                                __select__ = false;
                                {
                                    _done.__get__();
                                    {};
                                };
                            };
                            #if !js Sys.sleep(0.01) #else null #end;
                            stdgo._internal.internal.Async.tick();
                        };
                    };
                };
                a();
            });
        } else {
            stdgo.Go.routine(() -> {
                var a = function():Void {
                    _ch.__send__((stdgo.Go.setRef(({ _resp : null, _err : stdgo.Go.asInterface((new _internal.runtime_test.Runtime_test_T_myError.T_myError() : _internal.runtime_test.Runtime_test_T_myError.T_myError)) } : _internal.runtime_test.Runtime_test_T__doRequest___localname___async_378.T__doRequest___localname___async_378)) : stdgo.Ref<_internal.runtime_test.Runtime_test_T__doRequest___localname___async_378.T__doRequest___localname___async_378>));
                };
                a();
            });
        };
        var _r = _ch.__get__();
        stdgo._internal.runtime.Runtime_gosched.gosched();
        return { _0 : _r._resp, _1 : _r._err };
    }
