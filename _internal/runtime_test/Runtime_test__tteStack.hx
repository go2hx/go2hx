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
function _tteStack(_n:stdgo.GoInt, _stack:stdgo.Chan<stdgo.GoString>):Void {
        _n--;
        {
            final __value__ = (_n % (5 : stdgo.GoInt) : stdgo.GoInt);
            if (__value__ == ((0 : stdgo.GoInt))) {
                _stack.__send__(_internal.runtime_test.Runtime_test__tte0._tte0(_n));
            } else if (__value__ == ((1 : stdgo.GoInt))) {
                _stack.__send__(_internal.runtime_test.Runtime_test__tte1._tte1(_n));
            } else if (__value__ == ((2 : stdgo.GoInt))) {
                _stack.__send__(_internal.runtime_test.Runtime_test__tte2._tte2(_n));
            } else if (__value__ == ((3 : stdgo.GoInt))) {
                _stack.__send__(_internal.runtime_test.Runtime_test__tte3._tte3(_n));
            } else if (__value__ == ((4 : stdgo.GoInt))) {
                _stack.__send__(_internal.runtime_test.Runtime_test__tte4._tte4(_n));
            } else {
                throw stdgo.Go.toInterface(("unreachable" : stdgo.GoString));
            };
        };
    }
