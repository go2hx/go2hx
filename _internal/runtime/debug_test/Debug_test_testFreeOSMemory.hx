package _internal.runtime.debug_test;
import stdgo._internal.runtime.debug.Debug;
import stdgo._internal.runtime.debug.Debug;
import stdgo._internal.runtime.debug.Debug;
function testFreeOSMemory(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        {};
        _internal.runtime.debug_test.Debug_test__big._big = (new stdgo.Slice<stdgo.GoUInt8>((33554432 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        stdgo._internal.runtime.Runtime_gc.gc();
        var _before:stdgo._internal.runtime.Runtime_MemStats.MemStats = ({} : stdgo._internal.runtime.Runtime_MemStats.MemStats);
        stdgo._internal.runtime.Runtime_readMemStats.readMemStats((stdgo.Go.setRef(_before) : stdgo.Ref<stdgo._internal.runtime.Runtime_MemStats.MemStats>));
        _internal.runtime.debug_test.Debug_test__big._big = (null : stdgo.Slice<stdgo.GoUInt8>);
        stdgo._internal.runtime.debug.Debug_freeOSMemory.freeOSMemory();
        var _after:stdgo._internal.runtime.Runtime_MemStats.MemStats = ({} : stdgo._internal.runtime.Runtime_MemStats.MemStats);
        stdgo._internal.runtime.Runtime_readMemStats.readMemStats((stdgo.Go.setRef(_after) : stdgo.Ref<stdgo._internal.runtime.Runtime_MemStats.MemStats>));
        if ((_after.heapReleased <= _before.heapReleased : Bool)) {
            _t.fatalf(("no memory released: %d -> %d" : stdgo.GoString), stdgo.Go.toInterface(_before.heapReleased), stdgo.Go.toInterface(_after.heapReleased));
        };
        var _slack = ((16777216i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
        var _pageSize = (stdgo._internal.os.Os_getpagesize.getpagesize() : stdgo.GoUInt64);
        if ((_pageSize > (8192i64 : stdgo.GoUInt64) : Bool)) {
            _slack = (_slack + ((_pageSize * (2i64 : stdgo.GoUInt64) : stdgo.GoUInt64)) : stdgo.GoUInt64);
        };
        if ((_slack > (33554432i64 : stdgo.GoUInt64) : Bool)) {
            return;
        };
        if (((_after.heapReleased - _before.heapReleased : stdgo.GoUInt64) < ((33554432i64 : stdgo.GoUInt64) - _slack : stdgo.GoUInt64) : Bool)) {
            _t.fatalf(("less than %d released: %d -> %d" : stdgo.GoString), stdgo.Go.toInterface(((33554432i64 : stdgo.GoUInt64) - _slack : stdgo.GoUInt64)), stdgo.Go.toInterface(_before.heapReleased), stdgo.Go.toInterface(_after.heapReleased));
        };
    }
