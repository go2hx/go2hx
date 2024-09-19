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
function _growAndShrinkStack(_n:stdgo.GoInt, _stackBallast:stdgo.GoArray<stdgo.GoUInt8>):Void {
        if ((_n <= (0 : stdgo.GoInt) : Bool)) {
            return;
        };
        _internal.runtime_test.Runtime_test__growAndShrinkStack._growAndShrinkStack((_n - (1 : stdgo.GoInt) : stdgo.GoInt), _stackBallast?.__copy__());
        stdgo._internal.runtime.Runtime_shrinkStackAndVerifyFramePointers.shrinkStackAndVerifyFramePointers();
    }
