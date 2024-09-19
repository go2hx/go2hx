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
function testSmhasherZeros(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var n = (262144 : stdgo.GoInt);
        if (stdgo._internal.testing.Testing_short.short()) {
            n = (1024 : stdgo.GoInt);
        };
        var _h = _internal.runtime_test.Runtime_test__newHashSet._newHashSet();
        var _b = (new stdgo.Slice<stdgo.GoUInt8>((n : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i <= n : Bool), _i++, {
                _h._addB((_b.__slice__(0, _i) : stdgo.Slice<stdgo.GoUInt8>));
            });
        };
        _h._check(_t);
    }
