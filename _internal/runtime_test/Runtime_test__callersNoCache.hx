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
function _callersNoCache(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>, _n:stdgo.GoInt):stdgo.GoInt {
        if ((_n <= (0 : stdgo.GoInt) : Bool)) {
            var _pcs = (new stdgo.Slice<stdgo.GoUIntptr>((32 : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<stdgo.GoUIntptr>);
            _b.resetTimer();
            {
                var _i = (0 : stdgo.GoInt);
                stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                    stdgo._internal.runtime.Runtime_callers.callers((0 : stdgo.GoInt), _pcs);
                });
            };
            _b.stopTimer();
            return (0 : stdgo.GoInt);
        };
        {
            final __value__ = (_n % (16 : stdgo.GoInt) : stdgo.GoInt);
            if (__value__ == ((0 : stdgo.GoInt))) {
                return ((1 : stdgo.GoInt) + _internal.runtime_test.Runtime_test__callersNoCache._callersNoCache(_b, (_n - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoInt);
            } else if (__value__ == ((1 : stdgo.GoInt))) {
                return ((1 : stdgo.GoInt) + _internal.runtime_test.Runtime_test__callersNoCache._callersNoCache(_b, (_n - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoInt);
            } else if (__value__ == ((2 : stdgo.GoInt))) {
                return ((1 : stdgo.GoInt) + _internal.runtime_test.Runtime_test__callersNoCache._callersNoCache(_b, (_n - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoInt);
            } else if (__value__ == ((3 : stdgo.GoInt))) {
                return ((1 : stdgo.GoInt) + _internal.runtime_test.Runtime_test__callersNoCache._callersNoCache(_b, (_n - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoInt);
            } else if (__value__ == ((4 : stdgo.GoInt))) {
                return ((1 : stdgo.GoInt) + _internal.runtime_test.Runtime_test__callersNoCache._callersNoCache(_b, (_n - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoInt);
            } else if (__value__ == ((5 : stdgo.GoInt))) {
                return ((1 : stdgo.GoInt) + _internal.runtime_test.Runtime_test__callersNoCache._callersNoCache(_b, (_n - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoInt);
            } else if (__value__ == ((6 : stdgo.GoInt))) {
                return ((1 : stdgo.GoInt) + _internal.runtime_test.Runtime_test__callersNoCache._callersNoCache(_b, (_n - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoInt);
            } else if (__value__ == ((7 : stdgo.GoInt))) {
                return ((1 : stdgo.GoInt) + _internal.runtime_test.Runtime_test__callersNoCache._callersNoCache(_b, (_n - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoInt);
            } else if (__value__ == ((8 : stdgo.GoInt))) {
                return ((1 : stdgo.GoInt) + _internal.runtime_test.Runtime_test__callersNoCache._callersNoCache(_b, (_n - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoInt);
            } else if (__value__ == ((9 : stdgo.GoInt))) {
                return ((1 : stdgo.GoInt) + _internal.runtime_test.Runtime_test__callersNoCache._callersNoCache(_b, (_n - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoInt);
            } else if (__value__ == ((10 : stdgo.GoInt))) {
                return ((1 : stdgo.GoInt) + _internal.runtime_test.Runtime_test__callersNoCache._callersNoCache(_b, (_n - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoInt);
            } else if (__value__ == ((11 : stdgo.GoInt))) {
                return ((1 : stdgo.GoInt) + _internal.runtime_test.Runtime_test__callersNoCache._callersNoCache(_b, (_n - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoInt);
            } else if (__value__ == ((12 : stdgo.GoInt))) {
                return ((1 : stdgo.GoInt) + _internal.runtime_test.Runtime_test__callersNoCache._callersNoCache(_b, (_n - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoInt);
            } else if (__value__ == ((13 : stdgo.GoInt))) {
                return ((1 : stdgo.GoInt) + _internal.runtime_test.Runtime_test__callersNoCache._callersNoCache(_b, (_n - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoInt);
            } else if (__value__ == ((14 : stdgo.GoInt))) {
                return ((1 : stdgo.GoInt) + _internal.runtime_test.Runtime_test__callersNoCache._callersNoCache(_b, (_n - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoInt);
            } else {
                return ((1 : stdgo.GoInt) + _internal.runtime_test.Runtime_test__callersNoCache._callersNoCache(_b, (_n - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoInt);
            };
        };
    }
