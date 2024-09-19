package _internal.sync_test;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
function testCompareAndSwap_NonExistingKey(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _m = (stdgo.Go.setRef((new stdgo._internal.sync.Sync_Map_.Map_() : stdgo._internal.sync.Sync_Map_.Map_)) : stdgo.Ref<stdgo._internal.sync.Sync_Map_.Map_>);
        if (_m.compareAndSwap(stdgo.Go.toInterface(stdgo.Go.asInterface(_m)), (null : stdgo.AnyInterface), stdgo.Go.toInterface((42 : stdgo.GoInt)))) {
            _t.fatalf(("CompareAndSwap on an non-existing key succeeded" : stdgo.GoString));
        };
    }
