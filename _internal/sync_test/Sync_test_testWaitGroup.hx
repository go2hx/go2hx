package _internal.sync_test;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
function testWaitGroup(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _wg1 = (stdgo.Go.setRef((new stdgo._internal.sync.Sync_WaitGroup.WaitGroup() : stdgo._internal.sync.Sync_WaitGroup.WaitGroup)) : stdgo.Ref<stdgo._internal.sync.Sync_WaitGroup.WaitGroup>);
        var _wg2 = (stdgo.Go.setRef((new stdgo._internal.sync.Sync_WaitGroup.WaitGroup() : stdgo._internal.sync.Sync_WaitGroup.WaitGroup)) : stdgo.Ref<stdgo._internal.sync.Sync_WaitGroup.WaitGroup>);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor(_i != ((8 : stdgo.GoInt)), _i++, {
                _internal.sync_test.Sync_test__testWaitGroup._testWaitGroup(_t, _wg1, _wg2);
            });
        };
    }
