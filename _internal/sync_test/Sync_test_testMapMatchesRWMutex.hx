package _internal.sync_test;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
function testMapMatchesRWMutex(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        {
            var _err = (stdgo._internal.testing.quick.Quick_checkEqual.checkEqual(stdgo.Go.toInterface(_internal.sync_test.Sync_test__applyMap._applyMap), stdgo.Go.toInterface(_internal.sync_test.Sync_test__applyRWMutexMap._applyRWMutexMap), null) : stdgo.Error);
            if (_err != null) {
                _t.error(stdgo.Go.toInterface(_err));
            };
        };
    }
