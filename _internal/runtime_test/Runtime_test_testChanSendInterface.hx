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
function testChanSendInterface(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        {};
        var _m = (stdgo.Go.setRef((new _internal.runtime_test.Runtime_test_T_testChanSendInterface___localname___mt_9995.T_testChanSendInterface___localname___mt_9995() : _internal.runtime_test.Runtime_test_T_testChanSendInterface___localname___mt_9995.T_testChanSendInterface___localname___mt_9995)) : stdgo.Ref<_internal.runtime_test.Runtime_test_T_testChanSendInterface___localname___mt_9995.T_testChanSendInterface___localname___mt_9995>);
        var _c = (new stdgo.Chan<stdgo.AnyInterface>((1 : stdgo.GoInt).toBasic(), () -> (null : stdgo.AnyInterface)) : stdgo.Chan<stdgo.AnyInterface>);
        _c.__send__(_m);
        {
            var __select__ = true;
            while (__select__) {
                if (_c != null && _c.__isSend__()) {
                    __select__ = false;
                    {
                        _c.__send__(_m);
                        {};
                    };
                } else {
                    __select__ = false;
                    {};
                };
                #if !js Sys.sleep(0.01) #else null #end;
                stdgo._internal.internal.Async.tick();
            };
        };
        {
            var __select__ = true;
            while (__select__) {
                if (_c != null && _c.__isSend__()) {
                    __select__ = false;
                    {
                        _c.__send__(_m);
                        {};
                    };
                } else if (_c != null && _c.__isSend__()) {
                    __select__ = false;
                    {
                        _c.__send__((stdgo.Go.setRef((new _internal.runtime_test.Runtime_test_T_testChanSendInterface___localname___mt_9995.T_testChanSendInterface___localname___mt_9995() : _internal.runtime_test.Runtime_test_T_testChanSendInterface___localname___mt_9995.T_testChanSendInterface___localname___mt_9995)) : stdgo.Ref<_internal.runtime_test.Runtime_test_T_testChanSendInterface___localname___mt_9995.T_testChanSendInterface___localname___mt_9995>));
                        {};
                    };
                } else {
                    __select__ = false;
                    {};
                };
                #if !js Sys.sleep(0.01) #else null #end;
                stdgo._internal.internal.Async.tick();
            };
        };
    }
