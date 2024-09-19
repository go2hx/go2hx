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
function testScavengedBitsCleared(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _mismatches:stdgo.GoArray<stdgo._internal.runtime.Runtime_BitsMismatch.BitsMismatch> = new stdgo.GoArray<stdgo._internal.runtime.Runtime_BitsMismatch.BitsMismatch>(128, 128, ...[for (i in 0 ... 128) ({} : stdgo._internal.runtime.Runtime_BitsMismatch.BitsMismatch)]);
        {
            var __tmp__ = stdgo._internal.runtime.Runtime_checkScavengedBitsCleared.checkScavengedBitsCleared((_mismatches.__slice__(0) : stdgo.Slice<stdgo._internal.runtime.Runtime_BitsMismatch.BitsMismatch>)), _n:stdgo.GoInt = __tmp__._0, _ok:Bool = __tmp__._1;
            if (!_ok) {
                _t.errorf(("uncleared scavenged bits" : stdgo.GoString));
                for (__14 => _m in (_mismatches.__slice__(0, _n) : stdgo.Slice<stdgo._internal.runtime.Runtime_BitsMismatch.BitsMismatch>)) {
                    _t.logf(("\t@ address 0x%x" : stdgo.GoString), stdgo.Go.toInterface(_m.base));
                    _t.logf(("\t|  got: %064b" : stdgo.GoString), stdgo.Go.toInterface(_m.got));
                    _t.logf(("\t| want: %064b" : stdgo.GoString), stdgo.Go.toInterface(_m.want));
                };
                _t.failNow();
            };
        };
    }
