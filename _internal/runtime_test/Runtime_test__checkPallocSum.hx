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
function _checkPallocSum(_t:stdgo._internal.testing.Testing_TB.TB, _got:stdgo._internal.runtime.Runtime_PallocSum.PallocSum, _want:stdgo._internal.runtime.Runtime_PallocSum.PallocSum):Void {
        if (_got.start() != (_want.start())) {
            _t.errorf(("inconsistent start: got %d, want %d" : stdgo.GoString), stdgo.Go.toInterface(_got.start()), stdgo.Go.toInterface(_want.start()));
        };
        if (_got.max() != (_want.max())) {
            _t.errorf(("inconsistent max: got %d, want %d" : stdgo.GoString), stdgo.Go.toInterface(_got.max()), stdgo.Go.toInterface(_want.max()));
        };
        if (_got.end() != (_want.end())) {
            _t.errorf(("inconsistent end: got %d, want %d" : stdgo.GoString), stdgo.Go.toInterface(_got.end()), stdgo.Go.toInterface(_want.end()));
        };
    }
