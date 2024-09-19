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
function _applyMemoryLimitHeapGoalHeadroom(_goal:stdgo.GoUInt64):stdgo.GoUInt64 {
        var _headroom = ((_goal / (100i64 : stdgo.GoUInt64) : stdgo.GoUInt64) * (3i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
        if ((_headroom < (1048576i64 : stdgo.GoUInt64) : Bool)) {
            _headroom = (1048576i64 : stdgo.GoUInt64);
        };
        if (((_goal < _headroom : Bool) || ((_goal - _headroom : stdgo.GoUInt64) < _headroom : Bool) : Bool)) {
            _goal = _headroom;
        } else {
            _goal = (_goal - (_headroom) : stdgo.GoUInt64);
        };
        return _goal;
    }
