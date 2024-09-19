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
function _fpCallersCached(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>, _n:stdgo.GoInt):stdgo.GoInt {
        if ((_n <= (0 : stdgo.GoInt) : Bool)) {
            var _pcs = (new stdgo.Slice<stdgo.GoUIntptr>((32 : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<stdgo.GoUIntptr>);
            _b.resetTimer();
            {
                var _i = (0 : stdgo.GoInt);
                stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                    stdgo._internal.runtime.Runtime_fpcallers.fpcallers(_pcs);
                });
            };
            _b.stopTimer();
            return (0 : stdgo.GoInt);
        };
        return ((1 : stdgo.GoInt) + _internal.runtime_test.Runtime_test__fpCallersCached._fpCallersCached(_b, (_n - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoInt);
    }
